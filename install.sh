#!/usr/bin/env bash
# Installs startup-coach skills into your Claude Code skills directory.
# Usage: ./install.sh [target-dir]   (default: ~/.claude/skills)
set -euo pipefail

TARGET="${1:-$HOME/.claude/skills}"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$TARGET"

installed=0
for dir in "$REPO_DIR"/*/; do
  skill="$(basename "$dir")"
  [ -f "$dir/SKILL.md" ] || continue
  if [ -e "$TARGET/$skill" ] && [ ! -e "$TARGET/$skill/.startup-coach" ]; then
    echo "SKIP  $skill (exists at $TARGET/$skill and wasn't installed by us — remove it first if you want ours)"
    continue
  fi
  rm -rf "$TARGET/$skill"
  cp -r "$dir" "$TARGET/$skill"
  touch "$TARGET/$skill/.startup-coach"
  echo "OK    $skill -> $TARGET/$skill"
  installed=$((installed + 1))
done

echo
echo "Installed $installed skill(s). Restart Claude Code (or start a new session) and try: /startup-coach"
