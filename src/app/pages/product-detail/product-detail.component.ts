import { Component, ChangeDetectionStrategy, inject, signal, OnInit, OnDestroy, HostListener } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { NavbarComponent } from '../../shared/components/navbar/navbar.component';
import { SizeSelectorComponent } from '../../shared/components/size-selector/size-selector.component';
import { StarRatingComponent } from '../../shared/components/star-rating/star-rating.component';
import { Product, ProductSize } from '../../core/models/product.model';
import { ProductService } from '../../core/services/product.service';
import { CartService } from '../../core/services/cart.service';
import { WishlistService } from '../../core/services/wishlist.service';
import { RatingService } from '../../core/services/rating.service';

@Component({
  selector: 'app-product-detail',
  standalone: true,
  imports: [NavbarComponent, SizeSelectorComponent, StarRatingComponent],
  templateUrl: './product-detail.component.html',
  styleUrl: './product-detail.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class ProductDetailComponent implements OnInit, OnDestroy {
  private route = inject(ActivatedRoute);
  private router = inject(Router);
  private productService = inject(ProductService);
  cartService = inject(CartService);
  wishlist = inject(WishlistService);
  ratingService = inject(RatingService);

  product = signal<Product | null>(null);
  selectedSize = signal<number>(0);
  currentPrice = signal<number>(0);
  addingToCart = signal(false);
  showPreOrder = signal(false);
  menuOpen = signal(false);

  // 3D rotation state
  rotateAngle = signal(0);
  hasInteracted = signal(false);
  private isDragging = false;
  private startX = 0;
  private startAngle = 0;
  private lastX = 0;
  private velocity = 0;
  private momentumId = 0;
  private readonly SENSITIVITY = 0.6;

  private boundMouseMove = this.onMouseMove.bind(this);
  private boundMouseUp = this.onMouseUp.bind(this);

  ngOnInit(): void {
    const id = this.route.snapshot.paramMap.get('id');
    if (id) {
      this.productService.getById(id).subscribe(p => {
        if (p) {
          this.product.set(p);
          this.selectedSize.set(p.sizes[0].ml);
          this.currentPrice.set(p.sizes[0].price);
        }
      });
    }
  }

  get isWishlisted(): boolean {
    const p = this.product();
    return p ? this.wishlist.isWishlisted(p.id) : false;
  }

  get avgRating(): number {
    const p = this.product();
    return p ? this.ratingService.getAverageRating(p.id) : 0;
  }

  onSizeChange(size: ProductSize): void {
    this.selectedSize.set(size.ml);
    this.currentPrice.set(size.price);
  }

  toggleWishlist(): void {
    const p = this.product();
    if (p) this.wishlist.toggle(p.id);
  }

  addToCart(): void {
    const p = this.product();
    if (!p) return;

    if (p.stock_quantity === 0) {
      this.showPreOrder.set(true);
      return;
    }

    this.addingToCart.set(true);
    this.cartService.addItem(p, this.selectedSize());
    setTimeout(() => this.addingToCart.set(false), 300);
  }

  placePreOrder(): void {
    const p = this.product();
    if (!p) return;
    this.cartService.addItem(p, this.selectedSize(), 'pre_order');
    this.showPreOrder.set(false);
    this.router.navigate(['/cart']);
  }

  cancelPreOrder(): void {
    this.showPreOrder.set(false);
  }

  // --- 3D Rotation ---
  onRotateStart(e: TouchEvent): void {
    this.stopMomentum();
    this.isDragging = true;
    this.hasInteracted.set(true);
    this.startX = e.touches[0].clientX;
    this.lastX = this.startX;
    this.startAngle = this.rotateAngle();
    this.velocity = 0;
  }

  onRotateMove(e: TouchEvent): void {
    if (!this.isDragging) return;
    e.preventDefault();
    const x = e.touches[0].clientX;
    const delta = x - this.startX;
    this.velocity = x - this.lastX;
    this.lastX = x;
    this.rotateAngle.set(this.startAngle + delta * this.SENSITIVITY);
  }

  onRotateEnd(): void {
    this.isDragging = false;
    this.applyMomentum();
  }

  onMouseStart(e: MouseEvent): void {
    this.stopMomentum();
    this.isDragging = true;
    this.hasInteracted.set(true);
    this.startX = e.clientX;
    this.lastX = this.startX;
    this.startAngle = this.rotateAngle();
    this.velocity = 0;
    document.addEventListener('mousemove', this.boundMouseMove);
    document.addEventListener('mouseup', this.boundMouseUp);
  }

  private onMouseMove(e: MouseEvent): void {
    if (!this.isDragging) return;
    const x = e.clientX;
    const delta = x - this.startX;
    this.velocity = x - this.lastX;
    this.lastX = x;
    this.rotateAngle.set(this.startAngle + delta * this.SENSITIVITY);
  }

  private onMouseUp(): void {
    this.isDragging = false;
    document.removeEventListener('mousemove', this.boundMouseMove);
    document.removeEventListener('mouseup', this.boundMouseUp);
    this.applyMomentum();
  }

  private applyMomentum(): void {
    const friction = 0.95;
    const tick = () => {
      this.velocity *= friction;
      if (Math.abs(this.velocity) < 0.1) return;
      this.rotateAngle.update(a => a + this.velocity * this.SENSITIVITY);
      this.momentumId = requestAnimationFrame(tick);
    };
    this.momentumId = requestAnimationFrame(tick);
  }

  private stopMomentum(): void {
    if (this.momentumId) {
      cancelAnimationFrame(this.momentumId);
      this.momentumId = 0;
    }
  }

  ngOnDestroy(): void {
    this.stopMomentum();
    document.removeEventListener('mousemove', this.boundMouseMove);
    document.removeEventListener('mouseup', this.boundMouseUp);
  }

  goBack(): void {
    this.router.navigate(['/storefront'], {
      queryParams: { gender: this.product()?.gender || 'female' }
    });
  }
}
