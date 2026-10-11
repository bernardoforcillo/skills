---
name: design-tokens
description: Use when defining, reviewing or migrating design tokens — the DTCG format 2025.10 (fields, types, aliases, colour objects), a three-layer architecture (primitive, semantic, component), theming and density as independent axes, deprecation with $deprecated, and tooling such as Style Dictionary. Pins the dated spec URL.
---

# Design tokens

DTCG **2025.10** is the first stable version (2025-10-28): a Final Community Group Report, **not** a W3C Standards Track document. Pin `https://www.designtokens.org/tr/2025.10/format/`; never `drafts`.

## Method

1. Files are `*.tokens` or `*.tokens.json`. A token has `$value` (required), `$type`, `$description`, `$extensions`, `$deprecated`; groups support `$root` and `$extends`; references are `{group.token}` or a JSON Pointer `$ref`.
2. Use the **object forms** (a `dimension` as `{value, unit}`, a colour with `colorSpace` and `components`), not string shorthands.
3. Architect in **three layers**: primitive → semantic (themed) → component. Consumers reference semantic and component only; name by meaning, not value.
4. Keep **theme** (colour) and **density** (space) as independent axes. The Resolver module for modes is still preview — do not depend on it.
5. Test **contrast on semantic pairs per theme**.
6. Deprecate with `$deprecated` naming the replacement.
7. Tooling: Style Dictionary v4 supports DTCG only partially; full 2025.10 is planned for v5. Figma-variables export and Tokens Studio details are [UNVERIFIED].

Read `${CLAUDE_PLUGIN_ROOT}/skills/design/references/tokens-dtcg.md`. Delegate to the `design-system-steward` agent for an isolated review.
