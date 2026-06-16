---
name: pace
description: The chief of staff for your raise — paces the communication, orchestrates which skill runs when, keeps every artifact in sync, and surfaces the one thing that has to happen next. Use this skill whenever the user asks what to do next, how to keep the raise on track, how to sequence the work, when to send the next update or follow-up, or wants someone to glue the whole process together and make it move. Trigger it as the default "where are we and what now" layer over the entire Fundraising OS — it spans every phase and runs continuously, not just at the end.
triggers:
  - "pace the raise"
  - "what should I do next"
  - "keep the raise on track"
  - "chief of staff"
  - "orchestrate the raise"
  - "what's the next move"
  - "/pace"
author: Ludovic Bodin
version: 1.0
scheduled_routine: "Continuous — daily chief-of-staff brief, weekly orchestration review"
---

# Pace

Think of this as your chief of staff. The other skills each do one job well; `pace`
is the one that makes them move together — setting the tempo, deciding what runs
next, keeping every artifact consistent, and making sure the single most important
thing actually happens. A raise rarely fails because one piece was missing; it
fails because the pieces drifted out of sync, the cadence slipped, and the founder
got pulled in ten directions. This skill holds the line.

## When this runs

Continuously, as the orchestration layer over the whole OS — not a phase you reach,
a hand on the tiller the entire raise. Reach for it whenever you're unsure what to
do next, when momentum feels off, or when you just want the machine driven.

## Prerequisites

Read `raise-context.md` (the facts), `fundraising-plan.md` (the mode sets the
tempo — passive runs patient, active runs tight), and the current pipeline state.
`pace` doesn't generate raise content itself; it directs the skills that do.

## What it does

1. **Orchestrate the sequence.** Know which phase you're in and name the next skill
   to run and why. Keep the machine moving in the right order — context before
   targets, deck and model before serious meetings, data room ready before launch.
   When a step is being skipped, say so.

2. **Pace the communication.** Set and hold the cadence so you neither flood nor go
   silent: outreach in waves, follow-ups inside their window, monthly updates on
   the clock, a close window that's driven but not forced. Match the tempo to the
   mode — in passive, patient and relationship-led; in active, a tight beat with a
   real clock. Over-communicating reads as anxious; going dark reads as stalling.
   The right rhythm is itself a signal.

3. **Glue the artifacts.** Make each skill's output feed the next and keep
   everything reconciled — the deck, the model, the data room, and the claims in
   outreach must all tell the same numbers. Catch drift the moment it appears; a
   figure that says one thing in the deck and another in the room is a trust leak.

4. **Make things happen.** Produce a short chief-of-staff brief — the 1–3 things
   that must happen now, what's slipping, who owns each, and the single priority.
   Chase the threads that have gone quiet. Turn "a lot to do" into "this, next."

5. **Protect the founder's attention.** A raise will eat the company if you let it.
   Guard build time, flag when the process is consuming too much — especially in
   passive mode, where the whole point is to stay heads-down — and decide what to
   drop. Focus is the scarcest resource; spend it on the highest-leverage move.

## Output formats

**Chief-of-staff brief** (daily / on demand):
```
CHIEF OF STAFF — [date]
Where we are: [phase · mode · funnel one-liner]
Must happen today (≤3): [item — owner — is it ready?]
Slipping: [thread/artifact going cold or out of sync]
Run next: [which skill, on what]
The one priority: [single highest-leverage move]
```

**Orchestration call** (when asked "what now?"):
```
You're in [phase]. The next move is [skill] because [reason].
After that: [skill] → [skill]. Hold off on [skill] until [condition].
Cadence check: [next update / follow-up / wave due when]
```

## Principles

- **Tempo is a strategy.** The same conversations win or lose on rhythm. Pace the
  raise like a campaign with a clock, not a to-do list.
- **One priority at a time.** A chief of staff who lists twenty things is no help.
  Name the single move that matters most and protect the time to make it.
- **Glue beats heroics.** Keeping the pieces in sync prevents the fires that
  otherwise need heroics later. Consistency is the cheapest leverage in a raise.
- **Direct, don't duplicate.** `pace` points to the right skill; it doesn't redo
  their work. Its value is sequence, tempo, and follow-through.
