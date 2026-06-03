import { Component, ChangeDetectionStrategy, inject, computed } from '@angular/core';
import { Router, RouterLink } from '@angular/router';
import { NavbarComponent } from '../../shared/components/navbar/navbar.component';
import { ProductCardComponent } from '../../shared/components/product-card/product-card.component';
import { FooterComponent } from '../../shared/components/footer/footer.component';
import { WishlistService } from '../../core/services/wishlist.service';
import { ProductService } from '../../core/services/product.service';

@Component({
  selector: 'app-wishlist',
  standalone: true,
  imports: [RouterLink, NavbarComponent, ProductCardComponent, FooterComponent],
  templateUrl: './wishlist.component.html',
  styleUrl: './wishlist.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class WishlistComponent {
  private router = inject(Router);
  wishlist = inject(WishlistService);
  private productService = inject(ProductService);

  wishlistProducts = computed(() => {
    const ids = this.wishlist.items();
    return this.productService.products().filter(p => ids.includes(p.id));
  });

  goBack(): void {
    this.router.navigate(['/storefront']);
  }
}
