---
name: closing
type: skill
description: Run the close — read and explain a term sheet in plain language, flag the terms that actually matter, prepare the negotiation, build the closing checklist, and create the urgency window that gets a round to a clean finish. Use this skill whenever the user receives a term sheet, asks what terms mean, needs to compare offers, wants to negotiate a round, is trying to create a close window, or asks "how do I close this". Trigger it for any term-sheet, valuation, dilution, SAFE/equity-terms, or "how do I get them to commit" request. Explains terms and trade-offs so the founder decides — never gives legal advice or tells them what to sign.
triggers:
  - "term sheet"
  - "negotiate the round"
  - "close the round"
  - "/closing"
author: Ludovic Bodin
version: 1.0
scheduled_routine: "On receipt of a term sheet, through to wire"
---

# Closing

A round doesn't close because everyone says yes — it closes because you create a
window where saying yes now is the obvious move. This skill helps you read the
terms that matter, run the negotiation, and drive to a clean, fast finish without
losing leverage or goodwill.

## Prerequisite

Read `raise-context.md` §2 (your target terms) and the pipeline state
from `pipeline` (who's live, who's close — your leverage map).

> **Not legal advice.** This skill explains terms and trade-offs so you can decide
> and brief your lawyer efficiently. It never tells you what to sign. Anything
> non-standard or high-stakes goes to a real startup lawyer.

## Reading a term sheet — the terms that actually matter

Most term-sheet anxiety is about the wrong terms. Focus order:

1. **Valuation / cap & amount** — the headline, but not always the most important.
2. **Option pool** — where it's created (pre- vs. post-money) silently changes
   founder dilution. A "pre-money pool" is dilution dressed as valuation.
3. **Liquidation preference** — 1x non-participating is standard; anything above,
   or participating, is a flag.
4. **Board composition & control** — who controls the board, what needs investor
   consent. Matters more than a valuation turn at seed.
5. **Pro-rata / information rights** — usually fine; know what you're granting.
6. **Anti-dilution** — broad-based weighted average is standard; full-ratchet is a
   flag.
7. **Vesting / founder terms** — re-vesting of founder shares, acceleration.

For each present term, output: what it says in plain language, whether it's
standard or off-market, and the practical consequence for the founder.

## Procedure

1. **Translate the term sheet** — plain-language readout of every clause, standard
   vs. flag, and the real-world effect. Surface the quiet ones (pool placement,
   pref, board) the headline number distracts from.
2. **Map leverage** — from the pipeline, how many live alternatives exist. Honest
   competing interest (never fabricated) is your only real negotiating power; know
   exactly how much you have.
3. **Prep the negotiation** — the 2–3 terms worth pushing on (rarely valuation
   alone; often pool, board, pref), the ask for each, and the BATNA. Counsel
   picking a few real priorities over nickel-and-diming everything.
4. **Create the close window** — once you have a lead, set a clear timeline and use
   it to bring the rest of the round (followers, angels) to commit inside it.
   Communicate the window honestly; manufactured fake urgency burns trust.
5. **Build the closing checklist** — everything from signed term sheet to wired
   funds: confirmatory diligence items, legal docs (the lawyers drive these), cap
   table update, signatures, the data-room items that get pulled forward.

## Output

```
TERM SHEET READOUT
[term] — [plain language] — [standard / FLAG] — [consequence]
...
NEGOTIATION PREP
Push on: [2–3 terms, the ask, the rationale]   |   BATNA: [...]   |   Leverage: [live alternatives]
CLOSE WINDOW
Proposed timeline: [...]   |   Who to bring in within it: [...]
CLOSING CHECKLIST
[ ] signed term sheet  [ ] confirmatory DD: [...]  [ ] legal docs (counsel)  [ ] cap table  [ ] wire  ...
```

## Principles

- **The headline isn't the deal.** Pool placement, preference, and board control
  move more value than a turn of valuation. Read those first.
- **Leverage is real interest, only.** A genuine second option is power; a bluffed
  one, discovered, ends the round. Never fabricate competing interest.
- **Speed to close protects the round.** Soft circles cool. Once you have a lead,
  drive a clean, honest window and finish before momentum leaks.
- **Founders decide, lawyers paper, this skill clarifies.** Use it to be the
  best-briefed person in the room, then get real counsel on the docs.
