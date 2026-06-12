# Learning Workspace

Personal learning system built around Matt Pocock's [/teach skill](https://github.com/mattpocock/skills) for Claude Code.

## Layout

- `.claude/skills/teach/` — the /teach skill at **project scope**: any Claude Code session opened on this repo (including from the phone via claude.ai/code) has the `/teach` command available.
- `learning/<topic>/` — one workspace per topic (`MISSION.md`, `RESOURCES.md`, `NOTES.md`, `lessons/`, `reference/`, `learning-records/`).
- `learning/new-topic.sh <topic>` — scaffold a new topic workspace.
- `learning/learn.sh <topic>` — (local machines) start/attach a persistent tmux session named `learn-<topic>` running `claude` in the topic directory.
- `setup-local.sh` — install the skill and scripts onto a local machine (`~/.claude/skills/teach`, `~/learning`).

## Using from the phone

Open a Claude Code session on this repo, then say e.g.:

> cd into learning/chess and run /teach — continue where we left off

Lessons are HTML files in `learning/<topic>/lessons/` — ask Claude to send them to you to view.

Commit and push after each session so progress (learning records, new lessons) is never lost.

## Current topics

- **chess** — see `learning/chess/MISSION.md`
