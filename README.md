# Atomic Scaling OS

> "The companies that scale the fastest aren't the ones that hire the most. They're the ones that empower the fewest people to do the most." — *Atomic Scaling*

Most founders think scaling means hiring. More people, more managers, more overhead. But the companies that redefined their industries — Supercell ($3B with 300 people), Valve ($10B+ with 400), ClickFunnels ($200M revenue with 3 salespeople) — did the opposite. They stayed small and built systems.

I'm Ludovic Bodin. I wrote *Atomic Scaling: How Small Teams Create Huge Growth* after spending years studying these companies and advising founders who kept hitting the same wall: they'd raise money, hire fast, and slow down. The ones who broke through had something in common — they replaced headcount with frameworks.

The **3P3R Method®** is that framework. Six pillars. Three for organizational capability (People, Prediction, Playbook). Three for growth (Revenue, Reach, Retention). Every scaling decision maps to one of them.

**Atomic Scaling OS** turns the 3P3R Method® into 13 Claude agents that run your growth operating system. They monitor culture health, run experiments, optimize unit economics, build funnels, and reduce churn — on scheduled loops, surfacing only the decisions that need a human.

This is a **Human-Assisted Autonomous Organization (HAAO)**. The agents do the work. You make the calls.

Thirteen specialists, all slash commands, all Markdown, all free, MIT license.

Fork it. Adapt it. Scale with it.

## Who this is for

**Solo founders and small teams** — especially those doing $0-$10M who want to scale revenue and profit without scaling headcount.

**Technical founders** — who want AI agents handling the operational grind so they can focus on product and customers.

**Growth operators** — who need structured frameworks for experimentation, retention, and unit economics instead of guessing.

**Anyone who read Atomic Scaling** — and wants to operationalize the 3P3R Method® with AI.

## Quick start

1. Install Atomic Scaling OS (see below)
2. Run `/playbook-mission-designer` — define your mission, user, and method
3. Run `/revenue-optimizer` — audit your unit economics
4. Run `/people-culture-pulse` — check your team's health
5. Set up `/playbook-rhythm-keeper` — establish your weekly cadence

Stop there. You'll know if this is for you.

## Install — 30 seconds

**Requirements:** [Claude Code](https://docs.claude.com/en/docs/claude-code) (v1.0.33+) and Git.

### Option A: Install from marketplace (recommended)

Open Claude Code and run:

```
/plugin marketplace add kalibrio/atomic-scaling-os
```

Then install the plugin:

```
/plugin install atomic-scaling-os@kalibrio/atomic-scaling-os
```

### Option B: Manual install

Run this in your **terminal** (not inside Claude Code):

```bash
git clone https://github.com/kalibrio/atomic-scaling-os.git ~/.claude/plugins/atomic-scaling-os
```

Then open Claude Code and reload plugins:

```
/reload-plugins
```

### Share with your team (optional)

Add Atomic Scaling OS to your project repo so your whole team gets it:

```bash
cp -Rf ~/.claude/plugins/atomic-scaling-os .claude/plugins/atomic-scaling-os && rm -rf .claude/plugins/atomic-scaling-os/.git
```

Everything lives inside `.claude/`. Nothing touches your PATH or runs in the background.

## The operating rhythm

Atomic Scaling OS is a process, not a collection of tools. The agents run in the cadence a scaling company runs:

**Define → Measure → Iterate → Grow → Retain → Reflect**

Each agent feeds into the next. `/playbook-mission-designer` defines the vision that `/playbook-rhythm-keeper` tracks. `/prediction-hypothesis-engine` runs experiments that `/prediction-forecast-analyst` calibrates and `/prediction-premortem` stress-tests. `/reach-funnel-builder` acquires users that `/retention-love-machine` keeps. Nothing falls through the cracks because every agent knows what came before it.

| Frequency | What happens |
|-----------|-------------|
| **Daily** | Experiment scan, LTV/CAC monitoring |
| **Weekly** | Culture pulse, scorecards, metrics digest, growth tracking, retention check, iteration review |
| **Bi-weekly** | Funnel conversion audit, editorial calendar review |
| **Monthly** | Segment analysis, calibration scoring, community health, revenue deep review |
| **Quarterly** | Org design review, Merlin Exercise (5yr→1yr→30day), community health report |

You only step in for strategic decisions. The agents surface choices — you make the calls.

## The 13 agents

Built on the **3P3R Framework** — six pillars, two specialist agents each (plus a third in Prediction for high-stakes decisions).

### People — Stay small, scale output

| Skill | Your specialist | What they do |
|-------|----------------|-------------|
| `/people-team-architect` | Org Designer | Design high-output teams. OP = i × T scoring, magical pairs, EPIC evaluation, Supercell autonomous cells, Valve 2.5x rule. Tells you who to hire (and who not to). |
| `/people-culture-pulse` | Culture Analyst | Monitor culture health with a 7-dimension pulse survey. Culture Health Score (0-100), burnout detection, trust metrics. Weekly alerts before problems become crises. |

### Prediction — Speed of iteration = speed of scaling

| Skill | Your specialist | What they do |
|-------|----------------|-------------|
| `/prediction-hypothesis-engine` | Experiment Lead | Run the Hypothesis→Measure→Change cycle. Pendulum Framework for fast iteration, kill thresholds, experiment management. Stop guessing — start measuring. |
| `/prediction-forecast-analyst` | Superforecaster | Probability-based predictions using Tetlock's superforecasting methods. Calibration scoring and scenario planning. Know what's coming before it arrives. |
| `/prediction-premortem` | Failure Investigator | Run a Gary Klein premortem on any plan, launch, hire, or strategic decision. Assumes failure 6 months out, works backward to find every reason why, returns a revised plan with blind spots exposed. |

### Playbook — Create a finite game and play to win

| Skill | Your specialist | What they do |
|-------|----------------|-------------|
| `/playbook-mission-designer` | Chief Strategist | Define your playbook with the MUM Model (Mission/User/Method), Moonshot Thinking (10x > 10%), and the Merlin Exercise — work backwards from 5 years to what you do in the next 30 days. |
| `/playbook-rhythm-keeper` | Operations Lead | Maintain business cadence. Weekly scorecards, 12-quarter planning, Beast/Least prioritization. The rhythm that keeps scaling companies from losing focus. |

### Revenue — Offer your basic service for free

| Skill | Your specialist | What they do |
|-------|----------------|-------------|
| `/revenue-freemium-architect` | Monetization Designer | Design freemium models using the Ikigai of Freemium (7-step process). Minnows/Dolphins/Whales segmentation (R = M + D + W). Find where free meets paid. |
| `/revenue-optimizer` | Unit Economics Analyst | Optimize LTV/CAC tracking, pricing strategy, scale readiness scoring. Recoup CAC in 6 months, 3x in 18 months — or know why you're not. |

### Reach — Serve the largest total addressable market

| Skill | Your specialist | What they do |
|-------|----------------|-------------|
| `/reach-funnel-builder` | Growth Architect | Build the Peak Sales Machine — Dream 100 partnerships, OBE traffic model (Own/Buy/Earn), follow-up funnels, anchoring. Systematic acquisition, not random acts of marketing. |
| `/reach-growth-tracker` | Acquisition Analyst | Track CAC by channel, run 12-week growth sprints, manage acquisition experiments. Know exactly what's working and what to kill. |

### Retention — More important than reach or revenue

| Skill | Your specialist | What they do |
|-------|----------------|-------------|
| `/retention-love-machine` | Retention Engineer | The LOVE Machine: Live product development, Organized events (editorial calendar), Very special sales (segmented offers), Engagement/re-engagement loops. Build retention into your DNA. |
| `/retention-community-engine` | Community Architect | Build community as a retention moat using CMX's 6 principles. Move users from "I use X" to "I AM an X member." Identity-driven retention with <5% annual churn. |

## The 3P3R Method®

The framework behind Atomic Scaling OS. Each pillar addresses a different scaling lever:

| Pillar | Core Principle | Key Frameworks |
|--------|---------------|----------------|
| **People** | Stay small, scale output | OP = i × T, magical pairs, EPIC employees, Supercell model |
| **Prediction** | Speed of iteration = speed of scaling | Pendulum Framework, Tetlock superforecasting, H→M→C cycle |
| **Playbook** | Create a finite game and play to win | MUM Model, Moonshot Thinking, Merlin Exercise, BRAW |
| **Revenue** | Offer your basic service for free | Ikigai of Freemium, M/D/W segmentation, LTV > CAC |
| **Reach** | Serve the largest total addressable market | Peak Sales Machine, OBE Traffic, Dream 100 |
| **Retention** | More important than reach or revenue | LOVE Machine, LiveOps, editorial calendar, CMX 6 |

Based on case studies from Riot Games, ClickFunnels, Supercell, Valve, Spotify, Voodoo, EA, and more.

## See it work

```
You: /playbook-mission-designer
Agent: Let's define your playbook. What's your company's mission in one sentence?

You: We help small restaurants get more local customers.
Agent: [runs MUM Model analysis]
      Your mission is clear but your method is vague.
      Let me run the Merlin Exercise — where do you want to be in 5 years?

You: 10,000 restaurants across Europe.
Agent: [works backwards: 5yr → 1yr → 90 days → 30 days]
      MERLIN EXERCISE COMPLETE:
      - 5yr: 10K restaurants, €50M ARR
      - 1yr: 200 restaurants in France, product-market fit confirmed
      - 90 days: 20 paying restaurants, 2 cities
      - 30 days: Launch MVP, onboard first 5 restaurants in Lyon

      Your Moonshot: What if every restaurant had an AI marketing team?
      That's 10x. Not "get more customers" — "automate customer acquisition."

      → Feeding into /revenue-freemium-architect for pricing model...

You: /revenue-optimizer
Agent: [pulls your current metrics]
      LTV/CAC AUDIT:
      - Current CAC: €240 (too high — target: <€80)
      - Current LTV: €360 (12-month, but could be €900+)
      - Payback period: 8 months (target: <6)

      RED FLAG: Your Minnow tier has 0% conversion to Dolphin.
      RECOMMENDATION: Add a €29/mo tier between free and €79/mo.
      The gap is too large — Dolphins need a stepping stone.
```

Six pillars. Thirteen agents. One operating system for scaling.

## Masterclass resources

Each pillar includes supplementary materials from the **Atomic Scaling Masterclass** — videos, case studies, Canva templates, Google Sheets tools, interactive exercises, and self-assessments.

Take the free assessment at **[AtomicScaling.com](https://atomicscaling.com)** to identify which pillars need attention first.

## Outputs

All agents output to:

- **Email digest** — daily/weekly summaries of decisions needed
- **Discord** — pillar-specific channels for real-time alerts
- **Google Sheets** — dashboards for metrics, scorecards, and trackers

## License

MIT. Free forever. Go scale something.

---

*Built on the 3P3R Method® by Ludovic Bodin. Book: [Atomic Scaling: How Small Teams Create Huge Growth](https://atomicscaling.com). Inspired by [Garry Tan's GStack](https://github.com/garrytan/gstack) and [Sahil Lavingia's skills](https://github.com/slavingia/skills).*
