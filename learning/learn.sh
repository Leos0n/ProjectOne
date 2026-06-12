#!/usr/bin/env bash
# Start (or attach to) a persistent tmux session running Claude Code
# for a learning topic. Survives terminal disconnects; controllable
# from your phone via Claude Code Remote Control.
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <topic-name>" >&2
  exit 1
fi

TOPIC="$1"
DIR="$HOME/learning/$TOPIC"
SESSION="learn-$TOPIC"

if [ ! -d "$DIR" ]; then
  echo "Error: $DIR does not exist. Create it first with:" >&2
  echo "  ~/learning/new-topic.sh $TOPIC" >&2
  exit 1
fi

if tmux has-session -t "$SESSION" 2>/dev/null; then
  exec tmux attach-session -t "$SESSION"
else
  exec tmux new-session -s "$SESSION" -c "$DIR" claude
fi
