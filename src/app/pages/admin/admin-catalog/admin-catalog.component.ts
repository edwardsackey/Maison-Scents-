import { Component, ChangeDetectionStrategy, inject, signal, OnInit } from '@angular/core';
import { DatePipe } from '@angular/common';
import { SupabaseService } from '../../../core/services/supabase.service';
import { CatalogEntry } from '../../../core/services/perfume-search.service';

@Component({
  selector: 'app-admin-catalog',
  standalone: true,
  imports: [DatePipe],
  templateUrl: './admin-catalog.component.html',
  styleUrl: './admin-catalog.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class AdminCatalogComponent implements OnInit {
  private sb = inject(SupabaseService);

  entries = signal<CatalogEntry[]>([]);
  loading = signal(true);
  searchQuery = signal('');
  editingId = signal<string | null>(null);

  ngOnInit(): void {
    this.loadCatalog();
  }

  async loadCatalog(): Promise<void> {
    this.loading.set(true);
    const { data, error } = await this.sb.client
      .from('global_perfume_catalog')
      .select('*')
      .order('enriched_at', { ascending: false })
      .limit(200);

    if (!error && data) {
      this.entries.set(data as CatalogEntry[]);
    }
    this.loading.set(false);
  }

  get filteredEntries(): CatalogEntry[] {
    const q = this.searchQuery().toLowerCase();
    if (!q) return this.entries();
    return this.entries().filter(e =>
      e.name.toLowerCase().includes(q) ||
      e.brand.toLowerCase().includes(q) ||
      (e.gender || '').toLowerCase().includes(q)
    );
  }

  onSearch(event: Event): void {
    this.searchQuery.set((event.target as HTMLInputElement).value);
  }

  startEdit(id: string): void {
    this.editingId.set(id);
  }

  cancelEdit(): void {
    this.editingId.set(null);
  }

  async deleteEntry(id: string): Promise<void> {
    const { error } = await this.sb.client
      .from('global_perfume_catalog')
      .delete()
      .eq('id', id);

    if (!error) {
      this.entries.update(list => list.filter(e => e.id !== id));
    }
  }

  async addToStore(entry: CatalogEntry): Promise<void> {
    // Insert as a preorder product
    const { error } = await this.sb.client.from('products').insert({
      name: entry.name,
      brand: entry.brand,
      gender: entry.gender || 'unisex',
      scent_family: entry.scent_family || 'Oriental',
      description: entry.description || '',
      images: entry.image_url ? [entry.image_url] : [],
      stock_quantity: 0,
      is_featured: false,
      total_units_sold: 0,
      delivery_days: 30,
      is_new: true,
      catalog_id: entry.id,
      source: 'auto_cached',
      is_preorder_only: true,
    });

    if (error) {
      console.error('Failed to add to store:', error);
    }
  }
}
