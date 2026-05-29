import { Component, ChangeDetectionStrategy, input } from '@angular/core';

@Component({
  selector: 'app-star-rating',
  standalone: true,
  templateUrl: './star-rating.component.html',
  styleUrl: './star-rating.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class StarRatingComponent {
  rating = input<number>(0);
  maxStars = input<number>(5);

  get stars(): boolean[] {
    return Array.from({ length: this.maxStars() }, (_, i) => i < Math.round(this.rating()));
  }
}
