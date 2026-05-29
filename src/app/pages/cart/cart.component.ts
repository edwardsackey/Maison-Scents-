import { Component, ChangeDetectionStrategy, inject } from '@angular/core';
import { Router } from '@angular/router';
import { NavbarComponent } from '../../shared/components/navbar/navbar.component';
import { QuantityControlComponent } from '../../shared/components/quantity-control/quantity-control.component';
import { CartService } from '../../core/services/cart.service';

@Component({
  selector: 'app-cart',
  standalone: true,
  imports: [NavbarComponent, QuantityControlComponent],
  templateUrl: './cart.component.html',
  styleUrl: './cart.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class CartComponent {
  cart = inject(CartService);
  private router = inject(Router);

  removingItem: string | null = null;

  onQuantityChange(productId: string, size: number, qty: number): void {
    this.cart.updateQuantity(productId, size, qty);
  }

  removeItem(productId: string, size: number): void {
    this.removingItem = `${productId}-${size}`;
    setTimeout(() => {
      this.cart.removeItem(productId, size);
      this.removingItem = null;
    }, 250);
  }

  isRemoving(productId: string, size: number): boolean {
    return this.removingItem === `${productId}-${size}`;
  }

  checkout(): void {
    this.router.navigate(['/payment']);
  }

  goBack(): void {
    this.router.navigate(['/storefront']);
  }
}
