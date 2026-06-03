import { Injectable, inject, signal } from '@angular/core';
import { Order, OrderStatus, CartItem } from '../models/order.model';
import { SupabaseService } from './supabase.service';
import { MOCK_ORDERS } from '../../data/mock-data';

@Injectable({ providedIn: 'root' })
export class OrderService {
  private sb = inject(SupabaseService);

  orders = signal<Order[]>([]);

  constructor() {
    this.loadOrders();

    this.sb.client.auth.onAuthStateChange((event) => {
      if (event === 'SIGNED_IN') {
        this.loadOrders();
      } else if (event === 'SIGNED_OUT') {
        this.orders.set([]);
      }
    });
  }

  async loadOrders(): Promise<void> {
    try {
      const { data: rows, error } = await this.sb.client
        .from('orders')
        .select(`
          *,
          order_items ( * )
        `)
        .order('created_at', { ascending: false });

      if (error) throw error;

      if (rows && rows.length > 0) {
        const orders = rows.map((r: any) => this.mapDbToOrder(r));
        this.orders.set(orders);
      } else {
        // DB is empty — use mock data so admin dashboard still looks populated
        this.orders.set(MOCK_ORDERS);
      }
    } catch (err) {
      console.warn('Order fetch failed, using mock data:', err);
      this.orders.set(MOCK_ORDERS);
    }
  }

  private mapDbToOrder(row: any): Order {
    const items: CartItem[] = (row.order_items || []).map((item: any) => ({
      productId: item.product_id || '',
      productName: item.product_name,
      brand: item.brand,
      image: item.image || '',
      size: item.size,
      quantity: item.quantity,
      price: Number(item.price),
      type: item.type || 'regular'
    }));

    return {
      id: row.order_number || row.id,
      customer: row.customer_name,
      email: row.customer_email || '',
      items,
      subtotal: Number(row.subtotal),
      deliveryFee: Number(row.delivery_fee),
      total: Number(row.total),
      status: row.status as OrderStatus,
      paymentMethod: row.payment_method as 'card' | 'momo',
      date: row.created_at?.split('T')[0] || '',
      deliveryDetails: {
        fullName: row.delivery_full_name || '',
        town: row.delivery_town || '',
        phone: row.delivery_phone || ''
      },
      estimatedDelivery: row.estimated_delivery || ''
    };
  }

  getAll(): Order[] {
    return this.orders();
  }

  getById(id: string): Order | undefined {
    return this.orders().find(o => o.id === id);
  }

  async createOrder(
    items: CartItem[],
    paymentMethod: 'card' | 'momo',
    deliveryDetails: { fullName: string; town: string; phone: string }
  ): Promise<Order | null> {
    const { data: { session } } = await this.sb.client.auth.getSession();

    const subtotal = items.reduce((sum, i) => sum + i.price * i.quantity, 0);
    const orderNumber = 'ORD-' + Date.now().toString(36).toUpperCase();

    // 1. Insert order row
    const { data: inserted, error: orderErr } = await this.sb.client
      .from('orders')
      .insert({
        order_number: orderNumber,
        user_id: session?.user.id || null,
        customer_name: deliveryDetails.fullName,
        customer_email: session?.user.email || '',
        subtotal,
        delivery_fee: 100,
        total: subtotal + 100,
        status: items.some(i => i.type === 'pre_order') ? 'pre_order' : 'pending',
        payment_method: paymentMethod,
        delivery_full_name: deliveryDetails.fullName,
        delivery_town: deliveryDetails.town,
        delivery_phone: deliveryDetails.phone,
        estimated_delivery: this.getEstimatedDelivery()
      })
      .select('id, order_number')
      .single();

    if (orderErr || !inserted) {
      console.error('Failed to create order:', orderErr);
      return null;
    }

    // 2. Insert order items
    const itemRows = items.map(i => ({
      order_id: inserted.id,
      product_id: i.productId || null,
      product_name: i.productName,
      brand: i.brand,
      image: i.image,
      size: i.size,
      quantity: i.quantity,
      price: i.price,
      type: i.type
    }));

    await this.sb.client.from('order_items').insert(itemRows);

    // Refresh local list
    await this.loadOrders();

    return this.orders().find(o => o.id === inserted.order_number) || null;
  }

  async updateStatus(id: string, status: OrderStatus): Promise<void> {
    // Optimistic update
    this.orders.update(orders =>
      orders.map(o => o.id === id ? { ...o, status } : o)
    );

    const { error } = await this.sb.client
      .from('orders')
      .update({ status })
      .eq('order_number', id);

    if (error) {
      console.error('Failed to update order status:', error);
      await this.loadOrders(); // Rollback by reloading
    }
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
