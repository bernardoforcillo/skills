# The evidence layer: neuro-design inside every desk

Process tells a team *how to decide*; the neuro-design references tell it *what is true about the person on the other side of the screen*. They are one system. Every desk reads the lens files that bear on its question as part of its normal method — not as an optional second opinion.

The knowledge base lives in `${CLAUDE_PLUGIN_ROOT}/skills/neuro-design/references/`: six lens files (each ends in a `## Design checklist`), a bibliography whose keys citations resolve to, twenty cross-domain files, and a foundation, `perceptual-limits.md`, holding the constants the lenses are guidance for (the ~2° acuity window, ~4 chunks of working memory, serial attention, Fitts's and Hick–Hyman's logarithms, the 100 ms / 1 s / 10 s thresholds, and the signal-detection argument that an attention-claiming element which is usually not worth attending to is a negative for the whole interface).

## Built into the agents

Each design agent carries the lens checklists it needs inside its own file, under a **Neuro-design core (built in)** block, so the desk works without a lookup. The blocks are generated from the lens files by `scripts/neuro-core.mjs` and checked by `scripts/check-plugin.mjs`: edit a lens file, then run `node scripts/neuro-core.mjs --write`, and the check fails until you do. The lens files stay the source of truth and hold the mechanism, the evidence and the bibliography keys; the built-in block holds the guidance.

## Which lens bears on which desk

| Desk | Always read | Read when the artifact calls for it |
| :--- | :--- | :--- |
| `design-lead` | `perceptual-limits.md` — to test a frame against the constants before committing a team to it | `habit-behavior-change`, `motivation-game-design` for retention work; `cross-cultural` for new markets |
| `design-critic` | the six lens checklists, by relevance to the goal | `neuroaesthetics`, `trust-uncanny-valley`, `wayfinding-spatial` |
| `design-reviewer` | all six lens checklists (scored — see below) | `human-factors-safety` for alarms and error-prone flows; `graphical-perception-dataviz` for charts |
| `a11y-auditor` | `cross-domain/neurodiversity-inclusive`, `motor-and-interaction` | `human-factors-safety`, `multisensory-audio-haptics`, `chronobiology-light` |
| `design-system-steward` | `perception-gestalt-color`, `typography-and-reading`, `motor-and-interaction` — the evidence behind token scales | `evolutionary-perception`, `embodied-cognition` |
| `content-designer` | `typography-and-reading`, `cognitive-load-and-memory`, `cross-domain/psycholinguistics-content` | `time-perception-waiting`, `numerical-risk`, `trust-uncanny-valley`, `multimedia-learning` |
| `design-metrics-analyst` | `cross-domain/behavioral-economics`, `cross-domain/social-influence-persuasion` — the dark-pattern boundary | `habit-behavior-change`, `interruption-attention`, `numerical-risk` |

(File names are given without the directory: the six lenses are at the top of `references/`, the rest under `cross-domain/`.)

## How a lens verdict becomes a review finding

The two vocabularies differ on purpose, and the mapping is a **house convention**:

| Lens verdict | Becomes | When |
| :--- | :--- | :--- |
| `Blocking` + a **verified** threshold is crossed (a WCAG ratio, a platform target size, a measured response time) | **blocker** | The finding cites the threshold, not only the principle |
| `Blocking` resting on a principle and a plausible mechanism, no measured effect on *this* goal | **should** — stated as a question | Say what observation would upgrade or retire it |
| `Minor` | **could** | Unless it compounds with another finding on the same element |
| `Pass` | nothing | Record it under "working" so it survives iteration |

Why not pass `Blocking` straight through: the lens files give cited mechanisms, which are strong grounds for *a direction*, but a review blocker stops a release and needs **verified** grounds (`evidence-and-corrections.md`). The reviewer's own rule — withdraw a finding when the underlying constant does not apply (an expert recalling instead of searching, a non-visual channel, a rare irreversible action where friction is the design, a population small enough to measure directly) — carries over unchanged.

## What counts as "verified" in the mapping

A lens file that *mentions* a threshold is a pointer, not a source. A threshold is **verified** when you have read it in the standard or platform guideline itself (the WCAG Understanding page, the Apple HIG or Material page). If you have not, cite the lens key and label the finding **cited** — it can still be a **should**.

- **Computed values** (a contrast ratio worked out from hex codes, a target size inferred from CSS): label **inference (computed)** with the method, and name a tool run — a contrast checker, a measured tap target — as the observation that retires it. The *threshold* may be verified while the *measurement* is inference; say both.
- **Observed defects** (the form has no submit control; a countdown no script drives): what is directly observable in the artifact is **verified (observed)** for its existence. Whether it is a blocker still depends on the goal — here, a form that cannot be submitted blocks the stated goal outright.
- **Platform guidelines vs WCAG:** a size can fail an Apple/Material floor and still pass WCAG 2.5.8 through its spacing exception. Say which one carries the blocker.

## Citations

A finding grounded in a lens file carries its bibliography key (for example `[YANT-84]`) and the label **cited**: backed by a bibliography entry, not re-verified by this plugin. It may support a **should** and may explain a **blocker** whose threshold is separately verified. It does not, alone, make a blocker. Never invent a key; if the lens files do not support a claim, do not make it — say it is outside the evidence.

## Ethics, shared

The neuro-design files draw the line between influence and manipulation per principle. The whole team inherits it: no recommendation that depends on the user not noticing — false scarcity, countdowns that reset, confirm-shaming, hidden opt-outs — whatever it would do to a metric. `design-metrics-analyst` refuses to measure such a pattern as a success.

## Running the lens pass

- **Inline** (default, small artifacts): the desk reads the relevant checklists and applies them — this is what `neuro-design-audit` does for an existing UI and `neuro-design` does while building.
- **Isolated** (large artifact, or a second opinion unanchored on the desk's own read): dispatch `neuro-design-reviewer`, give it the artifact and the goal — not the desk's conclusion — and merge its structured scores, crediting them. When `neuro-design-reviewer` dispatched the desk, do not dispatch back.
