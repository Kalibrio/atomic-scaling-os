# Install Atomic Scaling OS

Two ways to use the 15 agents. Pick the one that matches where you want to run them.

| If you want… | Use |
|---|---|
| The full HAAO experience: slash commands, parallel sub-agents, HTML reports written to disk, scheduled loops, auto-update from GitHub | **[Path A — Claude Code](#path-a--claude-code-recommended)** |
| To run a skill quickly in the browser with no setup, or share with a non-technical teammate | **[Path B — Claude.ai (web chat)](#path-b--claudeai-web-chat)** |

The skills are **designed for Claude Code** — that's where parallel agent spawning and file output work properly. Claude.ai runs the same skill content sequentially in chat.

---

## Path A — Claude Code (recommended)

### Step 1 — Install Claude Code (once)

Download from **[claude.com/code](https://claude.com/code)**. Available as:
- CLI (terminal, all platforms)
- Desktop app (Mac, Windows)
- VS Code extension
- JetBrains extension

Sign in with your Claude account. Requires Claude Code v1.0.33+.

### Step 2 — Add the marketplace (once)

Inside Claude Code, type:

```
/plugin marketplace add kalibrio/atomic-scaling-os
```

This tells Claude Code "look at the `kalibrio/atomic-scaling-os` repo on GitHub as a source of plugins."

### Step 3 — Install the plugin (once)

```
/plugin install atomic-scaling-os@kalibrio/atomic-scaling-os
```

Claude Code clones the repo into `~/.claude/plugins/atomic-scaling-os/`, reads `.claude-plugin/plugin.json`, and registers all 15 skills.

### Step 4 — Confirm it worked

```
/plugin list
```

You should see `atomic-scaling-os` listed. Type `/` and start typing `play` or `pred` — autocomplete should now show:

- `/playbook-mission-designer`
- `/playbook-rhythm-keeper`
- `/playbook-postsuccess`
- `/prediction-hypothesis-engine`
- `/prediction-forecast-analyst`
- `/prediction-premortem`
- …and the other 9 agents.

### Step 5 — Summon a skill

Two ways:

**By slash command:**

```
/playbook-postsuccess
```

**By trigger phrase** — every skill's frontmatter registers mandatory trigger phrases. Claude Code matches them and auto-invokes the right skill:

```
postsuccess this: I'm launching a $297 workshop on Claude Cowork for marketing teams
```

or

```
what would make this 100x?
```

```
premortem this plan before I commit
```

### Step 6 — Keep it updated

When the repo gets new skills or improvements:

```
/plugin update atomic-scaling-os
```

### Step 7 (optional) — Share with your team

If your team works in a shared repo, copy the plugin into the repo so everyone gets it on clone:

```bash
cp -Rf ~/.claude/plugins/atomic-scaling-os .claude/plugins/atomic-scaling-os
rm -rf .claude/plugins/atomic-scaling-os/.git
```

Commit the `.claude/` directory. Nothing touches your `PATH` or runs in the background.

---

## Path B — Claude.ai (web chat)

Works in the browser, no install. Skills run sequentially (no parallel sub-agents) and no files are written to disk — Claude responds in chat instead.

### Step 1 — Get the raw `SKILL.md` from GitHub

Each skill lives in its own folder under `skills/`. Browse to the one you want, e.g.:

```
https://github.com/Kalibrio/atomic-scaling-os/tree/main/skills/playbook-postsuccess
```

Click `SKILL.md` → click the **Raw** button → copy the entire contents (including the YAML frontmatter at the top, between the `---` lines).

Or grab the raw URL directly:

```
https://raw.githubusercontent.com/Kalibrio/atomic-scaling-os/main/skills/playbook-postsuccess/SKILL.md
```

### Step 2 — Open the Claude.ai Skills panel

Go to **[claude.ai](https://claude.ai)** → click your profile (bottom-left) → **Settings** → **Capabilities** → **Skills** → **Create skill** (or **Upload**).

### Step 3 — Create the skill

- **Name:** must match the `name:` field in the frontmatter (e.g. `playbook-postsuccess`)
- **Content:** paste the entire `SKILL.md` you copied
- **Save**

Repeat per skill you want available. Each skill is its own entry in Claude.ai.

### Step 4 — Summon in a chat

Start a new conversation. Either:

- Type the slash command: `/playbook-postsuccess`
- Or type a trigger phrase from the skill description: `postsuccess this: …`, `what would make this 100x?`, `premortem this plan`, etc.

Claude.ai detects the trigger from the skill description and activates the skill.

### Step 5 — Keep them in sync

Claude.ai skills don't auto-pull from GitHub. When the repo updates, re-copy the new `SKILL.md` and **Edit** the corresponding Skill in Claude.ai (or delete and recreate).

---

## Troubleshooting

**Slash commands don't appear in Claude Code after install.**
Run `/reload-plugins` (or restart Claude Code). Then `/plugin list` to confirm `atomic-scaling-os` is enabled.

**Trigger phrases don't fire.**
The skill description includes "MANDATORY TRIGGERS" and "STRONG TRIGGERS" lists. Use one of those phrases verbatim. If you're paraphrasing and it doesn't trigger, just use the slash command directly.

**Skill ran but no HTML report was written.**
HTML report output only works in Claude Code (the skill writes to your workspace). Claude.ai responds in chat instead.

**`/plugin marketplace add` fails.**
Make sure you're on Claude Code v1.0.33+. Check version with `/version`.

**Manual install fallback (Claude Code).**
If the marketplace command doesn't work, clone directly:

```bash
git clone https://github.com/kalibrio/atomic-scaling-os.git ~/.claude/plugins/atomic-scaling-os
```

Then in Claude Code: `/reload-plugins`.

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
