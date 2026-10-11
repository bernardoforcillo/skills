# Design tokens: the DTCG format

The Design Tokens Community Group format, **2025.10**, is the first stable version, announced 2025-10-28 ([W3C DTCG](https://www.w3.org/community/design-tokens/2025/10/28/design-tokens-specification-reaches-first-stable-version/), verified). It is a *Final Community Group Report* — **not on the W3C Standards Track** ([FAQ](https://www.designtokens.org/faq/)). The stable core is production-ready; governance (versioning, deprecation, extensions) is still open for feedback.

**Pin the dated URL**: `https://www.designtokens.org/tr/2025.10/format/`. The `drafts` pages are a newer editor's draft still labelled 2025.10 and marked "do not implement".

## File and fields (verified, [Format 2025.10](https://www.designtokens.org/tr/2025.10/format/))

- Files: `*.tokens` or `*.tokens.json`; media type `application/design-tokens+json`.
- Token: `$value` (required), `$type` (inherited from the group), `$description`, `$extensions`, `$deprecated` (boolean or an explanatory string).
- Group: nests tokens; supports `$root` and `$extends` (deep merge, local wins, circular extension invalid).
- References: `{group.token}` for a whole token; JSON Pointer `$ref` for a sub-property.
- Types: color, dimension (`{value, unit}` with px or rem), fontFamily, fontWeight (1–1000), duration (ms or s), cubicBezier, number. Composites: strokeStyle, border, transition, shadow, gradient, typography.
- Color is an object with `colorSpace` and `components` (srgb, display-p3, oklch and others), with an optional `hex` fallback ([Color](https://www.designtokens.org/tr/2025.10/color/)).
- The **Resolver** module (themes and modes) is still a preview and "do not implement" ([Resolver](https://www.designtokens.org/tr/drafts/resolver/)).

**Inference:** use the object forms, not strings like "16px" or "#fff"; validate files against the dated spec.

```json
{
  "color": {
    "$type": "color",
    "brand": { "500": { "$value": { "colorSpace": "srgb", "components": [0.1, 0.4, 0.9] } } },
    "action": {
      "primary": { "$value": "{color.brand.500}", "$description": "Primary action background" }
    }
  },
  "space": {
    "$type": "dimension",
    "200": { "$value": { "value": 8, "unit": "px" } }
  }
}
```

## Tooling (verified where marked)

Style Dictionary v4 has first-class but **incomplete** DTCG support; full 2025.10 support is planned for v5; its converter does not rename legacy types ([Style Dictionary](https://styledictionary.com/info/dtcg/)). The announcement names Style Dictionary, Tokens Studio and Terrazzo as reference implementations. **Not verified:** Figma variables' DTCG export, Tokens Studio mode details, whether `shadow` has an `inset` field.

## Architecture

Mature systems converge on layers, not on one naming scheme:

| System | Layers / naming | Source |
| :--- | :--- | :--- |
| Material 3 | reference, system, component; e.g. `md.sys.color.primary` | [m3.material.io](https://m3.material.io/foundations/design-tokens/overview) — layer detail **secondary** |
| Atlassian | Foundation, Property, Modifier; "choose by meaning, not by value"; themes include high-contrast, plus spacing and motion | [Atlassian](https://atlassian.design/foundations/tokens/design-tokens) |
| Carbon | Same role across four themes; the values change | [Carbon](https://carbondesignsystem.com/elements/themes/overview/) |
| Primer | `base` vs `functional` folders; theming via `data-color-mode` | [Primer](https://primer.style/product/primitives/) |

**House default (inference): three layers.** *Primitive* (the raw palette and scale: `color.brand.500`, `space.200`), *semantic* (what it is for: `color.action.primary`, `color.text.muted` — themed), *component* (`button.primary.background`). Consumers reference **semantic and component only**. Theme (colour) and density (space) are independent axes. Never name a token after its value.

## Rules

1. A new token needs a role no existing token covers; otherwise it is a duplicate.
2. Deprecate with `$deprecated` and a string naming the replacement; remove only after the migration window the governance policy states.
3. Contrast is a property of **pairs**: test text/background semantic pairs per theme, not primitives.
4. Specs are written in tokens (`handoff-and-dod.md`); a missing token is a token request, not a hard-coded value.
