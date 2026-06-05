import { Component, ChangeDetectionStrategy, input, inject, signal, computed } from '@angular/core';
import { RouterLink } from '@angular/router';
import { Product } from '../../../core/models/product.model';
import { WishlistService } from '../../../core/services/wishlist.service';

@Component({
  selector: 'app-product-card',
  standalone: true,
  imports: [RouterLink],
  templateUrl: './product-card.component.html',
  styleUrl: './product-card.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class ProductCardComponent {
  product = input.required<Product>();
  animationDelay = input<number>(0);

  wishlist = inject(WishlistService);

  justToggled = signal(false);
  imageError = signal(false);

  /** Best available image URL from the product record */
  imageUrl = computed(() => {
    const img = this.product().images?.[0];
    return img && !img.includes('placeholder') ? img : '';
  });

  /** Show gradient fallback when no image or image failed to load */
  showFallback = computed(() => !this.imageUrl() || this.imageError());

  /** Scent-family-based gradient for the fallback card */
  fallbackGradient = computed(() => {
    const gradients: Record<string, string> = {
      'Floral':    'linear-gradient(135deg, #fce4ec, #f8bbd0)',
      'Woody':     'linear-gradient(135deg, #efebe9, #d7ccc8)',
      'Oriental':  'linear-gradient(135deg, #fff3e0, #ffe0b2)',
      'Fresh':     'linear-gradient(135deg, #e0f7fa, #b2ebf2)',
      'Gourmand':  'linear-gradient(135deg, #fbe9e7, #ffccbc)',
      'Chypre':    'linear-gradient(135deg, #f1f8e9, #dcedc8)',
    };
    return gradients[this.product().scent_family] || 'linear-gradient(135deg, #fafafa, #f0f0f0)';
  });

  get isWishlisted(): boolean {
    return this.wishlist.isWishlisted(this.product().id);
  }

  toggleWishlist(event: Event): void {
    event.preventDefault();
    event.stopPropagation();
    this.wishlist.toggle(this.product().id);
    this.justToggled.set(true);
    setTimeout(() => this.justToggled.set(false), 600);
  }

  onImageError(): void {
    this.imageError.set(true);
  }
}
