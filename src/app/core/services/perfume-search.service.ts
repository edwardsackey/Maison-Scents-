import { Injectable, inject } from '@angular/core';
import { Observable, from, of, map, switchMap, catchError, forkJoin } from 'rxjs';
import { SupabaseService } from './supabase.service';
import { ProductService } from './product.service';
import { Product } from '../models/product.model';

export interface CatalogEntry {
  id: string;
  search_key: string;
  name: string;
  brand: string;
  concentration: string | null;
  description: string | null;
  top_notes: string[];
  heart_notes: string[];
  base_notes: string[];
  image_url: string | null;
  year_launched: number | null;
  gender: 'male' | 'female' | 'unisex';
  scent_family: string | null;
  source: string;
  enriched_at: string;
}

export type SearchResultType = 'in_stock' | 'catalog' | 'enriched';

export interface SearchResult {
  resultType: SearchResultType;
  product?: Product;
  catalog?: CatalogEntry;
  name: string;
  brand: string;
  image: string;
  price?: number;
}

@Injectable({ providedIn: 'root' })
export class PerfumeSearchService {
  private sb = inject(SupabaseService);
  private productService = inject(ProductService);

  /**
   * Main search method — searches shop inventory, global catalog,
   * then triggers AI enrichment if results are sparse.
   */
  search(query: string): Observable<SearchResult[]> {
    if (!query || query.trim().length < 2) return of([]);

    const trimmed = query.trim().toLowerCase();

    return forkJoin({
      inStock: this.searchInStock(trimmed),
      catalog: this.searchCatalog(trimmed),
    }).pipe(
      switchMap(({ inStock, catalog }) => {
        // Filter catalog results that are already in shop inventory
        const inStockIds = new Set(inStock.map(r => `${r.name}-${r.brand}`.toLowerCase()));
        const filteredCatalog = catalog.filter(
          r => !inStockIds.has(`${r.name}-${r.brand}`.toLowerCase())
        );

        const merged = [...inStock, ...filteredCatalog];

        // If few results and query is meaningful, try AI enrichment
        if (merged.length < 3 && trimmed.length > 3) {
          return this.getEnrichedProduct(query).pipe(
            map(enrichedResult => {
              if (enrichedResult) {
                // Don't add if already in results
                const exists = merged.some(
                  r => r.name.toLowerCase() === enrichedResult.name.toLowerCase() &&
                       r.brand.toLowerCase() === enrichedResult.brand.toLowerCase()
                );
                if (!exists) {
                  merged.push(enrichedResult);
                }
              }
              return merged;
            }),
            catchError(() => of(merged))
          );
        }

        return of(merged);
      })
    );
  }

  /**
   * Search the shop's product inventory.
   */
  private searchInStock(query: string): Observable<SearchResult[]> {
    // Search local products (already loaded in ProductService)
    const words = query.split(/\s+/);
    const products = this.productService.products().filter(p => {
      const haystack = `${p.brand} ${p.name} ${p.scent_family}`.toLowerCase();
      return words.every(w => haystack.includes(w));
    });

    const results: SearchResult[] = products.map(p => ({
      resultType: 'in_stock' as SearchResultType,
      product: p,
      name: p.name,
      brand: p.brand,
      image: p.images?.[0] && !p.images[0].includes('placeholder') ? p.images[0] : '',
      price: p.sizes?.[0]?.price,
    }));

    return of(results);
  }

  /**
   * Search the global_perfume_catalog table.
   */
  private searchCatalog(query: string): Observable<SearchResult[]> {
    return from(
      this.sb.client
        .from('global_perfume_catalog')
        .select('*')
        .or(`name.ilike.%${query}%,brand.ilike.%${query}%`)
        .limit(10)
    ).pipe(
      map(({ data, error }) => {
        if (error || !data) return [];
        return (data as CatalogEntry[]).map(c => ({
          resultType: 'catalog' as SearchResultType,
          catalog: c,
          name: c.name,
          brand: c.brand,
          image: c.image_url || '',
        }));
      }),
      catchError(() => of([]))
    );
  }

  /**
   * Call the enrich-perfume Edge Function directly.
   * Used when user taps a catalog result or search yields few results.
   */
  getEnrichedProduct(query: string): Observable<SearchResult | null> {
    return from(
      this.sb.client.functions.invoke('enrich-perfume', {
        body: { query },
      })
    ).pipe(
      map(({ data, error }) => {
        if (error || !data || data.unknown || data.error) return null;
        const c = data as CatalogEntry;
        return {
          resultType: (c.source === 'cache' ? 'catalog' : 'enriched') as SearchResultType,
          catalog: c,
          name: c.name,
          brand: c.brand,
          image: c.image_url || '',
        };
      }),
      catchError(err => {
        console.error('[PerfumeSearch] Enrichment failed:', err);
        return of(null);
      })
    );
  }

  /**
   * Save a catalog entry as a pre-order product in the shop's inventory.
   */
  saveAsPreorder(catalogEntry: CatalogEntry): Observable<Product | null> {
    const newProduct: Omit<Product, 'id'> = {
      name: catalogEntry.name,
      brand: catalogEntry.brand,
      gender: catalogEntry.gender || 'unisex',
      scent_family: catalogEntry.scent_family || 'Oriental',
      description: catalogEntry.description || '',
      images: catalogEntry.image_url ? [catalogEntry.image_url] : [],
      sizes: [
        { ml: 50, price: 0, available: false },
        { ml: 100, price: 0, available: false },
      ],
      stock_quantity: 0,
      is_featured: false,
      total_units_sold: 0,
      delivery_days: 30,
      is_new: true,
      scent_notes: {
        top: catalogEntry.top_notes || [],
        heart: catalogEntry.heart_notes || [],
        base: catalogEntry.base_notes || [],
      },
      ratings: [],
    };

    return from(this.productService.addProduct(newProduct)).pipe(
      switchMap(productId => {
        if (!productId) return of(null);

        // Link to catalog and mark as preorder
        return from(
          this.sb.client
            .from('products')
            .update({
              catalog_id: catalogEntry.id,
              source: 'auto_cached',
              is_preorder_only: true,
            })
            .eq('id', productId)
        ).pipe(
          map(() => this.productService.getById(productId) || null)
        );
      }),
      catchError(err => {
        console.error('[PerfumeSearch] Save preorder failed:', err);
        return of(null);
      })
    );
  }
}
