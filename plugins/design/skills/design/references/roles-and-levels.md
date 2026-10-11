# Roles, levels and how the team decides

Level is read from **scope radius**, **where the problem came from** and **multiplier output** — not from craft. A senior designer with superb craft is still a senior designer if every problem arrives assigned.

## The three axes

| Axis | Senior | Staff | Principal |
| :--- | :--- | :--- | :--- |
| Scope radius | One cross-functional team | Mostly one team; influence reaches adjacent teams | Group level, with the other group leaders |
| Problem origin | Assigned | Finds and defines problems worth solving | Finds new problems on their own; improves process and tools |
| Multiplier | Quality standards for their area | Coaching; modular systems that cut design debt | Foundational systems; co-leads the group |

Sources: Intercom's product-design ladder (2021-06-30) for the radius and leadership rows ([Intercom](https://www.intercom.com/blog/product-design-ic-career-path/)); GitLab's handbook for the operational verbs — Staff "defines problems worth solving", "quantifies business impact of design decisions", "operates upstream where product direction is set", coaches others toward strategic partnership ([GitLab](https://handbook.gitlab.com/job-description-library/product/product-designer/)). **verified** for those two employers only. Design Director / Head of Design has **no primary source** here: treat any description as a **house convention**.

## Staff archetypes, applied to design (inference)

Will Larson's four staff-engineer archetypes ([StaffEng](https://staffeng.com/guides/staff-archetypes/)) are engineering sources; the mapping to design is this plugin's **inference**:

| Archetype | In design |
| :--- | :--- |
| Tech Lead | Design lead of a squad |
| Architect | Owner of the design system or a core flow, if the domain is both complex and durably central |
| Solver | Parachutes into one ambiguous problem, then leaves |
| Right Hand | Chief of staff to the director |

Glue work (Tanya Reilly, [noidea.dog/glue](https://noidea.dog/glue)) — coordination, onboarding, documentation — is necessary and poorly rewarded. The team **records and attributes** it; it never assumes it.

## How an org shapes the work

Embedded, centralised and hub-and-spoke are the three recognised shapes; hybrid is the usual compromise ([UXPin](https://uxpin.com/studio/blog/design-team-structure), **secondary**). Designer-to-engineer ratios are anecdotal and contradictory (Airbnb quoted at 1:6–8 and at 1:3; Julie Zhuo says there is no ideal ratio) — do not cite a ratio as a norm. NN/g's six-stage UX maturity model — Absent, Limited, Emergent, Structured, Integrated, User-driven — is **verified** ([NN/g](https://www.nngroup.com/articles/ux-maturity-model/)); pairing embedded with Emergent/Structured and hub-and-spoke with Integrated is **inference**.

## Who decides: DACI

One **Driver** runs the decision. Exactly one **Approver** ("yes: one!"). **Contributors** have "a voice, but not a vote". **Informed** have neither ([Atlassian](https://www.atlassian.com/team-playbook/plays/daci), **verified**). Default assignment in this plugin (**inference**): the Staff/Principal designer drives, the design director approves quality decisions, research and engineering contribute, product and support are informed. Write the roles in the decision record.

## The seven desks and what each answers

| Desk (agent) | Owns the question |
| :--- | :--- |
| `design-lead` | What is the problem, which method fits, who decides, what ships next |
| `design-critic` | What does the work need next, framed against its goal |
| `design-reviewer` | Does the work meet the bar — met, met with conditions, not met |
| `a11y-auditor` | Does it conform to WCAG 2.2 AA, and where does it not |
| `design-system-steward` | Are tokens, components and governance coherent and healthy |
| `content-designer` | Do the words do their job in this state and this language |
| `design-metrics-analyst` | How will we know it worked, and is the evidence strong enough to say so |

Critique, review and approval are **three different artifacts** (see `critique-and-review.md`). A team that merges them gets critique that behaves like a veto.

## Level, in practice: what to ask of each

A request that arrives with a level attached changes the standard it is held to.

- **Senior** — Is the problem validated and the success criterion clear? Are the states and edge cases covered? Would an engineer need to ask a question the spec should have answered?
- **Staff** — Is this the right problem, and who else is affected? What does it cost the neighbouring teams? Is the impact quantified, and is the quantification honest about its evidence level? What reusable thing falls out of this?
- **Principal / Director** — Does this belong in the roadmap at all? What does it make harder later? Who is being developed by doing it?

The `design-ladder` skill uses these questions to read a body of work against the three axes. It is a diagnostic, not a performance-review instrument: it has no authority over a person's level.
