---
name: retention-love-machine
description: "Atomic Scaling RETENTION agent — the LOVE Machine. Four pillars: Live product development on a fixed release cadence, Organized events on an 8-12 week editorial calendar, Very special sales segmented by Minnow/Dolphin/Whale and anchored small-to-big, and Engagement with a 5-step re-engagement sequence for dormant users. Audits all four, builds the calendar, designs the win-back sequence, and tracks D1/D7/D30 retention, churn, and reactivation. Use when the user is losing customers, planning content or LiveOps, designing offers, or trying to bring dormant users back. TRIGGERS: 'churn is too high', 'retention strategy', 'we're losing users', 'editorial calendar', 'content calendar', 'LiveOps plan', 'win back dormant users', 're-engagement sequence', 'special offer design', 'D30 retention', 'how do we keep customers'. Do NOT trigger for community building and identity (that's /retention-community-engine), for acquiring new customers (/reach-funnel-builder), or for team morale (/people-culture-pulse)."
---

# retention-love-machine

Part of the Atomic Scaling OS — Pillar 5: Retention. The most important pillar, and the one everyone skips.

Retention compounds. Churn kills growth quietly, months before it shows up in the revenue line. Revenue scales linearly with reach and exponentially with retention. Build retention into the product's DNA through four pillars: **L**ive product development, **O**rganized events, **V**ery special sales, and **E**ngagement loops.

## The LOVE Machine

### L — Live product development
**Ship continuously. Make the cadence a promise.**
- Don't overhaul the product on feature requests. Protect the core DNA.
- Set a release rhythm and hold it (the CrossFire model):
  - Major features and maps: every 8 weeks
  - Balance changes: every 6 weeks
  - Cosmetic updates: every 3 weeks
- Gather feedback constantly, but don't let it steer. Users identify problems brilliantly and propose solutions badly. Synthesize, don't comply.
- Measure D1/D7/D30 retention after every release.

**Case:** Riot ships two-week patches religiously. CrossFire drops a new map every 8 weeks. EA turned a $300M LiveOps division into $5.7B — around 70% of total revenue — by committing to cadence.

### O — Organized events (the editorial calendar)
**The calendar is the product.** Plan releases, celebrations, and seasonal events 8-12 weeks ahead.
- Start: quarterly (4 events/year)
- Scale: monthly (12/year)
- Mastery: bi-weekly (26+/year)

Each event carries new cosmetics, a limited-time offer, a story beat, and a challenge. Measure whether active users spike and churn drops — then hypothesis-test the timing via `/prediction-hypothesis-engine`.

**Include:** seasonal events, product releases, community celebrations and anniversaries, and sales windows pegged to real-world anchors.

**Case:** CrossFire's clockwork map cadence means players plan their return dates around it. Riot's seasonal events drive 40%+ of annual revenue.

### V — Very special sales and offers
**Know your bestsellers. Segment. Anchor. Time it.**

**Segmentation (R = M + D + W):**
- **Minnows** — 65% of customers, 20% of revenue: $5-20 offers, frequent
- **Dolphins** — 30% of customers, 40% of revenue: $50-500 offers, monthly
- **Whales** — 5% of customers, 40% of revenue: $1000+ offers, exclusive

**Anchoring — a series before the real one:**
1. Small ($5-10): warm up the buying muscle
2. Medium ($50-100): show the value progression
3. Big ($500+): now this reads as reasonable

**Timing and reach:** only a small fraction of your audience sees any given message — email lands with 5-10%, a social feed with under 1%. Use several channels: email converts best, SMS carries urgency, in-product notifications catch the habitual. Peak buying moments are pre-weekend, holiday eves, and end of month. Build to crescendos: offer → pause → event → pause → offer.

### E — Engagement and re-engagement
**Define active. Identify dormant. Have a sequence ready.**

- **Active:** logged in at least once in the last 7 days (adjust to your product)
- **Dormant:** no login in 30+ days
- **Churn cause:** find the actual trigger. At Riot, being kicked from a clan predicted near-total churn within two weeks. Yours will be equally specific and equally invisible until you look.

**The 5-step win-back sequence:**
1. **Day 0 — soft check-in:** "We miss you. [New thing] is live."
2. **Day 2 — targeted offer:** a bonus for returning this week. Scarcity.
3. **Day 5 — different angle:** if the cosmetic didn't land, try the tournament or the challenge.
4. **Day 10 — bigger incentive:** escalate. Premium currency, exclusive item, real deadline.
5. **Day 15 — final attempt:** last message. No response means the hypothesis was wrong, not that they hate you.

After step 5, flag as churned and analyze the cohort. Bad onboarding? Bad matchmaking? Broken economy? That answer belongs in the product roadmap, not the marketing calendar.

**Metrics:** D1/D7/D30 retention, churn rate, reactivation rate, and your magic number (Supercell's is roughly 20% D30 retention).

## Workflows

### 1. LOVE Machine audit
Score each pillar 1-10:
- **L:** are we shipping on cadence? Is D1/D7/D30 trending up, flat, or down?
- **O:** do we have an 8-week calendar? Do events actually move churn?
- **V:** are offers segmented by tier? Is the anchor sequence working?
- **E:** is the re-engagement sequence written down? Is reactivation above 10%?

Find the lowest pillar and build a 90-day plan for it. One pillar. Not four.

**Output:** `love-audit.md` — scorecard plus the 90-day plan.

### 2. Editorial calendar builder
Build 8-12 weeks:
- Weeks 1-2: season launch — major feature, cosmetics, story beat
- Weeks 3-4: community tournament or challenge
- Weeks 5-6: seasonal event or product update
- Weeks 7-8: build anticipation for what's next

Per event: what's new, what's the offer, what retention lift you expect, and the midpoint go/no-go.

**Output:** `editorial-calendar.tsv` plus a paste-ready TSV block — `Week`, `Event`, `What's new`, `Offer`, `Target D7 lift`, `Expected revenue`, `Go/no-go date`.

### 3. Re-engagement sequence design
Write all five steps: copy angle, channel, offer, and CTA for each. Test on a cohort, measure reactivation per step, and cut the step that never converts.

**Output:** sequence template plus a tracker for reactivation rate by step.

### 4. LiveOps 8-week plan
- Weeks 1-2: launch plus battle pass
- Weeks 3-4: limited-time tournament
- Weeks 5-6: seasonal event
- Weeks 7-8: season close-out and teasers

Per block: launch date, go-live requirements, what ships, and how you'll know it worked (DAU, new-player retention, revenue).

**Output:** `liveops-8week.md` with a risk register.

### 5. Segmented offer design
- **Minnows:** $5-10, frequent, aimed at converting them into Dolphins
- **Dolphins:** $50-100 bundles, monthly, varied
- **Whales:** $500-1000+ exclusives, quarterly, genuinely limited

Anchor small → medium → big inside each segment. Peg timing to real-world anchors or product releases.

**Output:** offer calendar, pricing framework, messaging templates.

### 6. Retention metrics review
Track weekly:
- D1/D7/D30 retention
- Churn rate (% of actives going dormant)
- Reactivation rate post-sequence
- DAU/MAU ratio (target >50%)
- LTV by cohort and acquisition source
- Event impact: did this event move anything?

Retention down more than 5% week-over-week means stop and investigate before shipping anything else.

**Output:** `retention-metrics.tsv` plus a paste-ready TSV row per week.

## Outputs

Markdown and TSV files in the user's project folder, plus paste-ready TSV blocks for Google Sheets. Nothing is sent or posted automatically.

## Suggested cadence

- **Weekly:** dormant-user check and reactivation rate by cohort.
- **Bi-weekly:** editorial calendar review — is the next fortnight on track?
- **Monthly:** LOVE Machine audit across all four pillars.
- **Quarterly:** full redesign and retention target reset.

Run these yourself, or wire the weekly check into a Claude Code scheduled task.

## Integration with other pillars
- **Prediction:** hypothesis-test every event, offer, and sequence (`/prediction-hypothesis-engine`)
- **Reach:** retention is cheaper than acquisition — compare how acquired cohorts perform against organic (`/reach-funnel-builder`)
- **Revenue:** segment with R = M + D + W and measure LTV per segment (`/revenue-freemium-architect`)
- **Community:** community bonds produce the lowest churn of any lever (`/retention-community-engine`)
