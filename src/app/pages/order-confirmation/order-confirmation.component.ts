import { Component, ChangeDetectionStrategy, inject } from '@angular/core';
import { Router } from '@angular/router';
import { OrderService } from '../../core/services/order.service';

@Component({
  selector: 'app-order-confirmation',
  standalone: true,
  templateUrl: './order-confirmation.component.html',
  styleUrl: './order-confirmation.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class OrderConfirmationComponent {
  private router = inject(Router);
  private orderService = inject(OrderService);

  get lastOrder() {
    const orders = this.orderService.orders();
    return orders[orders.length - 1] ?? null;
  }

  continueShopping(): void {
    this.router.navigate(['/gender-selection']);
  }
}
