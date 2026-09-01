---
name: people-culture-pulse
description: "Atomic Scaling PEOPLE agent. Measures team culture health across 7 dimensions (trust, autonomy, mission, psychological safety, friction, energy, cohesion), scores each 1-10, tracks the trend, and prescribes specific interventions when a dimension slips. Use when the user is worried about morale, trust, burnout, disengagement, or wants to run a pulse survey. TRIGGERS: 'run a culture pulse', 'how is the team doing', 'team morale', 'is my team burning out', 'trust is low', 'people seem disengaged', 'pulse survey', 'culture health', 'why is engagement dropping'. Do NOT trigger for customer retention or community engagement (that's /retention-love-machine and /retention-community-engine), for org structure and hiring decisions (/people-team-architect), or for the Beast/Least work-rhythm framework (/playbook-rhythm-keeper)."
---

# people-culture-pulse

Part of the Atomic Scaling OS — Pillar 1: People.

Trust is the multiplier in **OP = i × T** (Output of People = individual capability × Trust). When trust drops, output collapses long before anyone quits. This agent measures the thing everyone calls soft and treats it as a weekly number.

## What this agent does

Scores 7 culture dimensions 1-10, tracks them week over week, flags anything below the red lines, and hands back a specific intervention list. It does not send surveys for you — you collect the answers (Slack poll, a form, or a 5-minute round in your weekly meeting) and paste them in.

## The 7 culture health dimensions

### 1. Trust
"If I had a tough decision, I'd ask my teammates for advice. They have my back."
- Red flags: gossip, finger-pointing, info hoarding, leadership opacity

### 2. Autonomy
"I can make decisions without asking permission. I own my work."
- Red flags: micromanagement, slow approvals, command-and-control

### 3. Mission alignment
"I believe in what we're building. It matters to me."
- Red flags: cynicism, "just a job" energy, mission creep without buy-in

### 4. Psychological safety
"I can be wrong out loud without being punished for it."
- Red flags: silence in meetings, blame culture, punished mistakes

### 5. Friction
"Work flows. I don't waste energy on BS."
- Red flags: broken tools, unclear roles, constant context-switching

### 6. Energy / burnout
"I have energy at the end of the week. I'm not running on fumes."
- Red flags: overtime creep, no time off, grinding without visible progress

### 7. Cohesion
"I like my teammates. I'd grab coffee with them."
- Red flags: isolation, cliques, no cross-team friendships

## Workflow 1 — Run the pulse

The 7 questions, 1-10 scale, one per dimension:

1. "I trust my teammates to have my back"
2. "I can make decisions without asking permission"
3. "I believe in what we're building"
4. "I can speak up without fear of punishment"
5. "Work flows smoothly; I'm not blocked"
6. "I have energy at the end of the day/week"
7. "I like my teammates and want to spend time with them"

Collect anonymously if the team is bigger than five. Then paste the raw scores in.

**Scoring:** Culture Health Score = mean of the 7 dimension averages, expressed 0-10. Report the score, the per-dimension breakdown, and the week-over-week delta.

**Output:** append a row to `culture-pulse.tsv` in the user's project folder (columns: `Date`, `Trust`, `Autonomy`, `Mission`, `Safety`, `Friction`, `Energy`, `Cohesion`, `Score`, `Notes`) and print the same row as a paste-ready TSV block for a Google Sheet. Then a short written read of what moved and why.

## Workflow 2 — Trend analysis

Needs 4+ weeks of data in `culture-pulse.tsv`.

- **Climbing (6→8):** name what changed and double down on it.
- **Falling (7→5):** something broke trust. Diagnose before intervening.
- **Flat (5→5):** stuck. Flat mediocre culture never self-corrects.

Correlate inflection points with events the user reports: a new hire, a shipped release, a deadline, a departure, a strategy change.

**Red lines:**
- Any dimension below 4.0 for 2 weeks → intervene this week.
- Trust below 6.0 → the OP multiplier is eroding. Fix this before anything else.
- Energy below 5.0 for 3 weeks → burnout is already happening. Force a reset.

**Output:** `culture-trend.md` — the 4-week table, the inflection commentary, and the single most important thing to fix.

## Workflow 3 — Interventions

Triggered when any dimension sits below 6.0 for two weeks or more. First diagnose with one question, then pick 3 actions.

**Trust** — "Have any conflicts happened? Is leadership being transparent?"
- Weekly transparency ritual: share financials, decisions, and mistakes
- A leader admits uncertainty or a personal failure out loud
- Retro on the question "what eroded trust this month?"

**Autonomy** — "Who is waiting on approvals right now?"
- Write down which decisions belong to whom, explicitly
- Delete one approval gate this week
- Clear the decision backlog

**Mission** — "Does the team see the progress?"
- Restate why this matters and who benefits
- Make wins and impact visible weekly
- Put the team in front of actual customers

**Safety** — "Was someone punished for a mistake recently?"
- Blameless retro: systems, not people
- Mistake of the week, celebrated
- Leaders go first on admitting failure

**Friction** — "What's blocking people?"
- Bottleneck audit: approvals, tools, unclear ownership
- Fix or replace the tool that keeps failing
- Write down who owns what

**Energy** — "How many hours are people actually working?"
- Mandatory time off — require it, don't offer it
- Renegotiate one deadline
- Ritual celebration of a shipped win
- 1-2 days together with no work agenda

**Cohesion** — "Is anyone isolated?"
- Team meal or outing with no agenda
- Pair the isolated person with a connector
- One cross-team project

**Output:** an intervention block — "Trust is 5.2. Do these three this week. Re-pulse in two weeks." Written to `culture-interventions.md` with a re-test date.

## Work rhythm

Beast/Least mode — when to sprint hard and when to recover — lives in `/playbook-rhythm-keeper`. If the energy dimension is the problem, run that skill; don't re-derive the framework here.

## Suggested cadence

- **Weekly:** run the pulse. Five minutes of collection, five of reading.
- **Monthly:** trend analysis and intervention planning.
- **Quarterly:** full culture audit alongside `/people-team-architect`.

You run these. If you want them to happen without remembering, wire the weekly one into a Claude Code scheduled task.

## Reference points

- Netflix's public culture deck — culture as a survival mechanism, not a perk
- Valve's employee handbook — flat structure and peer accountability
- Supercell's cell model — autonomy as the source of trust

## Quick start

1. "Run a culture pulse" → 7D score plus breakdown
2. "Show me culture trends" → 4-week trajectory and inflection points
3. "Trust is low, what do we do?" → intervention list with a re-test date
4. "Is the team burning out?" → energy diagnosis and reset plan

---

**Trust is not soft. It is the hardest metric you have. Measure it every week.**
