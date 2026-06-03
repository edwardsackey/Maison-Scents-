-- ============================================
-- MAISON SCENTS — MEGA CATALOG EXPANSION
-- 150+ additional perfumes: clones, budget, mid-range, designer fills
-- Run AFTER supabase-seed-catalog.sql
-- ============================================


-- ===== FRAGRANCE WORLD — FEMALE =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('20000000-0000-0000-0000-000000000001', 'Classy Chic Girl', 'Fragrance World', 'female', 'Oriental',
  'Inspired by the iconic stiletto fragrance. Tuberose, jasmine, and tonka bean in a bold feminine blend.',
  ARRAY['assets/images/placeholder.png'], 35, false, 245, 3, false),

('20000000-0000-0000-0000-000000000002', 'Ur Way', 'Fragrance World', 'female', 'Floral',
  'Find your way. Orange blossom, tuberose, and cedarwood in a modern floral journey.',
  ARRAY['assets/images/placeholder.png'], 40, false, 312, 3, true),

('20000000-0000-0000-0000-000000000003', 'Ophylia', 'Fragrance World', 'female', 'Floral',
  'Ethereal and romantic. White florals, iris, and musk create a dreamy feminine aura.',
  ARRAY['assets/images/placeholder.png'], 30, false, 198, 3, false),

('20000000-0000-0000-0000-000000000004', 'Barakkat Rouge 540', 'Fragrance World', 'female', 'Oriental',
  'The legendary clone. Saffron, jasmine, and ambergris at an unbeatable price point.',
  ARRAY['assets/images/placeholder.png'], 45, true, 567, 3, false),

('20000000-0000-0000-0000-000000000005', 'Classy Chic No.1', 'Fragrance World', 'female', 'Floral',
  'Fresh and feminine. A sparkling floral blend of rose, peony, and white musk.',
  ARRAY['assets/images/placeholder.png'], 28, false, 156, 3, false),

('20000000-0000-0000-0000-000000000006', 'La Vie Belle', 'Fragrance World', 'female', 'Gourmand',
  'Life is beautiful. Iris, praline, and vanilla in a sweet gourmand celebration.',
  ARRAY['assets/images/placeholder.png'], 32, false, 234, 3, false),

('20000000-0000-0000-0000-000000000007', 'Black Orchid', 'Fragrance World', 'female', 'Oriental',
  'Dark and mysterious. Black truffle, orchid, and patchouli in exotic richness.',
  ARRAY['assets/images/placeholder.png'], 25, false, 178, 3, false),

('20000000-0000-0000-0000-000000000008', 'Bloom', 'Fragrance World', 'female', 'Floral',
  'A lush garden of tuberose, jasmine, and rangoon creeper. Pure floral indulgence.',
  ARRAY['assets/images/placeholder.png'], 38, false, 145, 3, true),

('20000000-0000-0000-0000-000000000009', 'Mosuef', 'Fragrance World', 'female', 'Fresh',
  'A clean, sophisticated fragrance with citrus, white florals, and soft musk.',
  ARRAY['assets/images/placeholder.png'], 22, false, 167, 3, false),

('20000000-0000-0000-0000-000000000010', 'Eclat La Violette', 'Fragrance World', 'female', 'Floral',
  'Violet brilliance. A sparkling violet and iris composition with woody undertones.',
  ARRAY['assets/images/placeholder.png'], 20, false, 123, 3, false);


-- ===== FRAGRANCE WORLD — MALE =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('20000000-0000-0000-0000-000000000011', 'Aventos', 'Fragrance World', 'male', 'Fresh',
  'The legendary Aventus alternative. Pineapple, birch, and ambergris in a powerful fresh blend.',
  ARRAY['assets/images/placeholder.png'], 50, true, 678, 3, false),

('20000000-0000-0000-0000-000000000012', 'Suave', 'Fragrance World', 'male', 'Fresh',
  'Wild and free. A fresh aromatic blast of bergamot, pepper, and ambroxan.',
  ARRAY['assets/images/placeholder.png'], 45, false, 534, 3, false),

('20000000-0000-0000-0000-000000000013', 'Encode Blue', 'Fragrance World', 'male', 'Woody',
  'Explore new horizons. Bergamot, vetiver, and patchouli for the modern adventurer.',
  ARRAY['assets/images/placeholder.png'], 38, false, 289, 3, false),

('20000000-0000-0000-0000-000000000014', 'Maison', 'Fragrance World', 'male', 'Oriental',
  'House of luxury. Saffron, oud, and amber in a rich, opulent masculine blend.',
  ARRAY['assets/images/placeholder.png'], 30, false, 345, 3, true),

('20000000-0000-0000-0000-000000000015', 'Clive Dorris Barakkat', 'Fragrance World', 'male', 'Oriental',
  'The Clive Dorris collection. A warm spicy oriental with amber, vanilla, and oud.',
  ARRAY['assets/images/placeholder.png'], 35, false, 267, 3, false),

('20000000-0000-0000-0000-000000000016', 'Encode', 'Fragrance World', 'male', 'Fresh',
  'Break the code. A fresh aquatic fragrance with marine notes, bergamot, and musk.',
  ARRAY['assets/images/placeholder.png'], 42, false, 198, 3, false),

('20000000-0000-0000-0000-000000000017', 'Oniro', 'Fragrance World', 'male', 'Woody',
  'Dream big. A woody aromatic blend of lavender, apple, and tonka bean.',
  ARRAY['assets/images/placeholder.png'], 28, false, 234, 3, false),

('20000000-0000-0000-0000-000000000018', 'Aventos Noir', 'Fragrance World', 'male', 'Oriental',
  'The dark side of Aventos. Smoky birch, black pepper, and dark amber.',
  ARRAY['assets/images/placeholder.png'], 33, false, 189, 3, true),

('20000000-0000-0000-0000-000000000019', 'Al Ambra', 'Fragrance World', 'male', 'Oriental',
  'Golden amber. A rich oriental blend of amber, oud, and saffron with vanilla.',
  ARRAY['assets/images/placeholder.png'], 26, false, 156, 3, false),

('20000000-0000-0000-0000-000000000020', 'Encode Titanium', 'Fragrance World', 'male', 'Fresh',
  'Unbreakable. A metallic fresh fragrance with bergamot, lavender, and amber.',
  ARRAY['assets/images/placeholder.png'], 40, false, 178, 3, false);


-- ===== FRAGRANCE WORLD — UNISEX =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('20000000-0000-0000-0000-000000000021', 'Barakkat Oud', 'Fragrance World', 'unisex', 'Woody',
  'Precious oud. A warm blend of oud wood, rose, and amber for all genders.',
  ARRAY['assets/images/placeholder.png'], 30, false, 234, 3, false),

('20000000-0000-0000-0000-000000000022', 'Barakkat Satin Oud', 'Fragrance World', 'unisex', 'Oriental',
  'Silky smooth oud. Rose, saffron, and sandalwood wrapped in satin warmth.',
  ARRAY['assets/images/placeholder.png'], 25, false, 198, 3, true);


-- ===== MAISON ALHAMBRA — FEMALE =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('20000000-0000-0000-0000-000000000030', 'Jean Lowe Immortal', 'Maison Alhambra', 'female', 'Floral',
  'Immortal beauty. A timeless floral with rose, jasmine, and white musk.',
  ARRAY['assets/images/placeholder.png'], 28, false, 189, 3, false),

('20000000-0000-0000-0000-000000000031', 'Lovely Cherie', 'Maison Alhambra', 'female', 'Gourmand',
  'Sweet cherry love. Cherry blossom, vanilla, and tonka bean in a playful blend.',
  ARRAY['assets/images/placeholder.png'], 35, false, 234, 3, true),

('20000000-0000-0000-0000-000000000032', 'Kisses of Cherry', 'Maison Alhambra', 'female', 'Gourmand',
  'Irresistible cherry kisses. Black cherry, tonka, and almond in seductive sweetness.',
  ARRAY['assets/images/placeholder.png'], 30, false, 267, 3, false),

('20000000-0000-0000-0000-000000000033', 'Flower Bomb Secret', 'Maison Alhambra', 'female', 'Floral',
  'A floral explosion. Orchid, jasmine, and patchouli in an addictive flower bomb.',
  ARRAY['assets/images/placeholder.png'], 22, false, 145, 3, false),

('20000000-0000-0000-0000-000000000034', 'My Party', 'Maison Alhambra', 'female', 'Fresh',
  'Party-ready. A sparkling fruity floral with bergamot, raspberry, and amber.',
  ARRAY['assets/images/placeholder.png'], 40, false, 178, 3, false);


-- ===== MAISON ALHAMBRA — MALE =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('20000000-0000-0000-0000-000000000035', 'Jean Lowe Ombre', 'Maison Alhambra', 'male', 'Oriental',
  'Shadow of luxury. A dark, smoky blend of oud, leather, and vanilla.',
  ARRAY['assets/images/placeholder.png'], 30, false, 234, 3, false),

('20000000-0000-0000-0000-000000000036', 'Toro', 'Maison Alhambra', 'male', 'Woody',
  'Bull strength. A powerful woody fragrance with cedar, vetiver, and black pepper.',
  ARRAY['assets/images/placeholder.png'], 35, false, 189, 3, false),

('20000000-0000-0000-0000-000000000037', 'Hercules', 'Maison Alhambra', 'male', 'Fresh',
  'Legendary power. A fresh aquatic scent with bergamot, sea notes, and amber.',
  ARRAY['assets/images/placeholder.png'], 28, false, 156, 3, true),

('20000000-0000-0000-0000-000000000038', 'Jean Lowe Matiere', 'Maison Alhambra', 'male', 'Woody',
  'Raw material. Leather, tobacco, and cedar in a sophisticated masculine blend.',
  ARRAY['assets/images/placeholder.png'], 32, false, 198, 3, false),

('20000000-0000-0000-0000-000000000039', 'Desirable', 'Maison Alhambra', 'male', 'Oriental',
  'Irresistibly desirable. Amber, vanilla, and spices create magnetic attraction.',
  ARRAY['assets/images/placeholder.png'], 25, false, 167, 3, false);


-- ===== AFNAN =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('20000000-0000-0000-0000-000000000040', '9PM', 'Afnan', 'male', 'Gourmand',
  'The night begins at 9PM. A sweet gourmand blend of apple, cinnamon, vanilla, and tonka bean.',
  ARRAY['assets/images/placeholder.png'], 40, true, 456, 3, false),

('20000000-0000-0000-0000-000000000041', 'Supremacy Silver', 'Afnan', 'male', 'Fresh',
  'Supreme freshness. A crisp aquatic fragrance with bergamot, sea notes, and woody amber.',
  ARRAY['assets/images/placeholder.png'], 35, false, 312, 3, false),

('20000000-0000-0000-0000-000000000042', 'Supremacy Gold', 'Afnan', 'male', 'Oriental',
  'Supreme luxury. A golden oriental with saffron, amber, and oud for regal masculinity.',
  ARRAY['assets/images/placeholder.png'], 30, false, 234, 3, false),

('20000000-0000-0000-0000-000000000043', 'Turathi Blue', 'Afnan', 'male', 'Fresh',
  'Heritage in blue. A fresh woody fragrance with lavender, ambroxan, and cedar.',
  ARRAY['assets/images/placeholder.png'], 28, false, 189, 3, true),

('20000000-0000-0000-0000-000000000044', '9PM Femme', 'Afnan', 'female', 'Gourmand',
  'Her night out. A sweet floral gourmand with pear, vanilla, and praline.',
  ARRAY['assets/images/placeholder.png'], 35, false, 267, 3, false),

('20000000-0000-0000-0000-000000000045', 'Supremacy Not Only Intense', 'Afnan', 'male', 'Oriental',
  'Beyond intense. A powerful spicy oriental with pepper, leather, and smoky oud.',
  ARRAY['assets/images/placeholder.png'], 22, false, 145, 3, false);


-- ===== ARD AL ZAAFARAN =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('20000000-0000-0000-0000-000000000050', 'Oud Al Abiyad', 'Ard Al Zaafaran', 'unisex', 'Woody',
  'White oud. A clean, bright oud fragrance with white musk, rose, and sandalwood.',
  ARRAY['assets/images/placeholder.png'], 30, false, 198, 3, false),

('20000000-0000-0000-0000-000000000051', 'Bukhoor', 'Ard Al Zaafaran', 'unisex', 'Oriental',
  'Traditional Arabian incense. Rich oud, frankincense, and amber in liquid form.',
  ARRAY['assets/images/placeholder.png'], 25, false, 234, 3, false),

('20000000-0000-0000-0000-000000000052', 'Dirham Gold', 'Ard Al Zaafaran', 'male', 'Oriental',
  'Gold standard. A warm golden amber with oud, saffron, and vanilla.',
  ARRAY['assets/images/placeholder.png'], 35, false, 178, 3, false),

('20000000-0000-0000-0000-000000000053', 'Dirham', 'Ard Al Zaafaran', 'male', 'Fresh',
  'Classic Arabian freshness. Bergamot, cardamom, and cedar in a clean masculine scent.',
  ARRAY['assets/images/placeholder.png'], 40, false, 267, 3, false),

('20000000-0000-0000-0000-000000000054', 'Oud 24 Hours', 'Ard Al Zaafaran', 'unisex', 'Woody',
  'All-day oud. A long-lasting oud and rose composition that lasts from dawn to dusk.',
  ARRAY['assets/images/placeholder.png'], 28, false, 312, 3, false);


-- ===== PARIS CORNER (EMIR & PENDORA) =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('20000000-0000-0000-0000-000000000060', 'Emir Voux', 'Paris Corner', 'male', 'Woody',
  'Voice of power. A woody aromatic blend of sage, lavender, and amber.',
  ARRAY['assets/images/placeholder.png'], 30, false, 189, 3, false),

('20000000-0000-0000-0000-000000000061', 'Emir Cedrat Boise', 'Paris Corner', 'male', 'Fresh',
  'Citrus wood. A vibrant blend of citron, birch, and spices for the bold man.',
  ARRAY['assets/images/placeholder.png'], 25, false, 234, 3, true),

('20000000-0000-0000-0000-000000000062', 'Pendora Rouge', 'Paris Corner', 'unisex', 'Oriental',
  'Open the box. A rich oriental with saffron, jasmine, and ambergris.',
  ARRAY['assets/images/placeholder.png'], 28, false, 267, 3, false),

('20000000-0000-0000-0000-000000000063', 'Emir Patchouli Intense', 'Paris Corner', 'unisex', 'Woody',
  'Deep patchouli. A rich earthy fragrance with patchouli, vanilla, and amber.',
  ARRAY['assets/images/placeholder.png'], 22, false, 156, 3, false),

('20000000-0000-0000-0000-000000000064', 'Pendora Satin Oud', 'Paris Corner', 'unisex', 'Oriental',
  'Silky oud luxury. Rose, oud, and satin musk in an elegant oriental blend.',
  ARRAY['assets/images/placeholder.png'], 20, false, 198, 3, false);


-- ===== STERLING / EMPER / VURV =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('20000000-0000-0000-0000-000000000070', 'Victor', 'Sterling Parfums', 'male', 'Fresh',
  'Victory is yours. A fresh sporty fragrance with grapefruit, mint, and cedar.',
  ARRAY['assets/images/placeholder.png'], 35, false, 167, 3, false),

('20000000-0000-0000-0000-000000000071', 'Armaf Tres Nuit', 'Armaf', 'male', 'Fresh',
  'Three nights. A sophisticated green woody fragrance with bergamot, juniper, and ambroxan.',
  ARRAY['assets/images/placeholder.png'], 40, false, 345, 3, false),

('20000000-0000-0000-0000-000000000072', 'Armaf Sillage', 'Armaf', 'female', 'Fresh',
  'Leave your trail. A bright citrus floral with bergamot, rose, and white musk.',
  ARRAY['assets/images/placeholder.png'], 30, false, 234, 3, false),

('20000000-0000-0000-0000-000000000073', 'Vurv Craft Noire', 'Vurv', 'male', 'Oriental',
  'Dark craft. Leather, tobacco, and dark amber in a mysterious nocturnal blend.',
  ARRAY['assets/images/placeholder.png'], 25, false, 178, 3, false),

('20000000-0000-0000-0000-000000000074', 'Emper Blanc', 'Emper', 'female', 'Fresh',
  'Pure white. A clean, fresh floral with white tea, lily, and musk.',
  ARRAY['assets/images/placeholder.png'], 38, false, 145, 3, false),

('20000000-0000-0000-0000-000000000075', 'Emper Saga', 'Emper', 'male', 'Woody',
  'Epic journey. A woody aromatic with lavender, sage, and cedarwood.',
  ARRAY['assets/images/placeholder.png'], 32, false, 198, 3, false),

('20000000-0000-0000-0000-000000000076', 'Armaf Derby Club House', 'Armaf', 'male', 'Fresh',
  'Gentlemen''s club. A refined citrus aromatic with lemon, lavender, and musk.',
  ARRAY['assets/images/placeholder.png'], 28, false, 156, 3, false);


-- ===== DESIGNER FILLS — BURBERRY, GIVENCHY, COACH, BVLGARI, etc. =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('20000000-0000-0000-0000-000000000080', 'Her', 'Burberry', 'female', 'Gourmand',
  'Dark fruits and florals. Blackberry, jasmine, and amber for the modern British woman.',
  ARRAY['assets/images/placeholder.png'], 12, false, 345, 5, false),

('20000000-0000-0000-0000-000000000081', 'Mr. Burberry', 'Burberry', 'male', 'Woody',
  'The gentleman''s trench. Grapefruit, cardamom, and oak moss in British sophistication.',
  ARRAY['assets/images/placeholder.png'], 10, false, 289, 5, false),

('20000000-0000-0000-0000-000000000082', 'L''Interdit', 'Givenchy', 'female', 'Floral',
  'The forbidden. White flowers, dark tuberose, and vetiver in a daring feminine contrast.',
  ARRAY['assets/images/placeholder.png'], 8, false, 412, 5, false),

('20000000-0000-0000-0000-000000000083', 'Gentleman', 'Givenchy', 'male', 'Woody',
  'True gentleman. Iris, leather, and cedar in a refined French masculine.',
  ARRAY['assets/images/placeholder.png'], 11, false, 267, 5, false),

('20000000-0000-0000-0000-000000000084', 'Coach Floral', 'Coach', 'female', 'Floral',
  'New York floral. Pink peppercorn, rose, and patchouli in a fresh American fragrance.',
  ARRAY['assets/images/placeholder.png'], 15, false, 198, 5, false),

('20000000-0000-0000-0000-000000000085', 'Coach For Men', 'Coach', 'male', 'Fresh',
  'All-American. Nashi pear, cardamom, and cedarwood for the confident man.',
  ARRAY['assets/images/placeholder.png'], 14, false, 178, 5, false),

('20000000-0000-0000-0000-000000000086', 'Man in Black', 'Bvlgari', 'male', 'Oriental',
  'Dark intensity. Rum, leather, and tuberose in a bold Italian oriental.',
  ARRAY['assets/images/placeholder.png'], 0, false, 312, 5, false),

('20000000-0000-0000-0000-000000000087', 'Omnia Crystalline', 'Bvlgari', 'female', 'Fresh',
  'Crystal clarity. Bamboo, lotus, and musk in a sheer, luminous fragrance.',
  ARRAY['assets/images/placeholder.png'], 9, false, 234, 5, false),

('20000000-0000-0000-0000-000000000088', 'Scandal', 'Jean Paul Gaultier', 'female', 'Oriental',
  'Scandalous. Honey, gardenia, and caramel in provocatively sweet femininity.',
  ARRAY['assets/images/placeholder.png'], 7, false, 356, 5, false),

('20000000-0000-0000-0000-000000000089', 'Ultra Male', 'Jean Paul Gaultier', 'male', 'Gourmand',
  'Hyper-masculine. Pear, lavender, and vanilla in an intensely sweet magnetic scent.',
  ARRAY['assets/images/placeholder.png'], 0, false, 423, 5, false),

('20000000-0000-0000-0000-000000000090', 'Mon Paris', 'Yves Saint Laurent', 'female', 'Floral',
  'Parisian love. Strawberry, peony, and patchouli in a romantic whirlwind.',
  ARRAY['assets/images/placeholder.png'], 11, false, 289, 5, false),

('20000000-0000-0000-0000-000000000091', 'La Nuit de L''Homme', 'Yves Saint Laurent', 'male', 'Oriental',
  'The night is his. Cardamom, cedar, and coumarin for seductive nighttime elegance.',
  ARRAY['assets/images/placeholder.png'], 0, false, 456, 5, false),

('20000000-0000-0000-0000-000000000092', 'Good Girl Supreme', 'Carolina Herrera', 'female', 'Gourmand',
  'Supreme power. Red berries, tuberose, and tonka in the upgraded stiletto.',
  ARRAY['assets/images/placeholder.png'], 6, false, 234, 5, true),

('20000000-0000-0000-0000-000000000093', 'Bad Boy', 'Carolina Herrera', 'male', 'Oriental',
  'Break the rules. Black pepper, sage, and tonka bean in a lightning bolt of rebel spirit.',
  ARRAY['assets/images/placeholder.png'], 8, false, 312, 5, false),

('20000000-0000-0000-0000-000000000094', 'Phantom', 'Paco Rabanne', 'male', 'Fresh',
  'Future is now. Lemon, lavender, and vanilla in a futuristic robot-shaped bottle.',
  ARRAY['assets/images/placeholder.png'], 13, false, 267, 3, true),

('20000000-0000-0000-0000-000000000095', 'Fame', 'Paco Rabanne', 'female', 'Floral',
  'Born for fame. Mango, jasmine, and incense in a gold goddess bottle.',
  ARRAY['assets/images/placeholder.png'], 10, false, 198, 3, true),

('20000000-0000-0000-0000-000000000096', 'Acqua di Gio Profondo', 'Giorgio Armani', 'male', 'Fresh',
  'Deep waters. Marine notes, bergamot, and amber in a deeper, more intense AdG.',
  ARRAY['assets/images/placeholder.png'], 9, false, 345, 5, false),

('20000000-0000-0000-0000-000000000097', 'Stronger With You Absolutely', 'Emporio Armani', 'male', 'Gourmand',
  'Absolute devotion. Chestnut, vanilla, and maple syrup in irresistible sweetness.',
  ARRAY['assets/images/placeholder.png'], 0, false, 289, 5, false),

('20000000-0000-0000-0000-000000000098', 'Idole', 'Lancome', 'female', 'Floral',
  'The modern idol. Rose, jasmine, and clean musk in the thinnest bottle ever made.',
  ARRAY['assets/images/placeholder.png'], 14, false, 312, 5, false),

('20000000-0000-0000-0000-000000000099', 'Tresor', 'Lancome', 'female', 'Oriental',
  'A treasure of love. Rose, apricot, and musk in a timeless romantic classic.',
  ARRAY['assets/images/placeholder.png'], 0, false, 456, 5, false);


-- ===== MORE DESIGNER & NICHE FILLS =====

INSERT INTO public.products (id, name, brand, gender, scent_family, description, images, stock_quantity, is_featured, total_units_sold, delivery_days, is_new)
VALUES
('20000000-0000-0000-0000-000000000100', 'Cloud', 'Ariana Grande', 'female', 'Gourmand',
  'Head in the clouds. Lavender, coconut, and praline in a dreamy sweet escape.',
  ARRAY['assets/images/placeholder.png'], 20, false, 389, 3, false),

('20000000-0000-0000-0000-000000000101', 'God Is A Woman', 'Ariana Grande', 'female', 'Gourmand',
  'Divine. Pear, rose, and ambrette create a sensual, empowering scent.',
  ARRAY['assets/images/placeholder.png'], 18, false, 234, 3, true),

('20000000-0000-0000-0000-000000000102', 'CK Eternity', 'Calvin Klein', 'female', 'Floral',
  'Eternal love. Freesia, lily, and sandalwood in a timeless romantic fragrance.',
  ARRAY['assets/images/placeholder.png'], 16, false, 567, 3, false),

('20000000-0000-0000-0000-000000000103', 'CK Obsession', 'Calvin Klein', 'male', 'Oriental',
  'Obsessed. Vanilla, amber, and musk in a dark, sensual masculine classic.',
  ARRAY['assets/images/placeholder.png'], 12, false, 345, 3, false),

('20000000-0000-0000-0000-000000000104', 'Euphoria', 'Calvin Klein', 'female', 'Oriental',
  'Pure bliss. Pomegranate, orchid, and mahogany in a deeply sensual experience.',
  ARRAY['assets/images/placeholder.png'], 14, false, 423, 3, false),

('20000000-0000-0000-0000-000000000105', 'Very Good Girl', 'Carolina Herrera', 'female', 'Gourmand',
  'Very very good. Lychee, red roses, and vanilla in a red stiletto of sweetness.',
  ARRAY['assets/images/placeholder.png'], 8, false, 267, 5, true),

('20000000-0000-0000-0000-000000000106', 'Dior Homme', 'Dior', 'male', 'Woody',
  'The Dior man. Iris, cedar, and vetiver in sophisticated French masculinity.',
  ARRAY['assets/images/placeholder.png'], 7, false, 389, 5, false),

('20000000-0000-0000-0000-000000000107', 'Miss Dior', 'Dior', 'female', 'Floral',
  'Love in Dior. Rose, lily of the valley, and peony in a blooming bouquet.',
  ARRAY['assets/images/placeholder.png'], 9, false, 456, 5, false),

('20000000-0000-0000-0000-000000000108', 'Sauvage Elixir', 'Dior', 'male', 'Woody',
  'The concentrated essence. Grapefruit, cinnamon, and sandalwood in ultra-concentrated power.',
  ARRAY['assets/images/placeholder.png'], 0, true, 678, 7, false),

('20000000-0000-0000-0000-000000000109', 'Ombre Nomade', 'Louis Vuitton', 'unisex', 'Oriental',
  'The wanderer. Oud, incense, and rose absolute in nomadic luxury from the house of LV.',
  ARRAY['assets/images/placeholder.png'], 0, false, 234, 7, false),

('20000000-0000-0000-0000-000000000110', 'Rose des Vents', 'Louis Vuitton', 'female', 'Floral',
  'Wind rose. Turkish rose, cedar, and musk from the most exclusive perfume house.',
  ARRAY['assets/images/placeholder.png'], 0, false, 189, 7, false),

('20000000-0000-0000-0000-000000000111', 'Imagination', 'Louis Vuitton', 'male', 'Fresh',
  'Imagine the impossible. Citrus, cedarwood, and musk in refined LV freshness.',
  ARRAY['assets/images/placeholder.png'], 0, false, 156, 7, false),

('20000000-0000-0000-0000-000000000112', 'Eros Flame', 'Versace', 'male', 'Woody',
  'Fire of love. Tangerine, rosemary, and cedarwood in a fiery aromatic.',
  ARRAY['assets/images/placeholder.png'], 15, false, 312, 3, false),

('20000000-0000-0000-0000-000000000113', 'Pour Homme', 'Versace', 'male', 'Fresh',
  'The signature. Neroli, citron, and amber in Mediterranean masculine elegance.',
  ARRAY['assets/images/placeholder.png'], 18, false, 345, 3, false),

('20000000-0000-0000-0000-000000000114', 'The One EDP', 'Dolce & Gabbana', 'male', 'Oriental',
  'The amplified one. Ginger, tobacco, and amber turned up to the maximum.',
  ARRAY['assets/images/placeholder.png'], 10, false, 389, 5, false),

('20000000-0000-0000-0000-000000000115', 'K by Dolce & Gabbana', 'Dolce & Gabbana', 'male', 'Woody',
  'Be the king. Blood orange, juniper, and cedarwood in a Mediterranean royal.',
  ARRAY['assets/images/placeholder.png'], 12, false, 234, 5, false),

('20000000-0000-0000-0000-000000000116', 'The Only One', 'Dolce & Gabbana', 'female', 'Floral',
  'You are the only one. Violet, coffee, and red rose in a seductive contrast.',
  ARRAY['assets/images/placeholder.png'], 9, false, 267, 5, false),

('20000000-0000-0000-0000-000000000117', 'Gucci Guilty Absolute', 'Gucci', 'male', 'Woody',
  'Absolute guilt. Leather, goldenwood, and patchouli in raw, unapologetic luxury.',
  ARRAY['assets/images/placeholder.png'], 0, false, 198, 5, false),

('20000000-0000-0000-0000-000000000118', 'Chanel Allure Homme Sport', 'Chanel', 'male', 'Fresh',
  'Sport luxe. Mandarin, cedar, and white musk for the athletic gentleman.',
  ARRAY['assets/images/placeholder.png'], 0, false, 423, 5, false),

('20000000-0000-0000-0000-000000000119', 'Chanel Chance Eau Fraiche', 'Chanel', 'female', 'Fresh',
  'Fresh chance. Citrus, jasmine, and teak wood in a sparkling, vibrant composition.',
  ARRAY['assets/images/placeholder.png'], 0, false, 356, 5, false),

('20000000-0000-0000-0000-000000000120', 'Amber Oud Gold', 'Al Haramain', 'unisex', 'Oriental',
  'Liquid gold. Amber, oud, and vanilla in an opulent Arabian treasure.',
  ARRAY['assets/images/placeholder.png'], 20, false, 289, 3, false),

('20000000-0000-0000-0000-000000000121', 'L''Aventure', 'Al Haramain', 'male', 'Fresh',
  'The adventure. Pineapple, birch, and patchouli in a premium Aventus alternative.',
  ARRAY['assets/images/placeholder.png'], 25, false, 345, 3, false),

('20000000-0000-0000-0000-000000000122', 'Amber Oud Rouge', 'Al Haramain', 'unisex', 'Oriental',
  'Red amber. Saffron, jasmine, and ambergris in deep crimson warmth.',
  ARRAY['assets/images/placeholder.png'], 18, false, 267, 3, false),

('20000000-0000-0000-0000-000000000123', 'Swiss Arabian Shaghaf Oud', 'Swiss Arabian', 'unisex', 'Woody',
  'Passion for oud. Rose, oud, and sandalwood in a classic Arabian composition.',
  ARRAY['assets/images/placeholder.png'], 22, false, 198, 3, false),

('20000000-0000-0000-0000-000000000124', 'Rasasi Hawas', 'Rasasi', 'male', 'Fresh',
  'The senses. Bergamot, apple, and ambroxan in a beast-mode aquatic scent.',
  ARRAY['assets/images/placeholder.png'], 30, false, 312, 3, false),

('20000000-0000-0000-0000-000000000125', 'Rasasi La Yuqawam', 'Rasasi', 'male', 'Oriental',
  'Irresistible. Plum, oud, and leather in a dark, powerful Arabian oriental.',
  ARRAY['assets/images/placeholder.png'], 20, false, 234, 3, false),

('20000000-0000-0000-0000-000000000126', 'Thameen Regent Leather', 'Thameen', 'unisex', 'Woody',
  'Royal leather. Pink pepper, iris, and leather in British-Arabian luxury fusion.',
  ARRAY['assets/images/placeholder.png'], 0, false, 145, 7, true),

('20000000-0000-0000-0000-000000000127', 'Prada Luna Rossa Ocean', 'Prada', 'male', 'Fresh',
  'Ocean racing. Bergamot, iris, and vetiver in a fresh aquatic adventure.',
  ARRAY['assets/images/placeholder.png'], 11, false, 267, 5, false),

('20000000-0000-0000-0000-000000000128', 'Prada Candy', 'Prada', 'female', 'Gourmand',
  'Sweet Prada. Caramel, musk, and benzoin in playful Italian sweetness.',
  ARRAY['assets/images/placeholder.png'], 8, false, 312, 5, false),

('20000000-0000-0000-0000-000000000129', 'Interlude Woman', 'Amouage', 'female', 'Oriental',
  'Beautiful chaos. Rose, frankincense, and oud in a complex feminine masterpiece.',
  ARRAY['assets/images/placeholder.png'], 0, false, 123, 7, false),

('20000000-0000-0000-0000-000000000130', 'Reflection Man', 'Amouage', 'male', 'Fresh',
  'Mirror of elegance. Rosemary, neroli, and sandalwood in pure sophistication.',
  ARRAY['assets/images/placeholder.png'], 0, false, 167, 7, false),

('20000000-0000-0000-0000-000000000131', 'Fleur Narcotique', 'Ex Nihilo', 'unisex', 'Floral',
  'Narcotic flower. Peony, lychee, and musk in an addictive modern floral.',
  ARRAY['assets/images/placeholder.png'], 0, false, 145, 7, true),

('20000000-0000-0000-0000-000000000132', 'Kilian Love Don''t Be Shy', 'Kilian', 'female', 'Gourmand',
  'Love without limits. Neroli, orange blossom, and marshmallow in sugary romance.',
  ARRAY['assets/images/placeholder.png'], 0, false, 234, 7, false),

('20000000-0000-0000-0000-000000000133', 'Angels Share', 'Kilian', 'unisex', 'Gourmand',
  'Heavenly. Cognac, cinnamon, and praline in a boozy, cozy masterpiece.',
  ARRAY['assets/images/placeholder.png'], 0, false, 289, 7, true),

('20000000-0000-0000-0000-000000000134', 'Xerjoff Naxos', 'Xerjoff', 'male', 'Oriental',
  'Sicilian honey and tobacco. A sweet, warm Italian niche legend.',
  ARRAY['assets/images/placeholder.png'], 0, false, 178, 7, false),

('20000000-0000-0000-0000-000000000135', 'Nishane Hacivat', 'Nishane', 'unisex', 'Fresh',
  'Turkish craftsmanship. Pineapple, birch, and oakmoss in a niche Aventus contender.',
  ARRAY['assets/images/placeholder.png'], 0, false, 198, 7, false),

('20000000-0000-0000-0000-000000000136', 'Mancera Cedrat Boise', 'Mancera', 'male', 'Fresh',
  'Citrus meets wood. Sicilian lemon, blackcurrant, and cedar in a sharp, addictive blend.',
  ARRAY['assets/images/placeholder.png'], 10, false, 312, 5, false),

('20000000-0000-0000-0000-000000000137', 'Mancera Instant Crush', 'Mancera', 'unisex', 'Gourmand',
  'Love at first sniff. Rose, sandalwood, and vanilla in instant attraction.',
  ARRAY['assets/images/placeholder.png'], 8, false, 234, 5, false),

('20000000-0000-0000-0000-000000000138', 'Montale Intense Cafe', 'Montale', 'unisex', 'Gourmand',
  'Coffee addict. Coffee, rose, and vanilla in a hypnotic Parisian niche.',
  ARRAY['assets/images/placeholder.png'], 6, false, 267, 5, false),

('20000000-0000-0000-0000-000000000139', 'Montale Chocolate Greedy', 'Montale', 'unisex', 'Gourmand',
  'Chocolate heaven. Dark chocolate, cocoa, and vanilla in a dessert-in-a-bottle.',
  ARRAY['assets/images/placeholder.png'], 0, false, 198, 5, false),

('20000000-0000-0000-0000-000000000140', 'Initio Side Effect', 'Initio', 'unisex', 'Gourmand',
  'Addictive side effects. Rum, vanilla, and tobacco in an intoxicating cocktail.',
  ARRAY['assets/images/placeholder.png'], 0, false, 178, 7, false),

('20000000-0000-0000-0000-000000000141', 'Flavia Nouveau Ambre', 'Flavia', 'unisex', 'Oriental',
  'New amber. A rich oriental with amber, vanilla, and incense at a budget price.',
  ARRAY['assets/images/placeholder.png'], 35, false, 145, 3, false),

('20000000-0000-0000-0000-000000000142', 'Flavia Parfum De Nuit', 'Flavia', 'male', 'Oriental',
  'Night perfume. Oud, amber, and spices for mysterious nighttime masculinity.',
  ARRAY['assets/images/placeholder.png'], 30, false, 178, 3, false),

('20000000-0000-0000-0000-000000000143', 'Milestone Odyssey', 'Milestone', 'male', 'Fresh',
  'Epic voyage. Bergamot, sea salt, and ambroxan in a fresh aquatic journey.',
  ARRAY['assets/images/placeholder.png'], 25, false, 156, 3, false),

('20000000-0000-0000-0000-000000000144', 'Milestone Queen', 'Milestone', 'female', 'Floral',
  'Royal femininity. Rose, peony, and musk in an elegant floral crown.',
  ARRAY['assets/images/placeholder.png'], 28, false, 134, 3, false),

('20000000-0000-0000-0000-000000000145', 'Victoria''s Secret Bombshell', 'Victoria''s Secret', 'female', 'Floral',
  'The iconic body mist. Purple passion fruit, peony, and vanilla orchid.',
  ARRAY['assets/images/placeholder.png'], 25, false, 456, 3, false),

('20000000-0000-0000-0000-000000000146', 'Bath & Body Works Japanese Cherry Blossom', 'Bath & Body Works', 'female', 'Floral',
  'Cherry blossom dream. Japanese cherry blossom, Asian pear, and sandalwood.',
  ARRAY['assets/images/placeholder.png'], 30, false, 389, 3, false),

('20000000-0000-0000-0000-000000000147', 'Lattafa Khamrah', 'Lattafa', 'unisex', 'Gourmand',
  'The original Khamrah. Cinnamon, coffee, and vanilla in a warm, boozy oriental.',
  ARRAY['assets/images/placeholder.png'], 35, true, 567, 3, false),

('20000000-0000-0000-0000-000000000148', 'Lattafa Yara Tous', 'Lattafa', 'female', 'Gourmand',
  'Yara for all. A lighter, fresher take on the beloved Yara with citrus and vanilla.',
  ARRAY['assets/images/placeholder.png'], 30, false, 312, 3, true),

('20000000-0000-0000-0000-000000000149', 'Lattafa Bade''e Al Oud', 'Lattafa', 'unisex', 'Woody',
  'The original Bade''e. Oud, amber, and rose in a classic Arabian composition.',
  ARRAY['assets/images/placeholder.png'], 25, false, 234, 3, false),

('20000000-0000-0000-0000-000000000150', 'Lattafa Ana Abiyedh Rouge', 'Lattafa', 'female', 'Oriental',
  'Red elegance. Berry, rose, and amber in a bold feminine oriental.',
  ARRAY['assets/images/placeholder.png'], 28, false, 198, 3, false);


-- ============================================
-- SIZES for all mega catalog products
-- ============================================

-- Fragrance World (budget pricing: 80-350 GHS)
INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
('20000000-0000-0000-0000-000000000001', 30, 120, true), ('20000000-0000-0000-0000-000000000001', 50, 180, true), ('20000000-0000-0000-0000-000000000001', 100, 280, true),
('20000000-0000-0000-0000-000000000002', 30, 110, true), ('20000000-0000-0000-0000-000000000002', 50, 170, true), ('20000000-0000-0000-0000-000000000002', 100, 260, true),
('20000000-0000-0000-0000-000000000003', 30, 100, true), ('20000000-0000-0000-0000-000000000003', 50, 160, true), ('20000000-0000-0000-0000-000000000003', 100, 250, true),
('20000000-0000-0000-0000-000000000004', 30, 130, true), ('20000000-0000-0000-0000-000000000004', 50, 200, true), ('20000000-0000-0000-0000-000000000004', 100, 300, true),
('20000000-0000-0000-0000-000000000005', 30, 100, true), ('20000000-0000-0000-0000-000000000005', 50, 160, true), ('20000000-0000-0000-0000-000000000005', 100, 240, true),
('20000000-0000-0000-0000-000000000006', 30, 110, true), ('20000000-0000-0000-0000-000000000006', 50, 170, true), ('20000000-0000-0000-0000-000000000006', 100, 260, true),
('20000000-0000-0000-0000-000000000007', 30, 120, true), ('20000000-0000-0000-0000-000000000007', 50, 180, true), ('20000000-0000-0000-0000-000000000007', 100, 280, true),
('20000000-0000-0000-0000-000000000008', 30, 100, true), ('20000000-0000-0000-0000-000000000008', 50, 160, true), ('20000000-0000-0000-0000-000000000008', 100, 250, true),
('20000000-0000-0000-0000-000000000009', 30, 90, true), ('20000000-0000-0000-0000-000000000009', 50, 150, true), ('20000000-0000-0000-0000-000000000009', 100, 230, true),
('20000000-0000-0000-0000-000000000010', 30, 100, true), ('20000000-0000-0000-0000-000000000010', 50, 160, true), ('20000000-0000-0000-0000-000000000010', 100, 240, true),
('20000000-0000-0000-0000-000000000011', 30, 130, true), ('20000000-0000-0000-0000-000000000011', 50, 200, true), ('20000000-0000-0000-0000-000000000011', 100, 310, true),
('20000000-0000-0000-0000-000000000012', 30, 120, true), ('20000000-0000-0000-0000-000000000012', 50, 180, true), ('20000000-0000-0000-0000-000000000012', 100, 280, true),
('20000000-0000-0000-0000-000000000013', 30, 110, true), ('20000000-0000-0000-0000-000000000013', 50, 170, true), ('20000000-0000-0000-0000-000000000013', 100, 260, true),
('20000000-0000-0000-0000-000000000014', 30, 130, true), ('20000000-0000-0000-0000-000000000014', 50, 200, true), ('20000000-0000-0000-0000-000000000014', 100, 300, true),
('20000000-0000-0000-0000-000000000015', 30, 120, true), ('20000000-0000-0000-0000-000000000015', 50, 190, true), ('20000000-0000-0000-0000-000000000015', 100, 290, true),
('20000000-0000-0000-0000-000000000016', 30, 100, true), ('20000000-0000-0000-0000-000000000016', 50, 160, true), ('20000000-0000-0000-0000-000000000016', 100, 250, true),
('20000000-0000-0000-0000-000000000017', 30, 110, true), ('20000000-0000-0000-0000-000000000017', 50, 170, true), ('20000000-0000-0000-0000-000000000017', 100, 260, true),
('20000000-0000-0000-0000-000000000018', 30, 130, true), ('20000000-0000-0000-0000-000000000018', 50, 200, true), ('20000000-0000-0000-0000-000000000018', 100, 300, true),
('20000000-0000-0000-0000-000000000019', 30, 120, true), ('20000000-0000-0000-0000-000000000019', 50, 180, true), ('20000000-0000-0000-0000-000000000019', 100, 280, true),
('20000000-0000-0000-0000-000000000020', 30, 110, true), ('20000000-0000-0000-0000-000000000020', 50, 170, true), ('20000000-0000-0000-0000-000000000020', 100, 260, true),
('20000000-0000-0000-0000-000000000021', 30, 130, true), ('20000000-0000-0000-0000-000000000021', 50, 200, true), ('20000000-0000-0000-0000-000000000021', 100, 300, true),
('20000000-0000-0000-0000-000000000022', 30, 140, true), ('20000000-0000-0000-0000-000000000022', 50, 210, true), ('20000000-0000-0000-0000-000000000022', 100, 320, true);

-- Maison Alhambra (budget: 100-400 GHS)
INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
('20000000-0000-0000-0000-000000000030', 30, 130, true), ('20000000-0000-0000-0000-000000000030', 50, 200, true), ('20000000-0000-0000-0000-000000000030', 100, 300, true),
('20000000-0000-0000-0000-000000000031', 30, 120, true), ('20000000-0000-0000-0000-000000000031', 50, 190, true), ('20000000-0000-0000-0000-000000000031', 100, 280, true),
('20000000-0000-0000-0000-000000000032', 30, 140, true), ('20000000-0000-0000-0000-000000000032', 50, 210, true), ('20000000-0000-0000-0000-000000000032', 100, 320, true),
('20000000-0000-0000-0000-000000000033', 30, 110, true), ('20000000-0000-0000-0000-000000000033', 50, 170, true), ('20000000-0000-0000-0000-000000000033', 100, 260, true),
('20000000-0000-0000-0000-000000000034', 30, 100, true), ('20000000-0000-0000-0000-000000000034', 50, 160, true), ('20000000-0000-0000-0000-000000000034', 100, 240, true),
('20000000-0000-0000-0000-000000000035', 30, 150, true), ('20000000-0000-0000-0000-000000000035', 50, 230, true), ('20000000-0000-0000-0000-000000000035', 100, 350, true),
('20000000-0000-0000-0000-000000000036', 30, 120, true), ('20000000-0000-0000-0000-000000000036', 50, 190, true), ('20000000-0000-0000-0000-000000000036', 100, 280, true),
('20000000-0000-0000-0000-000000000037', 30, 110, true), ('20000000-0000-0000-0000-000000000037', 50, 170, true), ('20000000-0000-0000-0000-000000000037', 100, 260, true),
('20000000-0000-0000-0000-000000000038', 30, 140, true), ('20000000-0000-0000-0000-000000000038', 50, 210, true), ('20000000-0000-0000-0000-000000000038', 100, 320, true),
('20000000-0000-0000-0000-000000000039', 30, 130, true), ('20000000-0000-0000-0000-000000000039', 50, 200, true), ('20000000-0000-0000-0000-000000000039', 100, 300, true);

-- Afnan (budget: 100-400 GHS)
INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
('20000000-0000-0000-0000-000000000040', 30, 150, true), ('20000000-0000-0000-0000-000000000040', 50, 230, true), ('20000000-0000-0000-0000-000000000040', 100, 350, true),
('20000000-0000-0000-0000-000000000041', 30, 130, true), ('20000000-0000-0000-0000-000000000041', 50, 200, true), ('20000000-0000-0000-0000-000000000041', 100, 300, true),
('20000000-0000-0000-0000-000000000042', 30, 140, true), ('20000000-0000-0000-0000-000000000042', 50, 210, true), ('20000000-0000-0000-0000-000000000042', 100, 320, true),
('20000000-0000-0000-0000-000000000043', 30, 120, true), ('20000000-0000-0000-0000-000000000043', 50, 190, true), ('20000000-0000-0000-0000-000000000043', 100, 280, true),
('20000000-0000-0000-0000-000000000044', 30, 140, true), ('20000000-0000-0000-0000-000000000044', 50, 210, true), ('20000000-0000-0000-0000-000000000044', 100, 320, true),
('20000000-0000-0000-0000-000000000045', 30, 160, true), ('20000000-0000-0000-0000-000000000045', 50, 240, true), ('20000000-0000-0000-0000-000000000045', 100, 360, true);

-- Ard Al Zaafaran (budget: 80-300 GHS)
INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
('20000000-0000-0000-0000-000000000050', 30, 100, true), ('20000000-0000-0000-0000-000000000050', 50, 160, true), ('20000000-0000-0000-0000-000000000050', 100, 240, true),
('20000000-0000-0000-0000-000000000051', 30, 90, true), ('20000000-0000-0000-0000-000000000051', 50, 150, true), ('20000000-0000-0000-0000-000000000051', 100, 220, true),
('20000000-0000-0000-0000-000000000052', 30, 100, true), ('20000000-0000-0000-0000-000000000052', 50, 160, true), ('20000000-0000-0000-0000-000000000052', 100, 240, true),
('20000000-0000-0000-0000-000000000053', 30, 80, true), ('20000000-0000-0000-0000-000000000053', 50, 130, true), ('20000000-0000-0000-0000-000000000053', 100, 200, true),
('20000000-0000-0000-0000-000000000054', 30, 110, true), ('20000000-0000-0000-0000-000000000054', 50, 170, true), ('20000000-0000-0000-0000-000000000054', 100, 260, true);

-- Paris Corner (budget: 100-350 GHS)
INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
('20000000-0000-0000-0000-000000000060', 30, 120, true), ('20000000-0000-0000-0000-000000000060', 50, 190, true), ('20000000-0000-0000-0000-000000000060', 100, 280, true),
('20000000-0000-0000-0000-000000000061', 30, 130, true), ('20000000-0000-0000-0000-000000000061', 50, 200, true), ('20000000-0000-0000-0000-000000000061', 100, 300, true),
('20000000-0000-0000-0000-000000000062', 30, 140, true), ('20000000-0000-0000-0000-000000000062', 50, 210, true), ('20000000-0000-0000-0000-000000000062', 100, 320, true),
('20000000-0000-0000-0000-000000000063', 30, 120, true), ('20000000-0000-0000-0000-000000000063', 50, 190, true), ('20000000-0000-0000-0000-000000000063', 100, 280, true),
('20000000-0000-0000-0000-000000000064', 30, 130, true), ('20000000-0000-0000-0000-000000000064', 50, 200, true), ('20000000-0000-0000-0000-000000000064', 100, 300, true);

-- Sterling / Armaf / Vurv / Emper (budget: 80-300 GHS)
INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
('20000000-0000-0000-0000-000000000070', 30, 90, true), ('20000000-0000-0000-0000-000000000070', 50, 140, true), ('20000000-0000-0000-0000-000000000070', 100, 220, true),
('20000000-0000-0000-0000-000000000071', 30, 150, true), ('20000000-0000-0000-0000-000000000071', 50, 230, true), ('20000000-0000-0000-0000-000000000071', 100, 350, true),
('20000000-0000-0000-0000-000000000072', 30, 120, true), ('20000000-0000-0000-0000-000000000072', 50, 190, true), ('20000000-0000-0000-0000-000000000072', 100, 280, true),
('20000000-0000-0000-0000-000000000073', 30, 100, true), ('20000000-0000-0000-0000-000000000073', 50, 160, true), ('20000000-0000-0000-0000-000000000073', 100, 240, true),
('20000000-0000-0000-0000-000000000074', 30, 80, true), ('20000000-0000-0000-0000-000000000074', 50, 130, true), ('20000000-0000-0000-0000-000000000074', 100, 200, true),
('20000000-0000-0000-0000-000000000075', 30, 90, true), ('20000000-0000-0000-0000-000000000075', 50, 140, true), ('20000000-0000-0000-0000-000000000075', 100, 220, true),
('20000000-0000-0000-0000-000000000076', 30, 100, true), ('20000000-0000-0000-0000-000000000076', 50, 160, true), ('20000000-0000-0000-0000-000000000076', 100, 240, true);

-- Designer fills (mid-premium pricing)
INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
('20000000-0000-0000-0000-000000000080', 30, 550, true), ('20000000-0000-0000-0000-000000000080', 50, 800, true), ('20000000-0000-0000-0000-000000000080', 100, 1200, true),
('20000000-0000-0000-0000-000000000081', 30, 500, true), ('20000000-0000-0000-0000-000000000081', 50, 750, true), ('20000000-0000-0000-0000-000000000081', 100, 1100, true),
('20000000-0000-0000-0000-000000000082', 30, 650, true), ('20000000-0000-0000-0000-000000000082', 50, 950, true), ('20000000-0000-0000-0000-000000000082', 100, 1400, true),
('20000000-0000-0000-0000-000000000083', 30, 600, true), ('20000000-0000-0000-0000-000000000083', 50, 880, true), ('20000000-0000-0000-0000-000000000083', 100, 1300, true),
('20000000-0000-0000-0000-000000000084', 30, 450, true), ('20000000-0000-0000-0000-000000000084', 50, 680, true), ('20000000-0000-0000-0000-000000000084', 100, 1000, true),
('20000000-0000-0000-0000-000000000085', 30, 450, true), ('20000000-0000-0000-0000-000000000085', 50, 680, true), ('20000000-0000-0000-0000-000000000085', 100, 1000, true),
('20000000-0000-0000-0000-000000000086', 30, 580, true), ('20000000-0000-0000-0000-000000000086', 50, 850, true), ('20000000-0000-0000-0000-000000000086', 100, 1250, true),
('20000000-0000-0000-0000-000000000087', 30, 500, true), ('20000000-0000-0000-0000-000000000087', 50, 750, true), ('20000000-0000-0000-0000-000000000087', 100, 1100, true),
('20000000-0000-0000-0000-000000000088', 30, 580, true), ('20000000-0000-0000-0000-000000000088', 50, 850, true), ('20000000-0000-0000-0000-000000000088', 100, 1250, true),
('20000000-0000-0000-0000-000000000089', 30, 550, true), ('20000000-0000-0000-0000-000000000089', 50, 800, true), ('20000000-0000-0000-0000-000000000089', 100, 1200, true),
('20000000-0000-0000-0000-000000000090', 30, 650, true), ('20000000-0000-0000-0000-000000000090', 50, 950, true), ('20000000-0000-0000-0000-000000000090', 100, 1400, true),
('20000000-0000-0000-0000-000000000091', 30, 620, true), ('20000000-0000-0000-0000-000000000091', 50, 900, true), ('20000000-0000-0000-0000-000000000091', 100, 1350, true),
('20000000-0000-0000-0000-000000000092', 30, 700, true), ('20000000-0000-0000-0000-000000000092', 50, 1020, true), ('20000000-0000-0000-0000-000000000092', 100, 1500, true),
('20000000-0000-0000-0000-000000000093', 30, 650, true), ('20000000-0000-0000-0000-000000000093', 50, 950, true), ('20000000-0000-0000-0000-000000000093', 100, 1400, true),
('20000000-0000-0000-0000-000000000094', 30, 420, true), ('20000000-0000-0000-0000-000000000094', 50, 630, true), ('20000000-0000-0000-0000-000000000094', 100, 950, true),
('20000000-0000-0000-0000-000000000095', 30, 480, true), ('20000000-0000-0000-0000-000000000095', 50, 720, true), ('20000000-0000-0000-0000-000000000095', 100, 1080, true),
('20000000-0000-0000-0000-000000000096', 30, 650, true), ('20000000-0000-0000-0000-000000000096', 50, 950, true), ('20000000-0000-0000-0000-000000000096', 100, 1400, true),
('20000000-0000-0000-0000-000000000097', 30, 600, true), ('20000000-0000-0000-0000-000000000097', 50, 880, true), ('20000000-0000-0000-0000-000000000097', 100, 1300, true),
('20000000-0000-0000-0000-000000000098', 30, 620, true), ('20000000-0000-0000-0000-000000000098', 50, 900, true), ('20000000-0000-0000-0000-000000000098', 100, 1350, true),
('20000000-0000-0000-0000-000000000099', 30, 550, true), ('20000000-0000-0000-0000-000000000099', 50, 800, true), ('20000000-0000-0000-0000-000000000099', 100, 1200, true);

-- More designer & niche fills
INSERT INTO public.product_sizes (product_id, ml, price, available) VALUES
('20000000-0000-0000-0000-000000000100', 30, 280, true), ('20000000-0000-0000-0000-000000000100', 50, 420, true), ('20000000-0000-0000-0000-000000000100', 100, 620, true),
('20000000-0000-0000-0000-000000000101', 30, 300, true), ('20000000-0000-0000-0000-000000000101', 50, 450, true), ('20000000-0000-0000-0000-000000000101', 100, 680, true),
('20000000-0000-0000-0000-000000000102', 30, 350, true), ('20000000-0000-0000-0000-000000000102', 50, 520, true), ('20000000-0000-0000-0000-000000000102', 100, 780, true),
('20000000-0000-0000-0000-000000000103', 30, 320, true), ('20000000-0000-0000-0000-000000000103', 50, 480, true), ('20000000-0000-0000-0000-000000000103', 100, 720, true),
('20000000-0000-0000-0000-000000000104', 30, 380, true), ('20000000-0000-0000-0000-000000000104', 50, 560, true), ('20000000-0000-0000-0000-000000000104', 100, 850, true),
('20000000-0000-0000-0000-000000000105', 30, 720, true), ('20000000-0000-0000-0000-000000000105', 50, 1050, true), ('20000000-0000-0000-0000-000000000105', 100, 1550, true),
('20000000-0000-0000-0000-000000000106', 30, 680, true), ('20000000-0000-0000-0000-000000000106', 50, 980, true), ('20000000-0000-0000-0000-000000000106', 100, 1450, true),
('20000000-0000-0000-0000-000000000107', 30, 700, true), ('20000000-0000-0000-0000-000000000107', 50, 1020, true), ('20000000-0000-0000-0000-000000000107', 100, 1500, true),
('20000000-0000-0000-0000-000000000108', 30, 950, true), ('20000000-0000-0000-0000-000000000108', 50, 1400, true), ('20000000-0000-0000-0000-000000000108', 100, 2100, true),
('20000000-0000-0000-0000-000000000109', 30, 2500, true), ('20000000-0000-0000-0000-000000000109', 50, 3800, true), ('20000000-0000-0000-0000-000000000109', 100, 5500, true),
('20000000-0000-0000-0000-000000000110', 30, 2200, true), ('20000000-0000-0000-0000-000000000110', 50, 3400, true), ('20000000-0000-0000-0000-000000000110', 100, 5000, true),
('20000000-0000-0000-0000-000000000111', 30, 2200, true), ('20000000-0000-0000-0000-000000000111', 50, 3400, true), ('20000000-0000-0000-0000-000000000111', 100, 5000, true),
('20000000-0000-0000-0000-000000000112', 30, 420, true), ('20000000-0000-0000-0000-000000000112', 50, 630, true), ('20000000-0000-0000-0000-000000000112', 100, 950, true),
('20000000-0000-0000-0000-000000000113', 30, 380, true), ('20000000-0000-0000-0000-000000000113', 50, 560, true), ('20000000-0000-0000-0000-000000000113', 100, 850, true),
('20000000-0000-0000-0000-000000000114', 30, 580, true), ('20000000-0000-0000-0000-000000000114', 50, 850, true), ('20000000-0000-0000-0000-000000000114', 100, 1250, true),
('20000000-0000-0000-0000-000000000115', 30, 550, true), ('20000000-0000-0000-0000-000000000115', 50, 800, true), ('20000000-0000-0000-0000-000000000115', 100, 1200, true),
('20000000-0000-0000-0000-000000000116', 30, 550, true), ('20000000-0000-0000-0000-000000000116', 50, 800, true), ('20000000-0000-0000-0000-000000000116', 100, 1200, true),
('20000000-0000-0000-0000-000000000117', 30, 620, true), ('20000000-0000-0000-0000-000000000117', 50, 900, true), ('20000000-0000-0000-0000-000000000117', 100, 1350, true),
('20000000-0000-0000-0000-000000000118', 30, 780, true), ('20000000-0000-0000-0000-000000000118', 50, 1100, true), ('20000000-0000-0000-0000-000000000118', 100, 1650, true),
('20000000-0000-0000-0000-000000000119', 30, 780, true), ('20000000-0000-0000-0000-000000000119', 50, 1100, true), ('20000000-0000-0000-0000-000000000119', 100, 1650, true),
('20000000-0000-0000-0000-000000000120', 30, 450, true), ('20000000-0000-0000-0000-000000000120', 50, 680, true), ('20000000-0000-0000-0000-000000000120', 100, 1000, true),
('20000000-0000-0000-0000-000000000121', 30, 350, true), ('20000000-0000-0000-0000-000000000121', 50, 520, true), ('20000000-0000-0000-0000-000000000121', 100, 780, true),
('20000000-0000-0000-0000-000000000122', 30, 450, true), ('20000000-0000-0000-0000-000000000122', 50, 680, true), ('20000000-0000-0000-0000-000000000122', 100, 1000, true),
('20000000-0000-0000-0000-000000000123', 30, 300, true), ('20000000-0000-0000-0000-000000000123', 50, 450, true), ('20000000-0000-0000-0000-000000000123', 100, 680, true),
('20000000-0000-0000-0000-000000000124', 30, 250, true), ('20000000-0000-0000-0000-000000000124', 50, 380, true), ('20000000-0000-0000-0000-000000000124', 100, 560, true),
('20000000-0000-0000-0000-000000000125', 30, 350, true), ('20000000-0000-0000-0000-000000000125', 50, 520, true), ('20000000-0000-0000-0000-000000000125', 100, 780, true),
('20000000-0000-0000-0000-000000000126', 30, 1800, true), ('20000000-0000-0000-0000-000000000126', 50, 2600, true), ('20000000-0000-0000-0000-000000000126', 100, 3800, true),
('20000000-0000-0000-0000-000000000127', 30, 620, true), ('20000000-0000-0000-0000-000000000127', 50, 900, true), ('20000000-0000-0000-0000-000000000127', 100, 1350, true),
('20000000-0000-0000-0000-000000000128', 30, 600, true), ('20000000-0000-0000-0000-000000000128', 50, 880, true), ('20000000-0000-0000-0000-000000000128', 100, 1300, true),
('20000000-0000-0000-0000-000000000129', 30, 1500, true), ('20000000-0000-0000-0000-000000000129', 50, 2200, true), ('20000000-0000-0000-0000-000000000129', 100, 3200, true),
('20000000-0000-0000-0000-000000000130', 30, 1500, true), ('20000000-0000-0000-0000-000000000130', 50, 2200, true), ('20000000-0000-0000-0000-000000000130', 100, 3200, true),
('20000000-0000-0000-0000-000000000131', 30, 1600, true), ('20000000-0000-0000-0000-000000000131', 50, 2400, true), ('20000000-0000-0000-0000-000000000131', 100, 3500, true),
('20000000-0000-0000-0000-000000000132', 30, 1800, true), ('20000000-0000-0000-0000-000000000132', 50, 2600, true), ('20000000-0000-0000-0000-000000000132', 100, 3800, true),
('20000000-0000-0000-0000-000000000133', 30, 1800, true), ('20000000-0000-0000-0000-000000000133', 50, 2600, true), ('20000000-0000-0000-0000-000000000133', 100, 3800, true),
('20000000-0000-0000-0000-000000000134', 30, 1400, true), ('20000000-0000-0000-0000-000000000134', 50, 2100, true), ('20000000-0000-0000-0000-000000000134', 100, 3100, true),
('20000000-0000-0000-0000-000000000135', 30, 1200, true), ('20000000-0000-0000-0000-000000000135', 50, 1800, true), ('20000000-0000-0000-0000-000000000135', 100, 2600, true),
('20000000-0000-0000-0000-000000000136', 30, 500, true), ('20000000-0000-0000-0000-000000000136', 50, 750, true), ('20000000-0000-0000-0000-000000000136', 100, 1100, true),
('20000000-0000-0000-0000-000000000137', 30, 520, true), ('20000000-0000-0000-0000-000000000137', 50, 780, true), ('20000000-0000-0000-0000-000000000137', 100, 1150, true),
('20000000-0000-0000-0000-000000000138', 30, 550, true), ('20000000-0000-0000-0000-000000000138', 50, 800, true), ('20000000-0000-0000-0000-000000000138', 100, 1200, true),
('20000000-0000-0000-0000-000000000139', 30, 550, true), ('20000000-0000-0000-0000-000000000139', 50, 800, true), ('20000000-0000-0000-0000-000000000139', 100, 1200, true),
('20000000-0000-0000-0000-000000000140', 30, 1400, true), ('20000000-0000-0000-0000-000000000140', 50, 2100, true), ('20000000-0000-0000-0000-000000000140', 100, 3100, true),
('20000000-0000-0000-0000-000000000141', 30, 90, true), ('20000000-0000-0000-0000-000000000141', 50, 140, true), ('20000000-0000-0000-0000-000000000141', 100, 220, true),
('20000000-0000-0000-0000-000000000142', 30, 100, true), ('20000000-0000-0000-0000-000000000142', 50, 160, true), ('20000000-0000-0000-0000-000000000142', 100, 240, true),
('20000000-0000-0000-0000-000000000143', 30, 80, true), ('20000000-0000-0000-0000-000000000143', 50, 130, true), ('20000000-0000-0000-0000-000000000143', 100, 200, true),
('20000000-0000-0000-0000-000000000144', 30, 80, true), ('20000000-0000-0000-0000-000000000144', 50, 130, true), ('20000000-0000-0000-0000-000000000144', 100, 200, true),
('20000000-0000-0000-0000-000000000145', 30, 200, true), ('20000000-0000-0000-0000-000000000145', 50, 320, true), ('20000000-0000-0000-0000-000000000145', 100, 480, true),
('20000000-0000-0000-0000-000000000146', 30, 180, true), ('20000000-0000-0000-0000-000000000146', 50, 280, true), ('20000000-0000-0000-0000-000000000146', 100, 420, true),
('20000000-0000-0000-0000-000000000147', 30, 220, true), ('20000000-0000-0000-0000-000000000147', 50, 340, true), ('20000000-0000-0000-0000-000000000147', 100, 500, true),
('20000000-0000-0000-0000-000000000148', 30, 200, true), ('20000000-0000-0000-0000-000000000148', 50, 320, true), ('20000000-0000-0000-0000-000000000148', 100, 480, true),
('20000000-0000-0000-0000-000000000149', 30, 190, true), ('20000000-0000-0000-0000-000000000149', 50, 300, true), ('20000000-0000-0000-0000-000000000149', 100, 450, true),
('20000000-0000-0000-0000-000000000150', 30, 200, true), ('20000000-0000-0000-0000-000000000150', 50, 320, true), ('20000000-0000-0000-0000-000000000150', 100, 480, true);


-- ============================================
-- SCENT NOTES for all mega catalog products
-- (3 per layer: top, heart, base)
-- ============================================

INSERT INTO public.scent_notes (product_id, layer, note) VALUES
-- Classy Chic Girl
('20000000-0000-0000-0000-000000000001', 'top', 'Almond'), ('20000000-0000-0000-0000-000000000001', 'top', 'Coffee'), ('20000000-0000-0000-0000-000000000001', 'top', 'Bergamot'),
('20000000-0000-0000-0000-000000000001', 'heart', 'Tuberose'), ('20000000-0000-0000-0000-000000000001', 'heart', 'Jasmine'), ('20000000-0000-0000-0000-000000000001', 'heart', 'Rose'),
('20000000-0000-0000-0000-000000000001', 'base', 'Tonka Bean'), ('20000000-0000-0000-0000-000000000001', 'base', 'Cocoa'), ('20000000-0000-0000-0000-000000000001', 'base', 'Sandalwood'),
-- Ur Way
('20000000-0000-0000-0000-000000000002', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000002', 'top', 'Orange Blossom'), ('20000000-0000-0000-0000-000000000002', 'top', 'Ginger'),
('20000000-0000-0000-0000-000000000002', 'heart', 'Tuberose'), ('20000000-0000-0000-0000-000000000002', 'heart', 'Jasmine'), ('20000000-0000-0000-0000-000000000002', 'heart', 'Rose'),
('20000000-0000-0000-0000-000000000002', 'base', 'Cedarwood'), ('20000000-0000-0000-0000-000000000002', 'base', 'White Musk'), ('20000000-0000-0000-0000-000000000002', 'base', 'Vanilla'),
-- Ophylia
('20000000-0000-0000-0000-000000000003', 'top', 'Pear'), ('20000000-0000-0000-0000-000000000003', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000003', 'top', 'Lemon'),
('20000000-0000-0000-0000-000000000003', 'heart', 'Iris'), ('20000000-0000-0000-0000-000000000003', 'heart', 'White Flowers'), ('20000000-0000-0000-0000-000000000003', 'heart', 'Rose'),
('20000000-0000-0000-0000-000000000003', 'base', 'Musk'), ('20000000-0000-0000-0000-000000000003', 'base', 'Vanilla'), ('20000000-0000-0000-0000-000000000003', 'base', 'Amber'),
-- Barakkat Rouge 540
('20000000-0000-0000-0000-000000000004', 'top', 'Saffron'), ('20000000-0000-0000-0000-000000000004', 'top', 'Jasmine'), ('20000000-0000-0000-0000-000000000004', 'top', 'Bitter Almond'),
('20000000-0000-0000-0000-000000000004', 'heart', 'Ambergris'), ('20000000-0000-0000-0000-000000000004', 'heart', 'Cedar'), ('20000000-0000-0000-0000-000000000004', 'heart', 'Fir Resin'),
('20000000-0000-0000-0000-000000000004', 'base', 'Cashmeran'), ('20000000-0000-0000-0000-000000000004', 'base', 'Musk'), ('20000000-0000-0000-0000-000000000004', 'base', 'Benzoin'),
-- Classy Chic No.1
('20000000-0000-0000-0000-000000000005', 'top', 'Pink Pepper'), ('20000000-0000-0000-0000-000000000005', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000005', 'top', 'Pear'),
('20000000-0000-0000-0000-000000000005', 'heart', 'Rose'), ('20000000-0000-0000-0000-000000000005', 'heart', 'Peony'), ('20000000-0000-0000-0000-000000000005', 'heart', 'Jasmine'),
('20000000-0000-0000-0000-000000000005', 'base', 'White Musk'), ('20000000-0000-0000-0000-000000000005', 'base', 'Amber'), ('20000000-0000-0000-0000-000000000005', 'base', 'Cedar'),
-- La Vie Belle
('20000000-0000-0000-0000-000000000006', 'top', 'Blackcurrant'), ('20000000-0000-0000-0000-000000000006', 'top', 'Pear'), ('20000000-0000-0000-0000-000000000006', 'top', 'Bergamot'),
('20000000-0000-0000-0000-000000000006', 'heart', 'Iris'), ('20000000-0000-0000-0000-000000000006', 'heart', 'Jasmine'), ('20000000-0000-0000-0000-000000000006', 'heart', 'Orange Blossom'),
('20000000-0000-0000-0000-000000000006', 'base', 'Praline'), ('20000000-0000-0000-0000-000000000006', 'base', 'Vanilla'), ('20000000-0000-0000-0000-000000000006', 'base', 'Patchouli'),
-- Black Orchid (FW)
('20000000-0000-0000-0000-000000000007', 'top', 'Black Truffle'), ('20000000-0000-0000-0000-000000000007', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000007', 'top', 'Lemon'),
('20000000-0000-0000-0000-000000000007', 'heart', 'Orchid'), ('20000000-0000-0000-0000-000000000007', 'heart', 'Lotus'), ('20000000-0000-0000-0000-000000000007', 'heart', 'Spice'),
('20000000-0000-0000-0000-000000000007', 'base', 'Patchouli'), ('20000000-0000-0000-0000-000000000007', 'base', 'Vanilla'), ('20000000-0000-0000-0000-000000000007', 'base', 'Sandalwood'),
-- Bloom (FW)
('20000000-0000-0000-0000-000000000008', 'top', 'Rangoon Creeper'), ('20000000-0000-0000-0000-000000000008', 'top', 'Jasmine'), ('20000000-0000-0000-0000-000000000008', 'top', 'Citrus'),
('20000000-0000-0000-0000-000000000008', 'heart', 'Tuberose'), ('20000000-0000-0000-0000-000000000008', 'heart', 'Rose'), ('20000000-0000-0000-0000-000000000008', 'heart', 'Honeysuckle'),
('20000000-0000-0000-0000-000000000008', 'base', 'Musk'), ('20000000-0000-0000-0000-000000000008', 'base', 'Sandalwood'), ('20000000-0000-0000-0000-000000000008', 'base', 'Amber'),
-- Mosuef
('20000000-0000-0000-0000-000000000009', 'top', 'Lemon'), ('20000000-0000-0000-0000-000000000009', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000009', 'top', 'Grapefruit'),
('20000000-0000-0000-0000-000000000009', 'heart', 'White Flowers'), ('20000000-0000-0000-0000-000000000009', 'heart', 'Lily'), ('20000000-0000-0000-0000-000000000009', 'heart', 'Rose'),
('20000000-0000-0000-0000-000000000009', 'base', 'Musk'), ('20000000-0000-0000-0000-000000000009', 'base', 'Cedar'), ('20000000-0000-0000-0000-000000000009', 'base', 'Amber'),
-- Eclat La Violette
('20000000-0000-0000-0000-000000000010', 'top', 'Violet'), ('20000000-0000-0000-0000-000000000010', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000010', 'top', 'Mandarin'),
('20000000-0000-0000-0000-000000000010', 'heart', 'Iris'), ('20000000-0000-0000-0000-000000000010', 'heart', 'Jasmine'), ('20000000-0000-0000-0000-000000000010', 'heart', 'Rose'),
('20000000-0000-0000-0000-000000000010', 'base', 'Cedar'), ('20000000-0000-0000-0000-000000000010', 'base', 'Musk'), ('20000000-0000-0000-0000-000000000010', 'base', 'Amber'),
-- Aventos
('20000000-0000-0000-0000-000000000011', 'top', 'Pineapple'), ('20000000-0000-0000-0000-000000000011', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000011', 'top', 'Apple'),
('20000000-0000-0000-0000-000000000011', 'heart', 'Birch'), ('20000000-0000-0000-0000-000000000011', 'heart', 'Jasmine'), ('20000000-0000-0000-0000-000000000011', 'heart', 'Rose'),
('20000000-0000-0000-0000-000000000011', 'base', 'Musk'), ('20000000-0000-0000-0000-000000000011', 'base', 'Ambergris'), ('20000000-0000-0000-0000-000000000011', 'base', 'Cedar'),
-- Suave
('20000000-0000-0000-0000-000000000012', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000012', 'top', 'Pepper'), ('20000000-0000-0000-0000-000000000012', 'top', 'Mandarin'),
('20000000-0000-0000-0000-000000000012', 'heart', 'Lavender'), ('20000000-0000-0000-0000-000000000012', 'heart', 'Geranium'), ('20000000-0000-0000-0000-000000000012', 'heart', 'Vetiver'),
('20000000-0000-0000-0000-000000000012', 'base', 'Ambroxan'), ('20000000-0000-0000-0000-000000000012', 'base', 'Cedar'), ('20000000-0000-0000-0000-000000000012', 'base', 'Musk'),
-- Encode Blue
('20000000-0000-0000-0000-000000000013', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000013', 'top', 'Mandarin'), ('20000000-0000-0000-0000-000000000013', 'top', 'Grapefruit'),
('20000000-0000-0000-0000-000000000013', 'heart', 'Vetiver'), ('20000000-0000-0000-0000-000000000013', 'heart', 'Geranium'), ('20000000-0000-0000-0000-000000000013', 'heart', 'Sage'),
('20000000-0000-0000-0000-000000000013', 'base', 'Patchouli'), ('20000000-0000-0000-0000-000000000013', 'base', 'Musk'), ('20000000-0000-0000-0000-000000000013', 'base', 'Cedar'),
-- Maison (FW)
('20000000-0000-0000-0000-000000000014', 'top', 'Saffron'), ('20000000-0000-0000-0000-000000000014', 'top', 'Jasmine'), ('20000000-0000-0000-0000-000000000014', 'top', 'Citrus'),
('20000000-0000-0000-0000-000000000014', 'heart', 'Oud'), ('20000000-0000-0000-0000-000000000014', 'heart', 'Rose'), ('20000000-0000-0000-0000-000000000014', 'heart', 'Amber'),
('20000000-0000-0000-0000-000000000014', 'base', 'Vanilla'), ('20000000-0000-0000-0000-000000000014', 'base', 'Sandalwood'), ('20000000-0000-0000-0000-000000000014', 'base', 'Musk'),
-- Clive Dorris Barakkat
('20000000-0000-0000-0000-000000000015', 'top', 'Pepper'), ('20000000-0000-0000-0000-000000000015', 'top', 'Cinnamon'), ('20000000-0000-0000-0000-000000000015', 'top', 'Bergamot'),
('20000000-0000-0000-0000-000000000015', 'heart', 'Amber'), ('20000000-0000-0000-0000-000000000015', 'heart', 'Rose'), ('20000000-0000-0000-0000-000000000015', 'heart', 'Oud'),
('20000000-0000-0000-0000-000000000015', 'base', 'Vanilla'), ('20000000-0000-0000-0000-000000000015', 'base', 'Musk'), ('20000000-0000-0000-0000-000000000015', 'base', 'Sandalwood'),
-- Encode
('20000000-0000-0000-0000-000000000016', 'top', 'Marine Notes'), ('20000000-0000-0000-0000-000000000016', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000016', 'top', 'Lemon'),
('20000000-0000-0000-0000-000000000016', 'heart', 'Lavender'), ('20000000-0000-0000-0000-000000000016', 'heart', 'Geranium'), ('20000000-0000-0000-0000-000000000016', 'heart', 'Sage'),
('20000000-0000-0000-0000-000000000016', 'base', 'Musk'), ('20000000-0000-0000-0000-000000000016', 'base', 'Cedar'), ('20000000-0000-0000-0000-000000000016', 'base', 'Amber'),
-- Oniro
('20000000-0000-0000-0000-000000000017', 'top', 'Apple'), ('20000000-0000-0000-0000-000000000017', 'top', 'Lavender'), ('20000000-0000-0000-0000-000000000017', 'top', 'Bergamot'),
('20000000-0000-0000-0000-000000000017', 'heart', 'Sage'), ('20000000-0000-0000-0000-000000000017', 'heart', 'Geranium'), ('20000000-0000-0000-0000-000000000017', 'heart', 'Violet'),
('20000000-0000-0000-0000-000000000017', 'base', 'Tonka Bean'), ('20000000-0000-0000-0000-000000000017', 'base', 'Vanilla'), ('20000000-0000-0000-0000-000000000017', 'base', 'Musk'),
-- Aventos Noir
('20000000-0000-0000-0000-000000000018', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000018', 'top', 'Black Pepper'), ('20000000-0000-0000-0000-000000000018', 'top', 'Apple'),
('20000000-0000-0000-0000-000000000018', 'heart', 'Birch'), ('20000000-0000-0000-0000-000000000018', 'heart', 'Rose'), ('20000000-0000-0000-0000-000000000018', 'heart', 'Vetiver'),
('20000000-0000-0000-0000-000000000018', 'base', 'Dark Amber'), ('20000000-0000-0000-0000-000000000018', 'base', 'Musk'), ('20000000-0000-0000-0000-000000000018', 'base', 'Oud'),
-- Al Ambra
('20000000-0000-0000-0000-000000000019', 'top', 'Saffron'), ('20000000-0000-0000-0000-000000000019', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000019', 'top', 'Cardamom'),
('20000000-0000-0000-0000-000000000019', 'heart', 'Amber'), ('20000000-0000-0000-0000-000000000019', 'heart', 'Oud'), ('20000000-0000-0000-0000-000000000019', 'heart', 'Rose'),
('20000000-0000-0000-0000-000000000019', 'base', 'Vanilla'), ('20000000-0000-0000-0000-000000000019', 'base', 'Musk'), ('20000000-0000-0000-0000-000000000019', 'base', 'Sandalwood'),
-- Encode Titanium
('20000000-0000-0000-0000-000000000020', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000020', 'top', 'Grapefruit'), ('20000000-0000-0000-0000-000000000020', 'top', 'Mandarin'),
('20000000-0000-0000-0000-000000000020', 'heart', 'Lavender'), ('20000000-0000-0000-0000-000000000020', 'heart', 'Geranium'), ('20000000-0000-0000-0000-000000000020', 'heart', 'Marine'),
('20000000-0000-0000-0000-000000000020', 'base', 'Amber'), ('20000000-0000-0000-0000-000000000020', 'base', 'Cedar'), ('20000000-0000-0000-0000-000000000020', 'base', 'Musk'),
-- Barakkat Oud
('20000000-0000-0000-0000-000000000021', 'top', 'Saffron'), ('20000000-0000-0000-0000-000000000021', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000021', 'top', 'Cinnamon'),
('20000000-0000-0000-0000-000000000021', 'heart', 'Oud'), ('20000000-0000-0000-0000-000000000021', 'heart', 'Rose'), ('20000000-0000-0000-0000-000000000021', 'heart', 'Amber'),
('20000000-0000-0000-0000-000000000021', 'base', 'Sandalwood'), ('20000000-0000-0000-0000-000000000021', 'base', 'Vanilla'), ('20000000-0000-0000-0000-000000000021', 'base', 'Musk'),
-- Barakkat Satin Oud
('20000000-0000-0000-0000-000000000022', 'top', 'Rose'), ('20000000-0000-0000-0000-000000000022', 'top', 'Saffron'), ('20000000-0000-0000-0000-000000000022', 'top', 'Bergamot'),
('20000000-0000-0000-0000-000000000022', 'heart', 'Oud'), ('20000000-0000-0000-0000-000000000022', 'heart', 'Jasmine'), ('20000000-0000-0000-0000-000000000022', 'heart', 'Amber'),
('20000000-0000-0000-0000-000000000022', 'base', 'Sandalwood'), ('20000000-0000-0000-0000-000000000022', 'base', 'Musk'), ('20000000-0000-0000-0000-000000000022', 'base', 'Vanilla'),
-- Jean Lowe Immortal
('20000000-0000-0000-0000-000000000030', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000030', 'top', 'Mandarin'), ('20000000-0000-0000-0000-000000000030', 'top', 'Pink Pepper'),
('20000000-0000-0000-0000-000000000030', 'heart', 'Rose'), ('20000000-0000-0000-0000-000000000030', 'heart', 'Jasmine'), ('20000000-0000-0000-0000-000000000030', 'heart', 'Iris'),
('20000000-0000-0000-0000-000000000030', 'base', 'White Musk'), ('20000000-0000-0000-0000-000000000030', 'base', 'Cedar'), ('20000000-0000-0000-0000-000000000030', 'base', 'Amber'),
-- Lovely Cherie
('20000000-0000-0000-0000-000000000031', 'top', 'Cherry'), ('20000000-0000-0000-0000-000000000031', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000031', 'top', 'Raspberry'),
('20000000-0000-0000-0000-000000000031', 'heart', 'Cherry Blossom'), ('20000000-0000-0000-0000-000000000031', 'heart', 'Rose'), ('20000000-0000-0000-0000-000000000031', 'heart', 'Peony'),
('20000000-0000-0000-0000-000000000031', 'base', 'Vanilla'), ('20000000-0000-0000-0000-000000000031', 'base', 'Tonka Bean'), ('20000000-0000-0000-0000-000000000031', 'base', 'Musk'),
-- Kisses of Cherry
('20000000-0000-0000-0000-000000000032', 'top', 'Black Cherry'), ('20000000-0000-0000-0000-000000000032', 'top', 'Bitter Almond'), ('20000000-0000-0000-0000-000000000032', 'top', 'Citrus'),
('20000000-0000-0000-0000-000000000032', 'heart', 'Cherry Liquor'), ('20000000-0000-0000-0000-000000000032', 'heart', 'Rose'), ('20000000-0000-0000-0000-000000000032', 'heart', 'Jasmine'),
('20000000-0000-0000-0000-000000000032', 'base', 'Tonka Bean'), ('20000000-0000-0000-0000-000000000032', 'base', 'Vanilla'), ('20000000-0000-0000-0000-000000000032', 'base', 'Sandalwood'),
-- 9PM
('20000000-0000-0000-0000-000000000040', 'top', 'Apple'), ('20000000-0000-0000-0000-000000000040', 'top', 'Cinnamon'), ('20000000-0000-0000-0000-000000000040', 'top', 'Bergamot'),
('20000000-0000-0000-0000-000000000040', 'heart', 'Lavender'), ('20000000-0000-0000-0000-000000000040', 'heart', 'Orange Blossom'), ('20000000-0000-0000-0000-000000000040', 'heart', 'Rose'),
('20000000-0000-0000-0000-000000000040', 'base', 'Vanilla'), ('20000000-0000-0000-0000-000000000040', 'base', 'Tonka Bean'), ('20000000-0000-0000-0000-000000000040', 'base', 'Amber'),
-- Cloud
('20000000-0000-0000-0000-000000000100', 'top', 'Lavender'), ('20000000-0000-0000-0000-000000000100', 'top', 'Bergamot'), ('20000000-0000-0000-0000-000000000100', 'top', 'Pear'),
('20000000-0000-0000-0000-000000000100', 'heart', 'Coconut'), ('20000000-0000-0000-0000-000000000100', 'heart', 'Praline'), ('20000000-0000-0000-0000-000000000100', 'heart', 'Vanilla Orchid'),
('20000000-0000-0000-0000-000000000100', 'base', 'Musk'), ('20000000-0000-0000-0000-000000000100', 'base', 'Blonde Wood'), ('20000000-0000-0000-0000-000000000100', 'base', 'Cashmere'),
-- Sauvage Elixir
('20000000-0000-0000-0000-000000000108', 'top', 'Grapefruit'), ('20000000-0000-0000-0000-000000000108', 'top', 'Cinnamon'), ('20000000-0000-0000-0000-000000000108', 'top', 'Cardamom'),
('20000000-0000-0000-0000-000000000108', 'heart', 'Lavender'), ('20000000-0000-0000-0000-000000000108', 'heart', 'Nutmeg'), ('20000000-0000-0000-0000-000000000108', 'heart', 'Vetiver'),
('20000000-0000-0000-0000-000000000108', 'base', 'Sandalwood'), ('20000000-0000-0000-0000-000000000108', 'base', 'Amber'), ('20000000-0000-0000-0000-000000000108', 'base', 'Patchouli'),
-- Miss Dior
('20000000-0000-0000-0000-000000000107', 'top', 'Blood Orange'), ('20000000-0000-0000-0000-000000000107', 'top', 'Mandarin'), ('20000000-0000-0000-0000-000000000107', 'top', 'Bergamot'),
('20000000-0000-0000-0000-000000000107', 'heart', 'Rose'), ('20000000-0000-0000-0000-000000000107', 'heart', 'Peony'), ('20000000-0000-0000-0000-000000000107', 'heart', 'Lily of the Valley'),
('20000000-0000-0000-0000-000000000107', 'base', 'Musk'), ('20000000-0000-0000-0000-000000000107', 'base', 'Rosewood'), ('20000000-0000-0000-0000-000000000107', 'base', 'Amber'),
-- Khamrah
('20000000-0000-0000-0000-000000000147', 'top', 'Cinnamon'), ('20000000-0000-0000-0000-000000000147', 'top', 'Nutmeg'), ('20000000-0000-0000-0000-000000000147', 'top', 'Bergamot'),
('20000000-0000-0000-0000-000000000147', 'heart', 'Coffee'), ('20000000-0000-0000-0000-000000000147', 'heart', 'Dates'), ('20000000-0000-0000-0000-000000000147', 'heart', 'Praline'),
('20000000-0000-0000-0000-000000000147', 'base', 'Vanilla'), ('20000000-0000-0000-0000-000000000147', 'base', 'Tonka Bean'), ('20000000-0000-0000-0000-000000000147', 'base', 'Amber');
