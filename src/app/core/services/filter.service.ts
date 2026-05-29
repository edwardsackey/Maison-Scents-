import { Injectable, signal, computed, inject } from '@angular/core';
import { ProductService } from './product.service';

@Injectable({ providedIn: 'root' })
export class FilterService {
  private productService = inject(ProductService);

  gender = signal<string>('');
  scentFamilies = signal<string[]>([]);
  brands = signal<string[]>([]);
  searchQuery = signal<string>('');
  sortBy = signal<string>('default');

  filteredProducts = computed(() => {
    let products = this.productService.products();

    const gender = this.gender();
    if (gender) {
      products = products.filter(p => p.gender === gender);
    }

    const families = this.scentFamilies();
    if (families.length > 0) {
      products = products.filter(p =>
        families.some(f => p.scent_family.toLowerCase() === f.toLowerCase())
      );
    }

    const selectedBrands = this.brands();
    if (selectedBrands.length > 0) {
      products = products.filter(p =>
        selectedBrands.some(b => p.brand.toLowerCase() === b.toLowerCase())
      );
    }

    const query = this.searchQuery().toLowerCase();
    if (query) {
      products = products.filter(p =>
        p.name.toLowerCase().includes(query) ||
        p.brand.toLowerCase().includes(query) ||
        p.scent_family.toLowerCase().includes(query)
      );
    }

    switch (this.sortBy()) {
      case 'price-asc':
        products = [...products].sort((a, b) => a.sizes[0].price - b.sizes[0].price);
        break;
      case 'price-desc':
        products = [...products].sort((a, b) => b.sizes[0].price - a.sizes[0].price);
        break;
      case 'best-selling':
        products = [...products].sort((a, b) => b.total_units_sold - a.total_units_sold);
        break;
    }

    return products;
  });

  resultCount = computed(() => this.filteredProducts().length);

  clearAll(): void {
    this.scentFamilies.set([]);
    this.brands.set([]);
    this.searchQuery.set('');
    this.sortBy.set('default');
  }

  toggleScentFamily(family: string): void {
    this.scentFamilies.update(f =>
      f.includes(family) ? f.filter(x => x !== family) : [...f, family]
    );
  }

  toggleBrand(brand: string): void {
    this.brands.update(b =>
      b.includes(brand) ? b.filter(x => x !== brand) : [...b, brand]
    );
  }
}
