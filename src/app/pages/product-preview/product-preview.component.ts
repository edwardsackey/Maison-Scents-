import { Component, ChangeDetectionStrategy, inject, signal, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { NavbarComponent } from '../../shared/components/navbar/navbar.component';
import { PerfumeSearchService, CatalogEntry } from '../../core/services/perfume-search.service';
import { CartService } from '../../core/services/cart.service';

@Component({
  selector: 'app-product-preview',
  standalone: true,
  imports: [NavbarComponent],
  templateUrl: './product-preview.component.html',
  styleUrl: './product-preview.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class ProductPreviewComponent implements OnInit {
  private route = inject(ActivatedRoute);
  private router = inject(Router);
  private perfumeSearch = inject(PerfumeSearchService);
  private cartService = inject(CartService);

  catalog = signal<CatalogEntry | null>(null);
  loading = signal(true);
  error = signal(false);
  saving = signal(false);

  ngOnInit(): void {
    const query = this.route.snapshot.queryParamMap.get('query') || '';
    const brand = this.route.snapshot.queryParamMap.get('brand') || '';

    const searchTerm = brand ? `${brand} ${query}` : query;

    if (searchTerm.length < 2) {
      this.loading.set(false);
      this.error.set(true);
      return;
    }

    this.perfumeSearch.getEnrichedProduct(searchTerm).subscribe({
      next: result => {
        if (result?.catalog) {
          this.catalog.set(result.catalog);
        } else {
          this.error.set(true);
        }
        this.loading.set(false);
      },
      error: () => {
        this.error.set(true);
        this.loading.set(false);
      }
    });
  }

  get fallbackGradient(): string {
    const c = this.catalog();
    if (!c) return 'linear-gradient(135deg, #fafafa, #f0f0f0)';
    const gradients: Record<string, string> = {
      'Floral':    'linear-gradient(135deg, #fce4ec, #f8bbd0)',
      'Woody':     'linear-gradient(135deg, #efebe9, #d7ccc8)',
      'Oriental':  'linear-gradient(135deg, #fff3e0, #ffe0b2)',
      'Fresh':     'linear-gradient(135deg, #e0f7fa, #b2ebf2)',
      'Gourmand':  'linear-gradient(135deg, #fbe9e7, #ffccbc)',
      'Chypre':    'linear-gradient(135deg, #f1f8e9, #dcedc8)',
    };
    return gradients[c.scent_family || ''] || 'linear-gradient(135deg, #fafafa, #f0f0f0)';
  }

  onImageError(): void {
    this.catalog.update(v => v ? { ...v, image_url: null } : null);
  }

  placePreOrder(): void {
    const c = this.catalog();
    if (!c) return;

    this.saving.set(true);
    this.perfumeSearch.saveAsPreorder(c).subscribe({
      next: product => {
        this.saving.set(false);
        if (product) {
          this.cartService.addItem(product, product.sizes[0]?.ml || 100, 'pre_order');
          this.router.navigate(['/cart']);
        }
      },
      error: () => {
        this.saving.set(false);
      }
    });
  }

  goBack(): void {
    this.router.navigate(['/storefront']);
  }
}
