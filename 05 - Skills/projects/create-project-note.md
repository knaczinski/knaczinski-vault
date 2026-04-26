---
title: Create Project Note
category: projects
trigger: Use when Felipe starts a new project or wants to register an existing one in the vault
---

# Create Project Note

## When to use
At the start of any project (personal, professional, or learning) that will have more than one note or span more than a few days.

## Inputs
- Project name
- Goal (what done looks like)
- Context (why this project exists)
- Optional: stack, links, deadline

## Steps
1. Create directory `02 - Projects/<project-name>/`
2. Create the main file `02 - Projects/<project-name>/README.md` with the structure below
3. Add frontmatter tags: `project`, `<project-name>`, `active`
4. If the project relates to a concept or resource, link from `03 - Resources/`

## Output
A project folder with a README that serves as the single entry point for all project knowledge.

## README format

```markdown
---
title: Project Name
date: YYYY-MM-DD
tags: [project, project-name]
status: active
---

# Project Name

## Goal
What does done look like? Be specific.

## Context
Why does this project exist?

## Stack / Tools
- Tool 1
- Tool 2

## Key Links
- [Repo](https://...)
- [Docs](https://...)

## Log
| Date | Note |
|---|---|
| YYYY-MM-DD | Started project |

## Notes & Decisions
- [[adr-001-...]]
```

## Notes
- The Log section is where quick updates go — date + one sentence
- ADRs, bug notes, and research all link back here
- When project is done, move entire folder to `04 - Archive/` and update status to `archived`
