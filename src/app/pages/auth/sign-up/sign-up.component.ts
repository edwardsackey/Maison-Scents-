import { Component, ChangeDetectionStrategy, inject, signal } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router, RouterLink } from '@angular/router';
import { AuthService } from '../../../core/services/auth.service';

@Component({
  selector: 'app-sign-up',
  standalone: true,
  imports: [FormsModule, RouterLink],
  templateUrl: './sign-up.component.html',
  styleUrl: './sign-up.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class SignUpComponent {
  auth = inject(AuthService);
  private router = inject(Router);

  name = '';
  email = '';
  password = '';
  loading = signal(false);
  showPassword = signal(false);

  togglePassword(): void {
    this.showPassword.update(v => !v);
  }

  async onSubmit(): Promise<void> {
    if (!this.name || !this.email || !this.password) return;
    this.loading.set(true);

    const success = await this.auth.signUp(this.name, this.email, this.password);
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
