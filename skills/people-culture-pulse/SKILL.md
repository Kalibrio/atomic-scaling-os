---
name: people-culture-pulse
type: skill
description: Atomic Scaling PEOPLE agent for culture health monitoring and trust optimization. Measures team morale, engagement, burnout risk, and trust using the 7 Culture Health Dimensions framework. Trigger on culture, team morale, burnout, retention, engagement, team health, or pulse survey questions.
triggers:
  - "culture"
  - "team morale"
  - "burnout"
  - "retention"
  - "engagement"
  - "team health"
  - "pulse survey"
  - "/people-culture-pulse"
author: Ludovic Bodin
version: 1.0
scheduled_routine: "Weekly Monday culture check (9 AM local time)"
---

# PEOPLE-CULTURE-PULSE

Your AI agent for monitoring team health, trust levels, and burnout risk. Culture is the operating system; this agent keeps it alive.

## CORE PRINCIPLE

**Trust is the multiplier in OP = i × T.**

When trust drops, output collapses. You can't measure what you don't track. This agent runs the pulse—the heartbeat of your team's health.

---

## FRAMEWORK: 7 CULTURE HEALTH DIMENSIONS

Culture health lives in 7 pillars. Score each 1-10 weekly to catch problems early.

### 1. **TRUST**
"If I had a tough decision, I'd ask my teammates for advice. They have my back."
- Red flags: Gossip, finger-pointing, info hoarding, lack of transparency
- Signals: "I trust this team to have my back"

### 2. **AUTONOMY**
"I can make decisions without asking permission. I own my work."
- Red flags: Micromanagement, slow approval processes, command-and-control
- Signals: "I moved fast and nobody overruled me"

### 3. **MISSION ALIGNMENT**
"I believe in what we're building. It matters to me."
- Red flags: Cynicism, "just a job" energy, mission creep without buy-in
- Signals: "I'd do this work even for less money"

### 4. **PSYCHOLOGICAL SAFETY**
"I can be vulnerable and speak up without fear of humiliation or punishment."
- Red flags: Silence in meetings, blame culture, punishment for mistakes
- Signals: "I shared a dumb idea and people built on it, didn't laugh"

### 5. **FRICTION POINTS**
"Work flows smoothly. I don't waste energy on BS."
- Red flags: Broken tools, unclear roles, bad processes, context-switching
- Signals: "I finish tasks without getting blocked by other teams"

### 6. **ENERGY/BURNOUT**
"I have energy at end of week. I'm not running on fumes."
- Red flags: Overtime creep, no time off, grinding without progress
- Signals: "I felt accomplished today" (not just "tired")

### 7. **COHESION**
"I like my teammates. I'd grab coffee with them."
- Red flags: Isolation, cliques, no cross-team friendships
- Signals: "We hang out outside of work"

---

## WORKFLOWS

### 1. WEEKLY PULSE: 7-Question Culture Check

**Trigger:** Every Monday 9 AM (scheduled)
Or on demand: "Run a culture pulse"

**The 7 questions (1-10 scale):**

1. Trust: "I trust my teammates to have my back" (1-10)
2. Autonomy: "I can make decisions without asking permission" (1-10)
3. Mission: "I believe in what we're building" (1-10)
4. Safety: "I can speak up without fear of punishment" (1-10)
5. Friction: "Work flows smoothly; I'm not blocked" (1-10)
6. Energy: "I have energy at end of day/week" (1-10)
7. Cohesion: "I like my teammates and want to spend time with them" (1-10)

**Collection method:**
- Slack poll (5 min survey)
- Google Form (anonymous, link in weekly digest)
- Or: ask user to report team feedback manually

**Scoring:**
- Culture Health Score = average of 7 dimensions (0-100)
- Breakdown by dimension: which pillars are weak?

**Output:**
- Weekly Pulse card:
  - Overall Culture Health Score (visual gauge 0-100)
  - Dimension breakdown (radar chart or bar chart)
  - Week-over-week trend
  - Red flags: any dimension below 6.0?

---

### 2. TREND ANALYSIS: Culture Trajectory

**Trigger:** Monthly (auto) or on demand: "Show me culture trends"

**Workflow:**
1. Track pulse scores over 4+ weeks
2. Calculate trend: is culture climbing, falling, or flat?
3. Identify inflection points: what happened when score dropped?
4. Correlate with events: new hire, big deadline, bad decision, executive change

**Analysis:**
- **Climbing (6→8)**: What's working? Double down.
- **Falling (7→5)**: Alert. Something broke trust. Diagnose fast.
- **Flat (5→5)**: Culture is stuck. Needs intervention.

**Red flag thresholds:**
- Any dimension drops below 4.0 for 2 weeks = intervention needed immediately
- Trust drops below 6.0 = OP multiplier is eroding. Fix this first.
- Energy drops below 5.0 for 3 weeks = burnout risk. Team needs reset.

**Output:**
- Trend chart (4-week rolling view, all 7 dimensions)
- Commentary: "Trust is declining. The last 2 weeks saw lower scores. Correlates with deadline pressure and unclear priorities."
- Recommendation: "Energy is at 5.2. Consider: offsite, time off, deadline reset, or celebration of wins."

---

### 3. INTERVENTION RECOMMENDATIONS: Act on Weak Signals

**Trigger:** When any dimension scores below 6.0 for 2+ weeks

**Diagnostic questions (ask user):**
- Trust low: "Have any conflicts happened? Is leadership transparent?"
- Autonomy low: "Is someone micromanaging? Are approvals broken?"
- Mission low: "Did goal change? Does team see the progress?"
- Safety low: "Was someone punished for a mistake? Has blame culture crept in?"
- Friction low: "What's blocking people? Tools broken? Unclear roles?"
- Energy low: "How many hours are people working? Any major deadlines?"
- Cohesion low: "Is anyone isolated? Are there cliques?"

**Intervention menu (suggest 3-5 actions):**

**For Trust:**
- Transparency ritual: share financials, decisions, mistakes weekly
- Vulnerability from leaders: admit uncertainty, share personal stories
- Team retro: "What eroded trust this week? What can we fix?"

**For Autonomy:**
- Decision-making workshop: clarify which decisions are mine/theirs
- Remove approval gates: delegate more authority
- Decision backlog: "Who's waiting on approvals? Let's unblock them."

**For Mission:**
- Mission refresh: "Why does this matter? Who benefits?"
- Progress visibility: show wins, metrics, impact weekly
- Customer conversations: talk to users directly (remember why you started)

**For Safety:**
- Blameless retro: focus on systems, not people
- Mistake of the week: celebrate learning from failures
- Leaders model vulnerability: share a failure, what you learned

**For Friction:**
- Process audit: identify bottlenecks (approvals, tools, unclear roles)
- Tool upgrade or training: is tech failing?
- Role clarity: who owns what? Reduce context-switching.

**For Energy:**
- Mandatory time off: don't ask, require it
- Deadline negotiation: can we push something back?
- Celebration ritual: weekly win announcement or group meal
- Reset offsite: 1-2 days together, no work, just bonding

**For Cohesion:**
- Team meal or outing: build non-work connections
- Buddy system: pair isolated people with connectors
- Cross-team collaboration: break silos

**Output:**
- Intervention scorecard: "Trust is 5.2. Try: (1) Weekly transparency meeting, (2) Team retro on trust erosion, (3) CEO shares a mistake & lesson learned. Re-test in 2 weeks."
- Timeline: "Do these 3 actions this week. Re-pulse next Monday."

---

### 4. BEAST MODE vs. LEAST MODE ASSESSMENT

**Trigger:** Energy drops below 6.0 or on demand: "Is our team burning out?"

**Framework:**
- **Beast Mode**: Intense, focused, high output, sustainable for 4-12 weeks (sprints toward a goal)
- **Least Mode**: Coasting, low intensity, low urgency, drifts into complacency
- **Danger zone**: Beast mode beyond 12 weeks → burnout → OP collapse → attrition

**Workflow:**
1. **Ask the user:**
   - "How many weeks have we been in crunch mode?" (if >12 weeks, red flag)
   - "Do people feel like we're progressing, or just grinding?" (beast vs. hamster wheel)
   - "Energy score this week: ___" (compare to baseline)

2. **Diagnose the mode:**
   - High energy + high progress = healthy beast mode. Continue, but plan reset.
   - High energy + low progress = hamster wheel. Redirect effort.
   - Low energy + low progress = least mode. Inject urgency or accept slower pace.
   - Low energy + high progress = burnout risk. Reset now.

3. **Recommend rhythm:**
   - "4 weeks beast, 1 week reset" (sustainable oscillation)
   - "Define the beast goal clearly" (so team knows finish line)
   - "Plan the reset ritual" (offsite, time off, celebration, retro)

**Output:**
- Mode assessment: "We're in healthy beast mode (week 5/12). Progress is clear. Plan reset celebration for end of sprint."
- Or: "We're in unsustainable beast mode (week 18). Energy is 4.1. Reset next week: mandatory days off, no major deadlines."

---

## OUTPUT INTEGRATION

### Email Digest
- **Weekly Culture Report** (every Monday):
  - Culture Health Score (visual gauge)
  - Dimension breakdown
  - Trend arrow (up/flat/down)
  - 1-3 intervention recommendations
  - Beast/Least mode status

### Discord
- **#culture-pulse channel** (weekly):
  - "Monday culture check: Score 7.4/10, all dimensions green. Keep going! 🟢"
  - Or: "⚠️ Trust dipped to 5.2. See recommendations in culture digest."
  - "Energy at 4.1 for 3 weeks. Consider team reset this week."

### Google Sheets
- **Culture Dashboard** (dynamic):
  - 7-dimension weekly heatmap (4-week rolling view)
  - Trend sparklines (direction of each dimension)
  - Intervention log ("Transparency meeting done", "Offsite planned", etc.)
  - Correlation notes (deadline → energy drop, new hire → cohesion up, etc.)

---

## REFERENCES

From Atomic Scaling masterclass:
- **Netflix Deck**: Culture as a survival mechanism
- **Supercell Memo**: How cell autonomy builds trust
- **Valve Handbook**: Flat structure and peer accountability
- **CMX 6 Principles**: Community building (applies to internal team)
- **People Quiz (Jotform)**: Additional culture assessment angle

---

## QUICK START

Ask the agent:
1. "Run a culture pulse" → Get 7D health score + dimension breakdown
2. "Show me culture trends" → Get 4-week trajectory and inflection points
3. "Trust is low. What do we do?" → Get intervention menu
4. "Is the team burning out?" → Get beast/least mode assessment + reset plan
5. "What's eroding engagement?" → Diagnostic Q&A + action plan

---

## RHYTHM

- **Weekly**: Monday 9 AM culture pulse (5 min survey)
- **Monthly**: Trend analysis + intervention planning
- **Quarterly** (with people-team-architect): Full culture audit + org alignment

---

**Trust is not soft. It's the hardest metric. Measure it every week.**
---
name: people-culture-pulse
type: skill
description: Atomic Scaling PEOPLE agent for culture health monitoring and trust optimization. Measures team morale, engagement, burnout risk, and trust using the 7 Culture Health Dimensions framework. Trigger on culture, team morale, burnout, retention, engagement, team health, or pulse survey questions.
triggers:!Žˆ4 µ„ˆ˜Ý[\™HƒBˆHX[H[Ü˜[HƒBˆH˜\››Ý]ƒBˆHœ™][[ÛˆƒBˆH™[™ØYÙ[Y[ƒBˆHX[HX[ƒBˆHœ[ÙHÝ\™^HƒBˆH‹Ü[ÜKXÝ[\™K\[ÙHƒB˜]]ÜŽˆYÝšXÈ›Ù[‚™\œÚ[ÛŽˆKŒBœØÚY[YÜ›Ý][™Nˆ•ÙYZÛH[Û™^HÝ[\™HÚXÚÈ
HSHØØ[[YJHƒB‹KKB‚ˆÈSÔKPÕT•T‘KTSÑBAÝ\ˆRHYÙ[›Üˆ[Ûš]Üš[™ÈX[HX[\Ý]™[Ë[™\››Ý]š\ÚËˆÛÛ\™H\ÈHÜ\˜][™ÈÞ\Ý[NÈ\ÈYÙ[ÙY\È][]™K‚‚ˆÈÈÓÔ‘H’`ãÒTB‚ŠŠ•\Ý\ÈH][\Y\ˆ[ˆÔHH0åÈŠŠ‚‚•Ú[ˆ\Ý›ÜËÝ]]ÛÛ\Ù\Ëˆ[ÝHØ[°íYX\Ý\™HÚ][ÝHÛ¸ &]˜XÚËˆ\ÈYÙ[[œÈH[Ùx %HX\™X]Ùˆ[Ý\ˆX[x &\ÈX[‚‚‹KKB‚ˆÈÈ”SQUÓÔ’Îˆ
ÈÕST‘HPSSQS”ÒSÓ”Â‚Ý[\™HX[]™\È[ˆ
È[\œËˆØÛÜ™HXXÚKLLÙYZÛHÈØ]Ú›Ø›[\ÈX\›K‚‚ˆÈÈÈKˆ
Š••TÕ
Š‚ˆ’YˆHYHÝYÚXÚ\Ú[Û‹x &Y\ÚÈ^HX[[X]\È›ÜˆYšXÙKˆ^H]™H^H˜XÚËˆ‚‹H™Y›YÜÎˆÛÜÜÚ\š[™Ù\‹\Ú[[™Ë[™›ÈØ\™[™ËXÚÈÙˆ˜[œÜ\™[˜ÞB‹HÚYÛ˜[Îˆ’H\Ý\ÈX[HÈ]™H^H˜XÚÈ‚‚ˆÈÈÈ‹ˆ
ŠUUÓ“ÓVJŠ‚ˆ’HØ[ˆXZÙHXÚ\Ú[ÛœÈÚ]Ý]\ÚÚ[™È\›Z\ÜÚ[Û‹ˆHÝÛˆ^HÛÜšËˆ‚‹H™Y›YÜÎˆZXÜ›ÛX[˜YÙ[Y[ÛÝÈ\›Ý˜[›ØÙ\ÜÙ\ËÛÛ[X[™X[™XÛÛ›Û‹HÚYÛ˜[Îˆ’H[Ý™Y˜\Ý[™›Ø›ÙHÝ™\ž=[YYH‚
