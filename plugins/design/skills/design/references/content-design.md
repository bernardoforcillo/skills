# Content design

Words are interface. The same standards of evidence apply: say what is verified and what is practice.

## Error messages (verified)

GOV.UK ([error message component](https://design-system.service.gov.uk/components/error-message/)): say **what went wrong** and **how to fix it**, in plain language; never "An error occurred" or "This field is required"; the same message on the field and in the summary; avoid "please", "sorry", "invalid", "oops". NN/g ([error message guidelines](https://www.nngroup.com/articles/error-message-guidelines/)): place the message by the field, not by colour alone, do not validate prematurely, **preserve the user's input**.

Pattern: *what happened* + *what to do*, in the user's words, with the specific cause when known. "Enter your date of birth as 27 3 2007" beats "Invalid date".

## Voice and tone

Voice is constant, tone varies with the reader's emotion — Mailchimp separates the two ([Mailchimp](https://styleguide.mailchimp.com/voice-and-tone/)); a voice chart organises voice by concept (Podmajersky; secondary via [VTEX](https://uxwriting.vtex.com/docs/principles/voice-chart/)). Write the tone down per *moment* (success, error, waiting, risk), not per product.

## Forms

Single column, labels above fields, **never a placeholder as the label** ([NN/g](https://www.nngroup.com/articles/web-form-design/)). Empty states and loading: [empty states](https://www.nngroup.com/articles/empty-state-interface-design/), [skeleton screens](https://www.nngroup.com/articles/skeleton-screens/).

## Undo over confirm

Confirmation dialogs are habituated away; where an action can be reversed, give **undo** instead ([A List Apart](https://alistapart.com/article/neveruseawarning/)). **Inference:** irreversible, high-stakes actions still need a confirmation that names the consequence in specific words ("Delete 3 projects"), with a button label that repeats the verb.

## Checks (practice, not standards — [UNVERIFIED] as published rules)

- **Empty state:** says why it is empty, what to do next, and offers the primary action.
- **Destructive confirmation:** names the object and the consequence; the safe choice is the default; the destructive button repeats the verb.
- **Button labels:** verb + object ("Save changes", not "OK").
- **Links:** purpose clear out of context (WCAG 2.4.4).
- **Numbers and dates:** locale-correct, unambiguous.

## Internationalisation readiness

No string concatenation; use a message format with plural rules (ICU MessageFormat — secondary sources only, [GitLab](https://translate.gitlab.com/blog/icu-guide)); leave room for growth and test the longest string — the "30–40%" figure for Italian is [UNVERIFIED]; Italian plural categories in CLDR ("one / many / other") are [UNVERIFIED] — check the CLDR plural table before relying on them; never bake text into images; keep keys stable across copy edits.

## Plain language

GOV.UK's reading-age and sentence-length figures were not verified here. Prefer short sentences and common words as a **practice**; measure comprehension with users rather than a readability score.
