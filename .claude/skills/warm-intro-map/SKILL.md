---
name: warm-intro-map
type: skill
description: Map the best possible warm-introduction path to each investor target before any cold email is sent, and draft the forwardable intro-request notes that mobilise the user's network. Use this skill whenever the user asks how to get introduced to a VC/fund/partner, wants to map their network to investors, asks "who can intro me to X", wants to find warm paths, or is about to start outreach. Trigger it right after the investor list is built and before outreach — a warm path changes everything about how the first email should read.
triggers:
  - "warm intro"
  - "get introduced"
  - "intro path"
  - "/warm-intro-map"
author: Ludovic Bodin
version: 1.0
scheduled_routine: "After list build, before outreach"
---

# Warm Intro Map

A warm intro from someone the partner trusts is worth more than ten perfect cold
emails. Before sending anything, find the strongest path to each target and arm
your connectors with a note they can forward without thinking.

## Prerequisites

- The investor target sheet from `investor-list` (the partners to reach).
- `raise-context.md` §11 (founder network: cap table, advisors,
  customers, where your network concentrates) and §1/§9 (the one-liner and spine,
  so the forwardable note is sharp).

## Procedure

1. **Build the connector inventory** from §11: existing investors, advisors,
   notable customers/design partners, and dense network nodes (funds, schools,
   former employers, cities). These are your bridges.

2. **For each target partner, find the strongest path.** Rank path types by
   strength:
   - **Tier A** — a portfolio founder of that exact partner, or a co-investor
     they trust. (The single best path; a "this founder is great" note from
     someone they've made money with is gold.)
   - **Tier B** — an advisor/operator with a real relationship to the partner.
   - **Tier C** — a shared strong node (same firm alumni, mutual close contact).
   - **Cold** — no path; route to personalised cold outreach in `outreach`.
   Use `web_search` to check portfolio overlaps and co-investment patterns; do not
   fetch LinkedIn directly. Where you can only infer a path, mark it `unverified`
   and tell the user to confirm the relationship is real before using it.

3. **Pick ONE best path per target.** Don't scattershot the same partner through
   three people — connectors talk, and it reads as desperate. Reserve a named
   backup path only.

4. **Draft the forwardable note.** For each connector, write a short note the
   *connector* sends to the *partner* — written as if from the connector, not from
   you. It must be: 4–6 sentences, lead with why the connector rates you, one
   crisp line on what the company does (from the spine), one proof point, and a
   soft ask ("worth a quick chat?"). Also draft the even shorter note the user
   sends *to the connector* asking for the intro and giving them the forwardable
   blurb so saying yes costs them nothing.

## Output format

For each target with a path:

```
TARGET: [Partner, Fund]   PATH: [Tier A/B/C]  via [Connector name]   [verified/unverified]
— Note to connector (the ask): [2–3 sentences]
— Forwardable blurb (connector → partner): [4–6 sentences, sounds like the connector]
```

Then a table of any **cold** targets routed to `outreach`, and a flagged list
of **unverified** paths the user must confirm first.

## Principles

- **Make saying yes effortless.** A connector should be able to forward in 15
  seconds. If your note makes them write anything, it's too much work and won't go.
- **Protect your connectors' credibility.** Never ask someone to vouch beyond what
  they actually know. A connector burned once won't intro you again.
- **One path, done well.** Sequencing beats spraying. Warm the best path first;
  hold the backup unless it goes cold.
