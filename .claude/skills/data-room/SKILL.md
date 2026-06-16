---
name: data-room
type: skill
description: Build a data room that answers diligence questions before they're asked — the full index, what goes in each section, and a gap list of what's missing or weak. Use this skill whenever the user mentions a data room, due diligence, DD, "what investors will ask for", preparing documents for investors, or an investor has requested access to materials. Trigger it before outreach goes hot — a data room that's ready the moment someone asks is itself a signal of how the company is run. Flags gaps honestly rather than papering over missing documents.
triggers:
  - "data room"
  - "due diligence"
  - "DD prep"
  - "/data-room"
author: Ludovic Bodin
version: 1.0
scheduled_routine: "Before launch; maintain through diligence"
---

# Data Room

The data room is read as a proxy for operational maturity. Ready, organised, and
anticipating the next question reads as "this founder runs a tight company."
Scrambling to assemble it after a partner asks reads as the opposite. Build it
before you need it.

## Prerequisite

Read `raise-context.md` — it tells you what exists (§12 assets) and what
the numbers/claims are that the data room must substantiate.

## Standard seed data-room index

Build this structure (omit sections genuinely N/A for the stage, but say so):

1. **Overview** — deck, one-pager, the spine.
2. **Team** — founder bios, org chart, key hire plan, advisor list.
3. **Product** — demo link/video, roadmap, architecture overview (right depth, not
   a full spec), security posture if relevant.
4. **Traction & metrics** — the metrics dashboard, cohort/retention data, the
   numbers behind every traction claim in the deck. This is the section partners
   scrutinise hardest — it must reconcile exactly with the deck.
5. **Financials** — the model (from `financial-projection`), historical P&L if
   any, the assumptions memo, cap table.
6. **Market** — TAM/SAM derivation, competitive landscape, why-now evidence.
7. **Legal & corporate** — incorporation docs, cap table detail, prior SAFEs/notes,
   key contracts, IP assignments. (Hold the most sensitive items behind a second
   gate, released later in DD.)
8. **Customers / GTM** — pipeline, LOIs, reference customers, channel data.
9. **The round** — instrument, terms, use of funds, existing commitments.

## Procedure

1. **Map each deck claim to its proof.** Walk the deck; for every number or claim,
   identify the document in the data room that substantiates it. A claim with no
   backing document is a diligence landmine — flag it.
2. **Anticipate the obvious questions.** For this company's stage and sector, list
   the 8–12 questions a partner will definitely ask (the §7 "number a sceptic
   attacks first" is top of the list) and ensure a document answers each.
3. **Build the index** with, per item: what it is, status (`ready / draft /
   missing`), and where it lives.
4. **Produce the gap list** — everything missing or weak, ranked by how early in DD
   it'll be asked for. This is the most valuable output: it's your pre-DD to-do.
5. **Stage the access.** Recommend what's in the first-look room vs. behind a second
   gate (sensitive legal, detailed customer data) released as conversations get
   serious.

## Output

```
DATA ROOM INDEX
[section] / [item] / [status: ready/draft/missing] / [location]
...
GAP LIST (ranked by when it'll be asked):
1. [missing item] — needed by [stage] — blocks [what]
...
CLAIM → PROOF MAP (deck claims with no backing doc):
- [claim] → MISSING proof
ACCESS STAGING:
First look: [...]   Behind second gate: [...]
```

## Principles

- **Ready beats complete-later.** The room being there the moment they ask is the
  signal. A 90%-ready room available instantly beats a perfect room next week.
- **Reconcile or it bites.** Every number must match across deck, model, and room.
  Inconsistency is the fastest trust-killer in diligence.
- **Gaps are honest work, not shame.** Naming what's missing and when you'll have
  it is exactly what a well-run process looks like. Don't hide gaps — schedule them.
