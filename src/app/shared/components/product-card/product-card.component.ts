import { Component, ChangeDetectionStrategy, input, inject, signal } from '@angular/core';
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
}
