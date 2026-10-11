# Design decision records

Hard-to-reverse design decisions get written down once, where the next person will find them. There is **no published UX standard** for this; the form is adapted from two verified software sources.

## Sources

- **Nygard's ADR** (2011): Title, Status, Context, Decision, Consequences; one or two pages; numbers are sequential and never reused; a superseded record is marked superseded, not deleted ([Cognitect](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions), verified).
- **MADR 4.0.0** (2024-09-17): Context and Problem Statement, Decision Drivers, Considered Options, Decision Outcome, Consequences, Confirmation; front matter with status, date, decision-makers, consulted, informed ([MADR](https://adr.github.io/madr/), verified).

The Design Decision Record (DDR) below is an **inference**: MADR plus an evidence level and a reversibility field. Use `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/decision-record.md`.

## When to write one

Write a DDR when the choice is: hard to undo; cross-team; contested; a **deviation from the design system**; or based on research someone may reopen. Do not write one for a reversible tweak.

## Fields

| Field | Content |
| :--- | :--- |
| ID, title, status | Sequential ID (never reused); proposed / accepted / superseded by DDR-n |
| People | Driver, Approver, Contributors, Informed (DACI) |
| Context | The problem as observed; the goal metric |
| Evidence | Each piece with its **level (L1–L5)** and method; the label from `evidence-and-corrections.md` |
| Criteria | What the choice was judged on, in order |
| Options | Including **do nothing**; each with what it costs |
| Decision | The choice and the one-sentence reason |
| Consequences | What becomes easier, what harder; who is affected |
| Reversibility | Cheap, costly or one-way; the **trigger** that reopens it |
| Confirmation | How we will know it worked, and when we look |

## Habits

- Record the **rejected** options; they are what stops the same debate recurring.
- Say what evidence would change the decision. If nothing would, it is taste — record that honestly.
- A superseding DDR links back; the old one stays.
- Keep the log where the code or the design files are searched from, not in a chat thread.
