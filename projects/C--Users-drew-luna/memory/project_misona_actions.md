---
name: project-misona-actions
description: "Misona outstanding onboarding actions — prioritised list across client-blocking, Drew-can-do, scheduled, and data gaps"
metadata: 
  node_type: memory
  type: project
  originSessionId: 58eaef7b-c61f-49e1-a18a-886b3f5e2aac
---

Outstanding onboarding items as of 2026-05-30. Last updated 2026-06-09.

## CRITICAL - Client action required (blocking)

1. ~~**GTM migration**~~ - COMPLETE 2026-06-08: Shopify Customer Events pixel live, NCA signal confirmed firing correctly. No further action.
2. ~~**Tracking fixes**~~ - ALL COMPLETE 2026-06-10. Click window 90→30 days, zombie primaries removed/demoted, CM v2 consent defaults verified working (Accept fires gcs=G111, Decline blocks all Google tags). Hard-blocks /search-term-optimizer catalog until resolved.
3. **Re-run /tracking-specialist + /strategy-specialist** after fixes to clear the catalog blocks and get accurate scores.

**Why:** Tracking Attribution 31% and Consent 47% both < 70 — search-term catalog uses inflated conversion data if not fixed. Shopping tROAS block clears once /strategy-specialist scores above 70.

## Completed in meeting (2026-06-09)

- ~~**Customer Match list uploaded**~~ - DONE 2026-06-09 (in client meeting)

## AWAITING CLIENT - SALES CALENDAR (asked in meeting, ~2026-06-12)
- Drew asked Misona for a full-year calendar: sales, planned discounts, seasonal peaks/dips
- Chase if no reply by late June; feeds seasonality adjustments + pricing calendar data gap
- Complement: pull 3-5yr monthly impression history from Google Ads to derive demand curve independently (planned, hub session)

## Drew - can do now

4. Add YouTube Short to PMax asset group via UI: https://www.youtube.com/shorts/dFs_OwaCrac (PMax campaign → Asset groups → Add asset → Video)



4. Send mobile LP client brief (context/analysis/lp-optimize-mobile.md) - P1: sticky ATC theme setting, free shipping bar in cart, Beach Towels review request. Flag express checkout gap for client decision only.
6. /keyword-auditor - DONE (output: context/analysis/keyword-audit.md)
7. /placement-auditor - not yet run
8. /competitive-analyst - no competitors identified yet (business.md gap)
9. Negative keywords comma separation issue - flagged 2026-05-30, not investigated yet
10. ~~June 1 PMax checkpoint~~ - DONE 2026-05-31: PMax tROAS raised 260%->280%, Shopping 200%->220%. Next check: 2026-06-14.

## Completed this session (2026-05-30)

- /lp-auditor full: 62% Needs Attention. Score: Structural 50%, Message Match 80%, Technical 44%, Performance 75%, URL Health 81%, Ecommerce 50%. Report: context/analysis/lp-audit.md
- /lp-optimizer mobile: root causes confirmed (no sticky ATC, 38px variant swatches, 166px header). Revenue opportunity £1,700-4,100/mo. Report: context/analysis/lp-optimize-mobile.md
- Client website domain saved to memory: https://misona.co.uk/ (single domain)
- Global role/scope rule saved: Paid Search Specialist - Google Ads, Microsoft Ads, GMC, GTM only; everything else read-only for context

## Scheduled (date-locked)

9. **tROAS check-in due 2026-06-14** - PMax at 280%, Shopping at 220% as of 2026-05-31. Raise +20% each if actual ROAS still well above targets. PMax cadence: every 2 weeks. Shopping: every 3 weeks.
10. **May monthly report** - generate after June 1 when May data settles; deliver ~June 9. Run `/account-changelog` first (stale - missing May 28 campaign launch). Prerequisites all green except changelog.

## Data gaps - client must provide

11. ~~Loop mat COGS~~ - RESOLVED 2026-05-29: £10.00 confirmed by client
12. Pricing calendar - which months are sale vs full price (Blue BEP swings 3.16x sale to 1.97x full)
13. Confirm COGS includes loaded costs (CleanHub, inbound freight, returns processing)
14. Off White restock timeline + Green variant details (price, COGS, launch date - mid-July launch)

## Minor / informational

15. GMC brand profile claim at merchants.google.com
17. ~~**"12-Month Guarantee" callout**~~ - REMOVED 2026-06-08. Both instances (366620330501 + 366779847318) removed. 10+ eligible callouts remain.
16. GA4 unassigned session spike (+257.6%) - investigate UTM gaps or untagged source

**How to apply:** Check this list at each Misona session start alongside the latest daily memory log. Surface any overdue items (esp. June 1 checkpoint and GTM migration deadline).
