---
name: financial-projection
type: skill
description: Build the fundraising financial projection — the operating model, the assumptions behind it, and the one-page assumptions memo that survives investor scrutiny. Use this skill whenever the user wants a financial model, projections, forecast, revenue model, burn/runway analysis, unit economics, or "the numbers" for a raise; when they ask what to put in the model tab of the data room; or when an investor has asked for financials. Produces the model structure and assumptions; hand off to the xlsx skill to render the actual spreadsheet.
triggers:
  - "financial model"
  - "projections"
  - "unit economics"
  - "/financial-projection"
author: Ludovic Bodin
version: 1.0
scheduled_routine: "Early in the raise; update with new traction"
---

# Financial Projection

Investors don't believe your forecast — they believe (or don't) your assumptions.
The model's job is to show you think clearly about how the business compounds, and
that the ask in the deck is the right size for the milestone it buys. Build the
assumptions first; the spreadsheet is just their arithmetic.

## Prerequisite

Read `raise-context.md` §2 (raise & use of funds), §4 (traction), §7
(business model & unit economics), §5 (market sizing). If unit economics are
`TBD`, that's the first thing to resolve — a model on invented unit economics is
worse than none.

## What the model must contain

A seed model is driver-based and legible, not a 12-tab fortress. Build:

1. **Assumptions block** (top of the model, everything else references it):
   growth rate, conversion, pricing, take rate, CAC, churn, gross margin, headcount
   plan, key cost lines. Every number here is a claim you must defend.
2. **Revenue build** — bottoms-up from drivers (users × conversion × ARPU, or
   creators × GMV × take rate, etc.), never a top-down "1% of TAM".
3. **Cost & headcount** — hiring tied to the use-of-funds in §2.
4. **P&L summary** — monthly for 18–24 months, then quarterly/annual.
5. **Cash / runway** — opening cash + raise − burn → runway in months. This must
   match the runway claim in the deck's ask slide.
6. **Unit economics** — CAC, LTV, payback, contribution margin, stated cleanly.
7. **The milestone** — what metric the raise gets you to (the thing that makes the
   next round raisable). Tie the model's end state to it explicitly.

## Procedure

1. **Derive drivers from reality.** Anchor base assumptions in actual traction
   (§4), not aspiration. Growth should decay over time in the model — flat
   exponential growth reads as naïve.
2. **Build the bottoms-up revenue logic** and write each assumption as a one-line
   justification ("conversion 4% — current trailing 30-day is 3.6%, modest lift
   from onboarding fix shipping Q3").
3. **Sanity-check against the ask.** Does the raise fund the headcount and runway
   to hit the milestone? If not, the ask in the deck is wrong — flag it.
4. **Stress one downside case.** A second column where growth is slower / CAC
   higher, showing the business still reaches a sensible point. Investors trust
   founders who model their own downside.
5. **Write the assumptions memo** — one page in prose: the 6–8 assumptions that
   matter most, each with its justification and the sensitivity (which one, if
   wrong, breaks the model). This is what you actually defend in the meeting.

## Output

- The model structure (tabs, driver list, formula logic in plain language).
- The full assumptions list, each with a one-line justification.
- The base + downside case logic.
- The one-page **assumptions memo**.

Hand the structure to the **xlsx** skill to render the working spreadsheet — don't
build the file by hand here.

## Principles

- **Defensible beats impressive.** A credible $4M ARR path beats a fantastical
  $40M one. The hockey stick everyone draws convinces no one.
- **Assumptions are the product.** The number is downstream of the assumption;
  make every assumption explicit and sourced.
- **Match the deck.** Runway, ask, and milestone in the model must equal the deck.
  A mismatch is the fastest way to look sloppy in diligence.
