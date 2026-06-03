import { Routes } from '@angular/router';
import { adminGuard } from './core/guards/admin.guard';

export const routes: Routes = [
  { path: '', redirectTo: 'auth/sign-in', pathMatch: 'full' },
  {
    path: 'auth/sign-in',
    loadComponent: () => import('./pages/auth/sign-in/sign-in.component').then(m => m.SignInComponent)
  },
  {
    path: 'auth/sign-up',
    loadComponent: () => import('./pages/auth/sign-up/sign-up.component').then(m => m.SignUpComponent)
  },
  {
    path: 'gender-selection',
    loadComponent: () => import('./pages/gender-selection/gender-selection.component').then(m => m.GenderSelectionComponent)
  },
  {
    path: 'storefront',
    loadComponent: () => import('./pages/storefront/storefront.component').then(m => m.StorefrontComponent)
  },
  {
    path: 'product/:id',
    loadComponent: () => import('./pages/product-detail/product-detail.component').then(m => m.ProductDetailComponent)
  },
  {
    path: 'wishlist',
    loadComponent: () => import('./pages/wishlist/wishlist.component').then(m => m.WishlistComponent)
  },
  {
    path: 'cart',
    loadComponent: () => import('./pages/cart/cart.component').then(m => m.CartComponent)
  },
  {
    path: 'payment',
    loadComponent: () => import('./pages/payment/payment.component').then(m => m.PaymentComponent)
  },
  {
    path: 'confirmation',
    loadComponent: () => import('./pages/order-confirmation/order-confirmation.component').then(m => m.OrderConfirmationComponent)
  },
  {
    path: 'about',
    loadComponent: () => import('./pages/about/about.component').then(m => m.AboutComponent)
  },
  {
    path: 'faq',
    loadComponent: () => import('./pages/faq/faq.component').then(m => m.FaqComponent)
  },
  {
    path: 'admin',
    loadComponent: () => import('./pages/admin/admin-layout/admin-layout.component').then(m => m.AdminLayoutComponent),
    canActivate: [adminGuard],
    children: [
      { path: '', redirectTo: 'dashboard', pathMatch: 'full' },
      {
        path: 'dashboard',
        loadComponent: () => import('./pages/admin/admin-dashboard/admin-dashboard.component').then(m => m.AdminDashboardComponent)
      },
      {
        path: 'products',
        loadComponent: () => import('./pages/admin/admin-products/admin-products.component').then(m => m.AdminProductsComponent)
      },
      {
        path: 'orders',
        loadComponent: () => import('./pages/admin/admin-orders/admin-orders.component').then(m => m.AdminOrdersComponent)
      },
      {
        path: 'best-selling',
        loadComponent: () => import('./pages/admin/admin-best-selling/admin-best-selling.component').then(m => m.AdminBestSellingComponent)
      }
    ]
  },
  { path: '**', redirectTo: 'auth/sign-in' }
];
