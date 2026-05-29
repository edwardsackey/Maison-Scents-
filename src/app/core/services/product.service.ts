import { Injectable, signal, computed } from '@angular/core';
import { Observable, of, delay } from 'rxjs';
import { Product } from '../models/product.model';
import { MOCK_PRODUCTS } from '../../data/mock-data';

@Injectable({ providedIn: 'root' })
export class ProductService {
  products = signal<Product[]>(MOCK_PRODUCTS);

  getAll(): Observable<Product[]> {
    // Replace with: this.http.get<Product[]>('/api/products')
    return of(this.products());
  }

  getById(id: string): Observable<Product | undefined> {
    // Replace with: this.http.get<Product>(`/api/products/${id}`)
    return of(this.products().find(p => p.id === id)).pipe(delay(300));
  }

  getByGender(gender: string): Observable<Product[]> {
    // Replace with: this.http.get<Product[]>(`/api/products?gender=${gender}`)
    return of(this.products().filter(p => p.gender === gender));
  }

  getFeatured(): Observable<Product[]> {
    return of(this.products().filter(p => p.is_featured));
  }

  getBestSelling(): Observable<Product[]> {
    return of([...this.products()].sort((a, b) => b.total_units_sold - a.total_units_sold));
  }

  getOutOfStock = computed(() => this.products().filter(p => p.stock_quantity === 0));
  totalProducts = computed(() => this.products().length);

  toggleFeatured(id: string): void {
    // Replace with: this.productService.toggleFeatured(id).subscribe()
    this.products.update(products =>
      products.map(p => p.id === id ? { ...p, is_featured: !p.is_featured } : p)
    );
  }

  updateProduct(id: string, data: Partial<Product>): void {
    // Replace with: this.productService.update(id, data).subscribe()
    this.products.update(products =>
      products.map(p => p.id === id ? { ...p, ...data } : p)
    );
  }

  addProduct(product: Product): void {
    // Replace with: this.productService.create(product).subscribe()
    this.products.update(products => [...products, product]);
  }

  deleteProduct(id: string): void {
    // Replace with: this.productService.delete(id).subscribe()
    this.products.update(products => products.filter(p => p.id !== id));
  }
}
