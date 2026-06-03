-- ============================================
-- MAISON SCENTS — Supabase Database Schema
-- Run this in the Supabase SQL Editor
-- ============================================

-- 1. PROFILES (extends Supabase Auth users)
create table public.profiles (
  id uuid references auth.users on delete cascade primary key,
  full_name text,
  email text,
  is_admin boolean default false,
  created_at timestamptz default now()
);

-- Auto-create profile when a new user signs up
create or replace function public.handle_new_user()
returns trigger as $$
begin
  insert into public.profiles (id, full_name, email)
  values (new.id, coalesce(new.raw_user_meta_data->>'full_name', ''), new.email);
  return new;
end;
$$ language plpgsql security definer;

create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();

-- 2. PRODUCTS
create table public.products (
  id uuid default gen_random_uuid() primary key,
  name text not null,
  brand text not null,
  gender text not null check (gender in ('male', 'female', 'unisex')),
  scent_family text not null,
  description text,
  images text[] default '{}',
  stock_quantity integer default 0,
  is_featured boolean default false,
  total_units_sold integer default 0,
  delivery_days integer default 3,
  is_new boolean default false,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- 3. PRODUCT SIZES
create table public.product_sizes (
  id uuid default gen_random_uuid() primary key,
  product_id uuid references public.products on delete cascade not null,
  ml integer not null,
  price numeric(10,2) not null,
  available boolean default true
);

-- 4. SCENT NOTES
create table public.scent_notes (
  id uuid default gen_random_uuid() primary key,
  product_id uuid references public.products on delete cascade not null,
  layer text not null check (layer in ('top', 'heart', 'base')),
  note text not null
);

-- 5. ORDERS
create table public.orders (
  id uuid default gen_random_uuid() primary key,
  order_number text unique not null,
  user_id uuid references auth.users,
  customer_name text not null,
  customer_email text,
  subtotal numeric(10,2) not null,
  delivery_fee numeric(10,2) default 100,
  total numeric(10,2) not null,
  status text default 'pending' check (status in ('pending', 'processing', 'shipped', 'delivered', 'pre_order')),
  payment_method text check (payment_method in ('card', 'momo')),
  delivery_full_name text,
  delivery_town text,
  delivery_phone text,
  estimated_delivery text,
  created_at timestamptz default now()
);

-- 6. ORDER ITEMS
create table public.order_items (
  id uuid default gen_random_uuid() primary key,
  order_id uuid references public.orders on delete cascade not null,
  product_id uuid references public.products,
  product_name text not null,
  brand text not null,
  image text,
  size integer not null,
  quantity integer not null default 1,
  price numeric(10,2) not null,
  type text default 'regular' check (type in ('regular', 'pre_order'))
);

-- 7. WISHLISTS
create table public.wishlists (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references auth.users on delete cascade not null,
  product_id uuid references public.products on delete cascade not null,
  created_at timestamptz default now(),
  unique(user_id, product_id)
);

-- 8. SIGNATURE SCENTS
create table public.signature_scents (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references auth.users on delete cascade not null,
  product_id uuid references public.products on delete cascade not null,
  created_at timestamptz default now(),
  unique(user_id, product_id)
);

-- 9. RATINGS / REVIEWS
create table public.ratings (
  id uuid default gen_random_uuid() primary key,
  product_id uuid references public.products on delete cascade not null,
  user_id uuid references auth.users on delete cascade not null,
  user_name text not null,
  stars integer not null check (stars >= 1 and stars <= 5),
  review text,
  created_at timestamptz default now(),
  unique(product_id, user_id)
);

-- ============================================
-- ROW LEVEL SECURITY (RLS)
-- ============================================

-- Enable RLS on all tables
alter table public.profiles enable row level security;
alter table public.products enable row level security;
alter table public.product_sizes enable row level security;
alter table public.scent_notes enable row level security;
alter table public.orders enable row level security;
alter table public.order_items enable row level security;
alter table public.wishlists enable row level security;
alter table public.signature_scents enable row level security;
alter table public.ratings enable row level security;

-- PROFILES: users can read/update their own profile
create policy "Users can view own profile" on public.profiles for select using (auth.uid() = id);
create policy "Users can update own profile" on public.profiles for update using (auth.uid() = id);

-- PRODUCTS: anyone can read, admins can modify
create policy "Anyone can view products" on public.products for select using (true);
create policy "Admins can insert products" on public.products for insert with check (
  exists (select 1 from public.profiles where id = auth.uid() and is_admin = true)
);
create policy "Admins can update products" on public.products for update using (
  exists (select 1 from public.profiles where id = auth.uid() and is_admin = true)
);
create policy "Admins can delete products" on public.products for delete using (
  exists (select 1 from public.profiles where id = auth.uid() and is_admin = true)
);

-- PRODUCT SIZES: anyone can read, admins can modify
create policy "Anyone can view sizes" on public.product_sizes for select using (true);
create policy "Admins can manage sizes" on public.product_sizes for all using (
  exists (select 1 from public.profiles where id = auth.uid() and is_admin = true)
);

-- SCENT NOTES: anyone can read, admins can modify
create policy "Anyone can view notes" on public.scent_notes for select using (true);
create policy "Admins can manage notes" on public.scent_notes for all using (
  exists (select 1 from public.profiles where id = auth.uid() and is_admin = true)
);

-- ORDERS: users see their own, admins see all
create policy "Users can view own orders" on public.orders for select using (
  auth.uid() = user_id or exists (select 1 from public.profiles where id = auth.uid() and is_admin = true)
);
create policy "Users can create orders" on public.orders for insert with check (auth.uid() = user_id);
create policy "Admins can update orders" on public.orders for update using (
  exists (select 1 from public.profiles where id = auth.uid() and is_admin = true)
);

-- ORDER ITEMS: follow order access
create policy "Users can view own order items" on public.order_items for select using (
  exists (select 1 from public.orders where orders.id = order_items.order_id and (orders.user_id = auth.uid() or exists (select 1 from public.profiles where id = auth.uid() and is_admin = true)))
);
create policy "Users can create order items" on public.order_items for insert with check (true);

-- WISHLISTS: users manage their own
create policy "Users can view own wishlist" on public.wishlists for select using (auth.uid() = user_id);
create policy "Users can add to wishlist" on public.wishlists for insert with check (auth.uid() = user_id);
create policy "Users can remove from wishlist" on public.wishlists for delete using (auth.uid() = user_id);

-- SIGNATURE SCENTS: users manage their own
create policy "Users can view own signatures" on public.signature_scents for select using (auth.uid() = user_id);
create policy "Users can add signatures" on public.signature_scents for insert with check (auth.uid() = user_id);
create policy "Users can remove signatures" on public.signature_scents for delete using (auth.uid() = user_id);

-- RATINGS: anyone can read, authenticated users can write their own
create policy "Anyone can view ratings" on public.ratings for select using (true);
create policy "Users can add ratings" on public.ratings for insert with check (auth.uid() = user_id);
create policy "Users can update own ratings" on public.ratings for update using (auth.uid() = user_id);

-- ============================================
-- STORAGE BUCKET for product images
-- ============================================
insert into storage.buckets (id, name, public) values ('product-images', 'product-images', true);

create policy "Anyone can view product images" on storage.objects for select using (bucket_id = 'product-images');
create policy "Admins can upload product images" on storage.objects for insert with check (
  bucket_id = 'product-images' and exists (select 1 from public.profiles where id = auth.uid() and is_admin = true)
);
create policy "Admins can delete product images" on storage.objects for delete using (
  bucket_id = 'product-images' and exists (select 1 from public.profiles where id = auth.uid() and is_admin = true)
);
