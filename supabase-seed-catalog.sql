-- ============================================
-- MAISON SCENTS — Extended Product Catalog
-- Run this in the Supabase SQL Editor
-- Adds 80+ popular perfumes across all genders
-- Products with stock_quantity = 0 are pre-order only
-- ============================================

-- ===== FEMALE — DESIGNER CLASSICS =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('10000000-0000-0000-0000-000000000001', 'N°5', 'Chanel', 'female', 'Floral',
  'The iconic fragrance that defined modern perfumery. A timeless bouquet of aldehydes, ylang-ylang, and sandalwood.',
  ARRAY['assets/images/placeholder.png'], 0, true, 890, 5, false),

('10000000-0000-0000-0000-000000000002', 'Coco Mademoiselle', 'Chanel', 'female', 'Oriental',
  'A sparkling fresh oriental fragrance for the modern woman — vibrant, bold, and irresistibly sensual.',
  ARRAY['assets/images/placeholder.png'], 6, true, 756, 5, false),

('10000000-0000-0000-0000-000000000003', 'J''adore', 'Dior', 'female', 'Floral',
  'A symphony of the most exceptional flowers — ylang-ylang, Damascus rose, and jasmine sambac in pure gold.',
  ARRAY['assets/images/placeholder.png'], 8, false, 623, 5, false),

('10000000-0000-0000-0000-000000000004', 'La Vie Est Belle', 'Lancome', 'female', 'Gourmand',
  'Life is beautiful. A sweet iris fragrance blended with patchouli and gourmand accords for pure happiness.',
  ARRAY['assets/images/placeholder.png'], 15, false, 534, 5, false),

('10000000-0000-0000-0000-000000000005', 'Black Opium', 'Yves Saint Laurent', 'female', 'Gourmand',
  'An addictive coffee and vanilla rock''n''roll fragrance. Dark, seductive, and electrifying.',
  ARRAY['assets/images/placeholder.png'], 12, true, 678, 5, false),

('10000000-0000-0000-0000-000000000006', 'Good Girl', 'Carolina Herrera', 'female', 'Oriental',
  'A daring duality of light and dark — tuberose and jasmine meet tonka bean and cocoa in a stiletto-shaped bottle.',
  ARRAY['assets/images/placeholder.png'], 0, false, 412, 5, false),

('10000000-0000-0000-0000-000000000007', 'Flowerbomb', 'Viktor & Rolf', 'female', 'Floral',
  'An explosion of flowers that transforms the negative into the positive. Addictively floral.',
  ARRAY['assets/images/placeholder.png'], 10, false, 389, 5, false),

('10000000-0000-0000-0000-000000000008', 'Si', 'Giorgio Armani', 'female', 'Floral',
  'Say yes to life. A modern chypre fragrance balancing blackcurrant nectar with musky blonde wood.',
  ARRAY['assets/images/placeholder.png'], 7, false, 345, 5, false),

('10000000-0000-0000-0000-000000000009', 'Chance Eau Tendre', 'Chanel', 'female', 'Floral',
  'A tender and sparkling floral fragrance with grapefruit, jasmine, and white musk. Delicately playful.',
  ARRAY['assets/images/placeholder.png'], 0, false, 456, 5, false),

('10000000-0000-0000-0000-000000000010', 'Crystal Noir', 'Versace', 'female', 'Oriental',
  'A mysterious and sensual blend of gardenia, amber, and sandalwood with a spicy ginger twist.',
  ARRAY['assets/images/placeholder.png'], 18, false, 287, 3, false),

('10000000-0000-0000-0000-000000000011', 'Bright Crystal', 'Versace', 'female', 'Floral',
  'A fresh, vibrant, and feminine floral composition with pomegranate, peony, and magnolia.',
  ARRAY['assets/images/placeholder.png'], 20, false, 398, 3, false),

('10000000-0000-0000-0000-000000000012', 'Light Blue', 'Dolce & Gabbana', 'female', 'Fresh',
  'The scent of a sunny Mediterranean summer — Sicilian cedar, apple, and white rose in perfect harmony.',
  ARRAY['assets/images/placeholder.png'], 14, false, 567, 5, false),

('10000000-0000-0000-0000-000000000013', 'Libre', 'Yves Saint Laurent', 'female', 'Floral',
  'The scent of freedom. Lavender essence meets Moroccan orange blossom for bold feminine duality.',
  ARRAY['assets/images/placeholder.png'], 9, true, 445, 5, false),

('10000000-0000-0000-0000-000000000014', 'Flora Gorgeous Gardenia', 'Gucci', 'female', 'Floral',
  'A joyful gardenia fragrance that celebrates the beauty of flowers with pear blossom and brown sugar.',
  ARRAY['assets/images/placeholder.png'], 0, false, 312, 5, false),

('10000000-0000-0000-0000-000000000015', 'Paradoxe', 'Prada', 'female', 'Floral',
  'A floral amber that reinvents itself on skin. Neroli, musk, and amber create beautiful contradictions.',
  ARRAY['assets/images/placeholder.png'], 5, false, 234, 5, true),

('10000000-0000-0000-0000-000000000016', 'My Way', 'Giorgio Armani', 'female', 'Floral',
  'A journey in every drop. Orange blossom, tuberose, and cedarwood tell a story of discovery.',
  ARRAY['assets/images/placeholder.png'], 11, false, 356, 5, false),

('10000000-0000-0000-0000-000000000017', 'Delina', 'Parfums de Marly', 'female', 'Floral',
  'A royal floral masterpiece. Turkish rose, lily of the valley, and vanilla create regal femininity.',
  ARRAY['assets/images/placeholder.png'], 0, false, 189, 7, true),

('10000000-0000-0000-0000-000000000018', 'Baccarat Rouge 540', 'Maison Francis Kurkdjian', 'female', 'Oriental',
  'A poetic alchemy of jasmine, saffron, and ambergris. The fragrance that broke the internet.',
  ARRAY['assets/images/placeholder.png'], 3, true, 678, 7, false),

('10000000-0000-0000-0000-000000000019', 'Velvet Rose & Oud', 'Jo Malone', 'female', 'Oriental',
  'Dark, smoky, and intoxicating. Damask rose and oud wood create decadent luxury.',
  ARRAY['assets/images/placeholder.png'], 0, false, 145, 7, false),

('10000000-0000-0000-0000-000000000020', 'Alien', 'Mugler', 'female', 'Oriental',
  'A mysterious solar amber fragrance with jasmine sambac. Otherworldly and unforgettable.',
  ARRAY['assets/images/placeholder.png'], 8, false, 367, 5, false);


-- ===== FEMALE — ARABIAN / NICHE =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('10000000-0000-0000-0000-000000000021', 'Yara', 'Lattafa', 'female', 'Gourmand',
  'A tropical gourmand delight with orchid, vanilla, and tangerine. Sweet, warm, and irresistible.',
  ARRAY['assets/images/placeholder.png'], 28, false, 289, 3, true),

('10000000-0000-0000-0000-000000000022', 'Badee Al Oud Amethyst', 'Lattafa', 'female', 'Oriental',
  'A rich amethyst-hued oriental with plum, amber, and praline. Deep and captivating.',
  ARRAY['assets/images/placeholder.png'], 22, false, 198, 3, false),

('10000000-0000-0000-0000-000000000023', 'Fakhar', 'Lattafa', 'female', 'Floral',
  'Pride in a bottle. A proud floral composition with rose, jasmine, and musk.',
  ARRAY['assets/images/placeholder.png'], 30, false, 234, 3, false),

('10000000-0000-0000-0000-000000000024', 'Raghba', 'Lattafa', 'female', 'Gourmand',
  'Desire embodied. A warm gourmand blend of vanilla, honey, and exotic woods.',
  ARRAY['assets/images/placeholder.png'], 25, false, 312, 3, false),

('10000000-0000-0000-0000-000000000025', 'Ana Abiyedh', 'Lattafa', 'female', 'Fresh',
  'Pure white elegance. A clean, fresh composition with white florals and musk.',
  ARRAY['assets/images/placeholder.png'], 20, false, 178, 3, true);


-- ===== MALE — DESIGNER CLASSICS =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('10000000-0000-0000-0000-000000000030', 'Sauvage', 'Dior', 'male', 'Fresh',
  'Raw and noble. A powerful juicy freshness with Calabrian bergamot and Ambroxan that trails like wildfire.',
  ARRAY['assets/images/placeholder.png'], 20, true, 945, 5, false),

('10000000-0000-0000-0000-000000000031', 'Bleu de Chanel', 'Chanel', 'male', 'Woody',
  'Freedom in a bottle. A woody aromatic fragrance with cedar, sandalwood, and a citrus burst of freshness.',
  ARRAY['assets/images/placeholder.png'], 15, true, 823, 5, false),

('10000000-0000-0000-0000-000000000032', 'Acqua di Gio', 'Giorgio Armani', 'male', 'Fresh',
  'The essence of the Mediterranean. Marine notes, bergamot, and white musk capture the spirit of water.',
  ARRAY['assets/images/placeholder.png'], 18, false, 756, 5, false),

('10000000-0000-0000-0000-000000000033', 'Aventus', 'Creed', 'male', 'Fresh',
  'The king of fragrances. Pineapple, birch, and ambergris create legendary masculine power.',
  ARRAY['assets/images/placeholder.png'], 0, true, 567, 7, false),

('10000000-0000-0000-0000-000000000034', 'Dylan Blue', 'Versace', 'male', 'Fresh',
  'A bold Mediterranean masculinity. Bergamot, violet leaf, and tonka bean in deep blue intensity.',
  ARRAY['assets/images/placeholder.png'], 22, false, 445, 3, false),

('10000000-0000-0000-0000-000000000035', 'The One', 'Dolce & Gabbana', 'male', 'Oriental',
  'Sophisticated, warm, and elegant. Ginger, tobacco, and amber for the modern gentleman.',
  ARRAY['assets/images/placeholder.png'], 16, false, 523, 5, false),

('10000000-0000-0000-0000-000000000036', 'Y Eau de Parfum', 'Yves Saint Laurent', 'male', 'Woody',
  'Why not be bold? Sage, ginger, and cedar create a fresh woody trail of confidence.',
  ARRAY['assets/images/placeholder.png'], 14, false, 412, 5, false),

('10000000-0000-0000-0000-000000000037', 'Stronger With You', 'Emporio Armani', 'male', 'Gourmand',
  'A powerfully addictive scent of chestnut, vanilla, and sage. Made for the man who loves deeply.',
  ARRAY['assets/images/placeholder.png'], 0, false, 334, 5, false),

('10000000-0000-0000-0000-000000000038', 'Terre d''Hermes', 'Hermes', 'male', 'Woody',
  'Between earth and sky. Orange, pepper, and vetiver create a sculptural woody composition.',
  ARRAY['assets/images/placeholder.png'], 7, false, 456, 7, false),

('10000000-0000-0000-0000-000000000039', 'Eros', 'Versace', 'male', 'Fresh',
  'Named after the god of love. Mint, green apple, and vanilla create mythological seduction.',
  ARRAY['assets/images/placeholder.png'], 25, true, 678, 3, false),

('10000000-0000-0000-0000-000000000040', 'Explorer', 'Montblanc', 'male', 'Woody',
  'Adventure awaits. Bergamot, vetiver, and patchouli for the man who charts his own course.',
  ARRAY['assets/images/placeholder.png'], 30, false, 234, 3, false),

('10000000-0000-0000-0000-000000000041', 'Luna Rossa Carbon', 'Prada', 'male', 'Fresh',
  'High-tech masculinity. Lavender and amber blend with a metallic dry-down for cutting-edge style.',
  ARRAY['assets/images/placeholder.png'], 10, false, 367, 5, false),

('10000000-0000-0000-0000-000000000042', 'Spicebomb Extreme', 'Viktor & Rolf', 'male', 'Oriental',
  'An explosive cocktail of tobacco, spices, and vanilla. Intense, warm, and dangerously addictive.',
  ARRAY['assets/images/placeholder.png'], 0, false, 289, 5, false),

('10000000-0000-0000-0000-000000000043', 'Tobacco Vanille', 'Tom Ford', 'male', 'Oriental',
  'Opulent. Warm. Iconic. Tobacco leaf, vanilla, and dried fruits create ultimate luxury.',
  ARRAY['assets/images/placeholder.png'], 4, false, 456, 7, false),

('10000000-0000-0000-0000-000000000044', 'The Most Wanted', 'Azzaro', 'male', 'Gourmand',
  'Irresistible. Toffee, cardamom, and woody notes make you the most wanted man in the room.',
  ARRAY['assets/images/placeholder.png'], 17, false, 312, 3, false),

('10000000-0000-0000-0000-000000000045', 'Born in Roma', 'Valentino', 'male', 'Oriental',
  'Roman swagger in a bottle. Smoked vanilla, ginger, and green earl grey tea.',
  ARRAY['assets/images/placeholder.png'], 9, false, 234, 5, true),

('10000000-0000-0000-0000-000000000046', 'Guilty Pour Homme', 'Gucci', 'male', 'Woody',
  'Bold and unapologetic. Lavender, orange blossom, and patchouli for fearless individuality.',
  ARRAY['assets/images/placeholder.png'], 13, false, 345, 5, false),

('10000000-0000-0000-0000-000000000047', 'Invictus', 'Paco Rabanne', 'male', 'Fresh',
  'Victory in a trophy-shaped bottle. Grapefruit, bay leaf, and guaiac wood for the champion.',
  ARRAY['assets/images/placeholder.png'], 21, false, 534, 3, false),

('10000000-0000-0000-0000-000000000048', 'Le Male', 'Jean Paul Gaultier', 'male', 'Oriental',
  'The sailor fragrance. Lavender, vanilla, and mint in the iconic torso bottle. Timelessly masculine.',
  ARRAY['assets/images/placeholder.png'], 0, false, 612, 5, false),

('10000000-0000-0000-0000-000000000049', '1 Million', 'Paco Rabanne', 'male', 'Gourmand',
  'Pure gold. Blood mandarin, rose absolute, and amber create intoxicating confidence.',
  ARRAY['assets/images/placeholder.png'], 19, false, 578, 3, false),

('10000000-0000-0000-0000-000000000050', 'Club de Nuit Intense', 'Armaf', 'male', 'Fresh',
  'The legendary Aventus alternative. Pineapple, birch, and musk at an unbeatable price point.',
  ARRAY['assets/images/placeholder.png'], 35, false, 423, 3, false);


-- ===== MALE — ARABIAN / NICHE =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('10000000-0000-0000-0000-000000000051', 'Asad', 'Lattafa', 'male', 'Woody',
  'The lion. A bold woody fragrance with tobacco, dried fruits, and black pepper. Pure alpha energy.',
  ARRAY['assets/images/placeholder.png'], 26, false, 345, 3, false),

('10000000-0000-0000-0000-000000000052', 'Raghba', 'Lattafa', 'male', 'Gourmand',
  'Desire for him. Warm vanilla, oud, and saffron create an irresistible masculine sweetness.',
  ARRAY['assets/images/placeholder.png'], 28, false, 267, 3, false),

('10000000-0000-0000-0000-000000000053', 'Fakhar', 'Lattafa', 'male', 'Woody',
  'Pride for him. A distinguished woody fragrance with leather, cedarwood, and amber.',
  ARRAY['assets/images/placeholder.png'], 24, false, 198, 3, false),

('10000000-0000-0000-0000-000000000054', 'Al Haramain Amber Oud Gold', 'Al Haramain', 'male', 'Oriental',
  'Liquid gold. Rich amber, oud, and vanilla create an opulent Arabian masterpiece.',
  ARRAY['assets/images/placeholder.png'], 0, false, 289, 5, false),

('10000000-0000-0000-0000-000000000055', 'Oud for Greatness', 'Initio', 'male', 'Woody',
  'Greatness defined. Laotian oud, lavender, and musk create monumental sophistication.',
  ARRAY['assets/images/placeholder.png'], 0, false, 167, 7, true),

('10000000-0000-0000-0000-000000000056', 'Rehab', 'Lattafa', 'male', 'Oriental',
  'A hypnotic oriental blend of oudh, amber, and sweet notes. Addictive and long-lasting.',
  ARRAY['assets/images/placeholder.png'], 32, false, 234, 3, false),

('10000000-0000-0000-0000-000000000057', 'Perfume de Marly Layton', 'Parfums de Marly', 'male', 'Oriental',
  'Royal sophistication. Apple, lavender, and vanilla create a fragrance fit for royalty.',
  ARRAY['assets/images/placeholder.png'], 0, false, 345, 7, false),

('10000000-0000-0000-0000-000000000058', 'Interlude Man', 'Amouage', 'male', 'Oriental',
  'Controlled chaos. Frankincense, oud, and amber create a smoky, complex masterpiece.',
  ARRAY['assets/images/placeholder.png'], 0, false, 156, 7, false);


-- ===== UNISEX FRAGRANCES =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('10000000-0000-0000-0000-000000000060', 'Oud Wood', 'Tom Ford', 'unisex', 'Woody',
  'The definitive oud fragrance. Exotic rosewood, cardamom, and Chinese pepper in smoky elegance.',
  ARRAY['assets/images/placeholder.png'], 5, true, 456, 7, false),

('10000000-0000-0000-0000-000000000061', 'Lost Cherry', 'Tom Ford', 'unisex', 'Gourmand',
  'Luscious black cherry meets roasted tonka and bitter almond. Provocatively addictive.',
  ARRAY['assets/images/placeholder.png'], 0, false, 389, 7, true),

('10000000-0000-0000-0000-000000000062', 'Bitter Peach', 'Tom Ford', 'unisex', 'Gourmand',
  'A hedonistic peach fragrance. Blood orange, cardamom, and patchouli in rum-soaked decadence.',
  ARRAY['assets/images/placeholder.png'], 3, false, 312, 7, false),

('10000000-0000-0000-0000-000000000063', 'Wood Sage & Sea Salt', 'Jo Malone', 'unisex', 'Fresh',
  'The windswept shore. Sea salt, ambrette seeds, and sage capture the spirit of coastal freedom.',
  ARRAY['assets/images/placeholder.png'], 12, false, 423, 5, false),

('10000000-0000-0000-0000-000000000064', 'English Pear & Freesia', 'Jo Malone', 'unisex', 'Fresh',
  'Autumn harvest. The luscious freshness of just-ripe pears with white freesias and amber patchouli.',
  ARRAY['assets/images/placeholder.png'], 10, false, 356, 5, false),

('10000000-0000-0000-0000-000000000065', 'CK One', 'Calvin Klein', 'unisex', 'Fresh',
  'The original unisex. Green tea, bergamot, and musk defined a generation of shared fragrance.',
  ARRAY['assets/images/placeholder.png'], 40, false, 789, 3, false),

('10000000-0000-0000-0000-000000000066', 'Molecule 01', 'Escentric Molecules', 'unisex', 'Woody',
  'Pure Iso E Super. A single molecule that creates a woody, velvety aura unique to your skin.',
  ARRAY['assets/images/placeholder.png'], 0, false, 234, 7, false),

('10000000-0000-0000-0000-000000000067', 'Another 13', 'Le Labo', 'unisex', 'Woody',
  'An abstract scent. Ambroxan, jasmine petals, and white moss create addictive skin-scent magic.',
  ARRAY['assets/images/placeholder.png'], 0, false, 178, 7, true),

('10000000-0000-0000-0000-000000000068', 'Santal 33', 'Le Labo', 'unisex', 'Woody',
  'The cult classic. Australian sandalwood, cardamom, and leather create the scent of cool.',
  ARRAY['assets/images/placeholder.png'], 4, true, 567, 7, false),

('10000000-0000-0000-0000-000000000069', 'Grand Soir', 'Maison Francis Kurkdjian', 'unisex', 'Oriental',
  'A starry amber night. Benzoin, tonka bean, and amber create warm, enveloping elegance.',
  ARRAY['assets/images/placeholder.png'], 0, false, 234, 7, false),

('10000000-0000-0000-0000-000000000070', 'Roses Vanille', 'Mancera', 'unisex', 'Gourmand',
  'Roses dipped in vanilla. A sweet, romantic fragrance that wraps you in floral warmth.',
  ARRAY['assets/images/placeholder.png'], 15, false, 267, 5, false),

('10000000-0000-0000-0000-000000000071', 'BR540 Extrait', 'Maison Francis Kurkdjian', 'unisex', 'Oriental',
  'The extrait de parfum of the legendary BR540. Even richer, deeper, and more intoxicating.',
  ARRAY['assets/images/placeholder.png'], 0, true, 445, 7, true),

('10000000-0000-0000-0000-000000000072', 'Neroli Portofino', 'Tom Ford', 'unisex', 'Fresh',
  'The Italian Riviera in a bottle. Tunisian neroli, bergamot, and amber create sun-drenched luxury.',
  ARRAY['assets/images/placeholder.png'], 6, false, 312, 7, false),

('10000000-0000-0000-0000-000000000073', 'Noir de Noir', 'Tom Ford', 'unisex', 'Oriental',
  'Dark romance. Black truffle, vanilla, patchouli, and oud wood in velvety opulence.',
  ARRAY['assets/images/placeholder.png'], 0, false, 198, 7, false),

('10000000-0000-0000-0000-000000000074', 'Khamrah Qahwa Vanilla Latte', 'Lattafa', 'unisex', 'Gourmand',
  'A cozy coffee-house scent. Vanilla latte, cardamom, and sweet praline for coffee lovers.',
  ARRAY['assets/images/placeholder.png'], 30, false, 156, 3, true);


-- ============================================
-- SIZES for all new products
-- Each product gets 30ml, 50ml, 100ml
-- Pricing tiers: Budget / Mid / Premium / Luxury / Ultra-luxury
-- ============================================

-- Female Designer (premium pricing)
INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
('10000000-0000-0000-0000-000000000001', 30, 850, true), ('10000000-0000-0000-0000-000000000001', 50, 1200, true), ('10000000-0000-0000-0000-000000000001', 100, 1800, true),
('10000000-0000-0000-0000-000000000002', 30, 800, true), ('10000000-0000-0000-0000-000000000002', 50, 1150, true), ('10000000-0000-0000-0000-000000000002', 100, 1700, true),
('10000000-0000-0000-0000-000000000003', 30, 750, true), ('10000000-0000-0000-0000-000000000003', 50, 1100, true), ('10000000-0000-0000-0000-000000000003', 100, 1600, true),
('10000000-0000-0000-0000-000000000004', 30, 650, true), ('10000000-0000-0000-0000-000000000004', 50, 950, true), ('10000000-0000-0000-0000-000000000004', 100, 1400, true),
('10000000-0000-0000-0000-000000000005', 30, 700, true), ('10000000-0000-0000-0000-000000000005', 50, 1000, true), ('10000000-0000-0000-0000-000000000005', 100, 1500, true),
('10000000-0000-0000-0000-000000000006', 30, 680, true), ('10000000-0000-0000-0000-000000000006', 50, 980, true), ('10000000-0000-0000-0000-000000000006', 100, 1450, true),
('10000000-0000-0000-0000-000000000007', 30, 700, true), ('10000000-0000-0000-0000-000000000007', 50, 1020, true), ('10000000-0000-0000-0000-000000000007', 100, 1500, true),
('10000000-0000-0000-0000-000000000008', 30, 650, true), ('10000000-0000-0000-0000-000000000008', 50, 950, true), ('10000000-0000-0000-0000-000000000008', 100, 1400, true),
('10000000-0000-0000-0000-000000000009', 30, 780, true), ('10000000-0000-0000-0000-000000000009', 50, 1100, true), ('10000000-0000-0000-0000-000000000009', 100, 1650, true),
('10000000-0000-0000-0000-000000000010', 30, 400, true), ('10000000-0000-0000-0000-000000000010', 50, 600, true), ('10000000-0000-0000-0000-000000000010', 100, 900, true),
('10000000-0000-0000-0000-000000000011', 30, 380, true), ('10000000-0000-0000-0000-000000000011', 50, 560, true), ('10000000-0000-0000-0000-000000000011', 100, 850, true),
('10000000-0000-0000-0000-000000000012', 30, 550, true), ('10000000-0000-0000-0000-000000000012', 50, 800, true), ('10000000-0000-0000-0000-000000000012', 100, 1200, true),
('10000000-0000-0000-0000-000000000013', 30, 700, true), ('10000000-0000-0000-0000-000000000013', 50, 1000, true), ('10000000-0000-0000-0000-000000000013', 100, 1500, true),
('10000000-0000-0000-0000-000000000014', 30, 600, true), ('10000000-0000-0000-0000-000000000014', 50, 880, true), ('10000000-0000-0000-0000-000000000014', 100, 1300, true),
('10000000-0000-0000-0000-000000000015', 30, 650, true), ('10000000-0000-0000-0000-000000000015', 50, 950, true), ('10000000-0000-0000-0000-000000000015', 100, 1400, true),
('10000000-0000-0000-0000-000000000016', 30, 620, true), ('10000000-0000-0000-0000-000000000016', 50, 900, true), ('10000000-0000-0000-0000-000000000016', 100, 1350, true),
('10000000-0000-0000-0000-000000000017', 30, 1200, true), ('10000000-0000-0000-0000-000000000017', 50, 1800, true), ('10000000-0000-0000-0000-000000000017', 100, 2600, true),
('10000000-0000-0000-0000-000000000018', 30, 1500, true), ('10000000-0000-0000-0000-000000000018', 50, 2200, true), ('10000000-0000-0000-0000-000000000018', 100, 3200, true),
('10000000-0000-0000-0000-000000000019', 30, 800, true), ('10000000-0000-0000-0000-000000000019', 50, 1150, true), ('10000000-0000-0000-0000-000000000019', 100, 1700, true),
('10000000-0000-0000-0000-000000000020', 30, 600, true), ('10000000-0000-0000-0000-000000000020', 50, 880, true), ('10000000-0000-0000-0000-000000000020', 100, 1300, true);

-- Female Arabian (budget pricing)
INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
('10000000-0000-0000-0000-000000000021', 30, 240, true), ('10000000-0000-0000-0000-000000000021', 50, 360, true), ('10000000-0000-0000-0000-000000000021', 100, 520, true),
('10000000-0000-0000-0000-000000000022', 30, 220, true), ('10000000-0000-0000-0000-000000000022', 50, 340, true), ('10000000-0000-0000-0000-000000000022', 100, 500, true),
('10000000-0000-0000-0000-000000000023', 30, 200, true), ('10000000-0000-0000-0000-000000000023', 50, 320, true), ('10000000-0000-0000-0000-000000000023', 100, 480, true),
('10000000-0000-0000-0000-000000000024', 30, 210, true), ('10000000-0000-0000-0000-000000000024', 50, 330, true), ('10000000-0000-0000-0000-000000000024', 100, 490, true),
('10000000-0000-0000-0000-000000000025', 30, 190, true), ('10000000-0000-0000-0000-000000000025', 50, 300, true), ('10000000-0000-0000-0000-000000000025', 100, 450, true);

-- Male Designer
INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
('10000000-0000-0000-0000-000000000030', 30, 700, true), ('10000000-0000-0000-0000-000000000030', 50, 1000, true), ('10000000-0000-0000-0000-000000000030', 100, 1500, true),
('10000000-0000-0000-0000-000000000031', 30, 780, true), ('10000000-0000-0000-0000-000000000031', 50, 1100, true), ('10000000-0000-0000-0000-000000000031', 100, 1650, true),
('10000000-0000-0000-0000-000000000032', 30, 600, true), ('10000000-0000-0000-0000-000000000032', 50, 880, true), ('10000000-0000-0000-0000-000000000032', 100, 1300, true),
('10000000-0000-0000-0000-000000000033', 30, 1800, true), ('10000000-0000-0000-0000-000000000033', 50, 2600, true), ('10000000-0000-0000-0000-000000000033', 100, 3800, true),
('10000000-0000-0000-0000-000000000034', 30, 380, true), ('10000000-0000-0000-0000-000000000034', 50, 560, true), ('10000000-0000-0000-0000-000000000034', 100, 850, true),
('10000000-0000-0000-0000-000000000035', 30, 550, true), ('10000000-0000-0000-0000-000000000035', 50, 800, true), ('10000000-0000-0000-0000-000000000035', 100, 1200, true),
('10000000-0000-0000-0000-000000000036', 30, 650, true), ('10000000-0000-0000-0000-000000000036', 50, 950, true), ('10000000-0000-0000-0000-000000000036', 100, 1400, true),
('10000000-0000-0000-0000-000000000037', 30, 580, true), ('10000000-0000-0000-0000-000000000037', 50, 850, true), ('10000000-0000-0000-0000-000000000037', 100, 1250, true),
('10000000-0000-0000-0000-000000000038', 30, 750, true), ('10000000-0000-0000-0000-000000000038', 50, 1080, true), ('10000000-0000-0000-0000-000000000038', 100, 1600, true),
('10000000-0000-0000-0000-000000000039', 30, 400, true), ('10000000-0000-0000-0000-000000000039', 50, 600, true), ('10000000-0000-0000-0000-000000000039', 100, 900, true),
('10000000-0000-0000-0000-000000000040', 30, 300, true), ('10000000-0000-0000-0000-000000000040', 50, 450, true), ('10000000-0000-0000-0000-000000000040', 100, 680, true),
('10000000-0000-0000-0000-000000000041', 30, 620, true), ('10000000-0000-0000-0000-000000000041', 50, 900, true), ('10000000-0000-0000-0000-000000000041', 100, 1350, true),
('10000000-0000-0000-0000-000000000042', 30, 650, true), ('10000000-0000-0000-0000-000000000042', 50, 950, true), ('10000000-0000-0000-0000-000000000042', 100, 1400, true),
('10000000-0000-0000-0000-000000000043', 30, 1200, true), ('10000000-0000-0000-0000-000000000043', 50, 1800, true), ('10000000-0000-0000-0000-000000000043', 100, 2600, true),
('10000000-0000-0000-0000-000000000044', 30, 350, true), ('10000000-0000-0000-0000-000000000044', 50, 520, true), ('10000000-0000-0000-0000-000000000044', 100, 780, true),
('10000000-0000-0000-0000-000000000045', 30, 600, true), ('10000000-0000-0000-0000-000000000045', 50, 880, true), ('10000000-0000-0000-0000-000000000045', 100, 1300, true),
('10000000-0000-0000-0000-000000000046', 30, 580, true), ('10000000-0000-0000-0000-000000000046', 50, 850, true), ('10000000-0000-0000-0000-000000000046', 100, 1250, true),
('10000000-0000-0000-0000-000000000047', 30, 400, true), ('10000000-0000-0000-0000-000000000047', 50, 600, true), ('10000000-0000-0000-0000-000000000047', 100, 900, true),
('10000000-0000-0000-0000-000000000048', 30, 500, true), ('10000000-0000-0000-0000-000000000048', 50, 750, true), ('10000000-0000-0000-0000-000000000048', 100, 1100, true),
('10000000-0000-0000-0000-000000000049', 30, 420, true), ('10000000-0000-0000-0000-000000000049', 50, 630, true), ('10000000-0000-0000-0000-000000000049', 100, 950, true),
('10000000-0000-0000-0000-000000000050', 30, 180, true), ('10000000-0000-0000-0000-000000000050', 50, 280, true), ('10000000-0000-0000-0000-000000000050', 100, 420, true);

-- Male Arabian / Niche
INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
('10000000-0000-0000-0000-000000000051', 30, 250, true), ('10000000-0000-0000-0000-000000000051', 50, 380, true), ('10000000-0000-0000-0000-000000000051', 100, 560, true),
('10000000-0000-0000-0000-000000000052', 30, 210, true), ('10000000-0000-0000-0000-000000000052', 50, 330, true), ('10000000-0000-0000-0000-000000000052', 100, 490, true),
('10000000-0000-0000-0000-000000000053', 30, 200, true), ('10000000-0000-0000-0000-000000000053', 50, 320, true), ('10000000-0000-0000-0000-000000000053', 100, 480, true),
('10000000-0000-0000-0000-000000000054', 30, 450, true), ('10000000-0000-0000-0000-000000000054', 50, 680, true), ('10000000-0000-0000-0000-000000000054', 100, 1000, true),
('10000000-0000-0000-0000-000000000055', 30, 1400, true), ('10000000-0000-0000-0000-000000000055', 50, 2100, true), ('10000000-0000-0000-0000-000000000055', 100, 3100, true),
('10000000-0000-0000-0000-000000000056', 30, 180, true), ('10000000-0000-0000-0000-000000000056', 50, 280, true), ('10000000-0000-0000-0000-000000000056', 100, 420, true),
('10000000-0000-0000-0000-000000000057', 30, 1300, true), ('10000000-0000-0000-0000-000000000057', 50, 1900, true), ('10000000-0000-0000-0000-000000000057', 100, 2800, true),
('10000000-0000-0000-0000-000000000058', 30, 1500, true), ('10000000-0000-0000-0000-000000000058', 50, 2200, true), ('10000000-0000-0000-0000-000000000058', 100, 3200, true);

-- Unisex
INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
('10000000-0000-0000-0000-000000000060', 30, 1200, true), ('10000000-0000-0000-0000-000000000060', 50, 1800, true), ('10000000-0000-0000-0000-000000000060', 100, 2600, true),
('10000000-0000-0000-0000-000000000061', 30, 1300, true), ('10000000-0000-0000-0000-000000000061', 50, 1900, true), ('10000000-0000-0000-0000-000000000061', 100, 2800, true),
('10000000-0000-0000-0000-000000000062', 30, 1200, true), ('10000000-0000-0000-0000-000000000062', 50, 1800, true), ('10000000-0000-0000-0000-000000000062', 100, 2600, true),
('10000000-0000-0000-0000-000000000063', 30, 600, true), ('10000000-0000-0000-0000-000000000063', 50, 880, true), ('10000000-0000-0000-0000-000000000063', 100, 1300, true),
('10000000-0000-0000-0000-000000000064', 30, 580, true), ('10000000-0000-0000-0000-000000000064', 50, 850, true), ('10000000-0000-0000-0000-000000000064', 100, 1250, true),
('10000000-0000-0000-0000-000000000065', 30, 180, true), ('10000000-0000-0000-0000-000000000065', 50, 280, true), ('10000000-0000-0000-0000-000000000065', 100, 420, true),
('10000000-0000-0000-0000-000000000066', 30, 700, true), ('10000000-0000-0000-0000-000000000066', 50, 1020, true), ('10000000-0000-0000-0000-000000000066', 100, 1500, true),
('10000000-0000-0000-0000-000000000067', 30, 1100, true), ('10000000-0000-0000-0000-000000000067', 50, 1600, true), ('10000000-0000-0000-0000-000000000067', 100, 2400, true),
('10000000-0000-0000-0000-000000000068', 30, 1100, true), ('10000000-0000-0000-0000-000000000068', 50, 1600, true), ('10000000-0000-0000-0000-000000000068', 100, 2400, true),
('10000000-0000-0000-0000-000000000069', 30, 1400, true), ('10000000-0000-0000-0000-000000000069', 50, 2100, true), ('10000000-0000-0000-0000-000000000069', 100, 3100, true),
('10000000-0000-0000-0000-000000000070', 30, 500, true), ('10000000-0000-0000-0000-000000000070', 50, 750, true), ('10000000-0000-0000-0000-000000000070', 100, 1100, true),
('10000000-0000-0000-0000-000000000071', 30, 1800, true), ('10000000-0000-0000-0000-000000000071', 50, 2600, true), ('10000000-0000-0000-0000-000000000071', 100, 3800, true),
('10000000-0000-0000-0000-000000000072', 30, 1200, true), ('10000000-0000-0000-0000-000000000072', 50, 1800, true), ('10000000-0000-0000-0000-000000000072', 100, 2600, true),
('10000000-0000-0000-0000-000000000073', 30, 1300, true), ('10000000-0000-0000-0000-000000000073', 50, 1900, true), ('10000000-0000-0000-0000-000000000073', 100, 2800, true),
('10000000-0000-0000-0000-000000000074', 30, 230, true), ('10000000-0000-0000-0000-000000000074', 50, 350, true), ('10000000-0000-0000-0000-000000000074', 100, 520, true);


-- ============================================
-- SCENT NOTES for all new products
-- ============================================

-- Female Designer
INSERT INTO public.scent_notes (product_id, layer, note) VALUES
-- N°5
('10000000-0000-0000-0000-000000000001', 'top', 'Aldehydes'), ('10000000-0000-0000-0000-000000000001', 'top', 'Neroli'), ('10000000-0000-0000-0000-000000000001', 'top', 'Ylang-Ylang'),
('10000000-0000-0000-0000-000000000001', 'heart', 'Rose'), ('10000000-0000-0000-0000-000000000001', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000001', 'heart', 'Lily of the Valley'),
('10000000-0000-0000-0000-000000000001', 'base', 'Sandalwood'), ('10000000-0000-0000-0000-000000000001', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000001', 'base', 'Vetiver'),
-- Coco Mademoiselle
('10000000-0000-0000-0000-000000000002', 'top', 'Orange'), ('10000000-0000-0000-0000-000000000002', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000002', 'top', 'Grapefruit'),
('10000000-0000-0000-0000-000000000002', 'heart', 'Rose'), ('10000000-0000-0000-0000-000000000002', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000002', 'heart', 'Lychee'),
('10000000-0000-0000-0000-000000000002', 'base', 'Patchouli'), ('10000000-0000-0000-0000-000000000002', 'base', 'Vetiver'), ('10000000-0000-0000-0000-000000000002', 'base', 'Vanilla'),
-- J'adore
('10000000-0000-0000-0000-000000000003', 'top', 'Pear'), ('10000000-0000-0000-0000-000000000003', 'top', 'Melon'), ('10000000-0000-0000-0000-000000000003', 'top', 'Magnolia'),
('10000000-0000-0000-0000-000000000003', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000003', 'heart', 'Rose'), ('10000000-0000-0000-0000-000000000003', 'heart', 'Violet'),
('10000000-0000-0000-0000-000000000003', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000003', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000003', 'base', 'Blackberry'),
-- La Vie Est Belle
('10000000-0000-0000-0000-000000000004', 'top', 'Blackcurrant'), ('10000000-0000-0000-0000-000000000004', 'top', 'Pear'), ('10000000-0000-0000-0000-000000000004', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000004', 'heart', 'Iris'), ('10000000-0000-0000-0000-000000000004', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000004', 'heart', 'Orange Blossom'),
('10000000-0000-0000-0000-000000000004', 'base', 'Praline'), ('10000000-0000-0000-0000-000000000004', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000004', 'base', 'Patchouli'),
-- Black Opium
('10000000-0000-0000-0000-000000000005', 'top', 'Pink Pepper'), ('10000000-0000-0000-0000-000000000005', 'top', 'Orange Blossom'), ('10000000-0000-0000-0000-000000000005', 'top', 'Pear'),
('10000000-0000-0000-0000-000000000005', 'heart', 'Coffee'), ('10000000-0000-0000-0000-000000000005', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000005', 'heart', 'Bitter Almond'),
('10000000-0000-0000-0000-000000000005', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000005', 'base', 'Patchouli'), ('10000000-0000-0000-0000-000000000005', 'base', 'Cedar'),
-- Good Girl
('10000000-0000-0000-0000-000000000006', 'top', 'Almond'), ('10000000-0000-0000-0000-000000000006', 'top', 'Coffee'), ('10000000-0000-0000-0000-000000000006', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000006', 'heart', 'Tuberose'), ('10000000-0000-0000-0000-000000000006', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000006', 'heart', 'Rose'),
('10000000-0000-0000-0000-000000000006', 'base', 'Tonka Bean'), ('10000000-0000-0000-0000-000000000006', 'base', 'Cocoa'), ('10000000-0000-0000-0000-000000000006', 'base', 'Sandalwood'),
-- Flowerbomb
('10000000-0000-0000-0000-000000000007', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000007', 'top', 'Tea'), ('10000000-0000-0000-0000-000000000007', 'top', 'Osmanthus'),
('10000000-0000-0000-0000-000000000007', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000007', 'heart', 'Rose'), ('10000000-0000-0000-0000-000000000007', 'heart', 'Orchid'),
('10000000-0000-0000-0000-000000000007', 'base', 'Patchouli'), ('10000000-0000-0000-0000-000000000007', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000007', 'base', 'Musk'),
-- Si
('10000000-0000-0000-0000-000000000008', 'top', 'Blackcurrant'), ('10000000-0000-0000-0000-000000000008', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000008', 'top', 'Mandarin'),
('10000000-0000-0000-0000-000000000008', 'heart', 'Rose'), ('10000000-0000-0000-0000-000000000008', 'heart', 'Freesia'), ('10000000-0000-0000-0000-000000000008', 'heart', 'Osmanthus'),
('10000000-0000-0000-0000-000000000008', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000008', 'base', 'Patchouli'), ('10000000-0000-0000-0000-000000000008', 'base', 'Ambroxan'),
-- Chance Eau Tendre
('10000000-0000-0000-0000-000000000009', 'top', 'Grapefruit'), ('10000000-0000-0000-0000-000000000009', 'top', 'Quince'), ('10000000-0000-0000-0000-000000000009', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000009', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000009', 'heart', 'Hyacinth'), ('10000000-0000-0000-0000-000000000009', 'heart', 'Rose'),
('10000000-0000-0000-0000-000000000009', 'base', 'White Musk'), ('10000000-0000-0000-0000-000000000009', 'base', 'Cedar'), ('10000000-0000-0000-0000-000000000009', 'base', 'Amber'),
-- Crystal Noir
('10000000-0000-0000-0000-000000000010', 'top', 'Ginger'), ('10000000-0000-0000-0000-000000000010', 'top', 'Cardamom'), ('10000000-0000-0000-0000-000000000010', 'top', 'Pepper'),
('10000000-0000-0000-0000-000000000010', 'heart', 'Gardenia'), ('10000000-0000-0000-0000-000000000010', 'heart', 'Coconut'), ('10000000-0000-0000-0000-000000000010', 'heart', 'Peony'),
('10000000-0000-0000-0000-000000000010', 'base', 'Sandalwood'), ('10000000-0000-0000-0000-000000000010', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000010', 'base', 'Amber'),
-- Bright Crystal
('10000000-0000-0000-0000-000000000011', 'top', 'Pomegranate'), ('10000000-0000-0000-0000-000000000011', 'top', 'Yuzu'), ('10000000-0000-0000-0000-000000000011', 'top', 'Iced Accord'),
('10000000-0000-0000-0000-000000000011', 'heart', 'Peony'), ('10000000-0000-0000-0000-000000000011', 'heart', 'Magnolia'), ('10000000-0000-0000-0000-000000000011', 'heart', 'Lotus'),
('10000000-0000-0000-0000-000000000011', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000011', 'base', 'Mahogany'), ('10000000-0000-0000-0000-000000000011', 'base', 'Amber'),
-- Light Blue
('10000000-0000-0000-0000-000000000012', 'top', 'Sicilian Cedar'), ('10000000-0000-0000-0000-000000000012', 'top', 'Apple'), ('10000000-0000-0000-0000-000000000012', 'top', 'Bluebell'),
('10000000-0000-0000-0000-000000000012', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000012', 'heart', 'Bamboo'), ('10000000-0000-0000-0000-000000000012', 'heart', 'White Rose'),
('10000000-0000-0000-0000-000000000012', 'base', 'Cedar'), ('10000000-0000-0000-0000-000000000012', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000012', 'base', 'Amber'),
-- Libre
('10000000-0000-0000-0000-000000000013', 'top', 'Mandarin'), ('10000000-0000-0000-0000-000000000013', 'top', 'Lavender'), ('10000000-0000-0000-0000-000000000013', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000013', 'heart', 'Orange Blossom'), ('10000000-0000-0000-0000-000000000013', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000013', 'heart', 'Orchid'),
('10000000-0000-0000-0000-000000000013', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000013', 'base', 'Cedar'), ('10000000-0000-0000-0000-000000000013', 'base', 'Musk'),
-- Flora Gorgeous Gardenia
('10000000-0000-0000-0000-000000000014', 'top', 'Pear Blossom'), ('10000000-0000-0000-0000-000000000014', 'top', 'Mandarin'), ('10000000-0000-0000-0000-000000000014', 'top', 'Red Berries'),
('10000000-0000-0000-0000-000000000014', 'heart', 'Gardenia'), ('10000000-0000-0000-0000-000000000014', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000014', 'heart', 'Frangipani'),
('10000000-0000-0000-0000-000000000014', 'base', 'Brown Sugar'), ('10000000-0000-0000-0000-000000000014', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000014', 'base', 'Sandalwood'),
-- Paradoxe
('10000000-0000-0000-0000-000000000015', 'top', 'Neroli'), ('10000000-0000-0000-0000-000000000015', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000015', 'top', 'Pear'),
('10000000-0000-0000-0000-000000000015', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000015', 'heart', 'Orange Blossom'), ('10000000-0000-0000-0000-000000000015', 'heart', 'Osmanthus'),
('10000000-0000-0000-0000-000000000015', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000015', 'base', 'Amber'), ('10000000-0000-0000-0000-000000000015', 'base', 'Virginia Cedar'),
-- My Way
('10000000-0000-0000-0000-000000000016', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000016', 'top', 'Orange Blossom'), ('10000000-0000-0000-0000-000000000016', 'top', 'Mandarin'),
('10000000-0000-0000-0000-000000000016', 'heart', 'Tuberose'), ('10000000-0000-0000-0000-000000000016', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000016', 'heart', 'Rose'),
('10000000-0000-0000-0000-000000000016', 'base', 'Cedarwood'), ('10000000-0000-0000-0000-000000000016', 'base', 'White Musk'), ('10000000-0000-0000-0000-000000000016', 'base', 'Vanilla'),
-- Delina
('10000000-0000-0000-0000-000000000017', 'top', 'Lychee'), ('10000000-0000-0000-0000-000000000017', 'top', 'Rhubarb'), ('10000000-0000-0000-0000-000000000017', 'top', 'Nutmeg'),
('10000000-0000-0000-0000-000000000017', 'heart', 'Turkish Rose'), ('10000000-0000-0000-0000-000000000017', 'heart', 'Peony'), ('10000000-0000-0000-0000-000000000017', 'heart', 'Lily of the Valley'),
('10000000-0000-0000-0000-000000000017', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000017', 'base', 'Cashmeran'), ('10000000-0000-0000-0000-000000000017', 'base', 'Musk'),
-- Baccarat Rouge 540
('10000000-0000-0000-0000-000000000018', 'top', 'Saffron'), ('10000000-0000-0000-0000-000000000018', 'top', 'Jasmine'), ('10000000-0000-0000-0000-000000000018', 'top', 'Bitter Almond'),
('10000000-0000-0000-0000-000000000018', 'heart', 'Ambergris'), ('10000000-0000-0000-0000-000000000018', 'heart', 'Cedar'), ('10000000-0000-0000-0000-000000000018', 'heart', 'Fir Resin'),
('10000000-0000-0000-0000-000000000018', 'base', 'Cashmeran'), ('10000000-0000-0000-0000-000000000018', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000018', 'base', 'Benzoin'),
-- Velvet Rose & Oud
('10000000-0000-0000-0000-000000000019', 'top', 'Clove'), ('10000000-0000-0000-0000-000000000019', 'top', 'Praline'), ('10000000-0000-0000-0000-000000000019', 'top', 'Saffron'),
('10000000-0000-0000-0000-000000000019', 'heart', 'Damask Rose'), ('10000000-0000-0000-0000-000000000019', 'heart', 'Oud'), ('10000000-0000-0000-0000-000000000019', 'heart', 'Jasmine'),
('10000000-0000-0000-0000-000000000019', 'base', 'Sandalwood'), ('10000000-0000-0000-0000-000000000019', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000019', 'base', 'Amber'),
-- Alien
('10000000-0000-0000-0000-000000000020', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000020', 'top', 'Mandarin'), ('10000000-0000-0000-0000-000000000020', 'top', 'Green Notes'),
('10000000-0000-0000-0000-000000000020', 'heart', 'Jasmine Sambac'), ('10000000-0000-0000-0000-000000000020', 'heart', 'Tiare Flower'), ('10000000-0000-0000-0000-000000000020', 'heart', 'Rose'),
('10000000-0000-0000-0000-000000000020', 'base', 'Amber'), ('10000000-0000-0000-0000-000000000020', 'base', 'Cashmeran'), ('10000000-0000-0000-0000-000000000020', 'base', 'White Musk'),
-- Yara
('10000000-0000-0000-0000-000000000021', 'top', 'Tangerine'), ('10000000-0000-0000-0000-000000000021', 'top', 'Heliotrope'), ('10000000-0000-0000-0000-000000000021', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000021', 'heart', 'Orchid'), ('10000000-0000-0000-0000-000000000021', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000021', 'heart', 'Gourmand'),
('10000000-0000-0000-0000-000000000021', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000021', 'base', 'Sandalwood'), ('10000000-0000-0000-0000-000000000021', 'base', 'Musk'),
-- Badee Al Oud Amethyst
('10000000-0000-0000-0000-000000000022', 'top', 'Plum'), ('10000000-0000-0000-0000-000000000022', 'top', 'Saffron'), ('10000000-0000-0000-0000-000000000022', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000022', 'heart', 'Rose'), ('10000000-0000-0000-0000-000000000022', 'heart', 'Praline'), ('10000000-0000-0000-0000-000000000022', 'heart', 'Jasmine'),
('10000000-0000-0000-0000-000000000022', 'base', 'Amber'), ('10000000-0000-0000-0000-000000000022', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000022', 'base', 'Oud'),
-- Fakhar (female)
('10000000-0000-0000-0000-000000000023', 'top', 'Rose'), ('10000000-0000-0000-0000-000000000023', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000023', 'top', 'Peach'),
('10000000-0000-0000-0000-000000000023', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000023', 'heart', 'Lily'), ('10000000-0000-0000-0000-000000000023', 'heart', 'Iris'),
('10000000-0000-0000-0000-000000000023', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000023', 'base', 'Sandalwood'), ('10000000-0000-0000-0000-000000000023', 'base', 'Amber'),
-- Raghba (female)
('10000000-0000-0000-0000-000000000024', 'top', 'Honey'), ('10000000-0000-0000-0000-000000000024', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000024', 'top', 'Saffron'),
('10000000-0000-0000-0000-000000000024', 'heart', 'Vanilla'), ('10000000-0000-0000-0000-000000000024', 'heart', 'Rose'), ('10000000-0000-0000-0000-000000000024', 'heart', 'Jasmine'),
('10000000-0000-0000-0000-000000000024', 'base', 'Oud'), ('10000000-0000-0000-0000-000000000024', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000024', 'base', 'Amber'),
-- Ana Abiyedh
('10000000-0000-0000-0000-000000000025', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000025', 'top', 'Lemon'), ('10000000-0000-0000-0000-000000000025', 'top', 'Green Apple'),
('10000000-0000-0000-0000-000000000025', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000025', 'heart', 'Lily'), ('10000000-0000-0000-0000-000000000025', 'heart', 'Rose'),
('10000000-0000-0000-0000-000000000025', 'base', 'White Musk'), ('10000000-0000-0000-0000-000000000025', 'base', 'Cedar'), ('10000000-0000-0000-0000-000000000025', 'base', 'Sandalwood');

-- Male Designer scent notes
INSERT INTO public.scent_notes (product_id, layer, note) VALUES
-- Sauvage
('10000000-0000-0000-0000-000000000030', 'top', 'Calabrian Bergamot'), ('10000000-0000-0000-0000-000000000030', 'top', 'Pepper'), ('10000000-0000-0000-0000-000000000030', 'top', 'Elemi'),
('10000000-0000-0000-0000-000000000030', 'heart', 'Lavender'), ('10000000-0000-0000-0000-000000000030', 'heart', 'Sichuan Pepper'), ('10000000-0000-0000-0000-000000000030', 'heart', 'Geranium'),
('10000000-0000-0000-0000-000000000030', 'base', 'Ambroxan'), ('10000000-0000-0000-0000-000000000030', 'base', 'Cedar'), ('10000000-0000-0000-0000-000000000030', 'base', 'Labdanum'),
-- Bleu de Chanel
('10000000-0000-0000-0000-000000000031', 'top', 'Grapefruit'), ('10000000-0000-0000-0000-000000000031', 'top', 'Lemon'), ('10000000-0000-0000-0000-000000000031', 'top', 'Mint'),
('10000000-0000-0000-0000-000000000031', 'heart', 'Ginger'), ('10000000-0000-0000-0000-000000000031', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000031', 'heart', 'Nutmeg'),
('10000000-0000-0000-0000-000000000031', 'base', 'Sandalwood'), ('10000000-0000-0000-0000-000000000031', 'base', 'Cedar'), ('10000000-0000-0000-0000-000000000031', 'base', 'Incense'),
-- Acqua di Gio
('10000000-0000-0000-0000-000000000032', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000032', 'top', 'Neroli'), ('10000000-0000-0000-0000-000000000032', 'top', 'Green Tangerine'),
('10000000-0000-0000-0000-000000000032', 'heart', 'Marine Notes'), ('10000000-0000-0000-0000-000000000032', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000032', 'heart', 'Rosemary'),
('10000000-0000-0000-0000-000000000032', 'base', 'White Musk'), ('10000000-0000-0000-0000-000000000032', 'base', 'Cedar'), ('10000000-0000-0000-0000-000000000032', 'base', 'Amber'),
-- Aventus
('10000000-0000-0000-0000-000000000033', 'top', 'Pineapple'), ('10000000-0000-0000-0000-000000000033', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000033', 'top', 'Blackcurrant'),
('10000000-0000-0000-0000-000000000033', 'heart', 'Birch'), ('10000000-0000-0000-0000-000000000033', 'heart', 'Patchouli'), ('10000000-0000-0000-0000-000000000033', 'heart', 'Jasmine'),
('10000000-0000-0000-0000-000000000033', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000033', 'base', 'Oakmoss'), ('10000000-0000-0000-0000-000000000033', 'base', 'Ambergris'),
-- Dylan Blue
('10000000-0000-0000-0000-000000000034', 'top', 'Calabrian Bergamot'), ('10000000-0000-0000-0000-000000000034', 'top', 'Grapefruit'), ('10000000-0000-0000-0000-000000000034', 'top', 'Fig Leaf'),
('10000000-0000-0000-0000-000000000034', 'heart', 'Violet Leaf'), ('10000000-0000-0000-0000-000000000034', 'heart', 'Papyrus'), ('10000000-0000-0000-0000-000000000034', 'heart', 'Ambroxan'),
('10000000-0000-0000-0000-000000000034', 'base', 'Tonka Bean'), ('10000000-0000-0000-0000-000000000034', 'base', 'Saffron'), ('10000000-0000-0000-0000-000000000034', 'base', 'Musk'),
-- The One
('10000000-0000-0000-0000-000000000035', 'top', 'Grapefruit'), ('10000000-0000-0000-0000-000000000035', 'top', 'Coriander'), ('10000000-0000-0000-0000-000000000035', 'top', 'Basil'),
('10000000-0000-0000-0000-000000000035', 'heart', 'Ginger'), ('10000000-0000-0000-0000-000000000035', 'heart', 'Cardamom'), ('10000000-0000-0000-0000-000000000035', 'heart', 'Orange Blossom'),
('10000000-0000-0000-0000-000000000035', 'base', 'Tobacco'), ('10000000-0000-0000-0000-000000000035', 'base', 'Amber'), ('10000000-0000-0000-0000-000000000035', 'base', 'Cedar'),
-- Y EDP
('10000000-0000-0000-0000-000000000036', 'top', 'Apple'), ('10000000-0000-0000-0000-000000000036', 'top', 'Ginger'), ('10000000-0000-0000-0000-000000000036', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000036', 'heart', 'Sage'), ('10000000-0000-0000-0000-000000000036', 'heart', 'Juniper'), ('10000000-0000-0000-0000-000000000036', 'heart', 'Geranium'),
('10000000-0000-0000-0000-000000000036', 'base', 'Cedar'), ('10000000-0000-0000-0000-000000000036', 'base', 'Tonka Bean'), ('10000000-0000-0000-0000-000000000036', 'base', 'Vetiver'),
-- Stronger With You
('10000000-0000-0000-0000-000000000037', 'top', 'Cardamom'), ('10000000-0000-0000-0000-000000000037', 'top', 'Pink Pepper'), ('10000000-0000-0000-0000-000000000037', 'top', 'Violet Leaf'),
('10000000-0000-0000-0000-000000000037', 'heart', 'Sage'), ('10000000-0000-0000-0000-000000000037', 'heart', 'Cinnamon'), ('10000000-0000-0000-0000-000000000037', 'heart', 'Meringue'),
('10000000-0000-0000-0000-000000000037', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000037', 'base', 'Chestnut'), ('10000000-0000-0000-0000-000000000037', 'base', 'Suede'),
-- Terre d'Hermes
('10000000-0000-0000-0000-000000000038', 'top', 'Orange'), ('10000000-0000-0000-0000-000000000038', 'top', 'Grapefruit'), ('10000000-0000-0000-0000-000000000038', 'top', 'Flint'),
('10000000-0000-0000-0000-000000000038', 'heart', 'Pepper'), ('10000000-0000-0000-0000-000000000038', 'heart', 'Geranium'), ('10000000-0000-0000-0000-000000000038', 'heart', 'Patchouli'),
('10000000-0000-0000-0000-000000000038', 'base', 'Vetiver'), ('10000000-0000-0000-0000-000000000038', 'base', 'Cedar'), ('10000000-0000-0000-0000-000000000038', 'base', 'Benzoin'),
-- Eros
('10000000-0000-0000-0000-000000000039', 'top', 'Mint'), ('10000000-0000-0000-0000-000000000039', 'top', 'Green Apple'), ('10000000-0000-0000-0000-000000000039', 'top', 'Lemon'),
('10000000-0000-0000-0000-000000000039', 'heart', 'Tonka Bean'), ('10000000-0000-0000-0000-000000000039', 'heart', 'Ambroxan'), ('10000000-0000-0000-0000-000000000039', 'heart', 'Geranium'),
('10000000-0000-0000-0000-000000000039', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000039', 'base', 'Vetiver'), ('10000000-0000-0000-0000-000000000039', 'base', 'Oakmoss'),
-- Explorer
('10000000-0000-0000-0000-000000000040', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000040', 'top', 'Clary Sage'), ('10000000-0000-0000-0000-000000000040', 'top', 'Pink Pepper'),
('10000000-0000-0000-0000-000000000040', 'heart', 'Leather'), ('10000000-0000-0000-0000-000000000040', 'heart', 'Orris'), ('10000000-0000-0000-0000-000000000040', 'heart', 'Raspberry'),
('10000000-0000-0000-0000-000000000040', 'base', 'Vetiver'), ('10000000-0000-0000-0000-000000000040', 'base', 'Patchouli'), ('10000000-0000-0000-0000-000000000040', 'base', 'Cacao'),
-- Luna Rossa Carbon
('10000000-0000-0000-0000-000000000041', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000041', 'top', 'Pepper'), ('10000000-0000-0000-0000-000000000041', 'top', 'Lemon'),
('10000000-0000-0000-0000-000000000041', 'heart', 'Lavender'), ('10000000-0000-0000-0000-000000000041', 'heart', 'Metallic Notes'), ('10000000-0000-0000-0000-000000000041', 'heart', 'Clary Sage'),
('10000000-0000-0000-0000-000000000041', 'base', 'Amber'), ('10000000-0000-0000-0000-000000000041', 'base', 'Ambroxan'), ('10000000-0000-0000-0000-000000000041', 'base', 'Patchouli'),
-- Spicebomb Extreme
('10000000-0000-0000-0000-000000000042', 'top', 'Black Pepper'), ('10000000-0000-0000-0000-000000000042', 'top', 'Cinnamon'), ('10000000-0000-0000-0000-000000000042', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000042', 'heart', 'Tobacco'), ('10000000-0000-0000-0000-000000000042', 'heart', 'Saffron'), ('10000000-0000-0000-0000-000000000042', 'heart', 'Cumin'),
('10000000-0000-0000-0000-000000000042', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000042', 'base', 'Leather'), ('10000000-0000-0000-0000-000000000042', 'base', 'Amber'),
-- Tobacco Vanille
('10000000-0000-0000-0000-000000000043', 'top', 'Tobacco Leaf'), ('10000000-0000-0000-0000-000000000043', 'top', 'Spices'), ('10000000-0000-0000-0000-000000000043', 'top', 'Ginger'),
('10000000-0000-0000-0000-000000000043', 'heart', 'Tonka Bean'), ('10000000-0000-0000-0000-000000000043', 'heart', 'Cacao'), ('10000000-0000-0000-0000-000000000043', 'heart', 'Tobacco Blossom'),
('10000000-0000-0000-0000-000000000043', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000043', 'base', 'Dried Fruits'), ('10000000-0000-0000-0000-000000000043', 'base', 'Wood Sap'),
-- The Most Wanted
('10000000-0000-0000-0000-000000000044', 'top', 'Cardamom'), ('10000000-0000-0000-0000-000000000044', 'top', 'Ginger'), ('10000000-0000-0000-0000-000000000044', 'top', 'Saffron'),
('10000000-0000-0000-0000-000000000044', 'heart', 'Toffee'), ('10000000-0000-0000-0000-000000000044', 'heart', 'Iris'), ('10000000-0000-0000-0000-000000000044', 'heart', 'Praline'),
('10000000-0000-0000-0000-000000000044', 'base', 'Woody Notes'), ('10000000-0000-0000-0000-000000000044', 'base', 'Amber'), ('10000000-0000-0000-0000-000000000044', 'base', 'Musk'),
-- Born in Roma (male)
('10000000-0000-0000-0000-000000000045', 'top', 'Green Earl Grey'), ('10000000-0000-0000-0000-000000000045', 'top', 'Ginger'), ('10000000-0000-0000-0000-000000000045', 'top', 'Sage'),
('10000000-0000-0000-0000-000000000045', 'heart', 'Smoked Vanilla'), ('10000000-0000-0000-0000-000000000045', 'heart', 'Cashmeran'), ('10000000-0000-0000-0000-000000000045', 'heart', 'Benzoin'),
('10000000-0000-0000-0000-000000000045', 'base', 'Vetiver'), ('10000000-0000-0000-0000-000000000045', 'base', 'Guaiac Wood'), ('10000000-0000-0000-0000-000000000045', 'base', 'Musk'),
-- Guilty Pour Homme
('10000000-0000-0000-0000-000000000046', 'top', 'Lavender'), ('10000000-0000-0000-0000-000000000046', 'top', 'Lemon'), ('10000000-0000-0000-0000-000000000046', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000046', 'heart', 'Orange Blossom'), ('10000000-0000-0000-0000-000000000046', 'heart', 'Neroli'), ('10000000-0000-0000-0000-000000000046', 'heart', 'Rose'),
('10000000-0000-0000-0000-000000000046', 'base', 'Patchouli'), ('10000000-0000-0000-0000-000000000046', 'base', 'Cedar'), ('10000000-0000-0000-0000-000000000046', 'base', 'Amber'),
-- Invictus
('10000000-0000-0000-0000-000000000047', 'top', 'Grapefruit'), ('10000000-0000-0000-0000-000000000047', 'top', 'Marine Notes'), ('10000000-0000-0000-0000-000000000047', 'top', 'Mandarin'),
('10000000-0000-0000-0000-000000000047', 'heart', 'Bay Leaf'), ('10000000-0000-0000-0000-000000000047', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000047', 'heart', 'Hedione'),
('10000000-0000-0000-0000-000000000047', 'base', 'Guaiac Wood'), ('10000000-0000-0000-0000-000000000047', 'base', 'Patchouli'), ('10000000-0000-0000-0000-000000000047', 'base', 'Ambergris'),
-- Le Male
('10000000-0000-0000-0000-000000000048', 'top', 'Mint'), ('10000000-0000-0000-0000-000000000048', 'top', 'Lavender'), ('10000000-0000-0000-0000-000000000048', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000048', 'heart', 'Cinnamon'), ('10000000-0000-0000-0000-000000000048', 'heart', 'Cumin'), ('10000000-0000-0000-0000-000000000048', 'heart', 'Orange Blossom'),
('10000000-0000-0000-0000-000000000048', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000048', 'base', 'Tonka Bean'), ('10000000-0000-0000-0000-000000000048', 'base', 'Amber'),
-- 1 Million
('10000000-0000-0000-0000-000000000049', 'top', 'Blood Mandarin'), ('10000000-0000-0000-0000-000000000049', 'top', 'Grapefruit'), ('10000000-0000-0000-0000-000000000049', 'top', 'Mint'),
('10000000-0000-0000-0000-000000000049', 'heart', 'Rose'), ('10000000-0000-0000-0000-000000000049', 'heart', 'Cinnamon'), ('10000000-0000-0000-0000-000000000049', 'heart', 'Spices'),
('10000000-0000-0000-0000-000000000049', 'base', 'Leather'), ('10000000-0000-0000-0000-000000000049', 'base', 'Amber'), ('10000000-0000-0000-0000-000000000049', 'base', 'Woody Notes'),
-- Club de Nuit Intense
('10000000-0000-0000-0000-000000000050', 'top', 'Lemon'), ('10000000-0000-0000-0000-000000000050', 'top', 'Pineapple'), ('10000000-0000-0000-0000-000000000050', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000050', 'heart', 'Birch'), ('10000000-0000-0000-0000-000000000050', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000050', 'heart', 'Rose'),
('10000000-0000-0000-0000-000000000050', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000050', 'base', 'Ambergris'), ('10000000-0000-0000-0000-000000000050', 'base', 'Vanilla'),
-- Asad
('10000000-0000-0000-0000-000000000051', 'top', 'Black Pepper'), ('10000000-0000-0000-0000-000000000051', 'top', 'Pineapple'), ('10000000-0000-0000-0000-000000000051', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000051', 'heart', 'Tobacco'), ('10000000-0000-0000-0000-000000000051', 'heart', 'Coffee'), ('10000000-0000-0000-0000-000000000051', 'heart', 'Dried Fruits'),
('10000000-0000-0000-0000-000000000051', 'base', 'Amber'), ('10000000-0000-0000-0000-000000000051', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000051', 'base', 'Benzoin'),
-- Raghba (male)
('10000000-0000-0000-0000-000000000052', 'top', 'Saffron'), ('10000000-0000-0000-0000-000000000052', 'top', 'Cardamom'), ('10000000-0000-0000-0000-000000000052', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000052', 'heart', 'Vanilla'), ('10000000-0000-0000-0000-000000000052', 'heart', 'Oud'), ('10000000-0000-0000-0000-000000000052', 'heart', 'Leather'),
('10000000-0000-0000-0000-000000000052', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000052', 'base', 'Amber'), ('10000000-0000-0000-0000-000000000052', 'base', 'Benzoin'),
-- Fakhar (male)
('10000000-0000-0000-0000-000000000053', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000053', 'top', 'Lavender'), ('10000000-0000-0000-0000-000000000053', 'top', 'Grapefruit'),
('10000000-0000-0000-0000-000000000053', 'heart', 'Leather'), ('10000000-0000-0000-0000-000000000053', 'heart', 'Cedar'), ('10000000-0000-0000-0000-000000000053', 'heart', 'Geranium'),
('10000000-0000-0000-0000-000000000053', 'base', 'Amber'), ('10000000-0000-0000-0000-000000000053', 'base', 'Sandalwood'), ('10000000-0000-0000-0000-000000000053', 'base', 'Musk'),
-- Al Haramain Amber Oud Gold
('10000000-0000-0000-0000-000000000054', 'top', 'Saffron'), ('10000000-0000-0000-0000-000000000054', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000054', 'top', 'Pink Pepper'),
('10000000-0000-0000-0000-000000000054', 'heart', 'Amber'), ('10000000-0000-0000-0000-000000000054', 'heart', 'Oud'), ('10000000-0000-0000-0000-000000000054', 'heart', 'Rose'),
('10000000-0000-0000-0000-000000000054', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000054', 'base', 'Sandalwood'), ('10000000-0000-0000-0000-000000000054', 'base', 'Musk'),
-- Oud for Greatness
('10000000-0000-0000-0000-000000000055', 'top', 'Saffron'), ('10000000-0000-0000-0000-000000000055', 'top', 'Nutmeg'), ('10000000-0000-0000-0000-000000000055', 'top', 'Lavender'),
('10000000-0000-0000-0000-000000000055', 'heart', 'Oud'), ('10000000-0000-0000-0000-000000000055', 'heart', 'Gallanum'), ('10000000-0000-0000-0000-000000000055', 'heart', 'Incense'),
('10000000-0000-0000-0000-000000000055', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000055', 'base', 'Sandalwood'), ('10000000-0000-0000-0000-000000000055', 'base', 'Amber'),
-- Rehab
('10000000-0000-0000-0000-000000000056', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000056', 'top', 'Saffron'), ('10000000-0000-0000-0000-000000000056', 'top', 'Spices'),
('10000000-0000-0000-0000-000000000056', 'heart', 'Oud'), ('10000000-0000-0000-0000-000000000056', 'heart', 'Rose'), ('10000000-0000-0000-0000-000000000056', 'heart', 'Amber'),
('10000000-0000-0000-0000-000000000056', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000056', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000056', 'base', 'Sandalwood'),
-- Layton
('10000000-0000-0000-0000-000000000057', 'top', 'Apple'), ('10000000-0000-0000-0000-000000000057', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000057', 'top', 'Mandarin'),
('10000000-0000-0000-0000-000000000057', 'heart', 'Lavender'), ('10000000-0000-0000-0000-000000000057', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000057', 'heart', 'Violet'),
('10000000-0000-0000-0000-000000000057', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000057', 'base', 'Sandalwood'), ('10000000-0000-0000-0000-000000000057', 'base', 'Cashmeran'),
-- Interlude Man
('10000000-0000-0000-0000-000000000058', 'top', 'Oregano'), ('10000000-0000-0000-0000-000000000058', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000058', 'top', 'Pimento'),
('10000000-0000-0000-0000-000000000058', 'heart', 'Frankincense'), ('10000000-0000-0000-0000-000000000058', 'heart', 'Oud'), ('10000000-0000-0000-0000-000000000058', 'heart', 'Amber'),
('10000000-0000-0000-0000-000000000058', 'base', 'Sandalwood'), ('10000000-0000-0000-0000-000000000058', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000058', 'base', 'Agarwood');

-- Unisex scent notes
INSERT INTO public.scent_notes (product_id, layer, note) VALUES
-- Oud Wood
('10000000-0000-0000-0000-000000000060', 'top', 'Rosewood'), ('10000000-0000-0000-0000-000000000060', 'top', 'Cardamom'), ('10000000-0000-0000-0000-000000000060', 'top', 'Chinese Pepper'),
('10000000-0000-0000-0000-000000000060', 'heart', 'Oud'), ('10000000-0000-0000-0000-000000000060', 'heart', 'Sandalwood'), ('10000000-0000-0000-0000-000000000060', 'heart', 'Vetiver'),
('10000000-0000-0000-0000-000000000060', 'base', 'Tonka Bean'), ('10000000-0000-0000-0000-000000000060', 'base', 'Amber'), ('10000000-0000-0000-0000-000000000060', 'base', 'Musk'),
-- Lost Cherry
('10000000-0000-0000-0000-000000000061', 'top', 'Black Cherry'), ('10000000-0000-0000-0000-000000000061', 'top', 'Bitter Almond'), ('10000000-0000-0000-0000-000000000061', 'top', 'Cherry Liqueur'),
('10000000-0000-0000-0000-000000000061', 'heart', 'Turkish Rose'), ('10000000-0000-0000-0000-000000000061', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000061', 'heart', 'Plum'),
('10000000-0000-0000-0000-000000000061', 'base', 'Roasted Tonka'), ('10000000-0000-0000-0000-000000000061', 'base', 'Sandalwood'), ('10000000-0000-0000-0000-000000000061', 'base', 'Vanilla'),
-- Bitter Peach
('10000000-0000-0000-0000-000000000062', 'top', 'Peach'), ('10000000-0000-0000-0000-000000000062', 'top', 'Blood Orange'), ('10000000-0000-0000-0000-000000000062', 'top', 'Cardamom'),
('10000000-0000-0000-0000-000000000062', 'heart', 'Rum'), ('10000000-0000-0000-0000-000000000062', 'heart', 'Davana'), ('10000000-0000-0000-0000-000000000062', 'heart', 'Heliotrope'),
('10000000-0000-0000-0000-000000000062', 'base', 'Patchouli'), ('10000000-0000-0000-0000-000000000062', 'base', 'Sandalwood'), ('10000000-0000-0000-0000-000000000062', 'base', 'Vanilla'),
-- Wood Sage & Sea Salt
('10000000-0000-0000-0000-000000000063', 'top', 'Sea Salt'), ('10000000-0000-0000-0000-000000000063', 'top', 'Ambrette Seeds'), ('10000000-0000-0000-0000-000000000063', 'top', 'Grapefruit'),
('10000000-0000-0000-0000-000000000063', 'heart', 'Sage'), ('10000000-0000-0000-0000-000000000063', 'heart', 'Sea Breeze'), ('10000000-0000-0000-0000-000000000063', 'heart', 'Red Algae'),
('10000000-0000-0000-0000-000000000063', 'base', 'Driftwood'), ('10000000-0000-0000-0000-000000000063', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000063', 'base', 'Oakmoss'),
-- English Pear & Freesia
('10000000-0000-0000-0000-000000000064', 'top', 'King William Pear'), ('10000000-0000-0000-0000-000000000064', 'top', 'Melon'), ('10000000-0000-0000-0000-000000000064', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000064', 'heart', 'Freesia'), ('10000000-0000-0000-0000-000000000064', 'heart', 'Rose'), ('10000000-0000-0000-0000-000000000064', 'heart', 'Muguet'),
('10000000-0000-0000-0000-000000000064', 'base', 'Patchouli'), ('10000000-0000-0000-0000-000000000064', 'base', 'Amber'), ('10000000-0000-0000-0000-000000000064', 'base', 'Musk'),
-- CK One
('10000000-0000-0000-0000-000000000065', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000065', 'top', 'Pineapple'), ('10000000-0000-0000-0000-000000000065', 'top', 'Papaya'),
('10000000-0000-0000-0000-000000000065', 'heart', 'Green Tea'), ('10000000-0000-0000-0000-000000000065', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000065', 'heart', 'Rose'),
('10000000-0000-0000-0000-000000000065', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000065', 'base', 'Cedar'), ('10000000-0000-0000-0000-000000000065', 'base', 'Amber'),
-- Molecule 01
('10000000-0000-0000-0000-000000000066', 'top', 'Iso E Super'), ('10000000-0000-0000-0000-000000000066', 'heart', 'Woody Notes'), ('10000000-0000-0000-0000-000000000066', 'base', 'Velvety Musk'),
-- Another 13
('10000000-0000-0000-0000-000000000067', 'top', 'Pear'), ('10000000-0000-0000-0000-000000000067', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000067', 'top', 'Apple Blossom'),
('10000000-0000-0000-0000-000000000067', 'heart', 'Ambroxan'), ('10000000-0000-0000-0000-000000000067', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000067', 'heart', 'Moss'),
('10000000-0000-0000-0000-000000000067', 'base', 'White Musk'), ('10000000-0000-0000-0000-000000000067', 'base', 'Ambrette'), ('10000000-0000-0000-0000-000000000067', 'base', 'Amber'),
-- Santal 33
('10000000-0000-0000-0000-000000000068', 'top', 'Cardamom'), ('10000000-0000-0000-0000-000000000068', 'top', 'Iris'), ('10000000-0000-0000-0000-000000000068', 'top', 'Violet'),
('10000000-0000-0000-0000-000000000068', 'heart', 'Australian Sandalwood'), ('10000000-0000-0000-0000-000000000068', 'heart', 'Papyrus'), ('10000000-0000-0000-0000-000000000068', 'heart', 'Leather'),
('10000000-0000-0000-0000-000000000068', 'base', 'Cedar'), ('10000000-0000-0000-0000-000000000068', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000068', 'base', 'Amber'),
-- Grand Soir
('10000000-0000-0000-0000-000000000069', 'top', 'Saffron'), ('10000000-0000-0000-0000-000000000069', 'top', 'Cinnamon'), ('10000000-0000-0000-0000-000000000069', 'top', 'Nutmeg'),
('10000000-0000-0000-0000-000000000069', 'heart', 'Benzoin'), ('10000000-0000-0000-0000-000000000069', 'heart', 'Tonka Bean'), ('10000000-0000-0000-0000-000000000069', 'heart', 'Vanilla'),
('10000000-0000-0000-0000-000000000069', 'base', 'Amber'), ('10000000-0000-0000-0000-000000000069', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000069', 'base', 'Sandalwood'),
-- Roses Vanille
('10000000-0000-0000-0000-000000000070', 'top', 'Rose'), ('10000000-0000-0000-0000-000000000070', 'top', 'Lemon'), ('10000000-0000-0000-0000-000000000070', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000070', 'heart', 'Turkish Rose'), ('10000000-0000-0000-0000-000000000070', 'heart', 'Plum'), ('10000000-0000-0000-0000-000000000070', 'heart', 'Jasmine'),
('10000000-0000-0000-0000-000000000070', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000070', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000070', 'base', 'Cedar'),
-- BR540 Extrait
('10000000-0000-0000-0000-000000000071', 'top', 'Bitter Almond'), ('10000000-0000-0000-0000-000000000071', 'top', 'Saffron'), ('10000000-0000-0000-0000-000000000071', 'top', 'Jasmine'),
('10000000-0000-0000-0000-000000000071', 'heart', 'Ambergris'), ('10000000-0000-0000-0000-000000000071', 'heart', 'Cedar'), ('10000000-0000-0000-0000-000000000071', 'heart', 'Fir Balsam'),
('10000000-0000-0000-0000-000000000071', 'base', 'Benzoin'), ('10000000-0000-0000-0000-000000000071', 'base', 'Musk'), ('10000000-0000-0000-0000-000000000071', 'base', 'Cashmeran'),
-- Neroli Portofino
('10000000-0000-0000-0000-000000000072', 'top', 'Tunisian Neroli'), ('10000000-0000-0000-0000-000000000072', 'top', 'Bergamot'), ('10000000-0000-0000-0000-000000000072', 'top', 'Lemon'),
('10000000-0000-0000-0000-000000000072', 'heart', 'African Orange Flower'), ('10000000-0000-0000-0000-000000000072', 'heart', 'Jasmine'), ('10000000-0000-0000-0000-000000000072', 'heart', 'Rosemary'),
('10000000-0000-0000-0000-000000000072', 'base', 'Amber'), ('10000000-0000-0000-0000-000000000072', 'base', 'Angelica'), ('10000000-0000-0000-0000-000000000072', 'base', 'Musk'),
-- Noir de Noir
('10000000-0000-0000-0000-000000000073', 'top', 'Saffron'), ('10000000-0000-0000-0000-000000000073', 'top', 'Black Truffle'), ('10000000-0000-0000-0000-000000000073', 'top', 'Mandarin'),
('10000000-0000-0000-0000-000000000073', 'heart', 'Rose'), ('10000000-0000-0000-0000-000000000073', 'heart', 'Oud'), ('10000000-0000-0000-0000-000000000073', 'heart', 'Black Plum'),
('10000000-0000-0000-0000-000000000073', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000073', 'base', 'Patchouli'), ('10000000-0000-0000-0000-000000000073', 'base', 'Agarwood'),
-- Khamrah Qahwa Vanilla Latte
('10000000-0000-0000-0000-000000000074', 'top', 'Cardamom'), ('10000000-0000-0000-0000-000000000074', 'top', 'Coffee'), ('10000000-0000-0000-0000-000000000074', 'top', 'Bergamot'),
('10000000-0000-0000-0000-000000000074', 'heart', 'Vanilla Latte'), ('10000000-0000-0000-0000-000000000074', 'heart', 'Praline'), ('10000000-0000-0000-0000-000000000074', 'heart', 'Cinnamon'),
('10000000-0000-0000-0000-000000000074', 'base', 'Vanilla'), ('10000000-0000-0000-0000-000000000074', 'base', 'Sandalwood'), ('10000000-0000-0000-0000-000000000074', 'base', 'Musk');
