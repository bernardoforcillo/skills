#!/usr/bin/env bash
# Opt-in-by-usage stop hook: nudge to run /capture-learnings after plan/PRD work.
# Silent no-op unless a memory wiki already exists in the current project
# (.cursor/memory/, or a pre-existing .claude/memory/) — that directory's presence
# IS the per-project opt-in signal — AND a plan or PRD file was modified in the
# last 30 minutes. Never writes the wiki itself.
set -euo pipefail

[ -d ".cursor/memory" ] || [ -d ".claude/memory" ] || exit 0

for dir in "docs/superpowers/plans" "docs/superpowers/prd"; do
  if [ -d "$dir" ] && find "$dir" -name '*.md' -mmin -30 -print -quit | grep -q .; then
    echo "A plan or PRD under $dir was touched recently. Consider running /capture-learnings to update the memory wiki."
    exit 0
  fi
done

exit 0
