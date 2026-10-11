---
name: problem-framing
description: Use before designing anything — turns a request or a pre-decided solution into a problem worth solving, with the user and job, evidence and its level, goal metric, non-goals, hard and soft constraints, How Might We questions, DACI roles and phase exit criteria (GOV.UK discovery/alpha/beta). Produces a design brief.
---

# Problem framing

Frame the problem before anyone draws. "You should not start building the service in discovery."

## Method

1. Restate the request as the **problem it is meant to solve**, as observed — not a feature.
2. Name the **user and the job**.
3. List **evidence** with its level (L1–L5) and label; say what is missing.
4. Set the **goal metric**, baseline and how it will be read (see `design-metrics`).
5. Agree **non-goals**; separate **hard** constraints (law, platform) from **soft** (process, preference).
6. Write **How Might We** questions that do not embed the solution.
7. Assign **DACI** roles — one Driver, exactly one Approver.
8. State the phase and its **exit criteria**; stopping at the end of discovery is not a failure.

Read `${CLAUDE_PLUGIN_ROOT}/skills/design/references/ux-process.md` and `${CLAUDE_PLUGIN_ROOT}/skills/design/references/evidence-and-corrections.md`. Fill `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/brief.md`.

## Delegate

For an isolated pass or a deep research plan, dispatch the `design-lead` agent. Jobs-to-be-Done and the d.school point-of-view format are [UNVERIFIED] as published methods — use them as prompts only.
