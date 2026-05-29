import { Component, ChangeDetectionStrategy, inject, signal } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router, RouterLink } from '@angular/router';
import { AuthService } from '../../../core/services/auth.service';

@Component({
  selector: 'app-sign-in',
  standalone: true,
  imports: [FormsModule, RouterLink],
  templateUrl: './sign-in.component.html',
  styleUrl: './sign-in.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class SignInComponent {
  private auth = inject(AuthService);
  private router = inject(Router);

  email = '';
  loading = signal(false);

  onSubmit(): void {
    if (!this.email) return;
    this.loading.set(true);
    this.auth.signIn(this.email).subscribe({
      next: () => this.router.navigate(['/gender-selection']),
      complete: () => this.loading.set(false)
    });
  }

  onSocialLogin(provider: 'google' | 'apple'): void {
    // Replace with real OAuth flow: Google Sign-In or Apple Sign-In
    this.loading.set(true);
    this.auth.signIn(`${provider}@user.com`).subscribe({
      next: () => this.router.navigate(['/gender-selection']),
      complete: () => this.loading.set(false)
    });
  }
}
