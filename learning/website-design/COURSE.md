# Course: From Image to Implementation

A project-driven course for the mission in [MISSION.md](./MISSION.md). Each lesson is short, ends in a tangible artifact, and builds toward one repeatable pipeline:

**concept → mockup images (Grok/ChatGPT) → critique → implementation (Claude Code + taste skills) → deploy**

Lessons are created one at a time in `lessons/` as you progress (zone of proximal development — the plan below adapts based on your learning records).

## Module A — Seeing (develop taste & vocabulary)
You can't direct what you can't name. This module gives you the designer's vocabulary.

- **0001 — The Anatomy of a Beautiful Website**: the four levers (hierarchy, spacing, typography, color); critique 3 real sites using them. *Artifact: your first written critiques.*
- **0002 — Typography & Spacing Systems**: why everything looks "off" without a scale; whitespace as a feature. *Artifact: annotated screenshots.*
- **0003 — Color, Contrast & The Second Read**: palettes, accent discipline, the details that make a page feel premium. *Artifact: a personal taste file (what you like and why).*

## Module B — Generating (image design with AI)
- **0004 — Directing Image Models**: prompt UI mockups with Grok/ChatGPT using the `imagegen-frontend-web` skill's rules (one horizontal image per section, consistent palette, varied composition). *Artifact: a 5–6 section landing-page mockup set.*
- **0005 — The Critique Loop**: judge your own mockups with the Module A vocabulary; iterate prompts until the set is worth building. *Artifact: a final, approved mockup set.*

## Module C — Building (image → code with Claude Code)
- **0006 — Reading the Matrix**: minimum viable HTML/CSS literacy — read and tweak what Claude writes (change a color, a font size, a spacing value), not write from scratch. *Artifact: a page you've hand-tweaked.*
- **0007 — First Conversion**: turn the Module B mockups into a real page using the `image-to-code` + `design-taste-frontend` skills; learn to spot and call out implementation drift from the mockup. *Artifact: your mockup, live in a browser.*
- **0008 — Every Screen Size**: responsive behavior — what should change on phone/iPad/laptop and how to direct it. *Artifact: the same page, beautiful at three widths.*
- **0009 — Ship It**: deploy to the web (GitHub Pages or Vercel, free). *Artifact: a public URL.*

## Module D — The Pipeline (capstone)
- **0010 — Capstone**: a complete site for a real purpose (business or play), from blank concept to deployed URL, run end-to-end by you. *Artifact: the proof the pipeline is yours.*

## Phase 2 (separate planning, after capstone)
iPad/phone/laptop apps: same pipeline with `imagegen-frontend-mobile`, plus choosing a stack (likely web-tech-based apps first). Out of scope until the web pipeline is repeatable.

## How to run a session (from phone or laptop)
1. Open a Claude Code session on the `website-design` branch.
2. Say: *"cd into learning/website-design, read MISSION.md, COURSE.md, NOTES.md and the learning records, then continue teaching me."*
3. Commit and push at the end of every session.
