# Evidence labels and known corrections

Every design claim carries the strength of its grounds. A senior team's output is only as useful as the reader's ability to tell a measured threshold from a habit. This file defines the labels the whole plugin uses, and lists the figures that circulate in the field and do **not** survive checking — the ones an agent must not repeat with confidence.

## The labels

| Label | Means | May be used to |
| :--- | :--- | :--- |
| **verified** | Read in a primary source (a spec, a handbook, the author's own page); the source is named. | State as fact; block a release on it. |
| **inference (computed)** | A value worked out from the artifact (a contrast ratio from hex codes, a size from CSS) against a threshold you have read. | State with the method; retire with a tool run. |
| **verified (observed)** | Directly observable in the artifact itself (no submit control, a timer no script drives). | State the defect as fact; judge severity against the goal. |
| **secondary** | Reported by a summary, a vendor blog or a course; primary not read. | Support, never decide; say "reported". |
| **cited** | Backed by a bibliography key in the neuro-design references; the plugin has not re-verified the underlying paper. | Support a **should**; explain a blocker whose threshold is separately **verified**. Alone, never a blocker. |
| **[UNVERIFIED]** | Recalled or searched but not confirmed. | Raise as a question; never as a finding. |
| **[TRAINING-MEMORY]** | From model memory with no source in hand. | Same as `[UNVERIFIED]`. |
| **inference** | Reasoned from verified material; the step is stated. | Recommend, with the step visible. |
| **house convention** | A default this plugin chose because no public standard exists. | Apply, and say it is changeable. |
| **folklore** | Widely repeated, no usable source or contradicted. | Warn against; do not cite as support. |

Rules that follow from the labels:

1. A **blocking** finding needs **verified** grounds (a spec, a platform guideline, a measured effect). A lens verdict alone is **cited**, not verified — see `evidence-layer.md`. Anything weaker is at most a should-fix, stated as a question.
2. Never promote a convention to a standard. "Design review outcomes are met / met with conditions / not met" is a house convention borrowed from GOV.UK's assessment colours; say so.
3. When a figure matters to the decision and is not verified, the fix is to find the source or to label it — not to round it into confidence.
4. Name the observation that would retire a finding. A finding with no way to be wrong is taste.

## Figures that do not survive checking

| Claim in circulation | Status | Say instead |
| :--- | :--- | :--- |
| WCAG 2.4.13 Focus Appearance is an AA criterion | **Wrong.** It is level **AAA** ([Understanding 2.4.13](https://www.w3.org/WAI/WCAG22/Understanding/focus-appearance.html)). | A missing strong focus indicator is a 2.4.7 (AA) or 1.4.11 (AA) question, not a 2.4.13 failure. |
| A defect costs 100× more to fix in production than in design | **Unsupported.** Traced to an IBM internal training course, data no later than 1981, about software ([The Register, 2021](https://www.theregister.com/2021/07/22/bugs_expense_bs/)). | "Late changes usually cost more" is plausible; give no multiplier. |
| Automated tools find 30–40% of accessibility problems | **Folklore.** No primary source found. Deque (2021) reports 57% of issues *by volume* over 2,000+ audits — a vendor metric ([Deque](https://www.deque.com/blog/automated-testing-study-identifies-57-percent-of-digital-accessibility-issues)). | Automation is a floor: it cannot judge alt-text quality, focus order, keyboard traps in custom widgets or screen-reader output. |
| NN/g defines "8 areas of DesignOps" | **Not confirmed.** NN/g's menu has three areas (how we work together, how we get work done, how our work creates impact) ([NN/g](https://www.nngroup.com/articles/start-designops/)). | Do not attribute an eight-part list to NN/g. |
| Test with 5 users and you find 85% of problems | **Misread.** The model N·[1−(1−L)ⁿ] with L ≈ 31% is a per-round budget for formative testing with comparable users; variance is large ([NN/g](https://nngroup.com/articles/why-you-only-need-to-test-with-5-users/)). | "Five users per round, several rounds, redesign between." Never a prevalence statistic. |
| McKinsey Design Index proves design drives revenue | **Correlation.** 300 listed companies, five years, proprietary index, no independent replication found. | "McKinsey reported a correlation in a sample of 300 firms." |
| 24 px and 44 px targets are interchangeable | **No.** WCAG 2.5.8 (AA) is 24×24 CSS px with exceptions; 2.5.5 (AAA) is 44×44; Apple's default is 44×44 pt; Android/Material 48×48 dp. | Use 44 CSS px for primary touch controls; 24 is the legal floor. |
| Up to 8% of people are colour-blind | **Scoped.** Up to ~8% of males and ~0.5% of females *of Northern European descent*; lower elsewhere. | Quote it as an upper bound with its population. |
| Use #121212 for dark mode; never pure black | **Folklore.** Not confirmed by Apple's or Material's own guidance. | Use base vs elevated surfaces, semantic colours, and test contrast in every appearance. |
| "Hick's law: ≤7 options" / "Miller 7±2" / "three-click rule" | **Folklore as design rules.** Hick applies to ordered, known choices, not to arbitrary menus. | Reduce choices by relevance and structure, not to a number. |
| DTCG tokens are a W3C standard | **Not on the W3C Standards Track.** Format 2025.10 is a Final Community Group Report, stable since 2025-10-28 ([designtokens.org](https://www.designtokens.org/tr/2025.10/format/)). | "Stable community-group spec"; pin the dated URL, never `drafts`. |
| EN 301 549 already requires WCAG 2.2 | **Sources disagree.** v3.2.1 is WCAG 2.1-based; v4.1.1 moves to 2.2 but dates and EAA citation status differ between sources. | Target WCAG 2.2 AA now. |

## Known gaps (do not paper over)

No primary source was found for: Design Director / Head of Design levels; published semver, changelog, deprecation or RFC policies of the large design systems; Figma/Spotify/Shopify/Atlassian/GDS career ladders; the five HEART dimensions' definitions; SUPR-Q / UMUX-Lite / CES / NPS benchmarks; Jobs-to-be-Done and the d.school point-of-view format; office hours and quarterly planning rituals; ADA / Section 508 detail and the Italian transposition of the EAA (AgID, L. 4/2004); string-expansion percentages. Where this plugin gives a default for any of these it is a **house convention**.
