import { Component, ChangeDetectionStrategy, model, output } from '@angular/core';

@Component({
  selector: 'app-quantity-control',
  standalone: true,
  templateUrl: './quantity-control.component.html',
  styleUrl: './quantity-control.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class QuantityControlComponent {
  quantity = model<number>(1);
  quantityChange = output<number>();

  decrement(): void {
    if (this.quantity() > 1) {
      this.quantity.update(q => q - 1);
      this.quantityChange.emit(this.quantity());
    }
  }

  increment(): void {
    this.quantity.update(q => q + 1);
    this.quantityChange.emit(this.quantity());
  }
}
