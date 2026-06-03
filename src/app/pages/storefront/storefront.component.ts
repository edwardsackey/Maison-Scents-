import { Component, ChangeDetectionStrategy, inject, signal, computed, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { NavbarComponent } from '../../shared/components/navbar/navbar.component';
import { ProductCardComponent } from '../../shared/components/product-card/product-card.component';
import { FooterComponent } from '../../shared/components/footer/footer.component';
import { SkeletonLoaderComponent } from '../../shared/components/skeleton-loader/skeleton-loader.component';
import { FilterService } from '../../core/services/filter.service';
import { ProductService } from '../../core/services/product.service';
import { Product } from '../../core/models/product.model';

@Component({
  selector: 'app-storefront',
  standalone: true,
  imports: [
    NavbarComponent,
    ProductCardComponent,
    FooterComponent,
    SkeletonLoaderComponent
  ],
  templateUrl: './storefront.component.html',
  styleUrl: './storefront.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class StorefrontComponent implements OnInit {
  private route = inject(ActivatedRoute);
  private router = inject(Router);
  filterService = inject(FilterService);
  private productService = inject(ProductService);

  gender = signal<string>('female');
  loading = signal(true);
  filterOpen = signal(false);
  searchQuery = signal('');

  scentFamilies = ['Floral', 'Woody', 'Oriental', 'Fresh', 'Gourmand', 'Chypre'];
  brands = computed(() => {
    const gender = this.gender();
    const genderProducts = this.productService.products()
      .filter(p => p.gender === gender || p.gender === 'unisex');

    const brandMap = new Map<string, number>();
    genderProducts.forEach(p => {
      brandMap.set(p.brand, (brandMap.get(p.brand) || 0) + 1);
    });

    return Array.from(brandMap.entries())
      .map(([name, count]) => ({ name, count }))
      .sort((a, b) => b.count - a.count);
  });

  ngOnInit(): void {
    this.route.queryParams.subscribe(params => {
      const g = params['gender'] || 'female';
      this.gender.set(g);
      this.filterService.gender.set(g);
    });
    setTimeout(() => this.loading.set(false), 600);
  }

  get genderLabel(): string {
    return this.gender() === 'female' ? 'For Her' : 'For Him';
  }

  get products(): Product[] {
    return this.filterService.filteredProducts();
  }

  onSearch(event: Event): void {
    const value = (event.target as HTMLInputElement).value;
    this.searchQuery.set(value);
    this.filterService.searchQuery.set(value);
  }

  toggleFilter(): void {
    this.filterOpen.update(v => !v);
  }

  isFamilySelected(family: string): boolean {
    return this.filterService.scentFamilies().includes(family);
  }

  isBrandSelected(brand: string): boolean {
    return this.filterService.brands().includes(brand);
  }

  toggleFamily(family: string): void {
    this.filterService.toggleScentFamily(family);
  }

  toggleBrand(brand: string): void {
    this.filterService.toggleBrand(brand);
  }

  clearFilters(): void {
    this.filterService.clearAll();
    this.searchQuery.set('');
  }

  applyFilters(): void {
    this.filterOpen.set(false);
  }

  goBack(): void {
    this.router.navigate(['/gender-selection']);
  }

}
