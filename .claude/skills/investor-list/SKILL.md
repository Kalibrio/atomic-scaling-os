---
name: investor-list
type: skill
description: Build a researched, ranked target list of the ~40 investors actually worth your time for this raise, output as a tab-separated sheet ready to paste into Google Sheets. Use this skill whenever the user asks to build an investor list, find VCs/angels/funds to pitch, identify which funds fit their round, research investors, or expand/score their fundraising pipeline. Trigger it even for casual phrasings like "who should I raise from?" or "find me funds for a seed round". Prefers depth over volume — 40 right-fit targets beat 400 names.
triggers:
  - "investor list"
  - "find VCs"
  - "target funds"
  - "who should I raise from"
  - "/investor-list"
author: Ludovic Bodin
version: 1.0
scheduled_routine: "Once at process start; expand as needed"
---

# Investor List

Inbound won't fill a round. You build the list yourself: the funds whose thesis,
stage, check size, and portfolio mean they will actually get what you're building.
The goal is ~40 high-conviction targets, each researched and scored, in a sheet
you can run a pipeline against.

## Prerequisite

Read `raise-context.md`, especially §2 (the raise), §5 (market),
§10 (ideal investor profile), and §8 (competition → conflicts to exclude). If the
ideal-investor profile is `TBD`, stop and run the `raise-context` skill first — you
cannot target without it.

## Procedure

1. **Derive the target archetype** from §10: stage, check size, sector theses,
   geo, and the portfolio signals that indicate fit. Note anti-fit conflicts
   (funds holding a direct competitor) to exclude.

2. **Source candidates.** Use `web_search` per thesis/geo bucket — search each
   bucket separately rather than one broad query (e.g. "seed funds creator economy
   Europe", "AI infra pre-seed leads", then named-partner searches). Pull from:
   recent relevant rounds in your space (who led them), thesis blog posts, partner
   social activity, and the existing-investor / advisor network in §11. Do NOT
   fetch LinkedIn directly (bot-blocked) — use web_search and the fund's own site.

3. **Research each candidate** enough to score it. For the fund: stage, check
   size, lead vs. follow behaviour, recent activity (are they deploying now?),
   relevant portfolio. For the *partner* (target the human, not just the logo):
   what they've backed, what they write about, any public thesis you map to.

4. **Score fit** on a 1–5 Circle:
   - **Circle 1** — thesis bullseye, right stage/check, active, warm path likely.
   - **Circle 2** — strong fit, maybe needs an intro.
   - **Circle 3** — plausible, worth a personalised cold approach.
   - **(4–5)** — backup / later. Don't pad the top tiers to feel busy.
   Aim for ~40 total weighted toward Circles 1–2. Cut anyone you wouldn't be
   genuinely glad to have on the cap table.

5. **Sequence.** Mark a small first wave (3–6 "calibration" targets you like but
   aren't your dream lead) so you can learn from real conversations before
   approaching the top of Circle 1.

## Output format — paste-ready TSV

One code block, tab-separated, with this header row exactly:

```
#	Fund	Partner	Circle	Stage	Check Size	Thesis Fit (1 line)	Recent Relevant Deal	Lead/Follow	Warm Path?	Conflict?	Source	Notes
```

- **Warm Path?** = `yes` / `maybe` / `cold` (the `warm-intro-map` skill resolves these).
- **Conflict?** = name any competing portfolio company, else `none`.
- **Source** = where the fit evidence came from, so the user can verify.
- Sort by Circle ascending, then by Warm Path (yes first).
- After the block, give a 3-line summary: how many in each Circle, the suggested
  calibration wave, and the top 3 dream targets to save for last.

## Principles

- **Target partners, not funds.** Deals are championed by one human. Every row's
  research should make the eventual outreach personal.
- **Conflicts are disqualifiers, not footnotes.** A fund holding a direct
  competitor sees your data and can't lead. Exclude or flag prominently.
- **No padding.** A clean 35 beats a bloated 80. Volume creates pipeline noise
  the `pipeline` skill then has to manage.
