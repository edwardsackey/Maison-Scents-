import { Injectable, signal } from '@angular/core';
import { Observable, of, delay } from 'rxjs';
import { Order, OrderStatus, CartItem } from '../models/order.model';
import { MOCK_ORDERS } from '../../data/mock-data';

@Injectable({ providedIn: 'root' })
export class OrderService {
  orders = signal<Order[]>(MOCK_ORDERS);

  getAll(): Observable<Order[]> {
    // Replace with: this.http.get<Order[]>('/api/orders')
    return of(this.orders());
  }

  getById(id: string): Observable<Order | undefined> {
    // Replace with: this.http.get<Order>(`/api/orders/${id}`)
    return of(this.orders().find(o => o.id === id));
  }

  createOrder(
    items: CartItem[],
    paymentMethod: 'card' | 'momo',
    deliveryDetails: { fullName: string; town: string; phone: string }
  ): Observable<Order> {
    // Replace with: this.http.post<Order>('/api/orders', { items, paymentMethod, deliveryDetails })
    const subtotal = items.reduce((sum, i) => sum + i.price * i.quantity, 0);
    const order: Order = {
      id: 'ORD-' + String(this.orders().length + 1).padStart(3, '0'),
      customer: deliveryDetails.fullName,
      email: '',
      items,
      subtotal,
      deliveryFee: 100,
      total: subtotal + 100,
      status: items.some(i => i.type === 'pre_order') ? 'pre_order' : 'pending',
      paymentMethod,
      date: new Date().toISOString().split('T')[0],
      deliveryDetails,
      estimatedDelivery: this.getEstimatedDelivery()
    };

    this.orders.update(orders => [...orders, order]);
    return of(order).pipe(delay(500));
  }

  updateStatus(id: string, status: OrderStatus): void {
    // Replace with: this.orderService.updateStatus(id, status).subscribe()
    this.orders.update(orders =>
      orders.map(o => o.id === id ? { ...o, status } : o)
    );
  }

  private getEstimatedDelivery(): string {
    const start = new Date();
    start.setDate(start.getDate() + 3);
    const end = new Date(start);
    end.setDate(end.getDate() + 2);
    const fmt = (d: Date) => d.toLocaleDateString('en-GB', { day: 'numeric', month: 'short' });
    return `${fmt(start)} - ${fmt(end)}`;
  }
}
