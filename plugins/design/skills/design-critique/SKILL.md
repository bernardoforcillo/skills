---
name: design-critique
description: Use to critique a design against its goal, or to run a design critique session — roles, shared materials, round-robin, questions tied to the goal, ranked issues, actions, and what would change the critic's mind. Critique is input, not a veto and not approval.
---

# Design critique

Make the work better against *its* goal. A critique that behaves like a veto has failed.

## Method

1. State **goal and stage**; an early sketch is judged as a sketch.
2. Say **specifically what is working**.
3. Raise each issue as a **question tied to the goal**; never a verdict, never the solution first.
4. Tag with a Nielsen heuristic or Shneiderman rule; mark taste as taste.
5. **Rank** — a few points, well ordered.
6. End with **actions** and **what would change your mind**.

For a live session use `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/critique-agenda.md` (roles: Presenter, Critiquers, rotating Facilitator, Recorder; time-box; round-robin; public notes). Read `${CLAUDE_PLUGIN_ROOT}/skills/design/references/critique-and-review.md`.

## Delegate

Dispatch `design-critic` for an isolated critique. For attention, load, perception, motor, emotion or reading evidence use `neuro-design-audit` (inline, on an existing UI) or the `neuro-design-reviewer` agent (isolated) — both in this plugin.

## Evidence layer

Run the lens pass inside the critique: frame each question with the checklist of its lens (`${CLAUDE_PLUGIN_ROOT}/skills/design/references/evidence-layer.md`; lenses under `${CLAUDE_PLUGIN_ROOT}/skills/neuro-design/references/`), cite bibliography keys, and use the `neuro-design-audit` method for an existing UI.
