-- ============================================
-- MAISON SCENTS — Enrichment Pipeline Migration
-- Option 4: AI-Enriched Global Perfume Catalog
-- Run this in the Supabase SQL Editor
-- ============================================

-- 1. CREATE global_perfume_catalog TABLE
-- Shared enrichment cache — every AI-enriched perfume
-- is stored here and reused by all future searches.

CREATE TABLE IF NOT EXISTS public.global_perfume_catalog (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  search_key text UNIQUE NOT NULL,
  name text NOT NULL,
  brand text NOT NULL,
  concentration text,
  description text,
  top_notes text[] DEFAULT '{}',
  heart_notes text[] DEFAULT '{}',
  base_notes text[] DEFAULT '{}',
  image_url text,
  year_launched integer,
  gender text CHECK (gender IN ('male', 'female', 'unisex')),
  scent_family text,
  source text DEFAULT 'ai_enriched',
  enriched_at timestamptz DEFAULT now(),
  created_at timestamptz DEFAULT now()
);

-- 2. ADD COLUMNS TO products TABLE (if not present)

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'products' AND column_name = 'catalog_id'
  ) THEN
    ALTER TABLE public.products
      ADD COLUMN catalog_id uuid REFERENCES public.global_perfume_catalog(id);
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'products' AND column_name = 'source'
  ) THEN
    ALTER TABLE public.products
      ADD COLUMN source text DEFAULT 'manual';
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'products' AND column_name = 'is_preorder_only'
  ) THEN
    ALTER TABLE public.products
      ADD COLUMN is_preorder_only boolean DEFAULT false;
  END IF;
END $$;

-- 3. ROW LEVEL SECURITY for global_perfume_catalog

ALTER TABLE public.global_perfume_catalog ENABLE ROW LEVEL SECURITY;

-- Anyone can read the global catalog
CREATE POLICY "Anyone can view catalog"
  ON public.global_perfume_catalog
  FOR SELECT USING (true);

-- Only service_role (Edge Functions) can write
-- No INSERT/UPDATE/DELETE policies for anon/authenticated
-- means only service_role key bypasses RLS to write.

-- 4. INDEX for fast lookups
CREATE INDEX IF NOT EXISTS idx_catalog_search_key
  ON public.global_perfume_catalog (search_key);

CREATE INDEX IF NOT EXISTS idx_catalog_name_brand
  ON public.global_perfume_catalog USING gin (
    to_tsvector('english', name || ' ' || brand)
  );

-- ============================================
-- MIGRATION COMPLETE
-- Next: Deploy the enrich-perfume Edge Function
-- ============================================
