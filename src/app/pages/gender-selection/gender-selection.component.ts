import { Component, ChangeDetectionStrategy, signal } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-gender-selection',
  standalone: true,
  templateUrl: './gender-selection.component.html',
  styleUrl: './gender-selection.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class GenderSelectionComponent {
  hoveredPanel = signal<'her' | 'him' | null>(null);
  transitioning = signal(false);
  loaded = signal(false);

  constructor(private router: Router) {
    setTimeout(() => this.loaded.set(true), 100);
  }

  onHover(panel: 'her' | 'him'): void {
    this.hoveredPanel.set(panel);
  }

  onLeave(): void {
    this.hoveredPanel.set(null);
  }

  selectGender(gender: 'female' | 'male'): void {
    this.transitioning.set(true);
    setTimeout(() => {
      this.router.navigate(['/storefront'], { queryParams: { gender } });
    }, 500);
  }
}
