# Session Plan — May 31 2026 (Final)
**Budget:** ~21% weekly usage remaining | **Time:** ~9 hours | **Focus: Contrelle only**

## Context
Full audit circuit ran for Contrelle on 2026-05-30. Offer audit + offer-angles.md are done. Search RSA approval Excel (v1, 17 ads, 8 groups) exists but has never been sent to Kate. Goal today: use offer findings + QS audit to produce a stronger RSA v2, send that to Kate for approval, and close the placement exclusions gap. PMax assets get the same offer-angle treatment.

---

## Block 1 — Placement Exclusions (HIGH, ~45 min)
**Run:** `/placement-optimize safety` then `/placement-optimize lists`
- 7 content label exclusions + master negative placement list
- Log to `context/account-changelog.md`
**Token cost:** ~5-8K

---

## Block 2 — Quality Score Audit (~45 min)
**Why:** QS audit directly identifies which ad groups have low expected CTR and relevance — the exact input needed to prioritise RSA copy work. Without it we're guessing which groups need the most attention.
**Run:** `/quality-score-auditor` for Contrelle
- Note ad groups with low Ad Relevance or Expected CTR
- These become the copy priority for Block 3
**Token cost:** ~6-10K

---

## Block 3 — RSA Refresh v2 + Approval Excel (~1.5-2 hours)
**Why:** v1 Excel was generated before the offer audit. Today we have:
- Offer angles from `/offer-maker` (context/offer-angles.md)
- Offer audit findings (D05 FAIL: no unique mechanism, D09 FAIL: no guarantee)
- QS audit output from Block 2 (which groups need most attention)

**Approach:**
- Prioritise ad groups flagged by QS audit (low Ad Relevance / ECTR)
- Lead with mechanism (how Activgard works), not category labels
- Location DKI where applicable: {LOCATION(City):bladder support}
- No guarantee language — D09 FAIL is a client action, flag in email not in ads
- Generate updated approval Excel: `created/rsas/YYYYMMDD_contrelle-search-v2-approval.xlsx`
- Label clearly as "v2 — revised post offer audit"

**Token cost:** ~12-18K

---

## Block 4 — PMax Text Asset Refresh (~1 hour)
**Why:** Same offer angles apply to PMax. Independent of Kate's sign-off on Search RSAs.
**Inputs:** `context/offer-angles.md` + `context/analysis/offer-audit.md`
**Output:** `created/rsas/YYYYMMDD_contrelle-pmax-assets.txt`
**Token cost:** ~5-8K

---

## Block 5 — Kate Approval Email (~20 min)
**Why:** Get the clock started on sign-off before reports week.
**Action:**
- Short covering email: what she's reviewing (v2, revised copy), what to look for, how to respond
- Attach v2 Excel
- Save to `created/emails/YYYYMMDD-kate-rsa-approval-v2.txt`, copy to clipboard
- Drew sends

**Token cost:** ~2-3K

---

## Total Estimated Token Cost
~30-47K across all 5 blocks. Should fit within 21% remaining.

## Sequence
1. `/placement-optimize safety + lists`
2. `/quality-score-auditor`
3. RSA v2 refresh → generate Excel
4. PMax text asset refresh
5. Kate email

## Deferred (not today)
- Misona /account-changelog — week till reports, no rush
- Allure /lp-auditor deferred modules — next week
- Surrey Fire June 1 bid review — waiting on Tracy
- All other clients — reports week is fresh budget

## Verification
- Placement exclusions confirmed applied (API response or UI check)
- QS audit saved to `context/analysis/quality-score-audit.md`
- RSA v2 Excel exists at `created/rsas/`
- PMax assets saved at `created/rsas/`
- Kate email saved + in clipboard
- All changes logged to `context/account-changelog.md`
