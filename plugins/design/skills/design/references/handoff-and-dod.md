# Handoff and definition of done

A handoff is complete when an engineer can build every state without asking. The best published definition of done for a component is Carbon's checklist; the rest of this file is an **inference** synthesised from it and common practice, labelled as such.

## What Carbon calls done ([Carbon](https://carbondesignsystem.com/contributing/component-checklist), verified)

A component reaches **Stable** (after Draft → Preview candidate → Preview) when it has:

- **Design** — a spec built only from tokens; every state (hover, focus, selected, disabled, read-only, error, warning); responsive behaviour and overflow; contrast 4.5:1 for text and 3:1 for non-text interactive elements.
- **Code** — no magic numbers; configurable strings; works at about 320 px; stories; documentation; typed props.
- **Verification** — unit tests above 80%; visual regression; automated accessibility checks; manual testing with JAWS, VoiceOver and NVDA.

## The handoff spec (inference)

Use `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/handoff-spec.md`. Sections:

1. **Context** — links to the brief and the decision records; the goal and the metric.
2. **State matrix** — every component or screen × default, hover, focus (visible), active, disabled, loading, empty, error, success, partial/offline. A blank cell is a question, not an omission.
3. **Responsive** — behaviour at 320 CSS px (WCAG 1.4.10 reflow), at the breakpoints used, at 200% zoom; container-based behaviour where it applies.
4. **Content and i18n** — final copy, error and empty states, truncation rules, plurals, no string concatenation, longest-string test; expansion is language-specific (the often-quoted 30–40% for Italian is [UNVERIFIED]).
5. **Accessibility** — roles and names, keyboard path and focus order, announcements, targets (24 px floor, 44 px primary), contrast, reduced motion.
6. **Motion** — durations and easing from tokens; a `prefers-reduced-motion` fallback that *reduces*, not removes.
7. **Analytics** — events and properties tied to the goal metric. [UNVERIFIED] as a universal handoff item; include when the brief names a metric.
8. **Edge cases** — empty, one, many, very long, error, slow, offline, permission denied, first run.
9. **Design QA** — what the designer checks in staging, against the spec, before sign-off.

"Redlines versus tokens": no primary source settles it. Default (**house convention**): specify in tokens; draw a redline only where no token exists, and then open a token request (`design-system-steward`).

## Definition of done for a design change

Done means all of:

- [ ] The brief's success criterion is measurable and has an owner.
- [ ] Every state in the matrix is designed or explicitly out of scope with a reason.
- [ ] The a11y audit has no open blocker (WCAG 2.2 AA).
- [ ] Copy is final and passes the content checks.
- [ ] Tokens only; any new token went through the system process.
- [ ] Decisions that were hard to reverse have a record.
- [ ] Design QA done in the built product, not only in the file.
- [ ] A neuro-design pass was considered for any attention-heavy, high-stakes or high-traffic flow (`skills:neuro-design`, optional peer).
