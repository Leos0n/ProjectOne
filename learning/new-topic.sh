#!/usr/bin/env bash
# Create a new learning workspace under ~/learning/<topic-name>
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <topic-name>" >&2
  exit 1
fi

TOPIC="$1"
DIR="$HOME/learning/$TOPIC"

if [ -e "$DIR" ]; then
  echo "Error: $DIR already exists" >&2
  exit 1
fi

mkdir -p "$DIR/lessons" "$DIR/reference" "$DIR/learning-records"

cat > "$DIR/MISSION.md" <<EOF
# Mission: $TOPIC

<!-- Run /teach in Claude Code to fill this in. -->
<!-- Describe what you want to learn and why. -->
EOF

cat > "$DIR/RESOURCES.md" <<EOF
# Resources: $TOPIC

<!-- Links, docs, books, and courses for this topic. -->
EOF

cat > "$DIR/NOTES.md" <<EOF
# Notes: $TOPIC

<!-- Free-form scratchpad. -->
EOF

echo "Created learning workspace: $DIR"
echo
echo "  cd $DIR"
