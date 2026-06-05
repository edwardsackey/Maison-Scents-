import { Component, ChangeDetectionStrategy, inject, signal, computed, OnInit, OnDestroy } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { NavbarComponent } from '../../shared/components/navbar/navbar.component';
import { ProductCardComponent } from '../../shared/components/product-card/product-card.component';
import { FooterComponent } from '../../shared/components/footer/footer.component';
import { SkeletonLoaderComponent } from '../../shared/components/skeleton-loader/skeleton-loader.component';
import { FilterService } from '../../core/services/filter.service';
import { ProductService } from '../../core/services/product.service';
import { PerfumeSearchService, SearchResult } from '../../core/services/perfume-search.service';
import { Product } from '../../core/models/product.model';
import { Subject, Subscription, debounceTime, distinctUntilChanged, switchMap, of } from 'rxjs';

@Component({
  selector: 'app-storefront',
  standalone: true,
  imports: [
    NavbarComponent,
    ProductCardComponent,
    FooterComponent,
    SkeletonLoaderComponent
  ],
  templateUrl: './storefront.component.html',
  styleUrl: './storefront.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class StorefrontComponent implements OnInit, OnDestroy {
  private route = inject(ActivatedRoute);
  private router = inject(Router);
  filterService = inject(FilterService);
  private productService = inject(ProductService);
  private perfumeSearch = inject(PerfumeSearchService);

  gender = signal<string>('female');
  loading = signal(true);
  filterOpen = signal(false);
  searchQuery = signal('');

  // Smart search state
  smartResults = signal<SearchResult[]>([]);
  smartSearching = signal(false);
  showDropdown = signal(false);

  private searchSubject = new Subject<string>();
  private searchSub?: Subscription;

  scentFamilies = ['Floral', 'Woody', 'Oriental', 'Fresh', 'Gourmand', 'Chypre'];
  brands = computed(() => {
    const gender = this.gender();
    const genderProducts = this.productService.products()
      .filter(p => p.gender === gender || p.gender === 'unisex');

    const brandMap = new Map<string, number>();
    genderProducts.forEach(p => {
      brandMap.set(p.brand, (brandMap.get(p.brand) || 0) + 1);
    });

    return Array.from(brandMap.entries())
      .map(([name, count]) => ({ name, count }))
      .sort((a, b) => b.count - a.count);
  });

  /** In-stock results from smart search */
  inStockResults = computed(() =>
    this.smartResults().filter(r => r.resultType === 'in_stock')
  );

  /** Catalog/enriched results from smart search */
  catalogResults = computed(() =>
    this.smartResults().filter(r => r.resultType === 'catalog' || r.resultType === 'enriched')
  );

  ngOnInit(): void {
    this.route.queryParams.subscribe(params => {
      const g = params['gender'] || 'female';
      this.gender.set(g);
      this.filterService.gender.set(g);
    });
    setTimeout(() => this.loading.set(false), 600);

    // Set up debounced smart search
    this.searchSub = this.searchSubject.pipe(
      debounceTime(400),
      distinctUntilChanged(),
      switchMap(query => {
        if (query.length < 2) {
          this.smartSearching.set(false);
          this.showDropdown.set(false);
          return of([]);
        }
        this.smartSearching.set(true);
        return this.perfumeSearch.search(query);
      })
    ).subscribe(results => {
      this.smartResults.set(results);
      this.smartSearching.set(false);
      this.showDropdown.set(results.length > 0 || this.searchQuery().length >= 2);
    });
  }

  ngOnDestroy(): void {
    this.searchSub?.unsubscribe();
  }

  get genderLabel(): string {
    return this.gender() === 'female' ? 'For Her' : 'For Him';
  }

  get products(): Product[] {
    return this.filterService.filteredProducts();
  }

  onSearch(event: Event): void {
    const value = (event.target as HTMLInputElement).value;
    this.searchQuery.set(value);
    this.filterService.searchQuery.set(value);

    // Also trigger smart search for AI enrichment
    this.searchSubject.next(value.trim());
  }

  onSearchFocus(): void {
    if (this.smartResults().length > 0 || this.searchQuery().length >= 2) {
      this.showDropdown.set(true);
    }
  }

  onSearchBlur(): void {
    // Delay to allow click events on dropdown items
    setTimeout(() => this.showDropdown.set(false), 200);
  }

  goToResult(result: SearchResult): void {
    this.showDropdown.set(false);
    if (result.resultType === 'in_stock' && result.product) {
      this.router.navigate(['/product', result.product.id]);
    } else if (result.catalog) {
      this.router.navigate(['/product/preview'], {
        queryParams: { query: result.name, brand: result.brand }
      });
    }
  }

  toggleFilter(): void {
    this.filterOpen.update(v => !v);
  }

  isFamilySelected(family: string): boolean {
    return this.filterService.scentFamilies().includes(family);
  }

  isBrandSelected(brand: string): boolean {
    return this.filterService.brands().includes(brand);
  }

  toggleFamily(family: string): void {
    this.filterService.toggleScentFamily(family);
  }

  toggleBrand(brand: string): void {
    this.filterService.toggleBrand(brand);
  }

  clearFilters(): void {
    this.filterService.clearAll();
    this.searchQuery.set('');
    this.smartResults.set([]);
    this.showDropdown.set(false);
  }

  applyFilters(): void {
    this.filterOpen.set(false);
  }

  goBack(): void {
    this.router.navigate(['/gender-selection']);
  }
}
