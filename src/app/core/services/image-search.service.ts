import { Injectable, inject, signal } from '@angular/core';
import { SupabaseService } from './supabase.service';
import { Product } from '../models/product.model';

interface QueueItem {
  id: string;
  brand: string;
  name: string;
}

@Injectable({ providedIn: 'root' })
export class ImageSearchService {
  private sb = inject(SupabaseService);

  /** Resolved image URLs keyed by product ID */
  resolved = signal<Record<string, string>>({});

  /** Product IDs that failed to resolve */
  failed = signal<Set<string>>(new Set());

  /** Currently resolving IDs */
  private resolving = new Set<string>();

  /** Queue of products waiting */
  private queue: QueueItem[] = [];
  private processing = false;
  private requestCount = 0;
  private readonly MAX_REQUESTS = 95;

  // ─── Public API ────────────────────────────────────────────

  hasRealImage(product: Product): boolean {
    const img = product.images?.[0];
    return !!img && !img.includes('placeholder');
  }

  getImageUrl(product: Product): string {
    const resolvedUrl = this.resolved()[product.id];
    if (resolvedUrl) return resolvedUrl;
    if (this.hasRealImage(product)) return product.images[0];
    return '';
  }

  queueResolve(product: Product): void {
    if (this.hasRealImage(product)) return;
    if (this.resolved()[product.id]) return;
    if (this.failed().has(product.id)) return;
    if (this.resolving.has(product.id)) return;
    if (this.queue.some(q => q.id === product.id)) return;
    if (this.requestCount >= this.MAX_REQUESTS) return;

    this.queue.push({
      id: product.id,
      brand: product.brand,
      name: product.name
    });

    this.processQueue();
  }

  // ─── Queue Processor ───────────────────────────────────────

  private async processQueue(): Promise<void> {
    if (this.processing) return;
    this.processing = true;

    while (this.queue.length > 0) {
      // Collect a batch of up to 5 items
      const batch = this.queue.splice(0, 5).filter(
        item => !this.resolved()[item.id] && this.requestCount < this.MAX_REQUESTS
      );

      if (batch.length === 0) continue;

      this.requestCount += batch.length;
      batch.forEach(item => this.resolving.add(item.id));

      const results = await this.searchBatch(batch);

      for (const item of batch) {
        this.resolving.delete(item.id);
        const url = results[item.id];

        if (url) {
          this.resolved.update(map => ({ ...map, [item.id]: url }));
          console.log('[ImageSearch] Resolved:', item.brand, item.name);
        } else {
          this.failed.update(set => {
            const next = new Set(set);
            next.add(item.id);
            return next;
          });
        }
      }

      // Throttle between batches
      if (this.queue.length > 0) {
        await new Promise(r => setTimeout(r, 600));
      }
    }

    this.processing = false;
  }

  // ─── Edge Function Call ────────────────────────────────────

  private async searchBatch(items: QueueItem[]): Promise<Record<string, string | null>> {
    try {
      const { data, error } = await this.sb.client.functions.invoke('image-search', {
        body: {
          products: items.map(item => ({
            brand: item.brand,
            name: item.name,
            productId: item.id
          }))
        }
      });

      if (error) {
        console.error('[ImageSearch] Edge function error:', error);
        // If the function isn't deployed yet, stop trying
        if (error.message?.includes('404') || error.message?.includes('not found')) {
          console.warn('[ImageSearch] Edge function not deployed. Disabling auto-search.');
          this.requestCount = this.MAX_REQUESTS;
          this.queue = [];
        }
        return {};
      }

      return data?.results || {};
    } catch (err) {
      console.error('[ImageSearch] Fetch error:', err);
      return {};
    }
  }
}
