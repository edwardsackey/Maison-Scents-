import { Component, ChangeDetectionStrategy, inject, signal } from '@angular/core';
import { Router, RouterLink } from '@angular/router';
import { CartService } from '../../../core/services/cart.service';
import { WishlistService } from '../../../core/services/wishlist.service';
import { AuthService } from '../../../core/services/auth.service';

@Component({
  selector: 'app-navbar',
  standalone: true,
  imports: [RouterLink],
  templateUrl: './navbar.component.html',
  styleUrl: './navbar.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class NavbarComponent {
  private router = inject(Router);
  cart = inject(CartService);
  wishlist = inject(WishlistService);
  auth = inject(AuthService);

  menuOpen = signal(false);
  cartBounce = false;

  toggleMenu(): void {
    this.menuOpen.update(v => !v);
  }

  closeMenu(): void {
    this.menuOpen.set(false);
  }

  triggerCartBounce(): void {
    this.cartBounce = true;
    setTimeout(() => this.cartBounce = false, 400);
  }

  async signOut(): Promise<void> {
    await this.auth.signOut();
    this.closeMenu();
    this.router.navigate(['/auth/sign-in']);
  }
}
