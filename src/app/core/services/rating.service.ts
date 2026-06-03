import { Injectable, inject } from '@angular/core';
import { ProductRating } from '../models/product.model';
import { ProductService } from './product.service';
import { SupabaseService } from './supabase.service';

@Injectable({ providedIn: 'root' })
export class RatingService {
  private productService = inject(ProductService);
  private sb = inject(SupabaseService);

  getRatings(productId: string): ProductRating[] {
    const product = this.productService.products().find(p => p.id === productId);
    return product?.ratings ?? [];
  }

  getAverageRating(productId: string): number {
    const product = this.productService.products().find(p => p.id === productId);
    if (!product || product.ratings.length === 0) return 0;
    const sum = product.ratings.reduce((s, r) => s + r.stars, 0);
    return Math.round((sum / product.ratings.length) * 10) / 10;
  }

  async addRating(productId: string, userName: string, stars: number, review: string): Promise<boolean> {
    const { data: { session } } = await this.sb.client.auth.getSession();
    if (!session) return false;

    const { error } = await this.sb.client.from('ratings').upsert({
      product_id: productId,
      user_id: session.user.id,
      user_name: userName,
      stars,
      review
    }, { onConflict: 'product_id,user_id' });

    if (error) {
      console.error('Failed to add rating:', error);
      return false;
    }

    // Refresh products to pick up new rating
    await this.productService.loadProducts();
    return true;
  }
}
