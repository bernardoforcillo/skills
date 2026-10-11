# Critique, review and approval

Three artifacts, three questions. Merging them is the most common way a team's feedback turns into a veto.

| Artifact | Question | Output | Who has a vote |
| :--- | :--- | :--- | :--- |
| **Critique** | What does this work need next, against its goal? | Actions | Nobody — it is input |
| **Design review** | Does the work meet the bar? | An outcome and a findings log | The reviewing panel |
| **Approval** | May this ship? | A signature | The one Approver (DACI) |

The separation of the three is an **inference** from the sources below; the sources each describe one of them. "Critique" per NN/g "doesn't simply mean judging a design".

## Critique (NN/g, Figma, Home Office)

**verified** structure ([NN/g](https://www.nngroup.com/articles/design-critiques/)): roles — **Presenter**, **Critiquers**, **Facilitator** (rotates), **Recorder**; materials shared beforehand; round-robin so quiet voices speak; a time-box; opinions reframed as **questions tied to the goal**; notes in the open; follow-up actions. Start at 30 minutes a week.

Formats ([Figma](https://www.figma.com/blog/design-critiques-at-figma/)): standard, jam, pair, silent, printed, FYI. Failure modes Figma found in its own crits: crowded rooms, surface feedback, group "+1", excess politeness. The Home Office ran a remote crit every two months with three facilitators and cut sessions from 45 to 30 minutes ([Home Office](https://hodigital.blog.gov.uk/2020/06/05/running-our-first-remote-design-crit/)).

Feedback frame — "I like / I wish / What if" is widely used; its attribution to d.school is [UNVERIFIED]. Use it as a prompt, not a rule.

A critique pass by the `design-critic`:

1. State the goal and the stage (an early sketch is not a launch candidate). Without the goal, state the assumed goal at the top.
2. Say what is working, specifically — so it is not lost in iteration.
3. Raise each issue as a question tied to the goal: "Who is the primary action for, and does the weight of this button say so?"
4. Rank. Fewer, better-ranked points; a long list is a failed critique.
5. End with actions an owner can take, and what would change the critic's mind.

Never: prescribe the solution in the first sentence; critique the person; mix taste with defect without saying which is which.

## Design review (GOV.UK assessment as the model)

The formal model is the service assessment: a panel (lead assessor, user researcher, designer, tech lead); a 10-minute demo on problem and users and 20 minutes on the user journey **including unhappy paths and offline steps**; outcomes **green**, **amber** (fix in about three months), **red** (stay in the phase) ([GOV.UK](https://www.gov.uk/service-manual/service-assessments/how-service-assessments-work), **verified**).

House convention (**inference**): outcomes **met / met with conditions (with due date) / not met**; every finding has a severity — **blocker** (must fix to ship), **should** (fix soon), **could** (nice). A blocker needs verified grounds (see `evidence-and-corrections.md`). Use `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/review-report.md`.

Name findings against Nielsen's ten heuristics and Shneiderman's eight golden rules so the log is comparable over time.

**Nielsen's ten** ([NN/g](https://www.nngroup.com/articles/ten-usability-heuristics/)): visibility of system status; match between system and the real world; user control and freedom; consistency and standards; error prevention; recognition rather than recall; flexibility and efficiency of use; aesthetic and minimalist design; help users recognise, diagnose and recover from errors; help and documentation.

**Shneiderman's eight** ([UMD](https://www.cs.umd.edu/users/ben/goldenrules.html)): strive for consistency; seek universal usability; offer informative feedback; design dialogs to yield closure; prevent errors; permit easy reversal of actions; keep users in control; reduce short-term memory load.

## Approval

One Approver. It is a decision, so it is recorded (`decision-records.md`). Approval does not retire an open blocker; a conditional outcome keeps its due date.

## The loop

Review and fix follow the shared convergence loop (see `docs/architecture.md`): the round counter starts at 1; converged means **no blocker remains**; at the cap of three rounds report the residual instead of claiming a clean result.
