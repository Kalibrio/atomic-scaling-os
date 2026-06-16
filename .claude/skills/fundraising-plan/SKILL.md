---
name: fundraising-plan
type: skill
description: Plan the raise before running it — choose the fundraising MODE (passive vs. active vs. hybrid), set the timeline, intensity, and decision gates, and configure how hard every downstream skill should run. Use this skill whenever the user is deciding whether to raise, how to raise, asks "should I run a process", wants a fundraising plan or strategy, is weighing a structured raise against staying opportunistically open, or is unsure how aggressive to be. Trigger it right after the raise context is built and BEFORE building the investor list — the mode you choose changes the list size, the outreach intensity, the pipeline cadence, and the close mechanics. Don't let the machine run an active process by default; make the passive/active call deliberately.
triggers:
  - "fundraising plan"
  - "passive vs active fundraising"
  - "should I run a process"
  - "/fundraising-plan"
author: Ludovic Bodin
version: 1.0
scheduled_routine: "At raise kickoff; re-evaluate at each decision gate"
---

# Fundraising Plan

Before you build a single list or write a single email, decide *how* you're
raising. The biggest strategic choice in a raise isn't which funds — it's whether
you run a sharp, time-boxed **active process** or stay in a low-intensity
**passive** mode. Pick wrong and you either leak a stalled process to the market
or leave leverage and valuation on the table. This skill makes that call
deliberately and then configures the rest of the machine to match.

## Prerequisite

Read `raise-context.md` — especially §2 (amount, runway, committed),
§4 (traction strength), §10 (whether right-fit leads even exist now), and §11
(do you have warm inbound / an anchor?). If runway or traction are `TBD`, resolve
them via `raise-context` first — you cannot choose a mode without them.

## The two modes

### Passive ("always slightly raising")
You are *not* running a structured process. You keep a rolling instrument (often a
SAFE) quietly open, take warm inbound and opportunistic meetings, accept angels
and strategics as they come, and otherwise stay heads-down building.
- **Use when:** runway is long, traction is compounding (every month makes you
  more raisable), you have inbound, you don't need a lead, or the amount is small
  and angel-fillable. Also the right default when timing is bad and you'd rather
  wait for a stronger position.
- **Pros:** founder stays focused on the company; no public "in-market" signal to
  leak; no hard failure event; you raise into strength as it appears.
- **Cons:** little competitive tension, so weaker terms; slow; can drift for
  months; hard to land a true lead without a window.
- **Machine config:** small curated target set, not 40. Light, opportunistic
  outreach. Loose pipeline (relationship-tracking, not a sprint). No artificial
  close window. Investor-comms run continuously to convert warmth over time.

### Active (a real process)
A structured, time-boxed sprint: full target list, all conversations launched in a
tight window, parallel meetings, competitive tension engineered, driven to a lead
and a close inside weeks.
- **Use when:** you have a clear milestone-backed story, enough traction to
  withstand scrutiny *now*, a defined amount that needs an institutional lead, and
  the founder bandwidth to go full-time on it for 4–8 weeks. Also when you need the
  money on a clock (runway pressure makes the window real, not manufactured).
- **Pros:** competitive tension → better terms and valuation; fast; a real close
  window; momentum compounds across threads.
- **Cons:** consumes the founder; "in-market" is visible and a stalled or failed
  process leaks; the round becomes a public success/failure event.
- **Machine config:** full ~40 target list with tiers; warm-intro mapping on every
  Circle 1–2; personalised outreach launched in waves; tight weekly pipeline with
  same-day follow-ups; data room ready *before* launch; a deliberately engineered
  close window.

### Hybrid (most common reality)
Run passive to build relationships and a soft-circle, then flip to a sharp active
process once you have an anchor or a momentum trigger. The plan should name the
**trigger** that flips passive → active (e.g. "first Circle-1 term sheet", "MRR
crosses €X", "runway hits 9 months").

## Decision procedure

1. **Score the readiness signals** from context, each pushing toward active or
   passive:
   - Runway: short → active (clock is real). Long → passive (raise into strength).
   - Traction *now*: strong enough to survive a 40-fund gauntlet → active. Thin but
     compounding → passive until stronger.
   - Lead needed: institutional lead required → active. Angel/strategic-fillable →
     passive.
   - Inbound/anchor: have warm inbound or a soft-circled anchor → passive or
     hybrid. Cold start, no inbound → active to manufacture a market.
   - Founder bandwidth: can disappear from the business for 6 weeks → active. Can't
     → passive (or wait).
   - Market timing: hot window for your category → active. Soft → passive and wait.
2. **Make the call** — state the recommended mode and the 2–3 signals that drove
   it. If hybrid, name the explicit flip trigger.
3. **Set the plan** — timeline, intensity, sequencing of downstream skills, and the
   decision gates (the points where you re-evaluate: keep going, pause, or flip).
4. **Define the kill / pause criteria** — for active: how many passes before you
   stop, regroup, and protect the company from a leaked failed process. For
   passive: the trigger to escalate to active.
5. **Write the plan** to `fundraising-plan.md` so every downstream skill
   inherits the chosen mode and runs at the right intensity.

## Output format

```
FUNDRAISING PLAN
Mode: [PASSIVE / ACTIVE / HYBRID]   (drivers: [2–3 signals])
Amount & instrument: [...]          Window: [time-box or "open"]
Flip trigger (if hybrid): [...]
Sequence & intensity:
  investor-list   → [size: ~40 / curated 10]  [tiers? y/n]
  warm-intro-map  → [all Circle 1–2 / inbound only]
  deck, financial-projection → [ready before launch / iterate live]
  outreach        → [waves / opportunistic]
  pipeline        → [weekly sprint / relationship-tracking]
  data-room       → [ready pre-launch / build as asked]
  investor-comms  → [continuous]   closing → [engineer window / take as it comes]
Decision gates: [date/metric → re-evaluate]
Kill / pause criteria: [...]
One-line strategy: [the plan in a sentence]
```

## Principles

- **Mode before targets.** Choosing active-by-reflex is the most common founder
  error. The default for most early companies with runway is passive-until-trigger,
  not a full process.
- **An active process is a public event.** Once you're "in market," a stall is
  visible. Only launch active when you're ready to finish — readiness of the data
  room and deck is a precondition, not a parallel task.
- **The window must be real.** Active processes work because of a genuine clock
  (runway, a lead's timeline). Manufactured urgency with nothing behind it is
  transparent and burns trust — see `closing`.
- **Passive is not passive about relationships.** Staying out of a formal process
  doesn't mean going quiet — `investor-comms` runs the whole time, turning
  warmth into the anchor that eventually lets you flip to active from strength.
