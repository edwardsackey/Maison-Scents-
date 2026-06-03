import { Component, ChangeDetectionStrategy, inject, computed, signal } from '@angular/core';
import { Router, RouterLink } from '@angular/router';
import { NavbarComponent } from '../../shared/components/navbar/navbar.component';
import { FooterComponent } from '../../shared/components/footer/footer.component';
import { SignatureService } from '../../core/services/signature.service';
import { ProductService } from '../../core/services/product.service';
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

  removingId = signal<string | null>(null);

  signatureProducts = computed(() => {
    const ids = this.signature.items();
    return this.productService.products().filter(p => ids.includes(p.id));
  });

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
