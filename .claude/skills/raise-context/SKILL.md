---
name: raise-context
type: skill
description: Build, interview for, and maintain the raise-context file that powers the entire Fundraising Machine. Use this skill whenever the user is starting a fundraise, says they want to "set up the raise", asks Claude to help prepare to raise money, mentions a seed/pre-seed/Series A round, or whenever any downstream fundraising skill (investor list, outreach, deck, data room, pipeline) needs context that is missing or stale. Always run this FIRST before any other fundraising work — even if the user jumps straight to "write me investor emails", check the context exists and is current first.
triggers:
  - "raise context"
  - "fundraise setup"
  - "prepare to raise"
  - "/raise-context"
author: Ludovic Bodin
version: 1.0
scheduled_routine: "At raise kickoff; refresh on any material change"
---

# Raise Context

The raise-context file is the single source of truth for the whole machine. Every
other skill inherits its numbers, names, and narrative from it. Your job here is
to produce a complete, honest, current context file — and to refuse to let the
machine run on a thin or stale one.

## When this runs

- At the start of a raise.
- Whenever a downstream skill finds a field it needs is `TBD` or missing.
- Whenever the user reports a material change (new traction, new terms, a pivot).

## Procedure

1. **Locate or create.** Look for `raise-context.md` in the working folder. If it
   exists, read it and treat it as a draft to complete, not a blank slate. If it
   doesn't, create it there from the bundled `references/raise-context-template.md`.

2. **Interview to fill gaps — don't fabricate.** Walk the 13 sections. For each
   empty or weak field, ask the user a tight, specific question. Ask in small
   batches (3–5 questions), not one giant wall. Prioritise the fields that block
   the most downstream skills: the one-liner, the raise terms, traction, the
   ideal-investor profile, and the founder network.

3. **Pressure-test, gently.** Your value is honest friction. For each claim:
   - Is this number *true as stated*, or rounded up? Restate it as-is.
   - Section 7 asks for "the number a sceptic attacks first." Make the user
     actually answer it. If they can't, that's the most important gap to flag.
   - The narrative spine (§9) must be three sentences: problem → why-now →
     why-you. If it takes more, the story isn't sharp yet — say so.

4. **Write the file.** Update `raise-context.md` in place. Preserve the
   section structure exactly so downstream skills can find fields. Mark genuine
   unknowns as `TBD`, never as invented values.

5. **Report readiness.** End with a short readiness readout:
   - **Green** fields (complete, defensible)
   - **Yellow** (present but weak — name what would strengthen them)
   - **Red** (missing and blocking — name which downstream skill each one blocks)

## Output format for the readiness readout

```
RAISE CONTEXT — READINESS
Green:  [list of solid sections]
Yellow: [section — what's weak — how to fix]
Red:    [field — blocks → which skill]
Single biggest thing to fix before outreach: [one line]
```

## Principles

- **Honest by construction.** A context file that overstates traction will produce
  outreach you cannot survive in diligence. Optimism here is a liability, not a vibe.
- **Specific beats generic.** "Marketplace for X" is filed and forgotten. The
  one-liner should make a partner able to repeat it to their Monday meeting.
- **The spine rules everything.** Once §9 is set, every other skill must stay
  consistent with it. If a later skill wants to say something off-spine, that's a
  signal the spine is wrong — come back here and fix it, don't drift.
