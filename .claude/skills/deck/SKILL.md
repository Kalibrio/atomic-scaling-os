---
name: deck
type: skill
description: Build the fundraising pitch deck — narrative arc, slide-by-slide structure, and the actual copy for each slide — derived from the raise context. Use this skill whenever the user wants to build, write, revise, or pressure-test a pitch deck, investor deck, or slide story for a raise; when they ask "help me with my deck", "what slides do I need", or want to sharpen the narrative. Trigger early in the raise — the deck forces the narrative that outreach, data room, and meetings all inherit. Produces the structure and copy; hand off to the pptx skill to render an actual .pptx if the user wants the file.
triggers:
  - "pitch deck"
  - "investor deck"
  - "build my deck"
  - "/deck"
author: Ludovic Bodin
version: 1.0
scheduled_routine: "Early in the raise; revise on narrative shifts"
---

# Deck

The deck is where the narrative gets forced into its sharpest form. Build the
story first, slides second. A deck is not a document — it's the spine of §9 told
in a sequence a partner can re-tell to their Monday meeting from memory.

## Prerequisite

Read all of `raise-context.md`. The deck is a rendering of it; if
traction (§4), the spine (§9), or the model (§7) are `TBD`, fix those first via
`raise-context` and `financial-projection`.

## The arc (standard seed sequence — adapt, don't pad)

1. **Title** — name, one-liner, the raise in one line.
2. **Problem** — the pain, made visceral and specific to a real user.
3. **Why now** — the change that makes this newly possible (regulatory, tech,
   behavioural). Weak why-now is the most common reason a deck feels optional.
4. **Solution / product** — what it does, ideally shown not told.
5. **How it works** — just enough to be credible; not an architecture lecture.
6. **Market** — bottoms-up TAM/SAM, the wedge first.
7. **Traction** — the strongest true proof. The page partners screenshot.
8. **Business model** — how money is made; the unit economics if they're good.
9. **Competition** — honest map; why you win the wedge.
10. **Team** — why *this* team is non-substitutable for *this* problem.
11. **The ask** — amount, use of funds, the milestone it buys.
12. **Vision** — the big picture if it works. End on altitude.

Cut ruthlessly. A seed deck is ~12 slides. Appendix holds the depth.

## Procedure

1. **Write the arc as a story first** — 3–5 sentences that connect problem →
   why-now → wedge → proof → vision. If it doesn't flow as prose, the slides won't
   flow either. This is the spine from §9, expanded.

2. **Draft each slide** with: a one-line **headline that is a claim, not a label**
   ("Creators lose 30% of revenue to platform middlemen", not "Problem"), the 2–4
   supporting points, and a note on the single visual/number that carries it.

3. **Make the traction slide the strongest honest page.** Real numbers only,
   stated as true. If traction is thin, lead the story on why-now and team, and
   show the traction you have without inflation.

4. **Pressure-test.** For each slide ask: would a sceptical partner believe this,
   and does it advance the argument? Flag any slide that's there out of convention
   but doesn't move the story.

## Output

- The narrative arc as prose (the story spine).
- Slide-by-slide: `Headline` / `Body points` / `Visual or number to feature`.
- A "cut list" of slides or claims that weaken the story.
- An appendix list (deep-dive slides to hold in reserve for diligence).

If the user wants the rendered file, hand the structure to the **pptx** skill to
produce the .pptx — do not hand-build slides here.

## Principles

- **Headlines carry the deck.** A partner skimming should get the whole argument
  from the headlines alone.
- **Show, don't assert.** A product screenshot, a real chart, a customer quote
  beats an adjective every time.
- **End on altitude, open on pain.** The first slide makes them feel the problem;
  the last makes them want the upside.
