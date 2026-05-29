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
  private auth = inject(AuthService);
  private router = inject(Router);

  name = '';
  email = '';
  password = '';
  loading = signal(false);

  onSubmit(): void {
    if (!this.name || !this.email || !this.password) return;
    this.loading.set(true);
    this.auth.signUp(this.name, this.email, this.password).subscribe({
      next: () => this.router.navigate(['/gender-selection']),
      complete: () => this.loading.set(false)
    });
  }
}
