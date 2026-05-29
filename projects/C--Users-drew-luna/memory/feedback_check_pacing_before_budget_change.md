---
name: feedback-check-pacing-before-budget-change
description: Always check monthly pacing before changing any campaign budget — a daily cap that looks high vs the monthly approval may have been intentionally bumped to recover underspend
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 7a20a970-db47-43fb-bd04-1f54f0cd9671
---

Never change a campaign budget without first checking its pacing position for the month.

**Why:** Microsoft PMax was at £30/day (above the £24.60/day simple average for £750/mo). Changed it to £23/day without checking — it was intentionally set to £30 to recover 14% monthly underspend. Had to revert.

**How to apply:** Before any budget change, check the campaign's MTD spend vs the monthly approval. If the campaign is behind pace, the elevated daily cap is intentional and should not be touched. Only adjust if the campaign is on pace or overpacing.

Related: [[feedback-budget-source-of-truth]]
