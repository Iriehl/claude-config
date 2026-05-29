---
name: Known Claude errors and uncertainties from 2026-04-12 pre-launch session
description: Three things Claude got wrong or is uncertain about — check before acting on these in future sessions
type: feedback
originSessionId: e40d5e4f-8fea-4f14-94d8-231b28eed4e6
---
Three items flagged by user to revisit and verify — do not act on these without checking current state first:

## 1. GP references location in Brand ad
Claude initially identified "Recommended by GPs & Physios" and "A GP Ran 9 Miles Completely Dry" as being in the DISAPPROVED Brand ad. They are actually in the APPROVED ad. The approved ad is currently passing review but could get flagged once live. Plan: fix during ad copy iteration post-launch.

**Why:** Misread the asset CSV during the session.

## 2. Demand Gen Targeting vs Observation controls — RESOLVED 2026-04-12
Demand Gen audience table shows "Targeting" in a column but there is no Targeting/Observation toggle available (confirmed — selecting audiences shows no "Change targeting setting" option). "Targeting" in Demand Gen means audiences are used as targeting signals, not hard reach restrictions like Search Targeting mode. Max Conversions in Demand Gen serves broadly and uses audiences as inputs. Leave as-is — working as intended.

## 3. GMC re-link suggestion
Claude suggested removing and re-linking GMC as a potential fix when Shopping Products tab showed empty. This was premature — the user correctly held off. The Products tab being empty is expected behaviour for a campaign that has never served. GMC was confirmed linked and products were Active.

**How to apply:** Do not suggest GMC re-linking unless all other options are exhausted and there is clear evidence of a broken connection.
