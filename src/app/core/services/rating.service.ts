import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';
import { ProductRating } from '../models/product.model';
import { ProductService } from './product.service';

@Injectable({ providedIn: 'root' })
export class RatingService {
  constructor(private productService: ProductService) {}

  getRatings(productId: string): Observable<ProductRating[]> {
    // Replace with: this.http.get<ProductRating[]>(`/api/products/${productId}/ratings`)
    const product = this.productService.products().find(p => p.id === productId);
    return of(product?.ratings ?? []);
  }

  getAverageRating(productId: string): number {
    const product = this.productService.products().find(p => p.id === productId);
    if (!product || product.ratings.length === 0) return 0;
    const sum = product.ratings.reduce((s, r) => s + r.stars, 0);
    return Math.round((sum / product.ratings.length) * 10) / 10;
  }
}
