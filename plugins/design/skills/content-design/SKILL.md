---
name: content-design
description: Use to write or review interface words — error messages (what went wrong and how to fix it), empty states, destructive confirmations, button and link labels, voice constant and tone varying, undo over confirm — and to check internationalisation readiness for Italian and English.
---

# Content design

Words are interface. Verified rules are labelled as such; the rest is practice.

## Method

1. **Errors** (GOV.UK, NN/g — verified): say what went wrong and how to fix it, beside the field, not by colour alone, same text on field and summary, preserve the input; avoid "please", "sorry", "invalid", "oops".
2. **Empty states, confirmations, labels** (practice): say why it is empty and offer the next action; name the object and consequence of a destructive action and repeat the verb on its button; buttons are verb + object.
3. **Undo over confirm** where reversible; confirm irreversible, high-stakes actions in specific words.
4. **Voice constant, tone varies** with the reader's emotion per moment.
5. **i18n:** no concatenation, message format with plurals, longest-string test, no text in images, stable keys. Italian expansion and CLDR plural categories are [UNVERIFIED].
6. Offer the **string**, the string it replaces, and why.

Read `${CLAUDE_PLUGIN_ROOT}/skills/design/references/content-design.md`. Delegate to `content-designer`.

## Evidence layer

Read the reading, cognitive-load and psycholinguistics references before drafting (`${CLAUDE_PLUGIN_ROOT}/skills/design/references/evidence-layer.md`); check waiting and numeric-risk states against their cross-domain files.
