# ─── Deploy Image Search Edge Function ───
# Run this script from the project root:
#   .\deploy-edge-function.ps1

Write-Host "`n=== Deploying Image Search Edge Function ===" -ForegroundColor Cyan
Write-Host ""

# Step 1: Login (opens browser)
Write-Host "Step 1: Logging into Supabase..." -ForegroundColor Yellow
supabase login
if ($LASTEXITCODE -ne 0) {
    Write-Host "Login failed. Please try again." -ForegroundColor Red
    exit 1
}

# Step 2: Link project
Write-Host "`nStep 2: Linking project..." -ForegroundColor Yellow
supabase link --project-ref dcnuxugoycgzbaxbpjbl
if ($LASTEXITCODE -ne 0) {
    Write-Host "Link failed. Check your project reference." -ForegroundColor Red
    exit 1
}

# Step 3: Deploy the function
Write-Host "`nStep 3: Deploying image-search function..." -ForegroundColor Yellow
supabase functions deploy image-search --no-verify-jwt
if ($LASTEXITCODE -ne 0) {
    Write-Host "Deployment failed." -ForegroundColor Red
    exit 1
}

Write-Host "`n=== Done! Edge Function deployed successfully ===" -ForegroundColor Green
Write-Host "The image search will now work automatically when products are viewed." -ForegroundColor Gray
Write-Host ""
