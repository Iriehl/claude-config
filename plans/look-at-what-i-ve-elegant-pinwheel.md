# Workflow & Tooling Improvement Plan

## Context

Drew manages 4 PPC clients (Allure, Misona, Surrey Fire, Contrelle) across Google Ads, Microsoft Ads, GMC, GTM, and two Shopify stores. Session history shows ~20+ sessions in a single day (2026-05-31), most of them cold-starts for individual skill runs or planning meta-sessions. That pattern is the primary driver of high token usage - not the work itself, but the overhead of re-establishing context for every single task.

The goal is: fewer, heavier sessions; more data available without Claude doing the fetching; and the right APIs wired up so we stop doing manually what a tool can do faster.

Drew is self-taught, no agency background, no mentor. There are likely whole task categories not yet on the radar.

---

## Part 0 - PPC Task Inventory (What the Job Actually Covers)

Organized by area. Items marked [DOING] are confirmed in session history. Items marked [GAP] are things not yet in the workflow.

### Google Ads - Account Health & Monitoring

- [DOING] Keyword audits (QS, match type, duplicates)
- [DOING] Search term review + negative adds
- [DOING] Placement exclusions (brand safety)
- [DOING] Budget pacing checks
- [DOING] Bidding strategy audits
- [DOING] Account changelog review
- [GAP] **Auction Insights monitoring** - monthly pull showing competitor IS, overlap rate, position above rate. Should be in every monthly report. You mentioned this as a known gap.
- [GAP] **Impression Share trend tracking** - not just "are we limited?" but IS over time. Lost IS to Budget vs Lost IS to Rank are different problems. Budget = spend more. Rank = fix QS or bids.
- [GAP] **Disapproved ads check** - ads can get disapproved silently after an edit. No alert. Need a regular check. Google Ads API can pull all non-ENABLED policy statuses.
- [GAP] **Ad strength monitoring** - RSA asset performance labels (Best, Good, Low) in Google Ads. Individual asset pull rates. Tells you which headlines are actually serving.
- [GAP] **Automated rules / scripts alerting** - Google Ads scripts can send email alerts when cost spikes, CTR drops, conversion rate falls below threshold. Currently you find problems reactively.
- [GAP] **Bid simulator data** - before changing a tROAS or tCPA target, the bid simulator shows estimated volume/cost tradeoff. Currently targets are changed based on judgment only.

### Google Ads - Campaign Optimisation

- [DOING] RSA creation and iteration
- [DOING] Negative keyword management (shared lists)
- [DOING] Placement exclusions
- [DOING] Geo/schedule/device bid adjustments (via skill)
- [DOING] PMax asset refresh
- [GAP] **Keyword expansion from search terms** - when a search term converts well and isn't a keyword, add it as exact/phrase. Currently the search term auditor flags these but is it being actioned?
- [GAP] **Seasonality adjustments** - Smart Bidding doesn't know about your sale dates, Black Friday, seasonal peaks. You can manually tell it "expect +40% conversion rate this weekend" via the seasonality adjustment tool. It ignores the 1-2 week data anomaly and reverts after. Huge for ecom clients during sales.
- [GAP] **Ad schedule analysis** - which hours/days drive ROAS vs drain budget? Not just bid adjustments but "should this campaign pause on Sunday mornings?" Currently there's no hourly breakdown review in the workflow.
- [GAP] **Experiments / Drafts** - A/B testing at campaign level. Split test a tROAS change before committing. Test a new landing page. Test broad match expansion. Currently all changes are live with no control group.
- [GAP] **Value rules** - apply a multiplier to conversion values based on audience (e.g. "new customers are worth 1.5x"). Currently conversion values are flat per SKU. Supports the 80/20 NCA strategy for Allure.
- [GAP] **Customer Match as bidding signal** - not just for audience exclusion/targeting but as a Smart Bidding signal so Google knows when a known customer is in the auction.

### Google Shopping / PMax

- [DOING] PMax asset group management
- [DOING] PMax placement exclusions
- [DOING] Shopping product performance analysis
- [GAP] **PMax search category insights** - Google shows what search categories PMax is serving in the Insights tab. Not accessible via API easily but visible in UI. Tells you if PMax is cannibalizing brand or going off-topic.
- [GAP] **PMax audience signal review** - are the audience signals you set at launch still the right ones? They drift. Review quarterly.
- [GAP] **Shopping custom labels strategy** - tagging products by margin tier, price tier, bestseller status so you can segment campaigns and apply different ROAS targets. Currently all products likely in one campaign with flat targets. High-margin products and low-margin products are treated identically.
- [GAP] **Product title optimisation** - Shopping titles are the keyword. "Blue bath mat" vs "Non-slip Bath Mat 50x80cm Charcoal - Machine Washable" are completely different in Shopping auction relevance. Feed title testing is a legitimate discipline.
- [GAP] **Price competitiveness report** - GMC shows where your prices are above/below competitors in the Shopping auction. If you're 20% above market on a product, no bid optimization saves that campaign.
- [GAP] **Supplemental feeds** - override specific feed attributes (title, custom labels, sale price) without touching the main feed. Lets you test title changes or run promotions without asking the client to edit their Shopify.

### Google Merchant Center

- [DOING] Disapproval checking (manual, reactive)
- [DOING] Feed uploads/edits
- [GAP] **Free listings** - organic Shopping. GMC serves products in the free Shopping tab even without an ads campaign. Are free listing impressions and clicks being tracked?
- [GAP] **Merchant promotions** - "10% off" annotations that appear directly on Shopping ads as a badge. Requires a GMC promotion feed. High CTR impact for ecom clients running sales.
- [GAP] **Shipping speed annotations** - "Get it by Thursday" in Shopping ads. CTR and conversion rate lift, especially vs Amazon. Requires accurate shipping data in GMC.
- [GAP] **Return policy annotations** - "Free returns" badge on Shopping ads. Policy needs to be set in GMC, not just on the website.
- [GAP] **Best Sellers report** - GMC shows which of your products are top sellers in the Shopping category overall. Useful for knowing where to push budget.
- [GAP] **Product reviews** - star ratings on Shopping ads. Need to apply to Google's review syndication program or use a third-party reviews partner. High trust signal.

### Audiences & Remarketing

- [DOING] Customer Match (partially - overdue for Allure)
- [DOING] RLSA (remarketing lists on Search) - 29 segments for Surrey Fire confirmed
- [GAP] **Dynamic remarketing** - showing ads with the specific product a user viewed. Requires the GMC feed linked to the remarketing tag. Different from generic remarketing. Relevant for Allure and Misona (ecom).
- [GAP] **Similar audiences / Lookalike** - Google's equivalent of Facebook lookalikes. Build from Customer Match or remarketing lists. "People like your existing customers."
- [GAP] **Custom intent audiences** - audience of "people who searched for X" or "visited competitor URLs." Build in Audience Manager. Useful for Display/PMax signals.
- [GAP] **Audience exclusions on prospecting campaigns** - exclude existing customers from top-of-funnel campaigns so you're not paying for brand-loyal users in acquisition campaigns.

### Attribution & Tracking

- [DOING] Conversion tracking audits (tracking-specialist skill)
- [DOING] Enhanced conversions setup
- [DOING] Consent mode monitoring
- [GAP] **Attribution model analysis** - you're likely on data-driven attribution. What does the assist report show? Are some campaigns doing heavy assist work but looking like poor performers on last-click? This affects which campaigns you pause.
- [GAP] **Conversion delay reporting** - how many days between click and purchase? If it's 5 days and you're checking weekly, you're evaluating last week's campaigns on incomplete data. ROAS looks low until day 7+.
- [GAP] **Cross-device conversion tracking** - are users clicking on mobile and buying on desktop? Google Ads reports this if Enhanced Conversions is set up. Affects how mobile bid adjustments are evaluated.
- [GAP] **Store visit conversions** - Google can measure physical store visits from ad clicks. Relevant for Surrey Fire if they have a physical office/showroom.

### Microsoft Ads

- [DOING] Surrey Fire campaigns (manual + some scripts)
- [GAP] **LinkedIn profile targeting** - unique to Microsoft Ads. Can target by job title, company, industry. Useful for Surrey Fire B2B (facilities managers, building managers).
- [GAP] **Microsoft Audience Network** - native advertising on MSN, Outlook, LinkedIn feed. Different from Search. Useful for brand awareness.
- [GAP] **UET tag audit** - is Microsoft's tracking tag (Universal Event Tracking) properly set up for Surrey Fire and Contrelle? Are conversion goals defined correctly?
- [GAP] **Automated import from Google Ads** - Microsoft has a "Import from Google Ads" wizard that keeps the two accounts in sync on a schedule. Better than manual exports.

### Reporting & Communication

- [DOING] Monthly HTML performance reports
- [DOING] Account changelog
- [GAP] **Auction insights in monthly reports** - you confirmed this is missing. Should be a standard section.
- [GAP] **Client-accessible dashboard** - currently the only reporting is the monthly email attachment. Clients can't see anything in between. Looker Studio (free) connected to Google Ads gives clients a live view if they want it. Reduces "how are things going?" emails.
- [GAP] **Proactive anomaly alerts** - currently problems are found during audit sessions. An automated check (Google Ads script or scheduled task) that emails you if cost spikes 50%+ day-on-day, conversion rate drops below a threshold, a campaign goes over budget mid-month.

### Strategy & Planning

- [DOING] Account strategy (strategy-specialist skill)
- [DOING] Budget planning
- [GAP] **Keyword opportunity analysis** - Keyword Planner for finding new terms, estimating volume before a campaign expansion. Currently done reactively (search terms -> keywords) but not proactively for new services.
- [GAP] **Competitor ad monitoring** - you have the competitor-scraper skill (DataForSEO) but it's not in a regular workflow. Monthly or quarterly check on what competitors are saying in their ads.
- [GAP] **Landing page test planning** - for clients with conversion rate problems, a structured LP test (current vs new) with experiment splits. Currently LP work is recommendations, not tested.
- [GAP] **Lifetime value informed bidding** - what is a customer worth in year 2, not just purchase 1? For Allure especially (bedding/bath - repeat purchase category), a £50 first purchase might be worth £200 LTV. That changes what you're willing to pay for a new customer.

---

## Part 0b - Deep Dives on Priority Gaps

### Seasonality Adjustments

**What it is:** A manual override that tells Smart Bidding "expect X% more/fewer conversions on these dates." Google's algorithm uses 1-2 weeks of data to predict behaviour. During a sale or seasonal spike, it will see the spike, panic that its model is wrong, and cut bids. Then the spike ends and it overshoots. Seasonality adjustments prevent this.

**When to use:** Black Friday weekend, any Allure/Misona sale event, January clearance, Mother's Day (bath/bedroom products), any client-told-you "we're running a promo this week."

**How to set up:** Google Ads UI > Tools > Bid Strategies > Seasonality Adjustments. Set date range, expected conversion rate change %, and which campaigns to apply to. Takes 2 minutes.

**Skill opportunity:** Add a section to business.md per client with planned sale dates for the year. Before each event, set the seasonality adjustment. After each event, log whether the estimate was close (refine for next time).

---

### Shopping Custom Labels Strategy

**What it is:** Custom labels are 5 free-text fields (label0-label4) you can set on any product in your GMC feed. Google Ads uses them to segment campaigns and apply different bid targets per segment.

**Why it matters:** A £200 cashmere throw and a £9 face cloth in the same campaign with the same 500% tROAS target means the face cloth is probably eating budget at terrible ROAS while the throw is under-bidding. Segmenting by margin tier fixes this.

**The strategy for Allure/Misona:**

Step 1 - define segments (work with client to get margin data):
- Tier A: margin > 50% - bid aggressively, lower ROAS target
- Tier B: margin 30-50% - standard targets
- Tier C: margin < 30% - conservative, higher ROAS target or exclude from PMax

Step 2 - apply via supplemental feed (not main feed):
- Build a spreadsheet: product ID | custom_label_0 (margin tier)
- Upload as supplemental feed in GMC
- Main feed untouched - client doesn't need to change anything

Step 3 - structure Google Ads campaigns/asset groups by label:
- PMax: create separate asset groups per tier with different ROAS targets
- Shopping: create campaign per tier

**Immediate action for Allure:** We already know from product intelligence that bath mat sets have 787% ROAS and robes have £5.19 CPA. That knowledge should be encoded as custom labels and bid targets, not just kept in a markdown file.

---

### Conversion Delay / Time Lag Analysis

**What it is:** The time between a click and a conversion. For ecom, most purchases happen within 1-2 days but some take 7-14 (research-heavy items, higher price points).

**Why it matters:** If Allure's average purchase takes 5 days after click, and you're looking at last week's data today, 40%+ of conversions from last week haven't been recorded yet. The campaign looks terrible. You make changes. The real data comes in. You've broken something that was working.

**How to pull it:** Google Ads UI > Tools > Attribution > Time Lag report. Shows distribution of days 0-30+ between click and conversion. Also available via GAQL: `conversion_action`, `conversion_lag_days` segment.

**What to do with it:**
- If most conversions happen within 3 days: use a 7-day evaluation window (safe buffer)
- If conversion lag is 7-14 days: never evaluate a campaign change made less than 14 days ago
- Add this as a note in business.md per client: "Allure conversion lag: median X days. Do not evaluate changes until Y days have passed."

**Skill opportunity:** Add a conversion delay GAQL query to the gads-context skill output so it's always available when auditing.

---

### LinkedIn Targeting for Surrey Fire (Microsoft Ads)

**What it is:** Microsoft Ads is the only platform that can target Search and Audience ads by professional profile data (job title, company, industry, seniority) via the LinkedIn integration.

**Why it matters for Surrey Fire:** Surrey Fire's customers are facilities managers, health & safety officers, building managers, and housing association procurement teams. These people are hard to target on Google (their intent searches look the same as a residential homeowner). On MADS, you can layer LinkedIn job title targeting directly.

**How to set up:**
1. In Microsoft Ads, navigate to the Audiences section
2. Create a LinkedIn Profile Targeting audience - select: Industry (Building/Construction, Real Estate, Government), Job Title (Facilities Manager, Health and Safety, Fire Safety, Building Manager, Operations Manager)
3. Apply as a bid modifier layer on Surrey Fire Search campaigns (start at +20-30%)
4. Alternatively: run Audience Network campaigns (native/display) targeted purely at this segment - lower intent but broader reach at lower CPCs

**Realistic impact:** MADS CPCs are already lower than Google. Adding LinkedIn job title layering means you're reaching the right person at the right time for less money. This is a legitimate competitive advantage.

---

### Feed Updates - Supplemental Feeds as the Solution

**The problem:** Clients manage product feeds slowly. Shopify is the source of truth. Waiting for a client to update their Shopify title to be Shopping-optimised takes weeks.

**The solution - supplemental feeds:**
- A supplemental feed is a separate spreadsheet you upload to GMC that overrides specific attributes without touching the client's main feed
- You control it entirely - client never needs to be involved
- Scope: title rewrites, custom labels, sale prices, promotional text, colour/size standardisation

**For Allure/Misona:**
1. Once Shopify MCP is wired: pull product list with IDs via `list-products`
2. Build a supplemental feed spreadsheet: product ID | improved title | custom_label_0 (margin tier)
3. Upload to GMC as supplemental feed with merge rules (supplemental overrides main)
4. Update supplemental feed monthly without asking client

**This eliminates:** "Can you update the product title in Shopify?" conversations entirely.

---

## Part 1 - Session Efficiency (No New Tools, Immediate)

These don't require any setup. They change how sessions are used.

### 1a. Stop one-skill-per-session

**The problem:** Today's log shows gads-context run in 4 separate sessions (03:17, 03:20, 03:29, 03:32), then audit chains in more separate sessions. Every cold start costs ~3-5K tokens just in context loading before any work happens.

**The fix:**
- Run all 4 gads-context pulls in ONE session using the hub root, then /compact and continue
- Chain related audits (keyword + search-term + placement) in one session per client with /compact between skills
- Reserve separate sessions for genuinely unrelated tasks only

### 1b. No planning meta-sessions

Sessions titled "Skills review and priorities", "Session prioritization", "Weekly limit focus planning" are pure overhead. Planning happens at the top of a working session, not its own session.

### 1c. Batch gads-context refresh (script, not Claude)

Build a PowerShell script at `C:\Users\drew\luna\scripts\refresh-all-context.ps1` that loops through all 4 client directories and runs gads-context via the ppcos CLI. Runs unattended - no Claude session needed. Schedule it weekly via Windows Task Scheduler.

Output: fresh CSVs in all 4 `context/google-ads/` folders before you start your Monday session.

---

## Part 2 - New MCP Integrations

### 2a. Shopify MCP (HIGH PRIORITY - already connected)

**The Shopify MCP server is already live in this Claude Code instance** (server ID: 5fde99b3). It just needs to be pointed at Allure and Misona stores.

Setup required:
- Get Shopify API credentials for Allure store (generate a private app token in Shopify Admin > Apps > Develop apps)
- Same for Misona
- Configure via `mcp__5fde99b3__switch-shop`

What this unlocks immediately:
- **ROAS validation**: Pull actual Shopify revenue vs Google Ads reported conversion value
- **Customer Match upload**: Export customer emails -> hash -> upload to Google Ads (overdue for Allure)
- **AOV benchmarking**: Google Ads reported AOV vs Shopify actual per product
- **NCA tracking validation**: Compare Shopify new customer orders against Google Ads NCA numbers

### 2b. Google Merchant Center API

No native MCP, but Content API v2.1 uses the same OAuth credentials already in .env.

Build a `gmc-context` skill that pulls:
- Product disapprovals and statuses -> `context/gmc/product-issues.csv`
- Feed health summary -> `context/gmc/feed-health.md`
- Price competitiveness data (where available)

Merchant IDs need confirming (not in any config files currently).

### 2c. Microsoft Ads - Formalise the Workflow

Currently ad-hoc. Surrey Fire active, Contrelle off.

- Build `mads-context` skill: pull campaigns, ads, keywords -> `context/microsoft-ads/` CSVs
- Add to weekly batch refresh script
- Set up automated Google Ads -> Microsoft Ads import sync for Surrey Fire

---

## Part 3 - New Skills to Build

### 3a. Customer Match Upload Skill

Pulls Shopify customer list -> hashes emails -> uploads to Google Ads Customer Match. Overdue for Allure. Also enables value rules and audience signals.

Requires: Shopify MCP wired + Customer Match enabled on account.

### 3b. Weekly Account Brief Skill

Replaces planning meta-sessions. Runs at start of week, produces one brief covering all 4 clients:
- Budget pacing
- Outstanding actions from memory files
- GMC disapprovals (once 2b built)
- One priority action per client

Output: `context/weekly-brief-YYYY-MM-DD.md`

### 3c. Auction Insights Skill

Monthly GAQL pull of auction insights data (competitor IS, overlap rate, position above rate) per client. Should feed directly into the monthly report commentary section.

### 3d. GMC Health Check Skill

Wraps Content API calls. Pulls disapprovals, feed errors, shipping issues. Flags price competitiveness gaps.

---

## Part 4 - Gaps to Prioritise in Actual Account Work

Based on the task inventory above, these are the highest-leverage gaps not yet being addressed:

1. **Auction insights** - simple to add to monthly reports, immediate credibility + insight
2. **Seasonality adjustments** - Black Friday / sale events for Allure and Misona, no cost, just knowledge
3. **Shopping custom labels** - margin-based segmentation for Allure PMax. Different ROAS targets for high/low margin products
4. **Merchant promotions** - sale badge on Shopping ads for Allure/Misona, requires GMC setup
5. **Conversion delay analysis** - are you evaluating last week on incomplete data? Run a time lag report
6. **LinkedIn targeting on MADS** - Surrey Fire B2B targeting (facilities managers) is a MADS unique advantage not being used
7. **Dynamic remarketing** - Allure/Misona ecom, product-level remarketing to cart abandoners and browsers

---

## Implementation Order

| Priority | Task | Effort | Unblocked by |
|----------|------|--------|--------------|
| 1 | Change session habits (1a, 1b) | 0 - behaviour change | Nothing |
| 2 | Wire Shopify MCP for Allure + Misona | 1 hr | Admin access (you have it) |
| 3 | Build refresh-all-context.ps1 batch script | 1 hr | Nothing |
| 4 | Auction insights GAQL + add to monthly report | 1 hr | Nothing - start this month |
| 5 | Customer Match upload skill | 2 hr | Shopify MCP wired |
| 6 | GMC Node script / gmc-context skill | 2-3 hr | Merchant IDs confirmed |
| 7 | Weekly account brief skill | 2 hr | Nothing |
| 8 | MADS formalisation + Google import sync | 2 hr | Nothing |
| 9 | Seasonality adjustments guide in business.md | 30 min | Nothing - add sale dates |

---

## What to Skip / Deprioritise

- **GA4 API**: Google Ads is source of truth, confirmed lowest priority
- **Scheduled autonomous Claude sessions**: token cost too high; batch script (no Claude) is right for data refresh
- **Looker Studio dashboards**: only worth it when clients start asking for mid-month visibility
- **Google Ads scripts alerting**: useful but not urgent - manual audit workflow covers it for now
