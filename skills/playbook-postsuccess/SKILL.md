---
name: playbook-postsuccess
description: "Atomic Scaling PLAYBOOK agent. The strategic counterpart to /prediction-premortem and a deep-cousin of the Merlin Exercise. Assumes an initiative became exponentially more successful than expected 12 months from now, then reverse-engineers the hidden leverage, compounding loops, asymmetric advantages, and emergence dynamics that made it inevitable. Produces a revised strategy with bigger ambition, sharper asymmetry, and stronger compounding. MANDATORY TRIGGERS: 'postsuccess this', 'run a postsuccess', 'reverse-engineer the upside', 'what would make this 10x', 'what would make this 100x', 'find the leverage', 'find the upside', 'expand the possibility space'. STRONG TRIGGERS: 'where's the asymmetric upside', 'what could make this huge', 'what are we underestimating', 'moonshot this', 'what would the exponential version look like'. Do NOT trigger on simple feedback requests, factual questions, or premortem requests. DO trigger when someone has a plan or strategy whose ambition ceiling is the real constraint."
---

# Postsuccess

A postsuccess is the other side of the premortem coin. Instead of imagining a plan failed and working backward to find why, you imagine it succeeded exponentially beyond expectations and work backward to find the hidden leverage, compounding loops, and asymmetric advantages that made it inevitable.

The premortem is grounded in Gary Klein's work on prospective hindsight: when you force the brain into "this is dead, explain how it died," it generates far more specific, honest reasons than "what could go wrong?" The postsuccess uses the same psychological mechanism in reverse. When you force the brain into "this 100x'd, explain how," it generates far more specific, leverage-dense answers than "how could we grow faster?"

It draws on the Merlin Exercise used in elite leadership circles, Peter Diamandis's exponential and abundance thinking, Jeff Bezos's "work backward from inevitability," Jensen Huang's compounding infrastructure logic, Reid Hoffman's blitzscaling timing windows, and the Atomic Scaling principle that small intelligence-dense organizations scale through leverage, not headcount.

The reason this matters for AI-assisted decisions: Claude defaults to plausible, incremental responses. If you ask "how can we grow this?" it gives you a list of reasonable tactics. The postsuccess breaks this pattern by forcing the frame into "this became infrastructure, explain how." Claude stops optimizing the current strategy linearly and starts identifying the recursive systems, asymmetric edges, and emergence dynamics that would actually produce nonlinear outcomes.

Where the premortem expands the **risk** picture, the postsuccess expands the **possibility** space. Run them as a pair on any high-stakes initiative — premortem to find what to insure against, postsuccess to find what to bet on.

---

## when to run a postsuccess

Good postsuccess targets:
- A product or feature you're about to build, where the ambition ceiling might be the real constraint
- A launch plan where you suspect the upside is bigger than the brief
- A pricing or business model that could compound differently than you assume
- A category, ecosystem, or infrastructure play
- A strategy where competitors are anchored to linear assumptions
- An AI-native initiative where leverage looks underexploited
- Anything you've already premortemed — the postsuccess is the natural pair

Bad postsuccess targets:
- Vague ideas with no concrete plan yet (help them plan first, then postsuccess)
- Decisions that are purely operational and have no leverage surface (just answer them)
- Requests for motivational reframing (this is not a pep talk — every claim must be grounded)
- Plans where the real problem is fragility, not ambition (run the premortem instead)

---

## context gathering (the minimum bar)

A postsuccess is only as good as the context it runs on. Vague input produces generic upside that helps nobody. Before running the postsuccess, you need to hit a minimum context threshold.

### step 1: scan for existing context

Before asking the user anything, look for context that's already available:

**A. The current conversation.** The user may have been discussing a plan, a launch, a product, or a strategy earlier in this session. Read back through the conversation and extract whatever's relevant. If they just ran a premortem, reuse that context directly.

**B. The workspace.** Quickly scan for files that might contain relevant context:
- `CLAUDE.md` or `claude.md` (business context, preferences, constraints)
- Any `memory/` folder (audience profiles, business details, past decisions)
- Files the user explicitly referenced or attached
- Any project files, briefs, or plans that relate to the thing being postsuccessed
- Any prior `premortem-transcript-*.md` files in the workspace — pair the postsuccess with the failure analysis

Use `Glob` and quick `Read` calls. Don't spend more than 30 seconds on this. You're looking for the key files that would ground the upside analysis in reality.

### step 2: evaluate context sufficiency

After scanning, check whether you have enough to run a useful postsuccess. You need three things:

1. **What is it?** — A clear understanding of the thing being postsuccessed (a product, a launch, a category move, a pricing change, a strategy). You need to be able to describe it back to the user in one sentence.

2. **Who is it for / who does it affect?** — The audience, the customer, the ecosystem, the stakeholders. Compounding loops and asymmetries depend heavily on who's involved.

3. **What does ordinary success look like?** — What outcome would the user already consider a win? Exponential success is defined by what would be a 10x or 100x version of that. If you don't know what the baseline win is, you can't define what nonlinear looks like.

### step 3: fill gaps conversationally

If you have all three, proceed immediately to the postsuccess. Don't ask unnecessary questions.

If you're missing one or more, ask for the most important missing piece first. One question at a time. Evaluate after each answer whether you now have enough. Keep asking until the threshold is met, but never ask more than you need.

Examples of focused context questions:
- "What specifically are you about to launch/build/decide?" (if you don't know what it is)
- "Who is this for?" (if you know the plan but not the audience)
- "What's the win you're currently aiming for?" (if you have the plan and audience but not the baseline)

The goal is to reach the minimum bar as fast as possible without making the user feel like they're filling out a form. Conversational, not interrogative.

---

## how a postsuccess session works

### step 1: set the frame

After gathering sufficient context, set the postsuccess frame explicitly. Something like:

"OK, I have enough context. Let's run the postsuccess. Here's the premise: it's 12 months from now. [The plan/launch/initiative] didn't just work — it became exponentially more successful than expected. Adoption accelerated. Users became evangelists. Competitors reacted too slowly. The organization gained strategic gravity. We're looking back and trying to understand what unexpectedly worked."

This framing matters. It shifts the mode from "evaluate the upside of this plan" (which triggers cautious extrapolation) to "explain why this became inevitable" (which triggers identification of recursive systems, asymmetries, and emergence dynamics).

### step 2: generate leverage points (raw postsuccess)

Run the raw postsuccess as a single comprehensive analysis. No prescribed categories, no lenses, no constraints. Just the core thought experiment:

"This initiative became 10-100x more successful than expected, 12 months from now. Generate every genuine reason it compounded. Be comprehensive. Be specific. Ground every reason in the actual details of the plan. Don't pad with weak reasons and don't stop early if there are more. Search for hidden leverage, exponential loops, strategic asymmetries, emergence dynamics, and possibility space the original plan didn't see."

The output should be a comprehensive list of leverage points, each stated in 1-2 sentences. Be honest and thorough. Some plans might have 4 genuine leverage points. Others might have 9. The number should be whatever is real for this specific plan.

Each leverage point should be:
- Specific to this plan (not generic moonshot language that applies to anything)
- Grounded in actual details the user provided
- A genuine compounding mechanism (not a one-time gain or a vague aspiration)
- Anchored in incentives, psychology, systems dynamics, technology shifts, distribution mechanics, or operational reality

### step 3: deep-dive agents (one per leverage point, all in parallel)

Take every leverage point from step 2 and spawn one sub-agent per point, all in parallel. Each agent takes its assigned leverage point and goes deep on it independently.

**Sub-agent prompt template:**

```
You are an investigator in a postsuccess analysis. You've been assigned one specific leverage point to analyze in depth.

The plan:
---
[full context: what it is, who it's for, what ordinary success looks like, plus relevant workspace context]
---

POSTSUCCESS FRAME: It is 12 months from now. This plan became exponentially more successful than expected.

YOUR ASSIGNED LEVERAGE POINT: [the specific leverage point from step 2]

Your job is to go deep on this one leverage point. Write the story of how it actually played out. Be specific. Use details from the plan. Make it feel real, like a case study of something that actually happened. Ground it in incentives, psychology, systems dynamics, technology shifts, distribution mechanics, or operational reality — not motivational language.

Your output should include:

1. THE COMPOUNDING STORY: A 2-3 paragraph narrative of how this specific leverage point compounded. Use details from the plan. Name specific moments where things accelerated and why. Show the mechanism — what got stronger as it scaled.

2. THE HIDDEN ASSUMPTION INVERTED: The one limiting assumption the user is currently holding that, if dropped, made this leverage possible. State it in one sentence (e.g., "we assumed X was a constraint, but it turned out to be the lever").

3. EARLY ACCELERATION SIGNS: 1-2 concrete, observable signals the user could watch for that would indicate this leverage point is starting to compound. These should be things you can actually see or measure, not vague feelings (e.g., "organic referrals exceed paid acquisition by week 6," "API calls grow faster than new signups").

Keep the total response under 300 words. Be direct. Don't hedge. Don't inflate. No motivational fluff, no unsupported TAM claims, no generic virality narratives.
```

### step 4: synthesis

After all agents complete, read every deep-dive and produce the synthesis:

**POSTSUCCESS REPORT**

1. **The Most Likely Compounding Path** — Which leverage point is most probable to compound given what you know about the plan? Why? This is the one the user should design for first.

2. **The Largest Asymmetric Upside** — Which leverage point would produce the most outsized outcome if it compounded, even if it's less likely? This is the one worth designing optionality around.

3. **The Inverted Assumption** — Across all the deep-dives, what's the single biggest limiting belief the user is making that, if dropped, would unlock the most upside? This is often where the real value of the postsuccess lives: the constraint that was self-imposed.

4. **The Revised Strategy** — Based on the leverage analysis, what specific changes would make the plan compound harder? Be concrete. Don't say "lean into network effects." Say "ship the public API in week 3 and let third parties build on top, so usage grows faster than your team can." Each revision should map directly to a specific leverage point and increase ambition, asymmetry, or compounding.

5. **The Pre-Launch Leverage Checklist** — 3-5 specific things the user should design in, instrument, or test for before executing — so the compounding loops actually have a chance to fire. Each one should enable or detect one of the leverage points identified.

### step 5: generate the postsuccess report

Generate a visual HTML report and save it to the user's workspace.

**File:** `postsuccess-report-[timestamp].html`

The report should be a single self-contained HTML file with inline CSS. Design principles:
- Dark background (#0a0e1a or similar), clean typography, easy to scan — visually distinct from the premortem report (use a green/gold accent palette to signal upside, vs. red/amber for premortem)
- The synthesis section (most likely compounding path, largest asymmetric upside, inverted assumption, revised strategy, leverage checklist) should be prominently displayed at the top
- One visual card per leverage point showing the deep-dive analysis. Each card should display the leverage point as a header, the compounding story, the inverted assumption, and the early acceleration signs. Use distinct accent colors for each card so they're visually scannable.
- A clear visual indicator of leverage magnitude / compounding speed for each point
- A grid showing the number of agents that ran and their findings at a glance
- Footer with timestamp and what was postsuccessed

Open the HTML file after generating it.

### step 6: save the transcript

Save the full postsuccess transcript as `postsuccess-transcript-[timestamp].md` in the same location. This includes:
- The context that was gathered (what, who, baseline success)
- The raw leverage points
- All agent deep-dives
- The full synthesis

---

## output format

Every postsuccess session produces two files:

```
postsuccess-report-[timestamp].html # visual report for scanning
postsuccess-transcript-[timestamp].md # full transcript for reference
```

The user sees the HTML report first. The transcript is there if they want to dig deeper into the reasoning behind each leverage point.

Also provide a concise summary in the chat: the most likely compounding path, the inverted assumption, and the single most important revision to the strategy. Three sentences max. The report has the full details.

---

## the lenses (use these to widen the search, not to box it in)

When generating leverage points and deep-dives, consciously search across these lenses. Don't force every initiative to have something in every lens — but make sure you've looked, so you don't miss the obvious source of compounding.

**Hidden leverage.** Small inputs producing outsized outcomes — overlooked distribution channels, AI-native multipliers, pricing asymmetries, retention loops, strategic partnerships, behavioral reinforcement systems, creator and community dynamics, ecosystem gravity. *What scales nonlinearly? What compounds automatically? What becomes stronger with usage?*

**Exponential systems.** Recursive loops, self-improving systems, data flywheels, marketplace effects, network effects, agent-to-agent coordination, automation compounding, liquidity gravity, infrastructure transitions. *What improves itself automatically? What becomes difficult to replace? What transitions from product into infrastructure?*

**Strategic asymmetries.** Timing windows, narrative advantages, speed asymmetries, talent density, AI-native operational leverage, perception gaps, capital efficiency, organizational design advantages, cultural asymmetries. *Why could a small team outperform incumbents? What are competitors psychologically unable to see? What appears small now but compounds massively later?*

**Possibility expansion.** Adjacent categories, ecosystem expansion, second-order opportunities, infrastructure positioning, strategic inevitability pathways. *What business are we REALLY becoming? What adjacent market naturally emerges? What becomes inevitable if this succeeds? What happens if this becomes infrastructure?*

---

## example: postsuccessing a product launch

**User:** "postsuccess this: I'm about to launch a $297 live workshop on how to use Claude Cowork for marketing teams. 50 seats. Targeting marketing managers at companies with 10-50 employees."

**Raw postsuccess identifies 6 leverage points:**
1. The workshop alumni form a private Slack that becomes the de facto "AI for marketing managers" community — every new cohort joins it, retention compounds, and the community becomes the real product
2. Workshop recordings get cut into 30-second tactical clips that drive evergreen inbound — one workshop produces 18 months of distribution
3. Each cohort produces 2-3 case studies that double as sales assets for the next cohort, creating a self-reinforcing demand loop
4. Marketing managers bring the playbook in-house and pull their agencies into the ecosystem, opening a B2B2A channel you never planned for
5. The workshop is really a paid filter that identifies the top 10% of operators, who become the founding cohort of a higher-ticket mastermind or consulting arm
6. By teaching Cowork to marketing teams publicly, you become the default reference Anthropic and partners point to — distribution gravity you didn't pay for

**6 agents go deep on each leverage point independently, producing compounding stories, inverted assumptions, and early acceleration signs.**

**Synthesis:** Most likely compounding path is the alumni community: marketing managers don't have a peer group for AI-native work, and the Slack becomes stickier than the workshop itself. Largest asymmetric upside is the partner-pointer effect — being the canonical "marketing teams + Cowork" reference compounds harder than any paid channel. Inverted assumption: you're treating the workshop as the product, but the workshop is the customer acquisition mechanism for a community/mastermind/reference business that's 10-50x larger. Revised strategy: keep the $297 workshop, but design the Slack, the clip pipeline, and the alumni case-study machine before week 1, so the compounding loops fire from cohort one.

---

## important notes

- **Always spawn all leverage agents in parallel.** Sequential spawning wastes time and lets earlier responses anchor later ones.
- **Always set the postsuccess frame explicitly.** "This became exponentially more successful than expected" is the psychological mechanism that makes this work. Without it, the analysis defaults to incremental optimization instead of honest leverage identification.
- **Be comprehensive but not padded.** Find every genuine leverage point. Don't stop at 3 if there are 7. But don't force 7 if there are only 3.
- **The synthesis is the product.** Most users will read the synthesis and skim the individual leverage cards. Make the synthesis specific and actionable.
- **Ground everything.** No motivational fluff, no generic positivity, no unsupported TAM inflation, no shallow virality narratives, no monopoly fantasies. Every claim anchors in incentives, psychology, systems dynamics, technology shifts, distribution mechanics, or operational reality. If a leverage point doesn't have a mechanism, cut it.
- **Expand responsibly, not delusionally.** Prefer leverage over effort, systems over tactics, loops over campaigns, compounding over intensity, inevitability over hustle, asymmetric upside over local optimization — but every claim must be defensible.
- **The revised strategy must be concrete.** Don't say "lean into network effects." Say "ship the public API in week 3 so third parties can build on top of your usage data." Every revision should be something the user can actually design in this week.
- **Respect the minimum context threshold.** Running a postsuccess on insufficient context produces generic upside that wastes the user's time.
- **This is the natural pair of `/prediction-premortem`.** The premortem expands the risk picture; the postsuccess expands the possibility space. If the user has already premortemed an initiative, pick up the same context and run the postsuccess as the second half. If the user seems to want failure analysis rather than leverage analysis, suggest the premortem instead.

---

## the final question

When in doubt, anchor the whole session — and every deep-dive — to this:

> "If this became 100x larger than expected,
> what would have been the REAL reason?"
