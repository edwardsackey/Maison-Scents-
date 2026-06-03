import { Component, ChangeDetectionStrategy, inject } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { NgClass } from '@angular/common';
import { OrderService } from '../../../core/services/order.service';
import { OrderStatus } from '../../../core/models/order.model';

@Component({
  selector: 'app-admin-orders',
  standalone: true,
  imports: [FormsModule, NgClass],
  templateUrl: './admin-orders.component.html',
  styleUrl: './admin-orders.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class AdminOrdersComponent {
  orderService = inject(OrderService);
  statuses: OrderStatus[] = ['pending', 'processing', 'shipped', 'delivered', 'pre_order'];

  async updateStatus(orderId: string, event: Event): Promise<void> {
    const status = (event.target as HTMLSelectElement).value as OrderStatus;
    await this.orderService.updateStatus(orderId, status);
  }

  getStatusClass(status: string): string {
    return `status--${status}`;
  }

  getItemsSummary(items: { productName: string }[]): string {
    return items.map(i => i.productName).join(', ');
  }
}
