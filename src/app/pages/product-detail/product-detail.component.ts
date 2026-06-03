import { Component, ChangeDetectionStrategy, inject, signal, computed, effect, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { NavbarComponent } from '../../shared/components/navbar/navbar.component';
import { SizeSelectorComponent } from '../../shared/components/size-selector/size-selector.component';
import { StarRatingComponent } from '../../shared/components/star-rating/star-rating.component';
import { Product, ProductSize } from '../../core/models/product.model';
import { ProductService } from '../../core/services/product.service';
import { CartService } from '../../core/services/cart.service';
import { WishlistService } from '../../core/services/wishlist.service';
import { RatingService } from '../../core/services/rating.service';
import { SignatureService } from '../../core/services/signature.service';
import { ImageSearchService } from '../../core/services/image-search.service';

@Component({
  selector: 'app-product-detail',
  standalone: true,
  imports: [NavbarComponent, SizeSelectorComponent, StarRatingComponent],
  templateUrl: './product-detail.component.html',
  styleUrl: './product-detail.component.scss',
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class ProductDetailComponent implements OnInit {
  private route = inject(ActivatedRoute);
  private router = inject(Router);
  private productService = inject(ProductService);
  cartService = inject(CartService);
  wishlist = inject(WishlistService);
  ratingService = inject(RatingService);
  signature = inject(SignatureService);
  imageSearch = inject(ImageSearchService);

  product = signal<Product | null>(null);
  selectedSize = signal<number>(0);
  currentPrice = signal<number>(0);
  addingToCart = signal(false);
  showPreOrder = signal(false);
  signaturePop = signal(false);
  imageError = signal(false);

  /** Resolved image URL for this product */
  imageUrl = computed(() => {
    const p = this.product();
    return p ? this.imageSearch.getImageUrl(p) : '';
  });

  /** Whether to show the gradient fallback */
  showImageFallback = computed(() => !this.imageUrl() || this.imageError());

  /** Scent-family-based gradient */
  fallbackGradient = computed(() => {
    const p = this.product();
    if (!p) return '';
    const gradients: Record<string, string> = {
      'Floral':    'linear-gradient(135deg, #fce4ec, #f8bbd0)',
      'Woody':     'linear-gradient(135deg, #efebe9, #d7ccc8)',
      'Oriental':  'linear-gradient(135deg, #fff3e0, #ffe0b2)',
      'Fresh':     'linear-gradient(135deg, #e0f7fa, #b2ebf2)',
      'Gourmand':  'linear-gradient(135deg, #fbe9e7, #ffccbc)',
      'Chypre':    'linear-gradient(135deg, #f1f8e9, #dcedc8)',
    };
    return gradients[p.scent_family] || 'linear-gradient(135deg, #fafafa, #f0f0f0)';
  });

  constructor() {
    // Auto-resolve image when product is set
    effect(() => {
      const p = this.product();
      if (p) {
        this.imageError.set(false);
        this.imageSearch.queueResolve(p);
      }
    });
  }

  ngOnInit(): void {
    const id = this.route.snapshot.paramMap.get('id');
    if (id) {
      const p = this.productService.getById(id);
      if (p) {
        this.product.set(p);
        const firstAvailable = p.sizes.find(s => s.available) || p.sizes[0];
        this.selectedSize.set(firstAvailable.ml);
        this.currentPrice.set(firstAvailable.price);
      }
    }
  }

  get isWishlisted(): boolean {
    const p = this.product();
    return p ? this.wishlist.isWishlisted(p.id) : false;
  }

  get isSignature(): boolean {
    const p = this.product();
    return p ? this.signature.isSignature(p.id) : false;
  }

  toggleSignature(): void {
    const p = this.product();
    if (!p) return;
    this.signature.toggle(p.id);
    this.signaturePop.set(true);
    setTimeout(() => this.signaturePop.set(false), 500);
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

  goBack(): void {
    this.router.navigate(['/storefront'], {
      queryParams: { gender: this.product()?.gender || 'female' }
    });
  }
}
