import { Injectable, inject, signal, computed } from '@angular/core';
import { SupabaseService } from './supabase.service';

@Injectable({ providedIn: 'root' })
export class SignatureService {
  private sb = inject(SupabaseService);

  items = signal<string[]>([]);
  count = computed(() => this.items().length);

  constructor() {
    this.loadSignatures();

    // Reload when auth state changes
    this.sb.client.auth.onAuthStateChange((event) => {
      if (event === 'SIGNED_IN') {
        this.loadSignatures();
      } else if (event === 'SIGNED_OUT') {
        this.items.set([]);
      }
    });
  }

  private async loadSignatures(): Promise<void> {
    const { data: { session } } = await this.sb.client.auth.getSession();
    if (!session) return;

    const { data, error } = await this.sb.client
      .from('signature_scents')
      .select('product_id')
      .eq('user_id', session.user.id);

    if (!error && data) {
      this.items.set(data.map((row: any) => row.product_id));
    }
  }

  async toggle(productId: string): Promise<void> {
    if (this.isSignature(productId)) {
      await this.remove(productId);
    } else {
      await this.add(productId);
    }
  }

  isSignature(productId: string): boolean {
    return this.items().includes(productId);
  }

  private async add(productId: string): Promise<void> {
    // Optimistic update
    this.items.update(ids => [...ids, productId]);

    const { data: { session } } = await this.sb.client.auth.getSession();
    if (!session) return;

    const { error } = await this.sb.client.from('signature_scents').insert({
      user_id: session.user.id,
      product_id: productId
    });

    if (error) {
      console.error('Failed to add signature scent:', error);
      this.items.update(ids => ids.filter(id => id !== productId));
    }
  }

  async remove(productId: string): Promise<void> {
    // Optimistic update
    this.items.update(ids => ids.filter(id => id !== productId));

    const { data: { session } } = await this.sb.client.auth.getSession();
    if (!session) return;

    const { error } = await this.sb.client
      .from('signature_scents')
      .delete()
      .eq('user_id', session.user.id)
      .eq('product_id', productId);

    if (error) {
      console.error('Failed to remove signature scent:', error);
      this.items.update(ids => [...ids, productId]);
    }
  }
}
