// ============================================
// ENRICH-PERFUME — AI Enrichment Pipeline
// Option 4: Claude AI + Google Image Search
//
// To set secrets, run:
// supabase secrets set ANTHROPIC_API_KEY=your_key
// supabase secrets set GOOGLE_API_KEY=your_key
// supabase secrets set GOOGLE_CSE_ID=your_cx_id
// ============================================

import { createClient } from "https://esm.sh/@supabase/supabase-js@2";

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "POST, OPTIONS",
  "Access-Control-Allow-Headers":
    "apiKey, Authorization, Content-Type, x-client-info",
};

const ANTHROPIC_API_KEY = Deno.env.get("ANTHROPIC_API_KEY") || "";
const GOOGLE_API_KEY = Deno.env.get("GOOGLE_API_KEY") || "";
const GOOGLE_CSE_ID = Deno.env.get("GOOGLE_CSE_ID") || "";

// ── Step A: Normalize search key ─────────────────────────────

function normalizeKey(query: string): string {
  return query
    .toLowerCase()
    .trim()
    .replace(/[^a-z0-9\s-]/g, "")
    .replace(/\s+/g, "-");
}

// ── Step C: Claude AI Enrichment ─────────────────────────────

async function enrichWithClaude(query: string): Promise<any | null> {
  if (!ANTHROPIC_API_KEY) {
    console.error("[Enrich] ANTHROPIC_API_KEY not set");
    return null;
  }

  const userPrompt = `Give me detailed information about the perfume: ${query}

Return a JSON object with exactly these fields:
{
  "name": "string (official product name)",
  "brand": "string (brand/house name)",
  "concentration": "string (e.g. Eau de Parfum)",
  "description": "string (2-3 sentence editorial description, luxury tone)",
  "top_notes": ["array", "of", "note", "names"],
  "heart_notes": ["array", "of", "note", "names"],
  "base_notes": ["array", "of", "note", "names"],
  "year_launched": null,
  "gender": "one of: male, female, unisex",
  "scent_family": "one of: Floral, Woody, Oriental, Fresh, Gourmand, Chypre, Fougere",
  "confidence": 0.95
}

If you do not know this perfume, return:
{ "unknown": true }`;

  for (let attempt = 0; attempt < 2; attempt++) {
    try {
      const res = await fetch("https://api.anthropic.com/v1/messages", {
        method: "POST",
        headers: {
          "x-api-key": ANTHROPIC_API_KEY,
          "anthropic-version": "2023-06-01",
          "content-type": "application/json",
        },
        body: JSON.stringify({
          model: "claude-sonnet-4-20250514",
          max_tokens: 1024,
          system:
            "You are a perfume expert database. Return only valid JSON, no markdown, no explanation, no code blocks.",
          messages: [{ role: "user", content: userPrompt }],
        }),
      });

      if (!res.ok) {
        const errBody = await res.text();
        console.error(`[Enrich] Claude API ${res.status}:`, errBody);
        return null;
      }

      const data = await res.json();
      const text = data.content?.[0]?.text || "";

      // Strip any markdown fences just in case
      const cleaned = text
        .replace(/```json\n?/g, "")
        .replace(/```\n?/g, "")
        .trim();
      const parsed = JSON.parse(cleaned);

      if (parsed.unknown) return null;
      if (typeof parsed.confidence === "number" && parsed.confidence < 0.6)
        return null;

      return parsed;
    } catch (err) {
      console.error(`[Enrich] Claude attempt ${attempt + 1} failed:`, err);
      if (attempt === 0) continue; // retry once
      return null;
    }
  }

  return null;
}

// ── Step D: Google Image Search ──────────────────────────────

async function searchImage(
  name: string,
  brand: string
): Promise<string | null> {
  if (!GOOGLE_API_KEY || !GOOGLE_CSE_ID) {
    console.warn("[Enrich] Google API keys not set, skipping image search");
    return null;
  }

  const query = `${name} ${brand} perfume bottle`;
  const params = new URLSearchParams({
    key: GOOGLE_API_KEY,
    cx: GOOGLE_CSE_ID,
    q: query,
    searchType: "image",
    num: "1",
    imgSize: "large",
    safe: "active",
  });

  try {
    const res = await fetch(
      `https://www.googleapis.com/customsearch/v1?${params.toString()}`
    );

    if (!res.ok) {
      console.error(`[Enrich] Image search ${res.status}:`, await res.text());
      return null;
    }

    const data = await res.json();
    return data.items?.[0]?.link || null;
  } catch (err) {
    console.error("[Enrich] Image search error:", err);
    return null;
  }
}

// ── Main Handler ─────────────────────────────────────────────

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

  // Create admin Supabase client
  const supabaseUrl = Deno.env.get("SUPABASE_URL") || "";
  const supabaseKey = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY") || "";
  const supabase = createClient(supabaseUrl, supabaseKey);

  let body: any;
  try {
    body = await req.json();
  } catch {
    return new Response(JSON.stringify({ error: "Invalid JSON" }), {
      status: 400,
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });
  }

  const query = body.query?.trim();
  if (!query || query.length < 2) {
    return new Response(
      JSON.stringify({ error: "Query must be at least 2 characters" }),
      {
        status: 400,
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      }
    );
  }

  // ── Step A: Normalize ──
  const searchKey = normalizeKey(query);

  // ── Step B: Check cache ──
  const { data: cached, error: cacheErr } = await supabase
    .from("global_perfume_catalog")
    .select("*")
    .eq("search_key", searchKey)
    .maybeSingle();

  if (cacheErr) {
    console.error("[Enrich] Cache lookup error:", cacheErr);
  }

  if (cached) {
    console.log(`[Enrich] Cache hit: "${query}" -> ${cached.name}`);
    return new Response(JSON.stringify({ ...cached, source: "cache" }), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });
  }

  // ── Step C: AI Enrichment ──
  console.log(`[Enrich] Cache miss: "${query}" — calling Claude API`);
  const enriched = await enrichWithClaude(query);

  if (!enriched) {
    return new Response(
      JSON.stringify({ error: "Perfume not found", unknown: true }),
      {
        status: 404,
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      }
    );
  }

  // ── Step D: Image Search ──
  const imageUrl = await searchImage(enriched.name, enriched.brand);

  // ── Step E: Save to global cache ──
  const catalogEntry = {
    search_key: searchKey,
    name: enriched.name,
    brand: enriched.brand,
    concentration: enriched.concentration || null,
    description: enriched.description || null,
    top_notes: enriched.top_notes || [],
    heart_notes: enriched.heart_notes || [],
    base_notes: enriched.base_notes || [],
    image_url: imageUrl,
    year_launched: enriched.year_launched || null,
    gender: enriched.gender || "unisex",
    scent_family: enriched.scent_family || null,
    source: "ai_enriched",
    enriched_at: new Date().toISOString(),
  };

  const { data: inserted, error: insertErr } = await supabase
    .from("global_perfume_catalog")
    .insert(catalogEntry)
    .select()
    .single();

  if (insertErr) {
    console.error("[Enrich] Failed to cache:", insertErr.message);
    // Return enriched data anyway, just not cached
    return new Response(
      JSON.stringify({ ...catalogEntry, id: null, source: "ai_enriched" }),
      {
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      }
    );
  }

  // ── Step F: Return ──
  console.log(
    `[Enrich] Enriched & cached: ${enriched.name} by ${enriched.brand}`
  );
  return new Response(JSON.stringify({ ...inserted, source: "ai_enriched" }), {
    headers: { ...corsHeaders, "Content-Type": "application/json" },
  });
});
