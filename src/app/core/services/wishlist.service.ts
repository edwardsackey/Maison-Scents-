import { Injectable, inject, signal, computed } from '@angular/core';
import { SupabaseService } from './supabase.service';

@Injectable({ providedIn: 'root' })
export class WishlistService {
  private sb = inject(SupabaseService);

  items = signal<string[]>([]);
  count = computed(() => this.items().length);

  constructor() {
    this.loadWishlist();

    // Reload when auth state changes (login/logout)
    this.sb.client.auth.onAuthStateChange((event) => {
      if (event === 'SIGNED_IN') {
        this.loadWishlist();
      } else if (event === 'SIGNED_OUT') {
        this.items.set([]);
      }
    });
  }

  private async loadWishlist(): Promise<void> {
    const { data: { session } } = await this.sb.client.auth.getSession();
    if (!session) return;

    const { data, error } = await this.sb.client
      .from('wishlists')
      .select('product_id')
      .eq('user_id', session.user.id);

    if (!error && data) {
      this.items.set(data.map((row: any) => row.product_id));
    }
  }

  async toggle(productId: string): Promise<void> {
    if (this.isWishlisted(productId)) {
      await this.removeFromWishlist(productId);
    } else {
      await this.addToWishlist(productId);
    }
  }

  isWishlisted(productId: string): boolean {
    return this.items().includes(productId);
  }

  private async addToWishlist(productId: string): Promise<void> {
    // Optimistic update
    this.items.update(ids => [...ids, productId]);

    const { data: { session } } = await this.sb.client.auth.getSession();
    if (!session) return;

    const { error } = await this.sb.client.from('wishlists').insert({
      user_id: session.user.id,
      product_id: productId
    });

    if (error) {
      // Rollback on failure
      console.error('Failed to add to wishlist:', error);
      this.items.update(ids => ids.filter(id => id !== productId));
    }
  }

  private async removeFromWishlist(productId: string): Promise<void> {
    // Optimistic update
    this.items.update(ids => ids.filter(id => id !== productId));

    const { data: { session } } = await this.sb.client.auth.getSession();
    if (!session) return;

    const { error } = await this.sb.client
      .from('wishlists')
      .delete()
      .eq('user_id', session.user.id)
      .eq('product_id', productId);

    if (error) {
      // Rollback on failure
      console.error('Failed to remove from wishlist:', error);
      this.items.update(ids => [...ids, productId]);
    }
  }
}
