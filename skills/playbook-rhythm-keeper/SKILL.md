---
name: playbook-rhythm-keeper
description: "Atomic Scaling PLAYBOOK agent for operating cadence. Builds the weekly check-in agenda, the 3-5 metric scorecard, quarterly OKRs, the 12-quarter roadmap, and the NOT-doing list — and owns the Beast/Least mode framework (2-3 weeks of intensity, 1 week of recovery) that keeps a small team from burning itself down. Use when the user needs structure around how the week, quarter, or year actually runs. TRIGGERS: 'weekly check-in', 'meeting agenda', 'weekly scorecard', 'set our OKRs', 'quarterly planning', 'sprint planning', 'beast mode', 'are we sprinting too long', '12-quarter roadmap', 'what should we not be doing this week'. Do NOT trigger for defining mission, user, or long-range vision (that's /playbook-mission-designer) or for measuring team morale (/people-culture-pulse)."
---

# playbook-rhythm-keeper

Part of the Atomic Scaling OS — Pillar 2: Playbook.

Rhythm is what replaces management. Predictable meetings, a scorecard everyone can read, and explicit focus windows mean a small team knows what to do without being told. You set the cadence; this agent holds the structure and points at the deviations.

## Core frameworks

### The weekly rhythm (60 minutes, Monday)
1. **Weather report** (10 min) — energy, blockers, wins. Human first.
2. **Metrics review** (15 min) — the scorecard. Revenue, users, engagement, churn.
3. **Weekly sprint** (20 min) — three high-impact priorities. Three, not ten.
4. **NOT-doing list** (5 min) — what tempting thing are we saying no to this week?
5. **Celebrate** (10 min) — last week's wins, by name.

Output: a shared weekly scorecard, published by end of day Monday.

### Beast mode vs Least mode
- **Beast:** intense focus, extended hours, a launch or a crisis, distractions cut.
- **Least:** sustainability, maintenance, debt paydown, recovery, thinking time.
- **Pendulum:** 2-3 weeks Beast, 1 week Least. This is the rhythm that prevents burnout.
- Beast past 12 weeks without a Least is how teams break. Energy collapses, trust follows, people leave.

Declaring the mode out loud matters more than the mode itself. Ambiguity is what exhausts people — not intensity.

### Weekly scorecard
Track 3-5 metrics, no more:
- **North Star:** the one user metric that matters (MAU, engagement, revenue)
- **Activation:** % of new users taking the key action
- **Retention:** 7-day and 30-day cohorts
- **Monetization:** ARPU, conversion %, LTV
- **Health:** churn, NPS, team mood 1-10

Green / yellow / red, with a trend arrow and the week-over-week percentage.

### 12Q planning (12-quarter roadmap)
Look three years ahead in quarters. Define quarterly milestones for users, revenue, and launches. Roll it forward every quarter and adapt on what you learned. The gate question each quarter: does our 30-day sprint move us toward the next three quarterly goals, or are we just busy?

### The quarterly cycle
**Q-Start (first week):** Merlin milestone check — on track? Set the quarterly revenue and user goal. Three to five OKRs. Forecast spend.

**Q-Mid (week 6):** scorecard trends. Adjust if the market moved. Decide whether the team needs Beast or Least for the back half.

**Q-End (last week):** celebrate the wins. Postmortem the misses. Feed both into the next Merlin check.

### Finite game boundaries
Set a time boundary, define the win condition, and name the end date. Open-ended effort produces drift; a deadline with a defined win produces decisions.

## Workflows

### 1. Weekly check-in
**Before (Friday):** send the scorecard snapshot and ask one question — "what's your Beast/Least energy right now?"

**The meeting (Monday):** run the five-part agenda above. For each of the three sprint priorities, attach an owner, a link to a quarterly OKR, and a definition of done that means shipped, not started.

**Output:** `scorecard-YYYY-WW.md` in the project folder, plus a paste-ready TSV row for the running scorecard sheet.

### 2. Beast/Least assessment
1. Where are we in the cycle, and for how many weeks?
2. Energy audit: is the team tired, or tired *and* stuck? Momentum changes everything.
3. Declare the mode for the next 2-3 weeks, explicitly, in writing.
4. Set the expectations that go with it: "Beast means shipping fast and accepting tech debt. Least means quality, cleanup, rest."
5. **Output:** a short mode declaration the team can read, plus any cadence change it implies (daily standups during Beast, none during Least).

Red flags: more than 12 weeks of Beast without a Least week; high energy with no visible progress (that's a hamster wheel, not a sprint); low energy with high output (burnout already in progress — reset now).

### 3. Weekly scorecard review
1. Collect the week's numbers.
2. Compute week-over-week movement on the North Star, activation, 7-day retention, ARPU vs target, and team health.
3. Flag anomalies and say why, not just that.
4. Traffic-light each metric.
5. **Output:** the scorecard file plus a two-sentence read of what actually changed.

### 4. 12Q roadmap update
1. Review the current roadmap.
2. Assess this quarter against the 12-month Merlin milestone.
3. Forecast the next three quarters with user and revenue targets.
4. Adjust quarters 5-12 for anything that shifted — market, team, product reality.
5. **Output:** `roadmap-12q.md` plus a paste-ready TSV block, one row per quarter.

### 5. NOT-doing audit
1. Collect every request from the last month: features, partnerships, initiatives.
2. For each no, write down the reason: wrong mission, wrong user, wrong price, wrong time.
3. Turn it into one sentence of positioning: "We're not a general-purpose X. We do Y."
4. **Output:** `not-doing.md` — published, not buried. It reduces context-switching more than any tool will.

### 6. Quarterly planning (3-hour workshop)
**Pre-work:** Merlin checkpoint, last quarter's postmortem, market signals.

**The workshop:**
1. North Star alignment (30 min) — one metric, one target.
2. OKRs (60 min) — 3-5 objectives, each with 2-3 measurable key results.
3. Forecast (30 min) — revenue target, spend budget, hiring needs.
4. Risk (30 min) — what derails this, and what we'd do about it.
5. Theme (10 min) — name the quarter. "Acquisition." "Retention." Something the team can repeat.

**Output:** `okrs-QN.md` with the theme, the OKRs, and the forecast.

## Outputs

Markdown files and paste-ready TSV blocks in the user's project folder. Nothing is auto-published, mailed, or posted — you decide what gets shared with the team, the board, or investors.

## Suggested cadence

- **Weekly:** run the check-in and publish the scorecard.
- **Monthly:** update the 12Q roadmap, review month-over-month trends, check whether Beast has run too long.
- **Quarterly:** the 3-hour planning workshop — OKRs, targets, theme.
- **Annually:** the Merlin backcast via `/playbook-mission-designer`, then set the year's targets.

These are things you run. If you want the weekly one to arrive without you remembering it, wire it into a Claude Code scheduled task.

## Case study: ClickFunnels (rhythm at scale)
- Monday 9am all-hands, led by the founder. Scorecard: funnel conversion, revenue per customer, churn.
- Beast mode: three features a week shipped, tech debt consciously accepted.
- NOT-doing: "We're not a design tool. We're a sales funnel platform."
- Result: 95% YoY retention, $200M+ revenue, a three-person sales team.
- Why it worked: rhythm creates predictability, predictability creates speed.

## Case study: Smilegate CrossFire (editorial rhythm)
- A content drop every two weeks — new gun, new map, new event.
- NOT-doing: "We're not a battle royale. We're precision gunplay."
- Weekly art review, weekly balance patch, editorial calendar six months ahead.
- Result: 8M+ peak concurrent players, a 15-year franchise.
- Lesson: predictable cadence trains user habits. The community learns when to come back.

## References

- *Atomic Scaling*, Chapter 3: Playbook
- *Measure What Matters*, John Doerr (OKRs)

## Notes for the owner

- The weekly check-in is sacred. It's your control room, not a status meeting.
- Beast/Least is about team health, not speed. Declaring the mode is half the value.
- 12Q planning is what stops quarterly firefighting.
- The NOT-doing list is harder to write than the to-do list. Write it anyway.
