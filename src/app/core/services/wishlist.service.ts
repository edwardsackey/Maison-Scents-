import { Injectable, signal } from '@angular/core';

@Injectable({ providedIn: 'root' })
export class WishlistService {
  items = signal<string[]>([]);

  toggle(productId: string): void {
    this.items.update(items =>
      items.includes(productId)
        ? items.filter(id => id !== productId)
        : [...items, productId]
    );
  }

  isWishlisted(productId: string): boolean {
    return this.items().includes(productId);
  }

  count(): number {
    return this.items().length;
  }
}
