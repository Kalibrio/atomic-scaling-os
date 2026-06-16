---
name: pipeline
type: skill
description: Run the fundraising pipeline so no thread drops — a weekly Monday brief of what needs action, post-meeting follow-up generators, and stage tracking across every investor conversation in parallel. Use this skill whenever the user wants to track their raise, asks "where are we with investors", wants a weekly fundraising update, needs to follow up after an investor meeting, asks what to do next, or is managing multiple VC conversations at once. Trigger it for any pipeline, cadence, follow-up, or "what's the status" request during a live raise. Operational signals — follow-up speed especially — are read by investors as how you'll run the company, so this skill optimises responsiveness, not just record-keeping.
triggers:
  - "fundraising pipeline"
  - "weekly fundraising brief"
  - "follow up after meeting"
  - "where are we with investors"
  - "/pipeline"
author: Ludovic Bodin
version: 1.0
scheduled_routine: "Weekly Monday brief; same-day after each meeting"
---

# Pipeline

A raise is many conversations moving in parallel, each at a different stage, each
with a next action that decays if you miss it. The pipeline's job is that nothing
drops and the right thing happens fast — because how quickly and specifically you
follow up is itself evidence to the investor.

## Prerequisites

- The investor sheet (`investor-list`) as the spine of the pipeline.
- `raise-context.md` for the facts any follow-up will reference.

## The pipeline stages

```
Sourced → Intro requested → Contacted → Meeting 1 → Diligence → Partner meeting → Term sheet → Closed / Passed
```

Track per target: stage, last touch date, next action, owner of next action, days
since last touch, and any open question the investor raised.

## Two modes

### Mode A — Weekly Monday brief
Produce a prioritised action list for the week:

```
FUNDRAISE — WEEK OF [date]
🔥 Needs action now (overdue follow-ups, >5 days since last touch on a live thread):
   - [Target] — [what to do] — [draft ready? y/n]
⏳ Awaiting them (no action needed, note expected-by date):
   - [Target] — waiting on [what] — chase if no reply by [date]
🌱 Advance this week (warm targets to move a stage):
   - [Target] — next step [x]
📊 Funnel: [n contacted / n in meetings / n in DD / n term sheets] — soft-circled $[x] of $[target]
⚠️ Risks: [stalling threads, momentum gaps, anything going cold]
This week's one priority: [single most important move]
```

Flag any live thread untouched for >5 business days as overdue — that's the signal
investors notice.

### Mode B — Post-meeting follow-up generator
After a meeting, draft the follow-up within the same day. A good follow-up:
- thanks briefly, then **answers the specific questions they raised** (pull facts
  from `raise-context.md`; if a question needs data you don't have, say when you'll
  send it and add it to the data-room gap list),
- sends only what they asked for (don't dump the whole data room),
- restates the next step and proposes a concrete time,
- is sent fast. Speed is the message.

```
FOLLOW-UP: [Partner, Fund] — meeting [date]
Open questions they raised: [list]
DRAFT:
[email — answers their questions, one clear next step]
To add to data room: [any artefact they asked for that doesn't exist yet]
```

## Procedure

1. Read current pipeline state (the sheet / the user's update).
2. Compute days-since-touch and surface overdue threads first.
3. For Mode A, produce the Monday brief. For Mode B, produce the follow-up.
4. Always end with the single highest-leverage next action.

## Principles

- **Follow-up speed is a feature.** Same-day, specific follow-ups tell an investor
  you operate well. Make it the default.
- **Parallel, not serial.** Keep all live threads roughly in sync on timing so you
  can create a real close window, not a trickle.
- **Answer the actual question.** A follow-up that addresses their specific concern
  beats a polished generic recap every time.
