---
name: design-handoff
description: Use when work is ready to build — write or check a handoff spec an engineer can build from without asking (state matrix, responsive, content and i18n, accessibility, motion, analytics, edge cases, tokens, design QA) and verify the definition of done.
---

# Design handoff

A handoff is complete when every state can be built without a question. A blank cell in the state matrix is a question, not an omission.

## Method

1. Fill `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/handoff-spec.md`: context, **state matrix**, responsive (320 CSS px reflow, 200% zoom), content and i18n, accessibility, motion with a reduce-not-remove fallback, analytics tied to the goal metric, edge cases, tokens, design QA.
2. Specify in **tokens**; a missing token is a token request (`design-system-governance`), not a hard-coded value.
3. Check the **definition of done** (Carbon's checklist is the best published model; the handoff contents are an inference).
4. Do **design QA in the built product** before sign-off.

Read `${CLAUDE_PLUGIN_ROOT}/skills/design/references/handoff-and-dod.md`. "Redlines versus tokens" has no primary source; the default here is tokens. Delegate an isolated check to the `design-reviewer` agent.

## Evidence layer

Before sign-off, run the lens checklists on the built flow: target sizes and spacing (motor), state and error feedback (cognitive load), reading and typography, and waiting states. Pointers in `${CLAUDE_PLUGIN_ROOT}/skills/design/references/evidence-layer.md`.
