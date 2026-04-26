---
title: Weekly Vault Review
category: vault
trigger: Use when Felipe asks for a weekly review of the vault
---

# Weekly Vault Review

## When to use
Once a week — typically Friday or Sunday. Felipe asks "weekly review" or "review the vault".

## Steps
1. **Inbox:** Count files, list titles, flag what needs processing
2. **Active projects:** Read each `02 - Projects/*/README.md`, report:
   - Last log entry date
   - Any project with no updates in 7+ days → flag as stale
3. **Recent notes:** List notes created in the last 7 days
4. **Orphan check:** Identify notes in `01 - Notes/` with no links to or from other notes
5. **Suggest:** Based on what's in the vault, suggest 1–3 things Felipe could work on or capture

## Output
A structured weekly summary Felipe can read in under 3 minutes.

## Format

```markdown
## Vault Weekly Review — YYYY-MM-DD

### Inbox (N files)
- `file.md` — suggested destination

### Active Projects
- **Project A** — last update: DATE — status: OK / STALE
- **Project B** — last update: DATE — status: OK / STALE

### New Notes This Week
- [[Note 1]]
- [[Note 2]]

### Orphaned Notes
- [[Note X]] — no connections, consider linking or archiving

### Suggestions
1. ...
2. ...
```
