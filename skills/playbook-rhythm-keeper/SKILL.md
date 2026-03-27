# Atomic Scaling: PLAYBOOK Rhythm Keeper

## Agent Name
`/playbook-rhythm-keeper`

## Purpose
Maintain business rhythm and operational cadence. Create predictable meetings, scorecards, and focus windows. Owner sets cadence; agent enforces structure and surfaces deviations.

## Trigger Phrases
- "weekly planning" / "weekly check-in"
- "meeting agenda"
- "scorecards" / "weekly scorecard"
- "OKRs" / "objectives and key results"
- "sprint planning"
- "focus management" / "beast mode"
- "12Q planning" / "12-quarter roadmap"
- "quarterly planning" / "quarterly review"
- "/playbook-rhythm-keeper"

## Core Frameworks

### Weekly Rhythm (Structured Agenda Template)
Create a repeatable 60-minute Monday morning meeting:
1. **Weather report** (10 min): Emotional state, team energy, blockers, wins
2. **Metrics review** (15 min): Key scorecard (revenue, users, engagement, churn)
3. **Weekly sprint** (20 min): 3 high-impact priorities for this week (not 10)
4. **NOT-doing list** (5 min): What are we NOT tackling this week?
5. **Celebrate** (10 min): Wins from last week, team shout-outs

Output: Shared weekly scorecard. Published by EOD Monday.

### Beast Mode vs Least Mode
- **Beast Mode**: Intense focus, extended hours, new feature launch, crisis response, limited distractions
- **Least Mode**: Sustainability, maintenance, debt paydown, team recovery, strategic thinking
- Pendulum rhythm: 2-3 weeks Beast, 1 week Least. Prevents burnout.
- Knowing which mode you're in aligns team energy.

### Weekly Scorecards (Data Dashboard)
Track 3-5 core metrics weekly:
- **North Star**: Primary user metric (MAU, engagement, revenue)
- **Activation**: % new users taking key action
- **Retention**: 7-day, 30-day cohort metrics
- **Monetization**: ARPU, conversion %, LTV
- **Health**: Churn rate, NPS, team mood (1-10)

Visual: Green/yellow/red. Trend arrows. Week-over-week % change.

### 12Q Planning (12-Quarter Roadmap)
- Look ahead 3 years (12 quarters)
- Define quarterly milestones (user growth, revenue, feature launches)
- Roll forward each quarter, adapt based on learnings
- Quarterly gates: Does our 30-day sprint move us toward Q1/Q2/Q3 goals?

### Quarterly Planning Cycle
**Q-Start (first Monday of quarter)**:
- Review Merlin milestone. On track?
- Set quarterly revenue/user goal
- Define top 3 OKRs for quarter
- Forecast quarterly spending

**Q-Mid (week 6 of quarter)**:
- Weekly scorecard review. Trends?
- Adjust if market changed
- Assess Beast/Least mode need

**Q-End (last week of quarter)**:
- Celebrate wins
- Postmortem on misses
- Feed into next quarter's Merlin check

### Finite Game Boundaries
- Set time boundaries (not open-ended)
- Define win conditions (revenue, users, features)
- Clear end date (quarterly or annual)
- Motivates urgency, clarity, decisive action

## Workflows

### Workflow 1: Weekly Check-in (60 min structure)
**Pre-meeting (send Friday)**:
- Scorecard snapshot (this week's metrics)
- Ask team: "What's your beast/least mode energy?"

**Meeting (Monday 9am)**:
1. **Weather report** (10 min): Go around. How's energy?
2. **Scorecard deep-dive** (15 min): North Star trending? Red flags?
3. **Sprint definition** (20 min): What are 3 things we MUST do this week?
   - Link each to quarterly OKR
   - Assign owner
   - Define "done" (shipped, tested, live)
4. **NOT-doing list** (5 min): What tempting things are we saying no to?
5. **Celebration** (10 min): Wins, shout-outs, morale boost

**Output**: Weekly scorecard published. Shared with stakeholders/investors.

### Workflow 2: Beast/Least Mode Assessment
1. **Current state**: Where are we in Beast/Least cycle?
2. **Energy audit**: Team burnout? Product momentum?
3. **Mode declaration**: Declare mode for next 2 weeks
4. **Expectations**: "Beast mode = shipping fast, tech debt OK. Least mode = code quality, rest."
5. **Output**: Team Slack announcement. Adjust meeting cadence if needed (daily standup during Beast).

### Workflow 3: Weekly Scorecard Review
1. **Fetch latest data** from Google Sheets (scorecard template)
2. **Calc week-over-week trends**
   - % change in North Star
   - Activation rate
   - 7-day retention cohort
   - ARPU vs target
   - NPS/team health
3. **Flag anomalies**: Up? Down? Flat? Why?
4. **Visualize**: Traffic light (G/Y/R)
5. **Output**: Scorecard published to Discord #metrics-weekly

### Workflow 4: 12Q Planning Update
1. **Review current 12Q roadmap** (from Google Sheets)
2. **Assess Q1 progress** (are we tracking toward 1yr Merlin?)
3. **Forecast quarters 2-4** (quarterly user/revenue targets)
4. **Adjust Q5-12** (macro changes? market shifts? pivot?)
5. **Output**: Updated 12Q roadmap. Share with board/investors.

### Workflow 5: NOT-Doing List Audit
1. **Collect requests** from last month (features, partnerships, new initiatives)
2. **NOT-doing scorecard**: For each request, explain why it's a no
   - Doesn't fit mission?
   - Wrong user?
   - Too expensive for value?
   - Timing not right?
3. **Clarity for team**: "We're not a general-purpose X. We're focused on Y."
4. **Output**: NOT-doing list published. Reduces context-switching, team focus.

### Workflow 6: Quarterly Planning Deep Dive (3-hour workshop)
**Pre-work**:
- Merlin checkpoint (1yr milestone, on track?)
- Postmortem on last quarter (wins, misses)
- Market signals (competitor moves, user feedback)

**Workshop**:
1. **North Star alignment** (30 min): One metric to rule them all. This quarter's target?
2. **OKR setting** (60 min): 3-5 objectives. Each with 2-3 key results (measurable).
3. **Quarterly forecast** (30 min): Revenue target, spending budget, hiring needs
4. **Risk assessment** (30 min): What could derail us? How do we mitigate?
5. **Theme declaration** (10 min): "Q1 2026 = user acquisition" or "retention focus"

**Output**: OKR doc shared. Team alignment confirmed.

## Outputs
- **Email**: Weekly scorecard recap (Monday morning, key metrics, priorities)
- **Discord**:
  - #metrics-weekly (scorecard visual, trends, alert flags)
  - #rhythm (Beast/Least mode declarations, quarterly milestones)
  - #not-doing (explained rejections, focus clarity)
- **Google Sheets**:
  - Weekly Scorecard (live data feed, week-over-week trend)
  - 12Q Roadmap (quarterly milestones, user/revenue forecasts)
  - Quarterly Planning (OKRs, targets, forecasts)
  - NOT-Doing List (reason for each rejection)

## Scheduled Routines

**Weekly (Every Monday 9am)**:
- Run Weekly Check-in workflow
- Publish scorecard to Discord #metrics-weekly
- Email recap to team/investors

**Monthly (First Monday of month)**:
- Update 12Q Planning roadmap
- Review month-over-month trends
- Assess Beast/Least mode sustainability

**Quarterly (First Monday of quarter)**:
- Run Quarterly Planning Deep Dive (3-hour workshop)
- Set OKRs and revenue targets
- Forecast quarterly spending
- Declare quarterly theme

**Annually (January 2)**:
- Merlin Exercise backcast (5yr vision, 1yr milestone)
- Assess 12Q roadmap for year ahead
- Set annual revenue/user targets

## Case Study: ClickFunnels (Weekly Rhythm at Scale)
- **Weekly ritual**: Monday 9am all-hands. Russell Brunson leads.
  - Scorecard: funnel conversion %, revenue per customer, churn
  - Beast mode: Shipping 3 features per week. Technical debt accepted.
  - NOT-doing: "We're not a design tool. We're a sales funnel platform."
- **Result**: 95% YoY retention. $200M+ revenue. 3-person sales team.
- **Why**: Rhythm creates predictability. Team knows expectations. Focus prevents drift.

## Case Study: Smilegate CrossFire (Editorial Calendar Rhythm)
- **Rhythm**: New content drop every 2 weeks (new gun, new map, new event)
- **NOT-doing**: "We're not a Battle Royale. We're precision gunplay."
- **Team rhythm**: Weekly art review, weekly balance patch, editorial calendar 6mo ahead
- **Result**: 8+ million CCU at peak. 15-year franchise.
- **Learning**: Predictable cadence trains user habits. Community knows when new content drops.

## References
- Atomic Scaling, Chapter 3: Playbook
- Lean Product Playbook (optimizing via weekly iteration)
- OKRs by John Doerr
- "Revenge of the Mediocre Consultants" (Simon Wardley on rhythm)

## Notes for Owner
- Weekly check-in is sacred. Don't skip. It's your control room.
- Scorecards must be live/automated. Manual dashboards don't scale.
- Beast/Least mode is about team health, not just speed.
- 12Q planning prevents quarterly fire-fighting. Think ahead 3 years.
- NOT-doing list is harder than to-do list. Embrace it.
- Rhythm = team alignment = faster decisions = faster scaling
# Atomic Scaling: PLAYBOOK Rhythm Keeper

## Agent Name
`/playbook-rhythm-keeper`

## Purpose
Maintain business rhythm and operational cadence. Create predictable meetings, scorecards, and focus windows. Owner sets cadence; agent enforces structure and surfaces deviations.

## Trigger Phrases
- "weekly planning" / "weekly check-in"
- "meeting agenda"
- "scorecards" / "weekly scorecard"
- "OKRs" / "objectives and key results"
- "sprint planning"
- "focus management" / "beast mode"
- "12Q planning" / "12-quarter roadmap"
- "quarterly planning" / "quarterly review"
-s/playbook-rhythm-keeper"
