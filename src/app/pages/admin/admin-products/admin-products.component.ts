import { Component, ChangeDetectionStrategy, inject, signal } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Product } from '../../../core/models/product.model';
import { ProductService } from '../../../core/services/product.service';

@Component({
  selector: 'app-admin-products',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './admin-products.component.html',
  styleUrl: './admin-products.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class AdminProductsComponent {
  productService = inject(ProductService);
  showForm = signal(false);
  editingProduct = signal<Product | null>(null);

  imagePreview = signal<string | null>(null);

  form = {
    name: '', brand: '', gender: 'female' as 'male' | 'female' | 'unisex',
    scent_family: '', description: '',
    top_notes: '', heart_notes: '', base_notes: '',
    size30: 0, size50: 0, size100: 0,
    avail30: true, avail50: true, avail100: true,
    stock_quantity: 0, delivery_days: 3,
    is_new: false, is_featured: false, image: ''
  };

  openAddForm(): void {
    this.editingProduct.set(null);
    this.resetForm();
    this.imagePreview.set(null);
    this.showForm.set(true);
  }

  editProduct(p: Product): void {
    this.editingProduct.set(p);
    this.form = {
      name: p.name, brand: p.brand, gender: p.gender,
      scent_family: p.scent_family, description: p.description,
      top_notes: p.scent_notes.top.join(', '),
      heart_notes: p.scent_notes.heart.join(', '),
      base_notes: p.scent_notes.base.join(', '),
      size30: p.sizes[0]?.price || 0,
      size50: p.sizes[1]?.price || 0,
      size100: p.sizes[2]?.price || 0,
      avail30: p.sizes[0]?.available ?? true,
      avail50: p.sizes[1]?.available ?? true,
      avail100: p.sizes[2]?.available ?? true,
      stock_quantity: p.stock_quantity, delivery_days: p.delivery_days,
      is_new: p.is_new, is_featured: p.is_featured,
      image: p.images[0] || ''
    };
    this.imagePreview.set(p.images[0] || null);
    this.showForm.set(true);
  }

  saving = signal(false);

  async saveProduct(): Promise<void> {
    this.saving.set(true);

    // Upload image to Supabase Storage if it's a data URL (new upload)
    let imageUrl = this.form.image;
    if (imageUrl.startsWith('data:') && this.selectedFile) {
      const uploaded = await this.productService.uploadImage(this.selectedFile);
      if (uploaded) {
        imageUrl = uploaded;
      }
    }

    const data: Omit<Product, 'id'> & { id?: string } = {
      name: this.form.name, brand: this.form.brand,
      gender: this.form.gender, scent_family: this.form.scent_family,
      description: this.form.description,
      images: [imageUrl || 'assets/images/Khamarah.jpg'],
      sizes: [
        { ml: 30, price: this.form.size30, available: this.form.avail30 },
        { ml: 50, price: this.form.size50, available: this.form.avail50 },
        { ml: 100, price: this.form.size100, available: this.form.avail100 }
      ],
      stock_quantity: this.form.stock_quantity,
      is_featured: this.form.is_featured,
      total_units_sold: this.editingProduct()?.total_units_sold || 0,
      delivery_days: this.form.delivery_days,
      is_new: this.form.is_new,
      scent_notes: {
        top: this.form.top_notes.split(',').map(s => s.trim()).filter(Boolean),
        heart: this.form.heart_notes.split(',').map(s => s.trim()).filter(Boolean),
        base: this.form.base_notes.split(',').map(s => s.trim()).filter(Boolean)
      },
      ratings: this.editingProduct()?.ratings || []
    };

    if (this.editingProduct()) {
      await this.productService.updateProduct(this.editingProduct()!.id, data);
    } else {
      await this.productService.addProduct(data);
    }

    this.saving.set(false);
    this.selectedFile = null;
    this.showForm.set(false);
  }

  selectedFile: File | null = null;

  onImageSelected(event: Event): void {
    const input = event.target as HTMLInputElement;
    const file = input.files?.[0];
    if (!file) return;

    this.selectedFile = file;

    const reader = new FileReader();
    reader.onload = () => {
      const dataUrl = reader.result as string;
      this.form.image = dataUrl;
      this.imagePreview.set(dataUrl);
    };
    reader.readAsDataURL(file);
  }

  removeImage(): void {
    this.form.image = '';
    this.selectedFile = null;
    this.imagePreview.set(null);
  }

  async deleteProduct(id: string): Promise<void> {
    await this.productService.deleteProduct(id);
  }

  getPriceRange(p: Product): string {
    const min = Math.min(...p.sizes.map(s => s.price));
    const max = Math.max(...p.sizes.map(s => s.price));
    return `GHS ${min} - ${max}`;
  }

  private resetForm(): void {
    this.form = {
      name: '', brand: '', gender: 'female',
      scent_family: '', description: '',
      top_notes: '', heart_notes: '', base_notes: '',
      size30: 0, size50: 0, size100: 0,
      avail30: true, avail50: true, avail100: true,
      stock_quantity: 0, delivery_days: 3,
      is_new: false, is_featured: false, image: ''
    };
  }
}
