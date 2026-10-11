# Accessibility: WCAG 2.2 and how to audit

Target **WCAG 2.2 AA**. WCAG 2.2 is a W3C Recommendation; the current version is dated 2024-12-12 ([WCAG 2.2](https://www.w3.org/TR/WCAG22/), verified). WCAG 3.0 is still a Working Draft (2026-03-03) and does not replace 2.2 ([WAI](https://www.w3.org/WAI/news/2026-03-03/wcag3)). APCA is not a conformance criterion in 2.2 — treat contrast ratios as WCAG 2.x ratios.

## New in 2.2 (verified, [W3C](https://www.w3.org/WAI/standards-guidelines/wcag/new-in-22/))

| SC | Name | Level |
| :--- | :--- | :--- |
| 2.4.11 | Focus Not Obscured (Minimum) | AA |
| 2.4.12 | Focus Not Obscured (Enhanced) | AAA |
| 2.4.13 | Focus Appearance | **AAA** |
| 2.5.7 | Dragging Movements | AA |
| 2.5.8 | Target Size (Minimum) | AA |
| 3.2.6 | Consistent Help | A |
| 3.3.7 | Redundant Entry | A |
| 3.3.8 | Accessible Authentication (Minimum) | AA |
| 3.3.9 | Accessible Authentication (Enhanced) | AAA |

4.1.1 Parsing is obsolete and removed. **2.4.13 is AAA, not AA** — never report its absence as an AA failure; report 2.4.7 (Focus Visible, AA) or 1.4.11 instead.

## Thresholds (verified in the Understanding documents)

- **2.5.8** target ≥ **24×24 CSS px**; exceptions: spacing (a 24-px circle around the target touches no other target), equivalent control, inline, user-agent, essential. 2.5.5 (AAA) is 44×44.
- **1.4.3** contrast **4.5:1** normal text, **3:1** large text; not rounded — 4.499 fails.
- **1.4.11** **3:1** for UI components and graphical objects.
- **1.4.10** reflow without two-dimensional scroll at **320 CSS px** wide (256 high).
- **1.4.12** text spacing tolerated: line height 1.5, paragraph spacing 2, letter 0.12, word 0.16 × font size.
- **2.4.13** (AAA) focus indicator area ≥ a 2 CSS px perimeter, 3:1 change of contrast.

Levels of 1.3.1, 2.1.1, 2.4.7, 3.3.1 and 3.3.2 were recalled, not re-read: [UNVERIFIED] — confirm before citing a level in a report.

## Audit procedure (house convention, nine steps)

The W3C approach is Easy Checks, then WCAG-EM with people with disabilities; no single tool determines conformance ([W3C WAI](https://www.w3.org/WAI/test-evaluate/)). The steps below are this plugin's **house convention**:

1. **Sample** — a representative set of pages/flows and states (WCAG-EM thinking), not only the happy path.
2. **Automated** — axe or equivalent as a floor. Do not claim a percentage of coverage (see `evidence-and-corrections.md`).
3. **Keyboard** — every function reachable and operable; visible focus; logical order; no traps; no positive `tabindex`.
4. **Zoom and reflow** — 200% zoom; 320 CSS px reflow; text-spacing override.
5. **Screen reader** — names, roles, states, landmarks, headings, announcements of dynamic content. Pair readers and browsers deliberately; "official" pairings are [UNVERIFIED].
6. **Contrast and colour** — text, non-text, focus, error and state not by colour alone; forced-colours mode; reduced motion.
7. **Targets and dragging** — 2.5.8; a non-drag alternative (2.5.7).
8. **Forms and authentication** — labels, instructions, error identification and suggestion, no redundant entry (3.3.7), accessible authentication (3.3.8).
9. **Content** — headings, link purpose, plain language, alt text that is meaningful, consistent help (3.2.6).

## Severity (house convention)

**Blocker** — prevents completing a core task for a group of users, or violates an A/AA criterion with verified grounds. **Major** — significant barrier with a workaround. **Minor** — friction, or an AAA/best-practice gap. A report lists each finding with SC, level, evidence, who is affected, fix, and the label from `evidence-and-corrections.md`. Template: `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/a11y-audit-report.md`.

## ARIA

A role is a promise the widget must keep: "No ARIA is better than bad ARIA" ([APG](https://www.w3.org/WAI/ARIA/apg/practices/read-me-first/), verified). Prefer native elements. Composite widgets: one tab stop, roving tabindex ([APG keyboard](https://www.w3.org/WAI/ARIA/apg/practices/keyboard-interface/)). Pages with ARIA had more detected errors in WebAIM Million 2026 (59.1 vs 42 per page), likely confounded by complexity ([WebAIM](https://webaim.org/projects/million/)). A clean automated run proves little: 95.9% of home pages had detectable failures.

## Legal context

The European Accessibility Act (Directive (EU) 2019/882) applies from **2025-06-28** to covered products and services; microenterprise services are exempt ([EUR-Lex](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32019L0882)). EN 301 549 v3.2.1 is WCAG 2.1-based; v4.1.1 moves to 2.2 but sources disagree on dates — target WCAG 2.2 AA. GOV.UK requires WCAG 2.2 AA plus automated and manual testing, research with disabled people, and an accessibility statement reviewed at least annually ([GOV.UK](https://www.gov.uk/service-manual/helping-people-to-use-your-service/making-your-service-accessible-an-introduction)). ADA, Section 508 and the Italian transposition (AgID, L. 4/2004) were **not verified**.

## Inclusive design

Microsoft's three principles — recognise exclusion, learn from diversity, solve for one and extend to many ([Microsoft](https://inclusive.microsoft.design/), verified). The permanent / temporary / situational spectrum is [UNVERIFIED] as a primary-source quote; the idea is well established.
