---
name: decision-record
description: Use when a design choice is hard to reverse, cross-team, contested, a deviation from the design system, or based on research others may reopen — write a design decision record (adapted from Nygard's ADR and MADR 4.0.0) with evidence levels, options including do nothing, reversibility and a confirmation.
---

# Decision record

Write the decision once, where the next person will search. There is no published UX standard; this is MADR plus an evidence level and a reversibility field (an **inference**).

## Method

1. Decide it deserves a record: hard to undo, cross-team, contested, system deviation, or reopenable research. A reversible tweak does not.
2. Fill `${CLAUDE_PLUGIN_ROOT}/skills/design/templates/decision-record.md`: sequential ID (never reused), DACI roles, context, **evidence with level and label**, criteria, **options including do nothing**, decision, consequences, **reversibility and the reopen trigger**, confirmation, and what would change it.
3. Record the **rejected** options.
4. A superseding record links back; the old one stays, marked superseded.

Read `${CLAUDE_PLUGIN_ROOT}/skills/design/references/decision-records.md`. The `design-lead` agent can draft one in isolation.
