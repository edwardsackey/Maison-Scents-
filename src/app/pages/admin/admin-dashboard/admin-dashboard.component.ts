import { Component, ChangeDetectionStrategy, inject } from '@angular/core';
import { NgClass } from '@angular/common';
import { ProductService } from '../../../core/services/product.service';
import { OrderService } from '../../../core/services/order.service';

@Component({
  selector: 'app-admin-dashboard',
  standalone: true,
  imports: [NgClass],
  templateUrl: './admin-dashboard.component.html',
  styleUrl: './admin-dashboard.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class AdminDashboardComponent {
  productService = inject(ProductService);
  orderService = inject(OrderService);

  get totalProducts(): number { return this.productService.totalProducts(); }
  get totalOrders(): number { return this.orderService.orders().length; }
  get outOfStock(): number { return this.productService.getOutOfStock().length; }
  get preOrdersPending(): number {
    return this.orderService.orders().filter(o => o.status === 'pre_order').length;
  }
  get recentOrders() { return this.orderService.orders().slice(-5).reverse(); }

  getStatusClass(status: string): string {
    return `status--${status}`;
  }
}
