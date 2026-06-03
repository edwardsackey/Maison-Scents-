export interface ProductSize {
  ml: number;
  price: number;
  available: boolean;
}

export interface ScentNotes {
  top: string[];
  heart: string[];
  base: string[];
}

export interface ProductRating {
  user: string;
  stars: number;
  review: string;
}

export interface Product {
  id: string;
  name: string;
  brand: string;
  gender: 'male' | 'female' | 'unisex';
  scent_family: string;
  description: string;
  images: string[];
  sizes: ProductSize[];
  stock_quantity: number;
  is_featured: boolean;
  total_units_sold: number;
  delivery_days: number;
  is_new: boolean;
  scent_notes: ScentNotes;
  ratings: ProductRating[];
}
