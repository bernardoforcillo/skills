---
name: a11y-audit
description: Use to audit a UI, flow or code against WCAG 2.2 AA — sample, automated, keyboard, zoom and reflow, screen reader, contrast, targets and dragging, forms and authentication, content — with findings mapped to success criterion, level, who is affected and a fix. Knows that 2.4.13 is AAA and that automation is only a floor.
---

# Accessibility audit

Target **WCAG 2.2 AA**. No single tool determines conformance; a clean automated run proves little.

## Method — nine steps

1. **Sample** flows and states, not only the happy path.
2. **Automated** (axe or equivalent) as a floor; claim no coverage percentage.
3. **Keyboard**: operable, visible focus, logical order, no traps.
4. **Zoom and reflow**: 200% and 320 CSS px; text-spacing override.
5. **Screen reader**: names, roles, states, announcements.
6. **Contrast and colour**: 4.5:1 text, 3:1 large text and UI; not colour alone; forced colours; reduced motion.
7. **Targets and dragging**: 2.5.8 at 24×24 CSS px; a non-drag alternative (2.5.7).
8. **Forms and authentication**: labels, errors, no redundant entry (3.3.7), accessible authentication (3.3.8).
9. **Content**: headings, link purpose, alt text, consistent help (3.2.6).

Severity: blocker / major / minor (house convention). A blocker needs a criterion you **read**, not recalled. Report 2.4.13 only as a best-practice note — it is AAA.

Read `${CLAUDE_PLUGIN_ROOT}/skills/design/references/accessibility-wcag22.md`. Fill `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/a11y-audit-report.md`. Delegate to the `a11y-auditor` agent for an isolated audit; it re-tests under the loop-until-converged shape.

## Evidence layer

WCAG says what must hold; `${CLAUDE_PLUGIN_ROOT}/skills/design/references/evidence-layer.md` points to the neurodiversity and motor references that say who is affected when it does not. Use them to explain impact and to rank within a severity, never to invent a conformance failure.
