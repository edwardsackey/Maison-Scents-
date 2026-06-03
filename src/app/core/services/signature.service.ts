import { Injectable, signal, computed } from '@angular/core';

@Injectable({ providedIn: 'root' })
export class SignatureService {
  items = signal<string[]>([]);

  toggle(productId: string): void {
    this.items.update(ids =>
      ids.includes(productId)
        ? ids.filter(id => id !== productId)
        : [...ids, productId]
    );
  }

  remove(productId: string): void {
    this.items.update(ids => ids.filter(id => id !== productId));
  }

  isSignature(productId: string): boolean {
    return this.items().includes(productId);
  }

  count = computed(() => this.items().length);
}
