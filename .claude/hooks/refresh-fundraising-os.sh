#!/usr/bin/env bash
# Best-effort refresh of the vendored fundraising-os skills from upstream.
#
# These 12 skills are committed under .claude/skills/ so they are always
# available as project skills, even with no network. This hook just keeps the
# vendored copy current when the network policy allows it. It must NEVER block
# or fail a session: every path exits 0.

set -u

REPO="https://github.com/kalibrio/fundraising-os.git"
PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$(git rev-parse --show-toplevel 2>/dev/null || pwd)}"
DEST="${PROJECT_DIR}/.claude/skills"
TMP="$(mktemp -d 2>/dev/null)" || exit 0

cleanup() { rm -rf "$TMP" 2>/dev/null; }
trap cleanup EXIT

# Need git and a destination to update.
command -v git >/dev/null 2>&1 || exit 0
[ -d "$DEST" ] || exit 0

# Try a shallow clone; bail quietly if the network is unavailable/blocked.
if ! git clone --depth 1 --quiet "$REPO" "$TMP/fundraising-os" 2>/dev/null; then
  exit 0
fi

SRC="$TMP/fundraising-os/skills"
[ -d "$SRC" ] || exit 0

# Mirror upstream skills into the vendored location.
if command -v rsync >/dev/null 2>&1; then
  rsync -a --delete "$SRC/" "$DEST/" 2>/dev/null || exit 0
else
  cp -R "$SRC/." "$DEST/" 2>/dev/null || exit 0
fi

cp "$TMP/fundraising-os/.claude-plugin/plugin.json" \
   "$DEST/.fundraising-os-source.json" 2>/dev/null || true

echo "fundraising-os skills refreshed from upstream."
exit 0
