# Process: from problem to a decision to build

The process is a set of gates with exit criteria. A gate that cannot say what passing looks like is a meeting. The reference model is GOV.UK's phased delivery; the Double Diamond is the picture, not the procedure.

## Double Diamond (picture)

Discover → Define → Develop → Deliver; divergent then convergent, twice; non-linear ([Design Council](https://www.designcouncil.org.uk/our-resources/framework-for-innovation/), **verified**). It names no exit criteria — use the phases below for those.

## Discovery (GOV.UK) — do not start building

Discovery tests whether the problem is worth solving. "You should not start building the service in discovery." Reframe a pre-decided solution as a problem; agree **non-goals**; quantify the current cost; separate **hard constraints** (law) from **soft** (process); plan how success will be measured ([GOV.UK](https://www.gov.uk/service-manual/agile-delivery/how-the-discovery-phase-works), **verified**; typically 4–8 weeks).

**Exit criteria** (five): a wider understanding of context; fit to the problem space; a prioritised list of ideas to test in alpha; an alpha team; a way to measure success. Stopping at the end of discovery "is not a failure".

## Alpha

Test the **riskiest assumptions** with throwaway prototypes; typically 6–8 weeks ([GOV.UK](https://www.gov.uk/service-manual/agile-delivery/how-the-alpha-phase-works)). Exit: the riskiest assumptions have evidence, and the team can say what to build.

## Beta

Build it; an accessibility audit and fixes come **before** public beta ([GOV.UK](https://www.gov.uk/service-manual/agile-delivery/how-the-beta-phase-works)). The 14-point Service Standard is the standing quality checklist ([GOV.UK](https://www.gov.uk/service-manual/service-standard)).

## Framing the problem

Write the brief with `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/brief.md`. Minimum content: the user and the job they are trying to get done; the problem as observed, not as a feature request; the evidence and its level; the goal metric and how it will be read; non-goals; constraints (hard/soft); the decision owner (DACI).

- **How Might We** questions turn findings into prompts that do not embed the solution ([NN/g](https://www.nngroup.com/articles/how-might-we-questions/)). Too broad yields nothing, too narrow smuggles the answer in.
- **Jobs-to-be-Done**, the d.school point-of-view format and Opportunity Solution Trees are widely used but **no primary source was read** — [UNVERIFIED]; use them as prompts, not as authority.

## Choosing a research method

Three axes — attitudinal vs behavioural, qualitative vs quantitative, context of use — plus product stage ([NN/g](https://www.nngroup.com/articles/which-ux-research-methods/), **verified**). Use the matrix in `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/research-plan.md`. Sample sizes NN/g gives: **5** users per qualitative round, **≥20** for quantitative, **≥15 per group** for card sorting, **39** for stable eyetracking heatmaps ([NN/g](https://www.nngroup.com/articles/how-many-test-users/)). Five is a **per-round budget**, never a prevalence claim; run several rounds and redesign between them.

- Interview about **recent critical incidents**, not predictions of future behaviour ([NN/g](https://www.nngroup.com/articles/interviewing-users/)).
- Synthesise by affinity diagram: silent individual writing, group before naming, guard against dominant voices ([NN/g](https://www.nngroup.com/articles/affinity-diagram/)).

## Evidence ladder (inference)

| Level | Grounds |
| :--- | :--- |
| L1 | Opinion, including the team's |
| L2 | One qualitative source |
| L3 | A repeated pattern, triangulated across methods |
| L4 | Observed behaviour at scale |
| L5 | Replicated in production |

No published standard exists; this is a **house convention**, consistent with NN/g's advice to triangulate. A decision record states the level of each piece of evidence it leans on.

## Heuristics to name findings with

Nielsen's ten usability heuristics ([NN/g](https://www.nngroup.com/articles/ten-usability-heuristics/)) and Shneiderman's eight golden rules ([UMD](https://www.cs.umd.edu/users/ben/goldenrules.html)) are **verified** and give findings a shared vocabulary. Norman's principles are cited from secondary summaries only.

## Hand-offs

Evidence about *why a design works on a person* — attention, load, perception, motor, emotion, reading — belongs to this plugin's `neuro-design` skill and its six reference files. This file decides *whether and how to study*; it does not restate that.
