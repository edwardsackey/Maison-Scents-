import { Injectable, inject, signal, computed } from '@angular/core';
import { SupabaseService } from './supabase.service';
import { Product, ProductSize, ScentNotes, ProductRating } from '../models/product.model';
import { MOCK_PRODUCTS } from '../../data/mock-data';

@Injectable({ providedIn: 'root' })
export class ProductService {
  private sb = inject(SupabaseService);

  products = signal<Product[]>([]);
  loaded = signal(false);

  // Admin dashboard computeds
  getOutOfStock = computed(() => this.products().filter(p => p.stock_quantity === 0));
  totalProducts = computed(() => this.products().length);
  totalStock = computed(() => this.products().reduce((sum, p) => sum + p.stock_quantity, 0));

  constructor() {
    this.loadProducts();
  }

  /** Fetch all products from Supabase with related data */
  async loadProducts(): Promise<void> {
    try {
      const { data: rows, error } = await this.sb.client
        .from('products')
        .select(`
          *,
          product_sizes ( ml, price, available ),
          scent_notes ( layer, note ),
          ratings ( user_name, stars, review )
        `)
        .order('created_at', { ascending: false });

      if (error) throw error;

      if (rows && rows.length > 0) {
        const products = rows.map((r: any) => this.mapDbToProduct(r));
        this.products.set(products);
      } else {
        // DB is empty — use mock data so the app still works
        this.products.set(MOCK_PRODUCTS);
      }
    } catch (err) {
      console.warn('Supabase fetch failed, using mock data:', err);
      this.products.set(MOCK_PRODUCTS);
    }

    this.loaded.set(true);
  }

  /** Map a Supabase row (with joins) to the frontend Product interface */
  private mapDbToProduct(row: any): Product {
    // Group scent notes by layer
    const notes: ScentNotes = { top: [], heart: [], base: [] };
    for (const sn of row.scent_notes || []) {
      const layer = sn.layer as keyof ScentNotes;
      if (notes[layer]) {
        notes[layer].push(sn.note);
      }
    }

    // Map ratings
    const ratings: ProductRating[] = (row.ratings || []).map((r: any) => ({
      user: r.user_name,
      stars: r.stars,
      review: r.review || ''
    }));

    // Map sizes and sort by ml
    const sizes: ProductSize[] = (row.product_sizes || [])
      .map((s: any) => ({
        ml: s.ml,
        price: Number(s.price),
        available: s.available
      }))
      .sort((a: ProductSize, b: ProductSize) => a.ml - b.ml);

    return {
      id: row.id,
      name: row.name,
      brand: row.brand,
      gender: row.gender,
      scent_family: row.scent_family,
      description: row.description || '',
      images: row.images || [],
      sizes,
      stock_quantity: row.stock_quantity,
      is_featured: row.is_featured,
      total_units_sold: row.total_units_sold,
      delivery_days: row.delivery_days,
      is_new: row.is_new,
      scent_notes: notes,
      ratings
    };
  }

  // ─── Read helpers ─────────────────────────────────────────

  getAll(): Product[] {
    return this.products();
  }

  getById(id: string): Product | undefined {
    return this.products().find(p => p.id === id);
  }

  getByGender(gender: string): Product[] {
    return this.products().filter(p => p.gender === gender);
  }

  getFeatured(): Product[] {
    return this.products().filter(p => p.is_featured);
  }

  getBestSelling(): Product[] {
    return [...this.products()].sort((a, b) => b.total_units_sold - a.total_units_sold);
  }

  // ─── Admin CRUD ───────────────────────────────────────────

  async addProduct(product: Omit<Product, 'id'>): Promise<string | null> {
    // 1. Insert core product row
    const { data: inserted, error: prodErr } = await this.sb.client
      .from('products')
      .insert({
        name: product.name,
        brand: product.brand,
        gender: product.gender,
        scent_family: product.scent_family,
        description: product.description,
        images: product.images,
        stock_quantity: product.stock_quantity,
        is_featured: product.is_featured,
        total_units_sold: product.total_units_sold,
        delivery_days: product.delivery_days,
        is_new: product.is_new
      })
      .select('id')
      .single();

    if (prodErr || !inserted) {
      console.error('Failed to add product:', prodErr);
      return null;
    }

    const productId = inserted.id;

    // 2. Insert sizes
    if (product.sizes.length > 0) {
      const sizeRows = product.sizes.map(s => ({
        product_id: productId,
        ml: s.ml,
        price: s.price,
        available: s.available
      }));
      await this.sb.client.from('product_sizes').insert(sizeRows);
    }

    // 3. Insert scent notes
    const noteRows: { product_id: string; layer: string; note: string }[] = [];
    for (const layer of ['top', 'heart', 'base'] as const) {
      for (const note of product.scent_notes[layer]) {
        noteRows.push({ product_id: productId, layer, note });
      }
    }
    if (noteRows.length > 0) {
      await this.sb.client.from('scent_notes').insert(noteRows);
    }

    // Refresh local state
    await this.loadProducts();
    return productId;
  }

  async updateProduct(id: string, data: Partial<Product>): Promise<boolean> {
    // Build update payload (only flat product columns)
    const payload: Record<string, any> = {};
    const keys: (keyof Product)[] = [
      'name', 'brand', 'gender', 'scent_family', 'description',
      'images', 'stock_quantity', 'is_featured', 'total_units_sold',
      'delivery_days', 'is_new'
    ];
    for (const key of keys) {
      if (data[key] !== undefined) {
        payload[key] = data[key];
      }
    }
    payload['updated_at'] = new Date().toISOString();

    const { error } = await this.sb.client
      .from('products')
      .update(payload)
      .eq('id', id);

    if (error) {
      console.error('Failed to update product:', error);
      return false;
    }

    // If sizes were updated, replace them
    if (data.sizes) {
      await this.sb.client.from('product_sizes').delete().eq('product_id', id);
      const sizeRows = data.sizes.map(s => ({
        product_id: id,
        ml: s.ml,
        price: s.price,
        available: s.available
      }));
      await this.sb.client.from('product_sizes').insert(sizeRows);
    }

    // If scent notes were updated, replace them
    if (data.scent_notes) {
      await this.sb.client.from('scent_notes').delete().eq('product_id', id);
      const noteRows: { product_id: string; layer: string; note: string }[] = [];
      for (const layer of ['top', 'heart', 'base'] as const) {
        for (const note of data.scent_notes[layer]) {
          noteRows.push({ product_id: id, layer, note });
        }
      }
      if (noteRows.length > 0) {
        await this.sb.client.from('scent_notes').insert(noteRows);
      }
    }

    // Refresh local state
    await this.loadProducts();
    return true;
  }

  async toggleFeatured(id: string): Promise<void> {
    const product = this.getById(id);
    if (!product) return;

    await this.sb.client
      .from('products')
      .update({ is_featured: !product.is_featured })
      .eq('id', id);

    // Optimistic update
    this.products.update(list =>
      list.map(p => p.id === id ? { ...p, is_featured: !p.is_featured } : p)
    );
  }

  async deleteProduct(id: string): Promise<void> {
    await this.sb.client.from('products').delete().eq('id', id);

    // Optimistic update
    this.products.update(list => list.filter(p => p.id !== id));
  }

  // ─── Image upload ─────────────────────────────────────────

  async uploadImage(file: File): Promise<string | null> {
    const ext = file.name.split('.').pop() || 'png';
    const path = `${Date.now()}-${Math.random().toString(36).slice(2)}.${ext}`;

    const { error } = await this.sb.client.storage
      .from('product-images')
      .upload(path, file, { cacheControl: '3600', upsert: false });

    if (error) {
      console.error('Image upload failed:', error);
      return null;
    }

    const { data } = this.sb.client.storage
      .from('product-images')
      .getPublicUrl(path);

    return data.publicUrl;
  }

  async deleteImage(url: string): Promise<void> {
    // Extract the path from the full URL
    const parts = url.split('/product-images/');
    if (parts.length < 2) return;

    const path = parts[1];
    await this.sb.client.storage.from('product-images').remove([path]);
  }
}
