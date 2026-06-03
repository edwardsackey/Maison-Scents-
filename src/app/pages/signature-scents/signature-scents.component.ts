import { Component, ChangeDetectionStrategy, inject, computed, signal } from '@angular/core';
import { Router, RouterLink } from '@angular/router';
import { NavbarComponent } from '../../shared/components/navbar/navbar.component';
import { FooterComponent } from '../../shared/components/footer/footer.component';
import { SignatureService } from '../../core/services/signature.service';
import { ProductService } from '../../core/services/product.service';
import { ImageSearchService } from '../../core/services/image-search.service';
import { Product } from '../../core/models/product.model';

@Component({
  selector: 'app-signature-scents',
  standalone: true,
  imports: [RouterLink, NavbarComponent, FooterComponent],
  templateUrl: './signature-scents.component.html',
  styleUrl: './signature-scents.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class SignatureScentsComponent {
  private router = inject(Router);
  signature = inject(SignatureService);
  private productService = inject(ProductService);
  imageSearch = inject(ImageSearchService);

  removingId = signal<string | null>(null);

  signatureProducts = computed(() => {
    const ids = this.signature.items();
    return this.productService.products().filter(p => ids.includes(p.id));
  });

  getProductImage(product: Product): string {
    return this.imageSearch.getImageUrl(product) || product.images?.[0] || '';
  }

  hasImage(product: Product): boolean {
    return !!this.getProductImage(product);
  }

  getFallbackGradient(product: Product): string {
    const gradients: Record<string, string> = {
      'Floral':    'linear-gradient(135deg, #fce4ec, #f8bbd0)',
      'Woody':     'linear-gradient(135deg, #efebe9, #d7ccc8)',
      'Oriental':  'linear-gradient(135deg, #fff3e0, #ffe0b2)',
      'Fresh':     'linear-gradient(135deg, #e0f7fa, #b2ebf2)',
      'Gourmand':  'linear-gradient(135deg, #fbe9e7, #ffccbc)',
      'Chypre':    'linear-gradient(135deg, #f1f8e9, #dcedc8)',
    };
    return gradients[product.scent_family] || 'linear-gradient(135deg, #fafafa, #f0f0f0)';
  }

  removeProduct(id: string): void {
    this.removingId.set(id);
    setTimeout(() => {
      this.signature.remove(id);
      this.removingId.set(null);
    }, 300);
  }

  viewProduct(product: Product): void {
    this.router.navigate(['/product', product.id]);
  }

  goBack(): void {
    this.router.navigate(['/storefront']);
  }
}
