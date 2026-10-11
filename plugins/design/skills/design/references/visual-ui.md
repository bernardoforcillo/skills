# Visual craft: type, colour, layout, targets, motion

Numbers here are quotable because their sources are named. Conventions are labelled as conventions. Evidence about *why* these work on a human is the evidence layer (`evidence-layer.md`): typography → `${CLAUDE_PLUGIN_ROOT}/skills/neuro-design/references/typography-and-reading.md`; colour and contrast → `${CLAUDE_PLUGIN_ROOT}/skills/neuro-design/references/perception-gestalt-color.md`; targets, spacing and motion → `${CLAUDE_PLUGIN_ROOT}/skills/neuro-design/references/motor-and-interaction.md`; hierarchy → `${CLAUDE_PLUGIN_ROOT}/skills/neuro-design/references/attention-and-hierarchy.md`.

## Typography

- **Line length:** Bringhurst 45–75 characters for a single column, 66 ideal ([webtypography.net](https://webtypography.net/2.1.2)); Butterick 45–90 ([Practical Typography](https://practicaltypography.com/line-length.html)); WCAG 1.4.8 (AAA) caps at 80. The 45–75 range is typographic tradition; no empirical study was found behind it.
- **Line height:** Butterick 120–145% of the point size ([Practical Typography](https://practicaltypography.com/line-spacing.html)); WCAG 1.4.8 (AAA) at least 1.5.
- **Scales:** Material 3 has 15 roles (e.g. display-large 57/64, body-large 16/24, label-small 11/16 — derived from material-web v0_192 tokens, an older version). Apple's iOS Dynamic Type: Body 17/22, minimum 11 pt ([Apple HIG](https://developer.apple.com/tutorials/data/design/human-interface-guidelines/typography.json)). Modular ratios, including the golden ratio, are **aesthetic convention**, not evidence.
- **Fluid type:** `clamp()` with **rem** bounds; a `vw`-only term can break 200% zoom (WCAG 1.4.4) — test at 200% ([Smashing](https://www.smashingmagazine.com/2022/01/modern-fluid-typography-css-clamp/)). Font loading: `font-display` and `size-adjust` ([web.dev](https://web.dev/articles/font-best-practices)).

## Colour

- **Contrast:** 4.5:1 normal text, 3:1 large text (≥18 pt, or ≥14 pt bold) and UI components; ratios are not rounded.
- **Spaces:** Oklab fixes defects of CIELAB/HSV but its author states limits ([Ottosson](https://bottosson.github.io/posts/oklab/)); Material's HCT is built on CAM16 and L* ([material-color-utilities](https://github.com/material-foundation/material-color-utilities/blob/main/README.md)). The shortcut "tone difference 40 ≈ 3:1, 50 ≈ 4.5:1" was read from a search summary of HCT source comments — **verify before quoting**.
- **Dark mode (Apple):** keep 4.5:1 in every appearance and 7:1 for custom small text; elevated surfaces are lighter; do not add an app-only appearance toggle ([Apple dark mode](https://developer.apple.com/tutorials/data/design/human-interface-guidelines/dark-mode.json)). "Use #121212, never black" is folklore.
- **Colour blindness:** up to ~8% of males, ~0.5% of females of Northern European descent ([MDPI](https://www.mdpi.com/2227-9032/13/16/2031)); never encode state by colour alone.

## Layout and spacing

Fluent 2 uses a 4 px base unit, a spacing ramp from 2 to 56 and breakpoints at 320 / 480 / 640 / 1024 / 1366 / 1920 ([Fluent 2](https://fluent2.microsoft.design/layout)). Android window size classes (600 / 840 / 1200 / 1600 dp) are [TRAINING-MEMORY] — confirm at developer.android.com. An 8-point grid is an alignment **convention**, not proven superior. Use container queries (`container-type: inline-size`) for component-level responsiveness ([MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_containment/Container_queries)); browser-support status was not confirmed — check before shipping.

## Targets (four numbers, not interchangeable)

| Source | Size |
| :--- | :--- |
| WCAG 2.5.8 AA | 24×24 CSS px (with exceptions) |
| WCAG 2.5.5 AAA | 44×44 CSS px |
| Apple HIG | 44×44 pt default; documented minimum 28×28 |
| Android / Material | 48×48 dp (~9 mm), ≥ 8 dp between targets |

Fluent says 44 on iOS and web, 48 on Android. **Inference:** 44 CSS px for primary touch controls; 24 as the legal floor.

## Motion

Material 3 duration tokens run 50–1000 ms in 16 steps; easing "standard" is cubic-bezier(0.2, 0, 0, 1) ([material-web](https://raw.githubusercontent.com/material-components/material-web/main/tokens/versions/v0_192/_md-sys-motion.scss), an older token version; M3 Expressive's spring motion is [TRAINING-MEMORY]). NN/g: 100–500 ms is practitioner guidance, not a single study; exits shorter than entrances ([NN/g](https://www.nngroup.com/articles/animation-duration/)); response limits 0.1 / 1 / 10 s ([NN/g](https://www.nngroup.com/articles/response-times-3-important-limits/)). "300 ms is the magic duration" is folklore. Reduced motion: **reduce**, do not blanket-remove — `animation: none !important` can break `animationend` handlers ([web.dev](https://web.dev/articles/prefers-reduced-motion)). WCAG 2.3.1 (three flashes, A) and 2.3.3 (animation from interactions, AAA).

## Interaction patterns

Use Nielsen's heuristics and Shneiderman's rules as the vocabulary (`critique-and-review.md`). Fitts's law has two forms — log2(2D/W) (NN/g) and the Shannon form log2(D/W + 1) used by ISO 9241-9 — and the screen-edge advantage does not hold on touchscreens. Hick's law, T = b·log2(n+1), applies to ordered, known choices; it is no basis for "7 options" or "3 clicks". Form validation, loading, empty and error states: `content-design.md`. Keyboard: `accessibility-wcag22.md`. **Not researched:** optimistic UI, navigation-pattern selection, data-table density — do not assert rules for them without a source.
