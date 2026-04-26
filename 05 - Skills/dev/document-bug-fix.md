---
title: Document a Bug Fix
category: dev
trigger: Use when Felipe solved a non-trivial bug and wants to capture the learning
---

# Document a Bug Fix

## When to use
After solving a bug that took more than ~20 minutes or revealed something non-obvious about the system.

## Inputs
- Bug description (what was happening)
- Root cause (what was actually wrong)
- Fix applied
- Codebase / project context (optional)

## Steps
1. Create a note at `01 - Notes/YYYY-MM-DD-bug-<short-title>.md`
2. Write frontmatter with tags including `bug`, `<language>`, `<project-name>`
3. Structure the note with these sections:
   - **Symptom** — what the user/system observed
   - **Root cause** — the actual technical reason
   - **Fix** — what was changed and why it works
   - **Lesson** — what this reveals about the system or your mental model
4. Link to the project note if it exists in `02 - Projects/`
5. If the root cause relates to a concept (e.g., "race condition", "N+1 query"), link to or create a concept note in `03 - Resources/concepts/`

## Output
A permanent note in `01 - Notes/` that serves as a reference for similar future bugs.

## Example
**Input:** "Redis cache was returning stale data after a deploy. Root cause: TTL was set per-key but the invalidation logic was only clearing the main key, not the variant keys."

**Output note title:** `2025-04-26-bug-redis-variant-key-invalidation.md`
