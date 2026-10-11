---
name: design-review
description: Use to judge work against the bar before it ships — an outcome of met, met with conditions or not met, a findings log ranked blocker/should/could and named against Nielsen's heuristics and Shneiderman's rules, with happy and unhappy paths walked. Separate from critique and from approval.
---

# Design review

A review is a verdict on the bar, modelled on a service-assessment panel. It is neither critique (input) nor approval (one person's signature).

## Method

1. Walk the **happy path and the unhappy ones**: error and recovery, empty and first run, offline or slow, permission denied.
2. Check the **definition of done** in `${CLAUDE_PLUGIN_ROOT}/skills/design/references/handoff-and-dod.md`.
3. Log findings: severity (blocker / should / could), the heuristic or rule, evidence with its label, a buildable fix, what would retire it. A **blocker needs verified grounds**.
4. Decide the outcome: **met**, **met with conditions** (each with a due date), **not met**. The vocabulary is a house convention borrowed from GOV.UK's green/amber/red.
5. Fix and re-review under the loop-until-converged shape: converged when no blocker remains; cap three rounds; report the residual.

Read `${CLAUDE_PLUGIN_ROOT}/skills/design/references/critique-and-review.md`. Fill `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/review-report.md`. Delegate an isolated pass to the `design-reviewer` agent.

## Evidence layer

Score the six lenses (`Pass` / `Minor` / `Blocking`) and map them to findings with the rule in `${CLAUDE_PLUGIN_ROOT}/skills/design/references/evidence-layer.md`: a lens `Blocking` is a **blocker** only when a verified threshold is also crossed, otherwise a **should**. Use the `neuro-design-audit` method inline, or dispatch `neuro-design-reviewer` for an isolated pass.
