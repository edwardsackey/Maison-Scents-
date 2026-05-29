export type OrderStatus = 'pending' | 'processing' | 'shipped' | 'delivered' | 'pre_order';
export type PaymentMethod = 'card' | 'momo';

export interface OrderItem {
  productId: string;
  productName: string;
  brand: string;
  image: string;
  size: number;
  quantity: number;
  price: number;
  type: 'regular' | 'pre_order';
}

export interface Order {
  id: string;
  customer: string;
  email: string;
  items: OrderItem[];
  subtotal: number;
  deliveryFee: number;
  total: number;
  status: OrderStatus;
  paymentMethod: PaymentMethod;
  date: string;
  deliveryDetails: {
    fullName: string;
    town: string;
    phone: string;
  };
  estimatedDelivery: string;
}

export interface CartItem {
  productId: string;
  productName: string;
  brand: string;
  image: string;
  size: number;
  quantity: number;
  price: number;
  type: 'regular' | 'pre_order';
}
