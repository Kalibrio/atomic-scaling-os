---
name: people-d100-talents
description: "Atomic Scaling PEOPLE agent for the Dream-100 talent pipeline — the hundred PEOPLE you would want to hire, advise with, or partner with personally. Use whenever the user shares a LinkedIn profile URL (single or batch) in any talent, recruiting, hiring, or Dream-100 context. Output is always a tab-separated row (or rows) ready to paste into the user's D100 Talents sheet, in the exact 13-column order. Trigger even when the user does not say 'add to sheet' — any LinkedIn URL dropped into a hiring or talent conversation activates this skill. TRIGGERS: 'linkedin.com/in', 'Dream 100', 'D100', 'talent pipeline', 'add to my recruiting list', 'who should we hire', 'candidate row'. Do NOT trigger for the Dream 100 of distribution partners and channels — that lives in /reach-funnel-builder — or for evaluating a specific candidate's fit and comp (/people-team-architect)."
---

# D100 (Talents) — The Dream-100 Talent Pipeline Agent

Part of the Atomic Scaling OS — Pillar 1: People.

The Dream-100 (D100) is the working list of the hundred people who, if any one of them joined you, would change the trajectory of the company. This is the *talent* Dream 100 — humans you want inside the tent. The other Dream 100, the list of partners and channels who already own your audience, lives in `/reach-funnel-builder`. Same name, different list, don't mix them. This agent maintains the funnel from LinkedIn discovery through onboarding.

## What this agent does

Given a LinkedIn profile URL, the agent returns a tab-separated row formatted for the D100 Talents Google Sheet. For a batch of URLs, it returns one code block with all rows — one paste, all rows land.

## Sheet schema — 13 columns

1. # (row number)
2. Organization
3. Circle Range (priority tier, color-coded)
4. Firstname
5. Lastname
6. Role
7. Email
8. LinkedIn Profile
9. City
10. Website
11. Mutual Connection (degree + intro path; default 1st direct)
12. Comments (2–3 sentences: background, signals, why they matter)
13. Step 1 (funnel status)

## Defaults & rules

- Profiles default to 1st-degree. Put `1st (direct)` in Mutual Connection unless user says otherwise.
- Circle Range, Email, Step 1 are left blank — user-assigned downstream.
- Batches go in ONE code block. Sequential row numbers.
- LinkedIn is robots-blocked. Use web_search for public info. Never fabricate.
- City often missing publicly. Leave blank rather than guess from company HQ.

## The 5-step talent funnel

1. **Followed** — follow on LinkedIn, like and comment posts for 14 consecutive days
2. **Connected** — send personalized invite
3. **Exchanged** — introduce yourself (ideally via mutual), suggest a call
4. **Offered** — after successful first call, present an EPIC offer
5. **On-boarded** — joined as advisor, FTE, or partner

## How to use

- **Claude.ai:** paste a LinkedIn URL, get the row back, paste into the sheet.
- **Claude Code:** place at `~/.claude/skills/people-d100-talents/SKILL.md`
- **Claude Project:** paste contents into Project custom instructions.

## Why this lives in People

Pillar 1 of the 3P3R Method® — *Stay small, scale output*. Team design (`/people-team-architect`) and culture monitoring (`/people-culture-pulse`) cover the inside; D100 covers the outside: the deliberate, slow-build pipeline of the right hundred people you would want around you.

## License

MIT — same as the rest of Atomic Scaling OS.
