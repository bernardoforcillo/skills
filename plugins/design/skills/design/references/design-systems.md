# Design systems: components, governance, health

Tokens are covered in `tokens-dtcg.md`. This file covers the parts around them.

## Component API

- **Headless first.** Radix primitives are unstyled, follow WAI-ARIA, compose via `asChild` and support controlled and uncontrolled state ([Radix](https://www.radix-ui.com/primitives/docs/overview/introduction)). shadcn/ui states it is "not a component library, it is how you build your own" ([shadcn/ui](https://ui.shadcn.com/docs)) — copy-in moves the versioning and upgrade burden onto the consumer; that is a governance trade-off, not a free lunch.
- **Rule of thumb (inference):** variant props for small *closed* sets (size, intent); composed parts for structure (header, body, actions). A prop that accepts arbitrary styling is a missing variant or a missing token.
- **Accessibility is part of the API**: name, role, state and keyboard behaviour ship with the component (`accessibility-wcag22.md`), not as an afterthought.
- Atomic Design (atoms, molecules, organisms, templates, pages) is a useful vocabulary, not a folder structure ([Brad Frost](https://atomicdesign.bradfrost.com/chapter-2/), verified).

## Definition of done for a component

Carbon's checklist (`handoff-and-dod.md`): Draft → Preview candidate → Preview → **Stable**, with spec, code, tests and documentation gates.

## Governance models

Nathan Curtis's three team models — **solitary**, **centralised**, **federated** — from secondary summaries ([UIE](https://articles.centercentre.com/?p=860)). His warning: federated needs a dedicated, adequately staffed core or the system stalls ([Substack](https://nathanacurtis.substack.com/p/the-fallacy-of-federated-design-systems-23b9a9a05542)). Salesforce Lightning describes a mix of centralised and federated. GOV.UK accepts contributions through GitHub against published criteria ([GOV.UK community](https://design-system.service.gov.uk/community/), verified).

**Gap, stated plainly:** no public semver, changelog, deprecation or RFC policy was found for Atlassian, Polaris, Carbon or Material. What follows is a **house convention**, to be adopted deliberately:

- **Semver** for the package: breaking = major; a visual change that alters layout counts as breaking.
- **Changelog** per release, written for consumers (what changed, who is affected, how to migrate).
- **Deprecation**: mark with `$deprecated` / a deprecation notice and the replacement; keep for at least one major; remove only with a migration path.
- **Contribution**: an intake issue (role, evidence of reuse in two or more places), a design review, an accessibility audit, then a decision record for anything that deviates.
- **RFC** for cross-cutting changes (token architecture, theming) as a DDR.

## Health

Health metrics come from **secondary** practitioner sources and should be re-checked before being quoted: coverage (share of UI built from system components), adoption rate, detachment (instances pulled out of the library — athenahealth reviews monthly, [Figma](https://www.figma.com/blog/design-systems-104-making-metrics-matter/)), contribution rate. The "above 80% at 12 months" target is one guide's suggestion, not a standard. "Time to ship" has no sourced definition — a proposal only. Track the metric; do not set a target from a blog.

Use `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/ds-contribution.md` for intake.
