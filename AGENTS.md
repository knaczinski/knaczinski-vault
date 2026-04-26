# AGENTS.md — Second Brain Operating Manual

This is the master instruction file for any AI agent operating on this vault.
Read this file before taking any action.

## Identity

- **Owner:** Felipe (knaczinski)
- **Purpose:** Personal second brain for software development, project management, and general research
- **Vault path:** `C:\Users\felip\Documents\dev\obsidian\knaczinski-vault`
- **Git repo:** versioned, commit after meaningful changes

---

## First thing to do on every new conversation

1. Ask: "Are you on the same machine as before, or is this a new/different PC?"
2. If new machine → read `SETUP.md` and walk Felipe through every unchecked item.
3. If same machine → proceed normally.

---

## Folder Structure

```
00 - Inbox/          Raw captures. Process within 48h.
01 - Notes/          Permanent, atomic notes. Evergreen knowledge.
02 - Projects/       One subfolder per active project.
03 - Resources/
  articles/          Summaries of external content.
  concepts/          Definitions, mental models, frameworks.
  people/            Notes on people worth tracking.
04 - Archive/        Closed projects and outdated notes.
05 - Skills/         AI-executable skill files (see below).
  dev/               Software development workflows.
  research/          Research and summarization workflows.
  projects/          Project management workflows.
  vault/             Vault maintenance workflows.
_system/             Templates and hooks. Not for content.
SETUP.md             Machine configuration checklist. Update when adding new configs.
```

---

## Note Frontmatter Standard

Every note must have this header:

```yaml
---
title: Note title
date: YYYY-MM-DD
tags: [tag1, tag2]
status: draft | active | archived
---
```

Rules:
- `title` matches the filename
- `date` is creation date, never modified
- `tags` use lowercase-hyphenated format: `software-design`, `project-alpha`
- `status: draft` = incomplete; `active` = complete and useful; `archived` = moved to 04

---

## Skills System

Skills are markdown files in `05 - Skills/`. Each skill is an AI-executable workflow.

**When to use skills:**
Before doing any complex task, check if a relevant skill exists in `05 - Skills/`.
Read the skill file and follow its instructions precisely.

**Skill file format:** See `_system/skill-template.md`

**Available skills index:** See `05 - Skills/INDEX.md`

---

## Claude's Decision Rules

### Capture
- Raw thought → `00 - Inbox/YYYY-MM-DD-short-title.md`
- Already clear → correct folder directly

### Reading the vault
- Before answering any question about Felipe's projects/knowledge, scan relevant folders first
- Use note links `[[Note Title]]` to show connections found

### Writing notes
- One idea per note (atomic)
- Link liberally: if a concept exists already, link it instead of re-explaining
- Never duplicate — search before creating

### Updating notes
- Prefer editing existing notes over creating new ones for the same topic
- Update `status` when a note moves from draft → active

### After writing
- Remind Felipe to commit: `git add . && git commit -m "..."`

### New machine detected
- Read `SETUP.md` in full
- For each unchecked item `[ ]`, explain what it is, why it matters, and the exact commands to configure it
- Do not proceed with vault work until critical items (1.1, 4.1) are confirmed

---

## What This Vault Should Absorb

| Category | Examples | Target folder |
|---|---|---|
| Dev learnings | New patterns, bugs solved, architecture decisions | `01 - Notes` |
| Project context | Goals, decisions, blockers, retrospectives | `02 - Projects` |
| Article summaries | Key takeaways from things Felipe reads | `03 - Resources/articles` |
| Concepts | Mental models, frameworks, definitions | `03 - Resources/concepts` |
| Research | Investigations into technical topics | `01 - Notes` |
| AI Skills | Reusable workflows for Claude | `05 - Skills` |
| Quick thoughts | Raw ideas to be processed | `00 - Inbox` |

---

## Anti-patterns (never do)

- Do not create a note that already exists — search first
- Do not write walls of text in a single note — split into atomic notes and link
- Do not leave notes in Inbox for more than a conversation — process them
- Do not skip frontmatter
- Do not invent information — if unsure, mark with `> [!question] Needs verification`
- Do not add new machine configurations without documenting them in `SETUP.md`
