# Install Atomic Scaling OS

Two ways to use the 15 agents. The first one (Claude Code Desktop) is the recommended setup — it's what the skills are designed for, and it works without ever touching a terminal.

| You want to… | Use |
|---|---|
| Run the skills on your Mac/PC with parallel sub-agents, HTML reports written to your computer, scheduled loops, and one-click updates from GitHub | **[Path A — Claude Code Desktop](#path-a--claude-code-desktop-recommended-5-minutes)** |
| Run a skill in your browser at claude.ai with no install (slower, no parallel agents, no file output) | **[Path B — Claude.ai web chat](#path-b--claudeai-web-chat)** |

---

## Path A — Claude Code Desktop (recommended, 5 minutes)

If you've never used Claude Code before, follow these exact steps. No terminal needed.

### Step 1 — Download Claude Code Desktop

1. Open your browser and go to **https://claude.com/code**
2. Click **"Download for Mac"** (or Windows / Linux — the page auto-detects your OS).
3. Open the downloaded `.dmg` file.
4. Drag **Claude Code** into your **Applications** folder.
5. Open **Applications** → double-click **Claude Code**.
6. First launch: macOS will ask *"Are you sure you want to open this app from the internet?"* → click **Open**.
7. Sign in with the same Claude account you use on claude.ai (button says *"Sign in with Claude"* — it opens a browser, you log in, you come back).

You should now see a Claude Code window. It looks like a chat with a text box at the bottom and a sidebar showing your project folder.

### Step 2 — Open any folder as a project

Claude Code needs a "project folder" — it can be anything, even an empty one. The skills don't care which folder, they just need a place to write report files.

1. In Claude Code: **File menu → Open Folder…**
2. Pick any folder. If you don't have one ready, create a folder on your Desktop called `atomic-scaling-test` and pick that.

You'll see the folder name appear at the top of the Claude Code window.

### Step 3 — Install the Atomic Scaling OS plugin

Now you're going to type two commands. **Type them into the chat box at the bottom of the Claude Code window** — the same place you'd type a message, exactly like ChatGPT.

**Type this and press Enter:**

```
/plugin marketplace add kalibrio/atomic-scaling-os
```

Claude Code will respond confirming it added the repo as a marketplace. Takes 1–2 seconds.

**Then type this and press Enter:**

```
/plugin install atomic-scaling-os@kalibrio/atomic-scaling-os
```

Claude Code will respond saying the plugin is installed and 15 skills are now available.

### Step 4 — Test that it worked

In the same chat box, just type a `/` (forward slash). A menu pops up showing available commands. Start typing `play` — you should see:

- `/playbook-mission-designer`
- `/playbook-postsuccess`
- `/playbook-rhythm-keeper`

If you see those three, you're done installing. 🎉

### Step 5 — Run your first skill

Let's try `/playbook-postsuccess` on a real example. Type into the chat:

```
/playbook-postsuccess

I'm thinking of running a 6-week paid cohort for founders
on how to operationalize the 3P3R Method using AI agents.
$2,000 per seat, 30 founders per cohort. Target: founders
doing $500k–$5M ARR who want to scale without hiring.
```

Press Enter.

What you should see:

1. Claude confirms it understands the context and sets the *"12 months from now, this 100x'd"* frame.
2. It generates a list of 5–8 leverage points (hidden compounding mechanisms).
3. It spawns one sub-agent per leverage point in parallel — you'll see them running.
4. It synthesizes the most likely compounding path, biggest asymmetric upside, the inverted assumption, a revised strategy, and a pre-launch leverage checklist.
5. It writes two files into your project folder: `postsuccess-report-[timestamp].html` (opens in your browser automatically) and `postsuccess-transcript-[timestamp].md`.

Total run: ~2–3 minutes.

### Step 6 — Try the other 14 skills

Once installed, you have all 15 available the same way. Type `/` in the chat box and start typing a pillar name:

- Type `/peo` → People (`team-architect`, `culture-pulse`, `d100-talents`)
- Type `/pre` → Prediction (`hypothesis-engine`, `forecast-analyst`, `premortem`)
- Type `/play` → Playbook (`mission-designer`, `rhythm-keeper`, `postsuccess`)
- Type `/rev` → Revenue (`freemium-architect`, `optimizer`)
- Type `/rea` → Reach (`funnel-builder`, `growth-tracker`)
- Type `/ret` → Retention (`love-machine`, `community-engine`)

Each one is a slash command that opens a session with that specialist agent.

### Step 7 — Two power-user tricks

**Trigger by phrase instead of slash command.** Every skill registers natural-language triggers in its description. So instead of `/playbook-postsuccess` you can just say *"postsuccess this: …"* or *"what would make this 100x?"* — Claude Code matches the phrase and auto-invokes the right skill.

**Update when the repo changes.** New skills or improvements land in the GitHub repo regularly. To pull them:

```
/plugin update atomic-scaling-os
```

### Troubleshooting (Path A)

| Problem | Fix |
|---|---|
| `/plugin` commands don't appear in the menu | You're on an older Claude Code. Update via **Claude Code menu → Check for Updates**. Need v1.0.33+. |
| Plugin installs but `/playbook-postsuccess` doesn't appear when typing `/play` | Type `/reload-plugins` and press Enter. Then try again. |
| You don't see the chat box | Click into the main window first. The chat box is at the bottom. If still missing: **View menu → Show Chat**. |
| Skill runs but no HTML file appears in your folder | The skill needs a folder open as a project (Step 2). If you skipped it, do it now and re-run the skill. |
| You get "permission" prompts when the skill writes files | Click **Allow** — it's writing to the folder you opened in Step 2. |
| `/plugin marketplace add` fails with a network error | Check your internet. The command clones the repo from GitHub. If you're behind a corporate firewall, see the manual install fallback below. |

### What's actually happening under the hood

- `/plugin marketplace add kalibrio/atomic-scaling-os` → tells Claude Code "look at this GitHub repo as a source of plugins." Clones the repo into `~/.claude/plugins/atomic-scaling-os/` on your computer.
- `/plugin install …` → activates that plugin, registering all 15 skills as slash commands.
- When you type `/playbook-postsuccess`, Claude Code finds the file `~/.claude/plugins/atomic-scaling-os/skills/playbook-postsuccess/SKILL.md` and uses its contents as the instructions for that session.
- Sub-agents run as parallel Claude calls — that's why the skill can analyze 6+ leverage points simultaneously rather than one at a time.
- HTML reports get written to whatever folder you opened in Step 2.

### Manual install fallback (terminal users only)

If `/plugin marketplace add` doesn't work for any reason, you can clone the repo directly. Open **Terminal** (Applications → Utilities → Terminal on Mac) and paste:

```bash
git clone https://github.com/kalibrio/atomic-scaling-os.git ~/.claude/plugins/atomic-scaling-os
```

Then in Claude Code, run `/reload-plugins`. Skills appear after the reload.

### Share with your team

Copy the plugin into a shared project repo so your whole team gets it on clone:

```bash
cp -Rf ~/.claude/plugins/atomic-scaling-os .claude/plugins/atomic-scaling-os
rm -rf .claude/plugins/atomic-scaling-os/.git
```

Commit the `.claude/` directory. Nothing touches your `PATH` or runs in the background — everything stays inside the project folder.

---

## Path B — Claude.ai web chat

Works in the browser at claude.ai with no install. Skills run sequentially (no parallel sub-agents) and no files are written to disk — Claude responds in chat instead. Good for trying a skill quickly or sharing with a non-technical teammate.

### Step 1 — Grab the raw SKILL.md from GitHub

Each skill lives in its own folder under `skills/` in the repo. Browse to the one you want, e.g.:

```
https://github.com/Kalibrio/atomic-scaling-os/tree/main/skills/playbook-postsuccess
```

Click `SKILL.md` → click the **Raw** button (top-right of the file viewer) → copy the entire contents, including the YAML frontmatter between the `---` lines at the top.

Direct raw URL for that skill:

```
https://raw.githubusercontent.com/Kalibrio/atomic-scaling-os/main/skills/playbook-postsuccess/SKILL.md
```

Swap the skill name in the URL to grab any of the other 14.

### Step 2 — Open the Claude.ai Skills panel

1. Go to **https://claude.ai**
2. Click your profile picture (bottom-left).
3. Click **Settings**.
4. Click **Capabilities** in the left sidebar.
5. Click **Skills** → **Create skill** (or **Upload**).

### Step 3 — Create the skill

- **Name:** must match the `name:` field at the top of the SKILL.md (e.g. `playbook-postsuccess`).
- **Content:** paste the entire SKILL.md you copied — frontmatter included.
- Click **Save**.

Repeat per skill you want available. Each skill is its own entry in Claude.ai.

### Step 4 — Summon a skill in a chat

Start a new conversation at claude.ai. Either:

- Type the slash command: `/playbook-postsuccess`
- Or type a trigger phrase from the skill description: *"postsuccess this: …"*, *"what would make this 100x?"*, *"premortem this plan"*, etc.

Claude.ai detects the trigger from the skill description and activates the skill.

### Step 5 — Keep them in sync

Claude.ai skills don't auto-pull from GitHub. When the repo updates, re-copy the new SKILL.md and **Edit** the corresponding Skill in Claude.ai (or delete and recreate).

### Troubleshooting (Path B)

| Problem | Fix |
|---|---|
| Skill doesn't trigger when you type the slash command | Make sure the `name:` in the SKILL.md frontmatter exactly matches what you named the skill in Claude.ai (case-sensitive, hyphens not underscores). |
| Trigger phrases don't fire | Use a phrase from the "MANDATORY TRIGGERS" line in the skill description verbatim. If still nothing, just use the slash command. |
| No HTML report appears | Expected — Claude.ai doesn't write files. The skill responds in chat. For file output, use Path A. |
| Parallel sub-agents don't run | Expected — Claude.ai runs the skill sequentially. For parallel execution, use Path A. |

---

## Which path should you use?

- **Most users → Path A (Claude Code Desktop).** It's what the skills are built for. Parallel agents, file output, slash autocomplete, one-line updates, scheduled loops. The 5-minute install is worth it.
- **Quick test or non-technical teammate → Path B (Claude.ai).** No install, runs in the browser. Trade-off: sequential, no files, manual per-skill upload.

For your own day-to-day use of the 3P3R OS, **Path A is the intended runtime**.

---

## What you get

15 slash commands organized by the **3P3R Method®** — six pillars covering the full scaling stack:

- **People** — `/people-team-architect`, `/people-culture-pulse`, `/people-d100-talents`
- **Prediction** — `/prediction-hypothesis-engine`, `/prediction-forecast-analyst`, `/prediction-premortem`
- **Playbook** — `/playbook-mission-designer`, `/playbook-rhythm-keeper`, `/playbook-postsuccess`
- **Revenue** — `/revenue-freemium-architect`, `/revenue-optimizer`
- **Reach** — `/reach-funnel-builder`, `/reach-growth-tracker`
- **Retention** — `/retention-love-machine`, `/retention-community-engine`

See the [README](README.md) for what each agent does.

---

## Still stuck?

If a specific step isn't working, [open an issue on GitHub](https://github.com/Kalibrio/atomic-scaling-os/issues/new) with:

- Which step number you're on
- What you typed
- What Claude Code (or Claude.ai) showed in response

You'll usually get unstuck in a single back-and-forth.
