---
name: design
description: Use when designing or reshaping a product's look, feel, or flow — visual direction (typography, color, layout, spacing), a design system (tokens, components, theming), or the UX process before visuals (flows, information architecture, wireframes). Routes to the right reference and hands evidence questions to neuro-design.
---

# Design

One entry point for design work, split by the question being asked. This skill decides which area applies and loads that reference on demand; it does not restate what `neuro-design` already carries.

> **Status: structure only.** The three reference files below define scope, inputs and checklists. Their bodies are outlines to be filled in; until then, say so rather than inventing guidance.

## When to use

- Choosing or changing the visual direction of a UI.
- Setting up or extending a design system.
- Working out flows and structure before anything is drawn.

For *why* a design works on a person (attention, load, perception, motor, emotion, reading), use `neuro-design`. For reviewing an existing UI, use `neuro-design-audit`.

## Pick the area

| The question is about | Reference file |
| :--- | :--- |
| How it should look and feel — type, color, layout, spacing, motion | `${CLAUDE_PLUGIN_ROOT}/skills/design/references/visual-ui.md` |
| How it stays consistent — tokens, component APIs, theming, light/dark | `${CLAUDE_PLUGIN_ROOT}/skills/design/references/design-systems.md` |
| What it should do before it looks like anything — flows, IA, wireframes | `${CLAUDE_PLUGIN_ROOT}/skills/design/references/ux-process.md` |

Work usually runs `ux-process` → `visual-ui` → `design-systems`; start at the first one the user has not already settled.

## Inputs to gather first

1. **The goal** — the primary user task or business objective. Every choice is judged against it.
2. **Context** — platform, audience, existing brand or system, and the stack (default: Vite + React).
3. **Constraints** — deadlines, accessibility targets, what must not change.

If the goal is missing, ask before proposing anything.

## Hand-offs

- Evidence for a choice (hierarchy, color contrast, target size, reading) → `neuro-design`, the reference file for that lens.
- Isolated critique of the result → `neuro-design-reviewer` agent.
- Component or module structure in code → `software-architecture`.
- Whether the work is worth doing at all → `operating-model`.

If a hand-off target is not installed, do the step inline from its description and say what was skipped.
