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
  auth = inject(AuthService);
  private router = inject(Router);

  email = '';
  password = '';
  loading = signal(false);
  showPassword = signal(false);

  togglePassword(): void {
    this.showPassword.update(v => !v);
  }

  async onSubmit(): Promise<void> {
    if (!this.email || !this.password) return;
    this.loading.set(true);

    const success = await this.auth.signIn(this.email, this.password);
    if (success) {
      this.router.navigate(['/gender-selection']);
    }

    this.loading.set(false);
  }

  async onSocialLogin(provider: 'google' | 'apple'): Promise<void> {
    if (provider === 'google') {
      await this.auth.signInWithGoogle();
    } else if (provider === 'apple') {
      await this.auth.signInWithApple();
    }
  }
}
