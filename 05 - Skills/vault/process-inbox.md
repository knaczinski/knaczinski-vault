---
title: Process Inbox
category: vault
trigger: Use when there are notes in 00 - Inbox that need to be organized
---

# Process Inbox

## When to use
When Felipe asks to "process inbox" or "organize notes", or when Inbox has 3+ files.

## Inputs
- Contents of `00 - Inbox/`

## Steps
1. List all files in `00 - Inbox/`
2. For each file, read it and decide:
   - **Permanent note** → move concept/learning to `01 - Notes/`, clean up frontmatter
   - **Project-related** → move to `02 - Projects/<project>/` or update existing project note
   - **Article/resource** → apply skill `research/summarize-article` and move to `03 - Resources/`
   - **Irrelevant/duplicate** → flag for Felipe to delete (never delete without asking)
3. For each moved note:
   - Ensure frontmatter is complete
   - Update `status` from `draft` to `active` if content is complete
   - Add links to related existing notes
4. Report to Felipe: list what was moved where, and flag anything ambiguous

## Output
Empty (or near-empty) Inbox. A summary report of what was processed.

## Notes
- Never delete files — move or flag
- When in doubt about where a note belongs, ask Felipe
