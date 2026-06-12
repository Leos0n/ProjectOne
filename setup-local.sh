#!/usr/bin/env bash
# Install the /teach skill and learning scripts onto this machine.
# Run from the repo root: ./setup-local.sh
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$HOME/.claude/skills"
cp -r "$REPO_DIR/.claude/skills/teach" "$HOME/.claude/skills/"
echo "Installed /teach skill to ~/.claude/skills/teach (user scope)"

mkdir -p "$HOME/learning"
cp "$REPO_DIR/learning/new-topic.sh" "$REPO_DIR/learning/learn.sh" "$HOME/learning/"
chmod +x "$HOME/learning/new-topic.sh" "$HOME/learning/learn.sh"
echo "Installed scripts to ~/learning/"

for topic_dir in "$REPO_DIR"/learning/*/; do
  topic="$(basename "$topic_dir")"
  if [ ! -e "$HOME/learning/$topic" ]; then
    cp -r "$topic_dir" "$HOME/learning/$topic"
    echo "Copied topic workspace: ~/learning/$topic"
  else
    echo "Skipped existing topic: ~/learning/$topic"
  fi
done

if ! command -v tmux >/dev/null 2>&1; then
  echo "NOTE: tmux is not installed. Install it (e.g. 'sudo apt install tmux' or 'brew install tmux') to use learn.sh."
fi

echo "Done. Try: ~/learning/learn.sh chess"
