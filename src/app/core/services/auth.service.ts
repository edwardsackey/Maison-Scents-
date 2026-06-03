import { Injectable, inject, signal, computed } from '@angular/core';
import { Router } from '@angular/router';
import { SupabaseService } from './supabase.service';
import { User } from '../models/user.model';

@Injectable({ providedIn: 'root' })
export class AuthService {
  private sb = inject(SupabaseService);
  private router = inject(Router);

  currentUser = signal<User | null>(null);
  isAdmin = signal<boolean>(false);
  isAuthenticated = computed(() => this.currentUser() !== null);
  authError = signal<string | null>(null);

  constructor() {
    this.init();
  }

  private async init(): Promise<void> {
    // First restore any existing session
    const { data: { session } } = await this.sb.client.auth.getSession();
    if (session?.user) {
      await this.setUserFromSession(session.user);
    }

    // Then listen for future auth state changes
    this.sb.client.auth.onAuthStateChange(async (event, session) => {
      console.log('[Auth] State change:', event);

      if (event === 'SIGNED_IN' || event === 'TOKEN_REFRESHED') {
        if (session?.user) {
          await this.setUserFromSession(session.user);
        }
      } else if (event === 'SIGNED_OUT') {
        this.currentUser.set(null);
        this.isAdmin.set(false);
      }
    });
  }

  private async setUserFromSession(authUser: any): Promise<void> {
    try {
      // Fetch profile to get admin status and full name
      const { data: profile, error } = await this.sb.client
        .from('profiles')
        .select('full_name, is_admin')
        .eq('id', authUser.id)
        .single();

      if (error) {
        console.warn('[Auth] Profile fetch error:', error.message);
      }

      const isAdmin = profile?.is_admin === true;

      const user: User = {
        id: authUser.id,
        name: profile?.full_name || authUser.user_metadata?.['full_name'] || authUser.email?.split('@')[0] || '',
        email: authUser.email || '',
        isAdmin
      };

      console.log('[Auth] User loaded:', user.email, 'admin:', isAdmin);

      this.currentUser.set(user);
      this.isAdmin.set(isAdmin);
    } catch (err) {
      console.error('[Auth] Failed to load user session:', err);
    }
  }

  async signIn(email: string, password: string): Promise<boolean> {
    this.authError.set(null);

    const { error } = await this.sb.client.auth.signInWithPassword({
      email,
      password
    });

    if (error) {
      this.authError.set(error.message);
      return false;
    }

    return true;
  }

  async signUp(name: string, email: string, password: string): Promise<boolean> {
    this.authError.set(null);

    const { error } = await this.sb.client.auth.signUp({
      email,
      password,
      options: {
        data: { full_name: name }
      }
    });

    if (error) {
      this.authError.set(error.message);
      return false;
    }

    return true;
  }

  async signInWithGoogle(): Promise<void> {
    await this.sb.client.auth.signInWithOAuth({
      provider: 'google',
      options: { redirectTo: window.location.origin + '/gender-selection' }
    });
  }

  async signInWithApple(): Promise<void> {
    await this.sb.client.auth.signInWithOAuth({
      provider: 'apple',
      options: { redirectTo: window.location.origin + '/gender-selection' }
    });
  }

  async signOut(): Promise<void> {
    await this.sb.client.auth.signOut();
    this.currentUser.set(null);
    this.isAdmin.set(false);
  }
}
