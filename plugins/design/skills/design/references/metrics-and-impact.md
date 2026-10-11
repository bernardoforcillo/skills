# Metrics and impact

Correlation is not cause, a metric is not the goal, and a number without its source is a rumour.

## HEART and Goals–Signals–Metrics

HEART is Rodden, Hutchinson and Fu, CHI 2010 (Google) with the **Goals–Signals–Metrics** process ([Google Research](https://research.google/pubs/measuring-the-user-experience-on-a-large-scale-user-centered-metrics-for-web-applications/), verified for existence and process). The five dimensions — Happiness, Engagement, Adoption, Retention, Task success — are **[UNVERIFIED]**: recalled, the PDF was not readable. Use the process: write the **goal**, the user-behaviour **signal** that indicates it, the **metric** that quantifies the signal. Template: `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/measurement-plan.md`.

## SUS

10 items, score 0–100: odd items minus 1, even items 5 minus the response, sum × 2.5. It is **not a percentage**. Across about 500 studies the mean is about 68; around 74 ≈ the 70th percentile; above 80.3 ≈ top 10% (grade A); below 51 ≈ F. Report percentiles and confidence intervals ([MeasuringU](https://measuringu.com/sus/), verified). SUPR-Q, UMUX-Lite, CES, NPS limits and Core Web Vitals thresholds were **not verified** here.

## Impact claims

- **McKinsey Design Index (2018):** top-quartile firms reported 32 points faster revenue growth and 56 points higher total shareholder return over five years, 300 listed companies. Secondary sources only (primary page timed out); mixes "percent" and "percentage points". A correlation from a consultancy's proprietary index with no independent replication found; reverse causality and survivorship are **inference**-level concerns. Safe phrasing: "McKinsey reported a correlation in a sample of 300 firms".
- **The 100× defect-cost claim** is unsupported (`evidence-and-corrections.md`). It is about software, not design decisions.
- For a Staff-level argument, GitLab asks designers to *quantify business impact of design decisions* — so state the metric, the baseline, the evidence level and the uncertainty. An honest range beats a false point estimate.

## Experiments

Peeking at results, sample-ratio mismatch and novelty effects are the standard invalidators; the reference is Kohavi, Tang and Xu, *Trustworthy Online Controlled Experiments* (2020) — only secondary summaries were read. Do not use unsourced statistics (such as "8% SRM" or "26% false positives"). Design implications: fix the sample and the stop rule in advance; do not test what you cannot act on; do not A/B test where traffic is too small or the decision is a matter of safety or law; pair a test with qualitative evidence that explains *why*.

## Prioritisation

RICE — Reach, Impact, Confidence, Effort; score = Reach × Impact × Confidence / Effort; Impact scale 3 / 2 / 1 / 0.5 / 0.25; Confidence 100 / 80 / 50%; Effort in person-months ([Intercom](https://www.intercom.com/blog/rice-simple-prioritization-for-product-managers/), verified; the formula was read from an image). ICE and Kano were not sourced. Weaknesses (**reasoning, not published critique**): subjective estimates, false precision, bias toward incremental work. Use scores to *start* an argument, not to end one.

## DesignOps

NN/g defines DesignOps as "the orchestration and optimization of people, process, and craft", with **three** areas — how we work together, how we get work done, how our work creates impact ([NN/g](https://www.nngroup.com/articles/start-designops/)). The "8 areas" attribution is unconfirmed. In NN/g's survey of 310 coded definitions the leading intent was *Standardize* (27%), then *Enable and support designers* (22%) ([NN/g](https://www.nngroup.com/articles/design-ops-definitions/)).

## Dark patterns

deceptive.design lists 18 types (Sneaking through Currency confusion), which looks broader than Brignull's original twelve — **verify before citing** ([deceptive.design](https://deceptive.design/types)). The team never recommends a pattern whose effect depends on the user not noticing, regardless of the metric it would lift.
