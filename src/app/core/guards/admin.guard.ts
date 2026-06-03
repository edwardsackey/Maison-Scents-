import { inject } from '@angular/core';
import { CanActivateFn, Router } from '@angular/router';
import { AuthService } from '../services/auth.service';
import { SupabaseService } from '../services/supabase.service';

export const adminGuard: CanActivateFn = async () => {
  const auth = inject(AuthService);
  const router = inject(Router);
  const sb = inject(SupabaseService);

  // Ensure we have a valid session first
  const { data: { session } } = await sb.client.auth.getSession();

  if (!session) {
    router.navigate(['/auth/sign-in']);
    return false;
  }

  // Check admin status from the signal (already populated by AuthService)
  if (auth.isAdmin()) {
    return true;
  }

  // If signal isn't set yet, check the profile directly
  const { data: profile } = await sb.client
    .from('profiles')
    .select('is_admin')
    .eq('id', session.user.id)
    .single();

  if (profile?.is_admin) {
    return true;
  }

  router.navigate(['/storefront']);
  return false;
};
