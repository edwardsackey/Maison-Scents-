import { Component, ChangeDetectionStrategy, inject, signal } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { NavbarComponent } from '../../shared/components/navbar/navbar.component';
import { CartService } from '../../core/services/cart.service';
import { OrderService } from '../../core/services/order.service';

@Component({
  selector: 'app-payment',
  standalone: true,
  imports: [NavbarComponent, FormsModule],
  templateUrl: './payment.component.html',
  styleUrl: './payment.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class PaymentComponent {
  private router = inject(Router);
  private orderService = inject(OrderService);
  cart = inject(CartService);

  activeTab = signal<'card' | 'momo'>('card');
  loading = signal(false);

  cardNumber = '';
  expiry = '';
  cvv = '';
  nameOnCard = 'Mensah Edward Sackey';
  fullName = '';
  deliveryEmail = '';
  town = '';
  phone = '';

  momoNetwork = 'MTN';
  momoNumber = '';
  momoName = '';
  momoFullName = '';
  momoEmail = '';
  momoTown = '';
  momoPhone = '';

  setTab(tab: 'card' | 'momo'): void {
    this.activeTab.set(tab);
  }

  payNow(): void {
    this.loading.set(true);

    // ============================================
    // PAYSTACK INTEGRATION PLACEHOLDER
    // When ready:
    // 1. npm install @paystack/inline-js
    // 2. Get public key from paystack.com/settings
    // 3. Call backend /api/orders for access_code
    // 4. Use PaystackPop.newTransaction()
    // 5. On success: verify on backend,
    //    update order status
    // ============================================

    const delivery = this.activeTab() === 'card'
      ? { fullName: this.fullName, town: this.town, phone: this.phone }
      : { fullName: this.momoFullName, town: this.momoTown, phone: this.momoPhone };

    setTimeout(async () => {
      const order = await this.orderService.createOrder(
        this.cart.items(),
        this.activeTab(),
        delivery
      );

      if (order) {
        this.cart.clear();
      }

      this.loading.set(false);
      this.router.navigate(['/confirmation']);
    }, 1500);
  }

  goBack(): void {
    this.router.navigate(['/cart']);
  }
}
