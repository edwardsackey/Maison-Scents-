import { Component, ChangeDetectionStrategy, inject } from '@angular/core';
import { ProductService } from '../../../core/services/product.service';
import { Product } from '../../../core/models/product.model';

@Component({
  selector: 'app-admin-best-selling',
  standalone: true,
  templateUrl: './admin-best-selling.component.html',
  styleUrl: './admin-best-selling.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class AdminBestSellingComponent {
  productService = inject(ProductService);

  get rankedProducts(): Product[] {
    return [...this.productService.products()].sort((a, b) => b.total_units_sold - a.total_units_sold);
  }

  toggleFeatured(id: string): void {
    // Replace with: this.productService.toggleFeatured(id).subscribe()
    this.productService.toggleFeatured(id);
  }
}
