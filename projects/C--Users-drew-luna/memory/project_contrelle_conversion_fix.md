---
name: project_contrelle_conversion_fix
description: Contrelle GTM conversion value bug — COMPLETE. Per-SKU variables live in GTM, verified on LIVE 2026-05-15
metadata: 
  node_type: memory
  type: project
  originSessionId: 3fb3a09e-215a-4ec6-b286-d2c587139049
---

GTM conversion value fix COMPLETE in two phases.

**Phase 1 (v28, 2026-05-14):** `dlv - item revenue` (old shared variable) summed ALL cart items — all 3 tags fired with full cart total. Fixed by creating 3 per-SKU variables.

**Phase 2 (v31, 2026-05-28):** Revenue variables had `return 0` (not `return undefined`) when SKU not found, and no `.toLowerCase()` on item_id comparison. v30 fixed the CJS trigger variables but NOT the revenue variables — so WooCommerce uppercase SKUs (V01P5 etc.) caused trigger to fire but revenue variable to return 0, overriding the Google Ads default value. Fixed all 3 variables.

**How to apply:** Both fixes done. If a future conversion shows £0 value, suspect: (1) new SKU added without updating revenue variable, (2) WooCommerce dataLayer structure change.

Key facts:
- 3 per-SKU variables: `dlv - item revenue - Sizing Kit/5 Pack/30 Pack` (IDs 36, 37, 38)
- item_ids (lowercase): v01sp (Kit), v01p5 (5 Pack), v01p30 (30 Pack)
- All variables now: `.toLowerCase()` on item_id + `return undefined` fallback + sums all matching items (multi-qty safe)
- Google Ads default values: £8.99 (Kit), £15.99 (5 Pack), £78.99 (30 Pack) — `alwaysUseDefaultValue = False`
