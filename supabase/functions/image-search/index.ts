// Supabase Edge Function — Image Search
// Searches Google CSE for perfume product images server-side.
// Deploy: supabase functions deploy image-search

import { createClient } from "https://esm.sh/@supabase/supabase-js@2";

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "POST, OPTIONS",
  "Access-Control-Allow-Headers": "apiKey, Authorization, Content-Type, x-client-info",
};

const GOOGLE_CSE_KEY =
  Deno.env.get("GOOGLE_CSE_API_KEY") || "AIzaSyAY4alYjFK3dw2sQ3HVLFENIVcubJJBdTY";
const GOOGLE_CSE_ID =
  Deno.env.get("GOOGLE_CSE_ID") || "a78b7fa36996442b9";

// ── Google CSE Search ────────────────────────────────────────

async function searchImage(brand: string, name: string): Promise<string | null> {
  const query = `${brand} ${name} perfume bottle product photo`;
  const params = new URLSearchParams({
    key: GOOGLE_CSE_KEY,
    cx: GOOGLE_CSE_ID,
    q: query,
    searchType: "image",
    num: "3",
    imgSize: "medium",
    imgType: "photo",
    safe: "active",
  });

  try {
    const res = await fetch(
      `https://www.googleapis.com/customsearch/v1?${params.toString()}`
    );

    if (!res.ok) {
      const errText = await res.text();
      console.error(`[ImageSearch] CSE ${res.status}:`, errText);
      return null;
    }

    const data = await res.json();
    const items = data.items || [];

    for (const item of items) {
      const url: string = item.link || "";
      if (url && !url.startsWith("data:") && !url.includes("x-raw-image")) {
        return url;
      }
    }
    return null;
  } catch (err) {
    console.error("[ImageSearch] error:", err);
    return null;
  }
}

// ── Cache URL in DB ──────────────────────────────────────────

async function cacheUrl(supabase: any, productId: string, imageUrl: string) {
  const { error } = await supabase
    .from("products")
    .update({ images: [imageUrl] })
    .eq("id", productId);

  if (error) console.warn("[ImageSearch] DB cache failed:", error.message);
}

// ── Handler ──────────────────────────────────────────────────

Deno.serve(async (req) => {
  // CORS preflight
  if (req.method === "OPTIONS") {
    return new Response(null, { status: 204, headers: corsHeaders });
  }

  if (req.method !== "POST") {
    return new Response(JSON.stringify({ error: "POST only" }), {
      status: 405,
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });
  }

  // Create admin Supabase client for DB caching
  const supabaseUrl = Deno.env.get("SUPABASE_URL") || "";
  const supabaseKey = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY") || "";
  const supabase = createClient(supabaseUrl, supabaseKey);

  const body = await req.json();

  // ── Batch mode: { products: [{ brand, name, productId }] } ──
  if (Array.isArray(body.products)) {
    const products = body.products.slice(0, 10);
    const results: Record<string, string | null> = {};

    for (const p of products) {
      if (!p.brand || !p.name || !p.productId) continue;
      const url = await searchImage(p.brand, p.name);
      results[p.productId] = url;

      if (url) await cacheUrl(supabase, p.productId, url);
      await new Promise((r) => setTimeout(r, 250));
    }

    return new Response(JSON.stringify({ results }), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });
  }

  // ── Single mode: { brand, name, productId } ──
  const { brand, name, productId } = body;
  if (!brand || !name) {
    return new Response(JSON.stringify({ error: "brand and name required" }), {
      status: 400,
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });
  }

  const imageUrl = await searchImage(brand, name);
  if (imageUrl && productId) await cacheUrl(supabase, productId, imageUrl);

  return new Response(JSON.stringify({ imageUrl }), {
    headers: { ...corsHeaders, "Content-Type": "application/json" },
  });
});
