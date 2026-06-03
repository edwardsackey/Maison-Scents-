-- ============================================
-- MAISON SCENTS — Seed Data
-- Run this in the Supabase SQL Editor AFTER
-- running supabase-schema.sql
-- ============================================
-- NOTE: Ratings are not seeded here because they
-- require real auth.users IDs. Real users will
-- add reviews organically.
-- ============================================

-- ===== FEMALE FRAGRANCES =====

-- Khamrah - Lattafa
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000f001', 'Khamrah', 'Lattafa', 'female', 'Oriental',
  'A captivating blend of warmth and mystery, Khamrah weaves rich amber with delicate florals for an unforgettable signature.',
  ARRAY['assets/images/Khamarah-Lattafa.png'], 25, true, 342, 3, false);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000f001', 30, 250, true),
  ('00000000-0000-0000-0000-00000000f001', 50, 380, true),
  ('00000000-0000-0000-0000-00000000f001', 100, 550, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000f001', 'top', 'Cinnamon'),
  ('00000000-0000-0000-0000-00000000f001', 'top', 'Bergamot'),
  ('00000000-0000-0000-0000-00000000f001', 'top', 'Nutmeg'),
  ('00000000-0000-0000-0000-00000000f001', 'heart', 'Turkish Rose'),
  ('00000000-0000-0000-0000-00000000f001', 'heart', 'Praline'),
  ('00000000-0000-0000-0000-00000000f001', 'heart', 'Saffron'),
  ('00000000-0000-0000-0000-00000000f001', 'base', 'Amber'),
  ('00000000-0000-0000-0000-00000000f001', 'base', 'Vanilla'),
  ('00000000-0000-0000-0000-00000000f001', 'base', 'Tonka Bean');


-- Hayati - Lattafa
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000f002', 'Hayati', 'Lattafa', 'female', 'Floral',
  'An elegant floral composition that captures the essence of femininity with soft petals and creamy sandalwood.',
  ARRAY['assets/images/Hayati.jpg'], 18, false, 215, 3, true);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000f002', 30, 200, true),
  ('00000000-0000-0000-0000-00000000f002', 50, 320, true),
  ('00000000-0000-0000-0000-00000000f002', 100, 480, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000f002', 'top', 'Peony'),
  ('00000000-0000-0000-0000-00000000f002', 'top', 'Pink Pepper'),
  ('00000000-0000-0000-0000-00000000f002', 'top', 'Pear'),
  ('00000000-0000-0000-0000-00000000f002', 'heart', 'Rose'),
  ('00000000-0000-0000-0000-00000000f002', 'heart', 'Jasmine'),
  ('00000000-0000-0000-0000-00000000f002', 'heart', 'Lily of the Valley'),
  ('00000000-0000-0000-0000-00000000f002', 'base', 'Sandalwood'),
  ('00000000-0000-0000-0000-00000000f002', 'base', 'Musk'),
  ('00000000-0000-0000-0000-00000000f002', 'base', 'Cedarwood');


-- Donna Born in Roma - Valentino
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000f003', 'Donna Born in Roma', 'Valentino', 'female', 'Floral',
  'A couture fragrance blending jasmine grandiflorum with warm vanilla bourbon for modern elegance.',
  ARRAY['assets/images/Valentino-1.png'], 0, false, 189, 5, false);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000f003', 30, 650, true),
  ('00000000-0000-0000-0000-00000000f003', 50, 920, true),
  ('00000000-0000-0000-0000-00000000f003', 100, 1350, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000f003', 'top', 'Italian Lemon'),
  ('00000000-0000-0000-0000-00000000f003', 'top', 'Pink Pepper'),
  ('00000000-0000-0000-0000-00000000f003', 'top', 'Blackcurrant'),
  ('00000000-0000-0000-0000-00000000f003', 'heart', 'Jasmine Grandiflorum'),
  ('00000000-0000-0000-0000-00000000f003', 'heart', 'Turkish Rose'),
  ('00000000-0000-0000-0000-00000000f003', 'heart', 'Magnolia'),
  ('00000000-0000-0000-0000-00000000f003', 'base', 'Bourbon Vanilla'),
  ('00000000-0000-0000-0000-00000000f003', 'base', 'Cashmeran'),
  ('00000000-0000-0000-0000-00000000f003', 'base', 'Woody Notes');


-- Latafa Hayati - Lattafa
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000f004', 'Latafa Hayati', 'Lattafa', 'female', 'Gourmand',
  'An intoxicating gourmand fragrance with creamy notes of caramel and exotic spices for the bold woman.',
  ARRAY['assets/images/Lattafa-Hayati.png'], 30, false, 156, 3, false);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000f004', 30, 220, true),
  ('00000000-0000-0000-0000-00000000f004', 50, 340, true),
  ('00000000-0000-0000-0000-00000000f004', 100, 500, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000f004', 'top', 'Bergamot'),
  ('00000000-0000-0000-0000-00000000f004', 'top', 'Apple'),
  ('00000000-0000-0000-0000-00000000f004', 'top', 'Saffron'),
  ('00000000-0000-0000-0000-00000000f004', 'heart', 'Caramel'),
  ('00000000-0000-0000-0000-00000000f004', 'heart', 'Jasmine'),
  ('00000000-0000-0000-0000-00000000f004', 'heart', 'Orchid'),
  ('00000000-0000-0000-0000-00000000f004', 'base', 'Vanilla'),
  ('00000000-0000-0000-0000-00000000f004', 'base', 'Amber'),
  ('00000000-0000-0000-0000-00000000f004', 'base', 'White Musk');


-- 9PM - Afnan
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000f005', '9PM', 'Afnan', 'female', 'Oriental',
  'A sophisticated evening fragrance with rich oud and delicate rose that commands attention after dark.',
  ARRAY['assets/images/9pm-detail.png', 'assets/images/Afnan-9pm.png'], 12, true, 298, 3, false);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000f005', 30, 280, true),
  ('00000000-0000-0000-0000-00000000f005', 50, 420, true),
  ('00000000-0000-0000-0000-00000000f005', 100, 600, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000f005', 'top', 'Apple'),
  ('00000000-0000-0000-0000-00000000f005', 'top', 'Cinnamon'),
  ('00000000-0000-0000-0000-00000000f005', 'top', 'Lavender'),
  ('00000000-0000-0000-0000-00000000f005', 'heart', 'Rose'),
  ('00000000-0000-0000-0000-00000000f005', 'heart', 'Iris'),
  ('00000000-0000-0000-0000-00000000f005', 'heart', 'Orange Blossom'),
  ('00000000-0000-0000-0000-00000000f005', 'base', 'Vanilla'),
  ('00000000-0000-0000-0000-00000000f005', 'base', 'Amber'),
  ('00000000-0000-0000-0000-00000000f005', 'base', 'Musk');


-- Miss Dior - Dior
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000f006', 'Miss Dior', 'Dior', 'female', 'Floral',
  'A timeless floral fragrance that embodies elegance and femininity with a fresh bouquet of roses and peony.',
  ARRAY['assets/images/Miss-Dior.jpg'], 10, true, 410, 5, true);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000f006', 30, 750, true),
  ('00000000-0000-0000-0000-00000000f006', 50, 1100, true),
  ('00000000-0000-0000-0000-00000000f006', 100, 1600, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000f006', 'top', 'Blood Orange'),
  ('00000000-0000-0000-0000-00000000f006', 'top', 'Mandarin'),
  ('00000000-0000-0000-0000-00000000f006', 'top', 'Lily of the Valley'),
  ('00000000-0000-0000-0000-00000000f006', 'heart', 'Peony'),
  ('00000000-0000-0000-0000-00000000f006', 'heart', 'Rose'),
  ('00000000-0000-0000-0000-00000000f006', 'heart', 'Iris'),
  ('00000000-0000-0000-0000-00000000f006', 'base', 'Musk'),
  ('00000000-0000-0000-0000-00000000f006', 'base', 'Rosewood'),
  ('00000000-0000-0000-0000-00000000f006', 'base', 'Vanilla');


-- Mon Paris - Yves Saint Laurent
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000f007', 'Mon Paris', 'Yves Saint Laurent', 'female', 'Floral',
  'A daring and romantic fragrance inspired by the city of love — bold, passionate, and utterly modern.',
  ARRAY['assets/images/Yves-Saint-Laurent-Mon-Paris-Eau-de-Parfum.png'], 14, false, 328, 5, false);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000f007', 30, 680, true),
  ('00000000-0000-0000-0000-00000000f007', 50, 980, true),
  ('00000000-0000-0000-0000-00000000f007', 100, 1450, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000f007', 'top', 'Strawberry'),
  ('00000000-0000-0000-0000-00000000f007', 'top', 'Raspberry'),
  ('00000000-0000-0000-0000-00000000f007', 'top', 'Pear'),
  ('00000000-0000-0000-0000-00000000f007', 'heart', 'White Peony'),
  ('00000000-0000-0000-0000-00000000f007', 'heart', 'Datura'),
  ('00000000-0000-0000-0000-00000000f007', 'heart', 'Jasmine'),
  ('00000000-0000-0000-0000-00000000f007', 'base', 'White Musk'),
  ('00000000-0000-0000-0000-00000000f007', 'base', 'Patchouli'),
  ('00000000-0000-0000-0000-00000000f007', 'base', 'Ambroxan');


-- Haze - Kay Ali
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000f008', 'Haze', 'Kay Ali', 'female', 'Gourmand',
  'A dreamy gourmand fragrance that wraps you in layers of warm vanilla and exotic spices. Irresistibly cozy.',
  ARRAY['assets/images/Kay-Ali.png'], 8, false, 195, 3, true);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000f008', 30, 350, true),
  ('00000000-0000-0000-0000-00000000f008', 50, 520, true),
  ('00000000-0000-0000-0000-00000000f008', 100, 780, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000f008', 'top', 'Saffron'),
  ('00000000-0000-0000-0000-00000000f008', 'top', 'Pink Pepper'),
  ('00000000-0000-0000-0000-00000000f008', 'top', 'Bergamot'),
  ('00000000-0000-0000-0000-00000000f008', 'heart', 'Turkish Rose'),
  ('00000000-0000-0000-0000-00000000f008', 'heart', 'Praline'),
  ('00000000-0000-0000-0000-00000000f008', 'heart', 'Jasmine'),
  ('00000000-0000-0000-0000-00000000f008', 'base', 'Vanilla'),
  ('00000000-0000-0000-0000-00000000f008', 'base', 'Amber'),
  ('00000000-0000-0000-0000-00000000f008', 'base', 'Sandalwood');


-- Eclaire - Lattafa
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000f009', 'Eclaire', 'Lattafa', 'female', 'Oriental',
  'A radiant oriental composition that balances sweet amber with crisp florals for a luminous, modern scent.',
  ARRAY['assets/images/Lataffa-Eclaire.jpg'], 22, false, 178, 3, false);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000f009', 30, 230, true),
  ('00000000-0000-0000-0000-00000000f009', 50, 350, true),
  ('00000000-0000-0000-0000-00000000f009', 100, 520, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000f009', 'top', 'Bergamot'),
  ('00000000-0000-0000-0000-00000000f009', 'top', 'Lemon'),
  ('00000000-0000-0000-0000-00000000f009', 'top', 'Pink Pepper'),
  ('00000000-0000-0000-0000-00000000f009', 'heart', 'Jasmine'),
  ('00000000-0000-0000-0000-00000000f009', 'heart', 'Orange Blossom'),
  ('00000000-0000-0000-0000-00000000f009', 'heart', 'Rose'),
  ('00000000-0000-0000-0000-00000000f009', 'base', 'Amber'),
  ('00000000-0000-0000-0000-00000000f009', 'base', 'Musk'),
  ('00000000-0000-0000-0000-00000000f009', 'base', 'Cedar');


-- Orchid - Zara
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000f010', 'Orchid', 'Zara', 'female', 'Fresh',
  'A vibrant and youthful fresh fragrance that captures the spirit of effortless beauty with floral brightness.',
  ARRAY['assets/images/Zara-1.png'], 35, false, 520, 3, false);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000f010', 30, 120, true),
  ('00000000-0000-0000-0000-00000000f010', 50, 180, true),
  ('00000000-0000-0000-0000-00000000f010', 100, 280, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000f010', 'top', 'Green Apple'),
  ('00000000-0000-0000-0000-00000000f010', 'top', 'Lemon'),
  ('00000000-0000-0000-0000-00000000f010', 'top', 'Bergamot'),
  ('00000000-0000-0000-0000-00000000f010', 'heart', 'Orchid'),
  ('00000000-0000-0000-0000-00000000f010', 'heart', 'Lily'),
  ('00000000-0000-0000-0000-00000000f010', 'heart', 'Peony'),
  ('00000000-0000-0000-0000-00000000f010', 'base', 'White Musk'),
  ('00000000-0000-0000-0000-00000000f010', 'base', 'Cedar'),
  ('00000000-0000-0000-0000-00000000f010', 'base', 'Amber');


-- ===== MALE FRAGRANCES =====

-- Ombre Nomade - Louis Vuitton
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000b001', 'Ombre Nomade', 'Louis Vuitton', 'male', 'Woody',
  'An extraordinary oud-based composition that takes you on a journey through desert nights and starlit skies.',
  ARRAY['assets/images/Ombre-Normade-1.png'], 8, false, 567, 5, false);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000b001', 30, 1800, true),
  ('00000000-0000-0000-0000-00000000b001', 50, 2800, true),
  ('00000000-0000-0000-0000-00000000b001', 100, 4200, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000b001', 'top', 'Oud Assafi'),
  ('00000000-0000-0000-0000-00000000b001', 'top', 'Incense'),
  ('00000000-0000-0000-0000-00000000b001', 'top', 'Raspberry'),
  ('00000000-0000-0000-0000-00000000b001', 'heart', 'Rose Absolute'),
  ('00000000-0000-0000-0000-00000000b001', 'heart', 'Geranium'),
  ('00000000-0000-0000-0000-00000000b001', 'heart', 'Benzoin'),
  ('00000000-0000-0000-0000-00000000b001', 'base', 'Ambergris'),
  ('00000000-0000-0000-0000-00000000b001', 'base', 'Black Agar'),
  ('00000000-0000-0000-0000-00000000b001', 'base', 'Mahogany');


-- Imagination - Louis Vuitton
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000b002', 'Imagination', 'Louis Vuitton', 'male', 'Fresh',
  'A visionary citrus-woody creation that pushes boundaries with its unique blend of tea and cedarwood.',
  ARRAY['assets/images/Imagination-1.png'], 5, false, 423, 5, true);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000b002', 30, 1600, true),
  ('00000000-0000-0000-0000-00000000b002', 50, 2500, true),
  ('00000000-0000-0000-0000-00000000b002', 100, 3800, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000b002', 'top', 'Calabrian Bergamot'),
  ('00000000-0000-0000-0000-00000000b002', 'top', 'Sicilian Orange'),
  ('00000000-0000-0000-0000-00000000b002', 'top', 'Shanghai Tea'),
  ('00000000-0000-0000-0000-00000000b002', 'heart', 'Cedarwood'),
  ('00000000-0000-0000-0000-00000000b002', 'heart', 'Orange Blossom'),
  ('00000000-0000-0000-0000-00000000b002', 'heart', 'Jasmine'),
  ('00000000-0000-0000-0000-00000000b002', 'base', 'Ambroxan'),
  ('00000000-0000-0000-0000-00000000b002', 'base', 'White Musk'),
  ('00000000-0000-0000-0000-00000000b002', 'base', 'Tonka Bean');


-- Hawas - Rasasi
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000b003', 'Hawas', 'Rasasi', 'male', 'Fresh',
  'A bold aquatic fragrance that embodies masculine energy with ocean breeze and woody depth.',
  ARRAY['assets/images/Hawas-fire-1.png'], 0, false, 478, 3, false);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000b003', 30, 300, true),
  ('00000000-0000-0000-0000-00000000b003', 50, 450, true),
  ('00000000-0000-0000-0000-00000000b003', 100, 650, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000b003', 'top', 'Bergamot'),
  ('00000000-0000-0000-0000-00000000b003', 'top', 'Green Apple'),
  ('00000000-0000-0000-0000-00000000b003', 'top', 'Cinnamon'),
  ('00000000-0000-0000-0000-00000000b003', 'heart', 'Marine Notes'),
  ('00000000-0000-0000-0000-00000000b003', 'heart', 'Ambroxan'),
  ('00000000-0000-0000-0000-00000000b003', 'heart', 'Silver Sage'),
  ('00000000-0000-0000-0000-00000000b003', 'base', 'Driftwood'),
  ('00000000-0000-0000-0000-00000000b003', 'base', 'Musk'),
  ('00000000-0000-0000-0000-00000000b003', 'base', 'Amber');


-- Ombre Leather - Tom Ford
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000b004', 'Ombre Leather', 'Tom Ford', 'male', 'Woody',
  'A textured and bold leather fragrance that captures rugged American landscapes with refinement.',
  ARRAY['assets/images/Tomford-1.png'], 15, false, 312, 5, false);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000b004', 30, 900, true),
  ('00000000-0000-0000-0000-00000000b004', 50, 1400, true),
  ('00000000-0000-0000-0000-00000000b004', 100, 2100, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000b004', 'top', 'Cardamom'),
  ('00000000-0000-0000-0000-00000000b004', 'top', 'Black Leather'),
  ('00000000-0000-0000-0000-00000000b004', 'top', 'Clary Sage'),
  ('00000000-0000-0000-0000-00000000b004', 'heart', 'Jasmine Sambac'),
  ('00000000-0000-0000-0000-00000000b004', 'heart', 'Floral Notes'),
  ('00000000-0000-0000-0000-00000000b004', 'heart', 'Leather'),
  ('00000000-0000-0000-0000-00000000b004', 'base', 'Patchouli'),
  ('00000000-0000-0000-0000-00000000b004', 'base', 'Vetiver'),
  ('00000000-0000-0000-0000-00000000b004', 'base', 'Moss');


-- Khamrah Qahwa - Lattafa
INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES ('00000000-0000-0000-0000-00000000b005', 'Khamrah Qahwa', 'Lattafa', 'male', 'Gourmand',
  'An addictive coffee-infused fragrance blending Arabic qahwa with sweet spices and dark chocolate.',
  ARRAY['assets/images/Khamra-Qahwa1.jpg'], 20, false, 245, 3, false);

INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
  ('00000000-0000-0000-0000-00000000b005', 30, 260, true),
  ('00000000-0000-0000-0000-00000000b005', 50, 390, true),
  ('00000000-0000-0000-0000-00000000b005', 100, 560, true);

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
  ('00000000-0000-0000-0000-00000000b005', 'top', 'Coffee'),
  ('00000000-0000-0000-0000-00000000b005', 'top', 'Cardamom'),
  ('00000000-0000-0000-0000-00000000b005', 'top', 'Nutmeg'),
  ('00000000-0000-0000-0000-00000000b005', 'heart', 'Dark Chocolate'),
  ('00000000-0000-0000-0000-00000000b005', 'heart', 'Praline'),
  ('00000000-0000-0000-0000-00000000b005', 'heart', 'Cinnamon'),
  ('00000000-0000-0000-0000-00000000b005', 'base', 'Vanilla'),
  ('00000000-0000-0000-0000-00000000b005', 'base', 'Sandalwood'),
  ('00000000-0000-0000-0000-00000000b005', 'base', 'Benzoin');
