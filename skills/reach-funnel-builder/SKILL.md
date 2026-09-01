---
name: reach-funnel-builder
description: "Atomic Scaling REACH agent for acquisition. Designs the full funnel (lead magnet → squeeze → sales page → order bump → one-time offer) with conversion benchmarks and follow-up sequences at every stage, builds the Dream 100 list of distribution PARTNERS and channels, audits the Own/Buy/Earn traffic mix, computes CAC by channel, scores each channel on a five-part rubric, and structures a 12-week growth sprint. Use when the user needs more customers, is designing or fixing a funnel, is choosing where to spend acquisition budget, or is planning partnerships. TRIGGERS: 'build a funnel', 'lead magnet', 'squeeze page', 'landing page', 'upsell', 'follow-up sequence', 'Dream 100 partners', 'traffic strategy', 'CAC by channel', 'which channel should we scale', 'growth sprint', 'our ads aren't working', 'how do we get more leads'. Do NOT trigger for the Dream 100 of people you want to HIRE (that's /people-d100-talents), for pricing and unit economics (/revenue-optimizer), or for keeping the customers you already have (/retention-love-machine)."
---

# reach-funnel-builder

Part of the Atomic Scaling OS — Pillar 4: Reach.

Build systematic funnels, traffic systems, and partnerships that scale revenue without adding headcount. Systems over campaigns; measurement over gut feel.

## Core frameworks

### Hunters vs fishermen
Build systems, don't chase leads. A hunter eats what they kill today. A fisherman builds a net that keeps working while they sleep. Design repeatable, measurable funnel architecture that compounds.

### The Peak Sales Machine funnel
```
Lead Magnet → Squeeze Page (83% conversion)
  → Sales Page + Order Bump (16% conv, 25% bump take rate)
  → One-Time Offer (20% take rate)
  → Follow-up sequence at EACH stage
```
Every stage gets its own follow-up. Most sales happen in the follow-up, not the first touch.

### OBE traffic model
- **Own:** email list, SMS, community. Highest control, highest LTV.
- **Buy:** paid ads, sponsorships. Fastest scale, requires capital.
- **Earn:** partnerships, affiliates, JVs, organic. Slowest, free, most durable.

Start with Earn to build relationships, fund Buy with the revenue, build Own as the long-term moat.

### Dream 100 (partners, not people)
The hundred dream partners, creators, and channels who **already have your target audience**. Systematically build relationships and reverse-engineer their traffic into partnerships. (Chet Holmes, extended by Russell Brunson.)

This is the *distribution* Dream 100. The talent Dream 100 — the hundred people you'd want to hire — lives in `/people-d100-talents`. Same name, two entirely different lists.

### CAC by channel
You cannot allocate budget you haven't measured.

```
CAC = (ad spend + labor) / new customers

Then compare:
- CAC vs LTV        → target LTV > 3x CAC
- CAC by channel    → scale the cheapest working channel first
- CAC payback       → recoup within 6 months
```

Blended CAC hides the truth. A channel at $12 and a channel at $180 average to something that tells you nothing.

### Traffic funnel scorecard
Per channel, track the whole path so you find the break, not just the symptom:
- Clicks / impressions = CTR
- Leads / clicks = lead conversion
- Customers / leads = sales conversion
- Revenue / customers = AOV

### Follow-up funnel
- Most conversions happen in follow-up, not on first touch
- Sequence every stage: lead magnet → squeeze → sales → OTO → evergreen
- Test everything against the `/prediction-hypothesis-engine` loop

### Anchoring
Make a series of smaller offers before the real one. Value perception is relative, and the small yes trains the big one.

## Key case studies
- **Danielle Leslie:** $16M/year as a solo operator on a systematic funnel
- **Russell Brunson (ClickFunnels):** free book → order bump → OTO, built into a funnel empire
- **TCGplayer:** freemium marketplace, acquired by eBay for $295M on funnel-driven growth

## Workflows

### 1. Peak Sales Machine design
Build the funnel step by step:
- **Lead magnet:** what are you giving away? Relevance plus an email capture.
- **Squeeze page:** one value prop, one field. Target 83% conversion.
- **Sales page + order bump:** main offer plus a small add-on. Target 16% conversion, 25% bump take.
- **One-time offer:** the final upsell. Target 20% take.
- **Follow-up:** an email or SMS sequence after every decision point.

**Output:** `funnel-map.md` — the map with conversion targets, copy angles, and sequence outlines.

### 2. Dream 100 partner list
- Identify 100 partners, creators, and channels who already reach your audience
- Tier them: Platinum, Gold, Silver
- Plan outreach per tier — a Platinum partner does not get a cold DM
- Track relationship status and what came of it

**Output:** `dream100-partners.tsv` plus a paste-ready TSV block — `Tier`, `Name`, `Platform`, `Audience size`, `Contact`, `Angle`, `Status`, `Last touch`, `Outcome`.

### 3. Channel scorecard
Rate every channel on the same five criteria, so the comparison is honest:

- **Volume:** how much traffic does it produce, and is it trending up, flat, or down?
- **Quality:** what % converts to leads, and to customers?
- **CAC:** cost per customer on this channel specifically
- **Scalability:** can you 10x the spend and hold the ROI? Yes / no / unknown
- **Sustainability:** does it depend on someone else's algorithm, or on a list you own?

A channel that scores well on CAC but badly on sustainability is rented, not owned. Price that in.

**Output:** `channel-scorecard.md` plus a paste-ready TSV block, one row per channel, with a budget reallocation recommendation. Refresh quarterly.

### 4. OBE traffic audit
Score the mix:
- **Own** (email, SMS, community): target 40-50% of traffic — highest LTV
- **Buy** (paid): target 30-40% — fastest scale
- **Earn** (partnerships, affiliates, organic): target 10-20% — free moat

If Own is under 30%, you're renting your business from an ad platform. If Buy is over 60%, your margins are one auction change away from trouble.

**Output:** traffic health scorecard with rebalancing recommendations.

### 5. Follow-up sequence builder
Design the automations:
- **Post-lead-magnet:** 3-day welcome sequence — build trust, ascend to the product
- **Post-squeeze:** 5-email sales sequence — objections, proof, scarcity
- **Post-purchase:** 7-step onboarding plus upsell — maximize LTV, reduce churn
- **Post-OTO-decline:** 3-email re-offer — different angle, real urgency

**Output:** sequence templates with subject lines, angles, timing, and the metric each step is judged on.

### 6. 12-week growth sprint
Concentrate a growth push instead of dribbling effort across a year:

- **Weeks 1-2 — prep:** warm the list, presell content, confirm partnerships
- **Weeks 3-8 — push:** ads live, daily metrics, 2-3 tests per week
- **Weeks 9-12 — close:** final offers, scarcity, last emails, deep data review

Milestones that decide whether the sprint is working:
- End of week 2: pre-launch audience size, partnerships confirmed
- End of week 8: total leads, CAC by channel, best-performing creative
- End of week 12: customers, revenue, early LTV signal, plan for the next sprint

**Output:** `growth-sprint.md` — the plan plus a weekly progress tracker.

### 7. Funnel scorecard
Track conversion at every step against the benchmarks:
- Lead magnet → squeeze: 83%
- Squeeze → sales page: 80%+
- Sales page → purchase: 16%
- Order bump take rate: 25%
- OTO take rate: 20%

Find the single worst gap versus benchmark. That's the only thing worth working on this month.

**Output:** `funnel-scorecard.md` plus a paste-ready TSV row per review, with the bottleneck named and one hypothesis to test.

## Outputs

Markdown and TSV files written into the user's project folder, plus paste-ready TSV blocks for Google Sheets. Nothing is sent, posted, or automatically refreshed — you decide what to share.

## Suggested cadence

- **Bi-weekly:** funnel audit — conversion versus benchmark, one copy test.
- **Monthly:** Dream 100 outreach review, follow-up sequence performance.
- **Quarterly:** channel scorecard refresh, OBE rebalance, CAC/LTV check against the `/revenue-optimizer` targets.

Run these yourself, or wire the bi-weekly audit into a Claude Code scheduled task.

## Integration with other pillars
- **Prediction:** every funnel change is a hypothesis with a kill threshold. Use `/prediction-hypothesis-engine`.
- **Revenue:** LTV/CAC targets and pricing live in `/revenue-optimizer`; use M/D/W segmentation to design tiered offers.
- **Retention:** follow-up should re-engage customers, not just convert them once. See `/retention-love-machine`.
