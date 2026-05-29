import { Injectable, signal, computed } from '@angular/core';
import { Observable, of, delay, tap } from 'rxjs';
import { User } from '../models/user.model';

@Injectable({ providedIn: 'root' })
export class AuthService {
  currentUser = signal<User | null>(null);
  isAdmin = signal<boolean>(false);
  isAuthenticated = computed(() => this.currentUser() !== null);

  signIn(email: string): Observable<User> {
    // Replace with: this.http.post<User>('/api/auth/sign-in', { email }).pipe(...)
    const user: User = {
      id: 'u1',
      name: email.split('@')[0],
      email,
      isAdmin: false
    };
    return of(user).pipe(
      delay(500),
      tap(u => this.currentUser.set(u))
    );
  }

  signUp(name: string, email: string, _password: string): Observable<User> {
    // Replace with: this.http.post<User>('/api/auth/sign-up', { name, email, password }).pipe(...)
    const user: User = {
      id: 'u' + Date.now(),
      name,
      email,
      isAdmin: false
    };
    return of(user).pipe(
      delay(500),
      tap(u => this.currentUser.set(u))
    );
  }

  enableAdmin(): void {
    this.isAdmin.set(true);
    const user = this.currentUser();
    if (user) {
      this.currentUser.set({ ...user, isAdmin: true });
    }
  }

  signOut(): void {
    this.currentUser.set(null);
    this.isAdmin.set(false);
  }
}
