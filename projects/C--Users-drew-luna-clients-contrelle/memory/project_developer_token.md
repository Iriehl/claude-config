---
name: Google Ads API developer token — test-level only
description: Developer token in config/.env is test-level; Basic access application was rejected. All API mutation scripts are blocked until resolved.
type: project
originSessionId: 80dcd871-5432-4884-807a-398a264b5685
---
Developer token in `config/.env` is test-level only — can only read data (via ppcos MCP which has its own production token), cannot make mutations.

Basic access application was rejected (April 2026).

**Why:** Affects all mutation scripts: geo-schedule-optimizer, placement-optimizer, mutate-launch-settings.js, and any future optimizer scripts.

**How to apply:** Reapply from MCC account (not client account), using agency/business name and email, with a specific use case: *"Managing Google Ads campaigns for e-commerce clients via automated scripts for bid adjustments, budget changes, and campaign optimisations."* Appeal is available from the same API Center page.

**How to apply:** Until resolved, all campaign changes must be made via Google Ads UI or Google Ads Editor.
