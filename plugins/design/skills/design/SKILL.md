---
name: design
description: Use when starting or steering any design work — it routes to the right desk of a senior/staff design team (problem framing, research, critique, review, handoff, decision records, accessibility, tokens and governance, content, metrics, level diagnostics) and loads the shared evidence rules, with the neuro-design lenses as the evidence layer under every desk. Visual direction, design systems and UX process live here as references. Hands attention, load and perception evidence to neuro-design in the skills plugin.
---

# Design

A senior/staff design team is mostly a discipline of **evidence and decision**: the right problem, the right method, a bar that is stated, and claims labelled by how well they are grounded. This skill is the front door. It decides which desk the question belongs to and loads the shared rules once.

## Always read first

`${CLAUDE_PLUGIN_ROOT}/skills/design/references/evidence-and-corrections.md` — the evidence labels (verified, secondary, UNVERIFIED, inference, house convention, folklore) and the figures that circulate but do not survive checking (for example: **WCAG 2.4.13 is AAA, not AA**; the 100× defect-cost multiplier and the "automation finds 30–40%" figure are unsupported). Every claim a desk makes carries a label.

## Route by the question

| The question | Skill | Agent (isolated pass) |
| :--- | :--- | :--- |
| Is this the right problem; what do we do first | `problem-framing` | `design-lead` |
| Which research method, how many users | `research-planning` | `design-lead` |
| What does this work need next | `design-critique` | `design-critic` |
| Does it meet the bar to ship | `design-review` | `design-reviewer` |
| Can an engineer build it without asking | `design-handoff` | `design-reviewer` |
| A hard-to-reverse choice to record | `decision-record` | `design-lead` |
| WCAG 2.2 conformance | `a11y-audit` | `a11y-auditor` |
| Tokens, DTCG, theming | `design-tokens` | `design-system-steward` |
| Contribution, versioning, system health | `design-system-governance` | `design-system-steward` |
| Words, errors, empty states, i18n | `content-design` | `content-designer` |
| How will we know it worked | `design-metrics` | `design-metrics-analyst` |
| What level is this work, in scope terms | `design-ladder` | `design-lead` |
| *Evidence layer, used by every desk above*: why a design works on a person — building | `neuro-design` | `neuro-design-reviewer` |
| *Evidence layer*: the same lenses applied to an existing UI | `neuro-design-audit` | `neuro-design-reviewer` |

## The shared references

| Reference | Holds |
| :--- | :--- |
| `${CLAUDE_PLUGIN_ROOT}/skills/design/references/evidence-layer.md` | How the neuro-design lenses feed each desk; lens verdict → review severity |
| `${CLAUDE_PLUGIN_ROOT}/skills/design/references/roles-and-levels.md` | Level axes, staff archetypes, DACI, the seven desks |
| `${CLAUDE_PLUGIN_ROOT}/skills/design/references/ux-process.md` | Gates and exit criteria, framing, methods, evidence ladder |
| `${CLAUDE_PLUGIN_ROOT}/skills/design/references/critique-and-review.md` | Critique vs review vs approval; heuristics |
| `${CLAUDE_PLUGIN_ROOT}/skills/design/references/handoff-and-dod.md` | Spec contents, state matrix, definition of done |
| `${CLAUDE_PLUGIN_ROOT}/skills/design/references/decision-records.md` | The design decision record |
| `${CLAUDE_PLUGIN_ROOT}/skills/design/references/accessibility-wcag22.md` | WCAG 2.2 criteria, thresholds, audit procedure |
| `${CLAUDE_PLUGIN_ROOT}/skills/design/references/tokens-dtcg.md` | The DTCG format and token architecture |
| `${CLAUDE_PLUGIN_ROOT}/skills/design/references/design-systems.md` | Component API, governance, health |
| `${CLAUDE_PLUGIN_ROOT}/skills/design/references/content-design.md` | Errors, voice, forms, i18n |
| `${CLAUDE_PLUGIN_ROOT}/skills/design/references/metrics-and-impact.md` | HEART process, SUS, experiments, prioritisation |
| `${CLAUDE_PLUGIN_ROOT}/skills/design/references/visual-ui.md` | Type, colour, layout, targets, motion, interaction |

**neuro-design is not a separate desk; it is the evidence layer under all of them.** Its six lens references, bibliography, twenty cross-domain files and the perceptual-limits foundation sit under `${CLAUDE_PLUGIN_ROOT}/skills/neuro-design/references/`. Each desk reads the lenses that bear on its question as part of its normal method, and a lens verdict becomes a review finding by the rule in `evidence-layer.md`. Reach for `neuro-design` directly only when the question is purely "how will this land on a person".

Templates live in `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/`: brief, research-plan, critique-agenda, review-report, handoff-spec, decision-record, a11y-audit-report, measurement-plan, ds-contribution.

## How the team works together

```
brief (design-lead) → research → critique ⇄ iterate → review (outcome) → approval (one Approver)
                                      ↘ a11y audit · content · tokens · metrics run alongside
```

Critique is input, review is a verdict on the bar, approval is one person's signature. Keep the three apart.

## Inputs to gather first

1. **The goal** — the user task or business objective; every choice is judged against it.
2. **Stage** — discovery, alpha, beta or live; the bar differs.
3. **Context and constraints** — platform, audience, brand or system, stack, hard versus soft constraints.

If the goal is missing, ask — or state the assumed goal at the top and carry on.

## Hand-offs to the `skills` plugin (optional peers)

These do not live here:

Component structure in code → `skills:software-architecture`; whether the work is worth its cost → `skills:operating-model`.

These live in another plugin and may not be installed. If the `skills` plugin is absent, do the step inline from the reference files here and say what was skipped.

## Rules

- A blocker needs **verified** grounds; weaker is a question.
- Never promote a house convention to a standard; never repeat a figure from the corrections table.
- Never recommend a pattern that works only because the user does not notice it.
