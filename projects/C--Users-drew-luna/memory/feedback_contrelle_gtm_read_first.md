---
name: feedback-contrelle-gtm-read-first
description: HARD RULE — Read context/gtm.md before any Contrelle GTM or tracking work. Also covers when to consult context/ga4.md.
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 55ce25f5-7801-424d-a1f0-e1b170ab1f9f
---

Before doing ANY GTM or conversion tracking work for Contrelle, read `context/gtm.md` first. No exceptions.

**Why:** Months of setup exist — consent mode, enhanced conversions, NCA, per-SKU purchase tags, shared container rules. Starting without reading this file has caused wasted effort and near-mistakes (built consent setup without knowing what was already there, didn't know about the SKU case fix, etc.)

**How to apply:**
- Any question about GTM tags, triggers, variables, consent mode, conversion tracking → read context/gtm.md first
- Any GA4 question → read context/ga4.md first
- If gtm.md is stale (last updated date is old) — update it after the session
- Never treat Contrelle GTM as a blank slate

**The setup in brief (so you can answer questions cold):**

Container: GTM-KMN2SNX | Live: v30 | Workspace: 2 unpublished changes (consent mode)

SHARED container — Google Ads + GA4 scope only. LinkedIn, Microsoft, Adnxs tags are not ours.

Purchase tags (3): Purchase - Sizing Kit, Purchase - 5 Pack, Purchase - 30 Pack
- Type: Google Ads Conversion Tracking
- Triggers: Custom Events using boolean CJS variables filtering by SKU (v01sp, v01p5, v01p30)
- SKUs use .toLowerCase() match (fixed v30 — WooCommerce pushed uppercase)
- Enhanced conversions live: user_data = {{GA4 - User Provided Data}} on all 3
- NCA: New Customer = true hardcoded on Sizing Kit (check 5 Pack + 30 Pack)

Google Tag AW-10858727663: sole remarketing signal, fires on Initialization - All Pages, has user_data config for enhanced conversions

GA4 Configuration: G-4TTKBF2VPB, fires All Pages

Consent mode: NOT live. 2 unpublished workspace changes:
- Trigger: Consent Initialization - All Pages
- Tag: Consent Defaults (Custom HTML, all 4 params denied, 500ms wait)
- BLOCKED: needs consent update tag before publishing. Waiting on Jen to confirm CMP (email sent 2026-05-28). Do not publish workspace until update tag is also built.

Paused (ours): Google Ads Site Tag, Remarketing Tag, Google Ads Conv Tracking - Checkout, GA4 Pre-Fire fix
