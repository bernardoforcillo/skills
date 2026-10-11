---
name: design-system-governance
description: Use when deciding what belongs in a design system and how it changes — contribution intake (reuse in two or more places), federated versus centralised models, component API rules, Carbon's definition of done, semver, changelog and deprecation conventions, and health metrics read from observation rather than blog targets.
---

# Design system governance

No major system publishes a semver, deprecation or RFC policy that was found here — what follows is a **house convention**, adopted deliberately.

## Method

1. **Does it belong?** Reuse in two or more places and a role nothing covers; otherwise it stays local.
2. **Intake** with `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/ds-contribution.md`: why, proposal (name by meaning, tokens, API), gates, deprecation, changelog.
3. **Gates:** design review, accessibility audit with no open blocker, every state designed, docs and tests, and a decision record for any deviation.
4. **Change safety:** semver (a visual change that alters layout is breaking), a consumer-facing changelog, `$deprecated` with replacement kept for at least one major.
5. **Model:** solitary, centralised or federated — federated needs a dedicated, adequately staffed core or the system stalls.
6. **Health:** coverage, adoption, detachment, contribution rate — observed, with sources; do not adopt a target from a blog.

Read `${CLAUDE_PLUGIN_ROOT}/skills/design/references/design-systems.md` and `${CLAUDE_PLUGIN_ROOT}/skills/design/references/handoff-and-dod.md`. Delegate to `design-system-steward`.
