import { Component, ChangeDetectionStrategy, input, output, model } from '@angular/core';
import { ProductSize } from '../../../core/models/product.model';

@Component({
  selector: 'app-size-selector',
  standalone: true,
  templateUrl: './size-selector.component.html',
  styleUrl: './size-selector.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class SizeSelectorComponent {
  sizes = input.required<ProductSize[]>();
  selected = model<number>(0);
  sizeChange = output<ProductSize>();

  selectSize(size: ProductSize): void {
    if (!size.available) return;
    this.selected.set(size.ml);
    this.sizeChange.emit(size);
  }
}
