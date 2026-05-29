---
name: Competitor scraper fallback — Google Ads Transparency Centre
description: When DataForSEO isn't configured, use Chrome DevTools to scrape Google Ads Transparency Centre manually per competitor domain
type: feedback
originSessionId: 1ec6b1b6-da4f-4ca5-a0a0-067d2c8c21c6
---
When `/competitor-scraper` fails due to missing DataForSEO credentials, use the Google Ads Transparency Centre via Chrome DevTools MCP as a fallback.

**Why:** DataForSEO credentials (DATAFORSEO_LOGIN, DATAFORSEO_PASSWORD) are not set up in Surrey Fire's config/.env. The Node.js fetch-ads.js script requires them and will fail.

**How to apply:**
1. Ask user for competitor domains (or get them from auction insights in the Google Ads UI — MCP can't pull auction_insight metrics, that's a developer token permission restriction)
2. Add domains to `config/ads-context.config.json` under `competitors.domains`
3. For each domain navigate to: `https://adstransparency.google.com/?region=GB&domain=DOMAIN`
4. Take screenshots — ad text (headline + description) is visible in the preview cards
5. Read ad text visually from screenshots and write CSVs manually to `context/competitor-ads/DOMAIN.csv`
6. Columns: domain, transparency_url, headline, description, display_url, call_to_action, format, first_shown, last_shown

**MCP limitation:** `metrics.auction_insight_search_*` fields return METRIC_ACCESS_DENIED — cannot pull auction insights via MCP. User must get competitor domains from Google Ads UI Auction Insights tab and paste them in.
