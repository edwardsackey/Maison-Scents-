import { Component, ChangeDetectionStrategy, output, inject } from '@angular/core';
import { RouterLink } from '@angular/router';
import { CartService } from '../../../core/services/cart.service';
import { WishlistService } from '../../../core/services/wishlist.service';

@Component({
  selector: 'app-navbar',
  standalone: true,
  imports: [RouterLink],
  templateUrl: './navbar.component.html',
  styleUrl: './navbar.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class NavbarComponent {
  cart = inject(CartService);
  wishlist = inject(WishlistService);

  menuToggle = output<void>();
  cartBounce = false;

  onMenuToggle(): void {
    this.menuToggle.emit();
  }

  triggerCartBounce(): void {
    this.cartBounce = true;
    setTimeout(() => this.cartBounce = false, 400);
  }
}
