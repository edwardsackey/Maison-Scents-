import { Injectable, inject, signal, computed } from '@angular/core';
import { CartItem } from '../models/order.model';
import { Product } from '../models/product.model';
import { ImageSearchService } from './image-search.service';

@Injectable({ providedIn: 'root' })
export class CartService {
  private imageSearch = inject(ImageSearchService);
  items = signal<CartItem[]>([]);

  totalItems = computed(() =>
    this.items().reduce((sum, item) => sum + item.quantity, 0)
  );

  subtotal = computed(() =>
    this.items().reduce((sum, item) => sum + (item.price * item.quantity), 0)
  );

  deliveryFee = computed(() => this.items().length > 0 ? 100 : 0);

  total = computed(() => this.subtotal() + this.deliveryFee());

  addItem(product: Product, sizeml: number, type: 'regular' | 'pre_order' = 'regular'): void {
    const size = product.sizes.find(s => s.ml === sizeml);
    if (!size) return;

    this.items.update(items => {
      const existing = items.find(i => i.productId === product.id && i.size === sizeml);
      if (existing) {
        return items.map(i =>
          i.productId === product.id && i.size === sizeml
            ? { ...i, quantity: i.quantity + 1 }
            : i
        );
      }
      return [...items, {
        productId: product.id,
        productName: product.name,
        brand: product.brand,
        image: this.imageSearch.getImageUrl(product) || product.images?.[0] || '',
        size: sizeml,
        quantity: 1,
        price: size.price,
        type
      }];
    });
  }

  removeItem(productId: string, size: number): void {
    this.items.update(items =>
      items.filter(i => !(i.productId === productId && i.size === size))
    );
  }

  updateQuantity(productId: string, size: number, quantity: number): void {
    if (quantity <= 0) {
      this.removeItem(productId, size);
      return;
    }
    this.items.update(items =>
      items.map(i =>
        i.productId === productId && i.size === size
          ? { ...i, quantity }
          : i
      )
    );
  }

  clear(): void {
    this.items.set([]);
  }
}
