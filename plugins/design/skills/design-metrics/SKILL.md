---
name: design-metrics
description: Use to decide how a design change will be measured and whether the evidence supports a claim — Goals-Signals-Metrics, SUS reported as a percentile, experiment pitfalls (peeking, sample-ratio mismatch, novelty), RICE with its limits, and refusal of unsupported figures such as the 100x defect cost or a causal reading of the McKinsey Design Index.
---

# Design metrics

A number without its source is a rumour; a correlation is not a cause.

## Method

1. **Goals–Signals–Metrics:** goal, the user-behaviour signal that indicates it, the metric. The five HEART dimensions are [UNVERIFIED] — use the process.
2. **Baseline and target** with sources; no baseline, no claim.
3. **SUS:** score ×2.5 as defined, report a **percentile and confidence interval**, never a percentage (mean ≈ 68).
4. **Experiments:** fix sample and stop rule, no peeking, sample-ratio check, novelty window; pair with qualitative evidence; do not test safety or legal decisions.
5. **Evidence level** (L1–L5) and the claim it licenses; ranges over point estimates.
6. **RICE** (Reach × Impact × Confidence / Effort) to start an argument; name its limits.

Fill `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/measurement-plan.md`. Read `${CLAUDE_PLUGIN_ROOT}/skills/design/references/metrics-and-impact.md`. Delegate to `design-metrics-analyst`.

## Evidence layer

Use the behavioral-economics and social-influence references (`${CLAUDE_PLUGIN_ROOT}/skills/design/references/evidence-layer.md`) to separate influence the user would endorse from manipulation; do not measure the latter as a success.
