---
title: Architecture Decision Record (ADR)
category: dev
trigger: Use when Felipe makes a significant technical decision in a project
---

# Architecture Decision Record (ADR)

## When to use
When a non-trivial technical decision is made: choosing a library, database schema, API design pattern, infra choice, etc.
The point is to capture the *why* — future Felipe will forget it.

## Inputs
- Project name
- Decision being made
- Options that were considered
- Chosen option and rationale
- Known tradeoffs

## Steps
1. Create a note at `02 - Projects/<project-name>/adr-<NNN>-<short-title>.md`
   - `NNN` is a sequential number (001, 002, ...)
2. Write frontmatter with tags: `adr`, `<project-name>`, `<tech-area>`
3. Structure the note:

```markdown
## Context
Why does this decision need to be made? What is the problem?

## Options Considered
- **Option A:** description — pros / cons
- **Option B:** description — pros / cons

## Decision
Chosen option and the primary reason.

## Consequences
- What becomes easier
- What becomes harder
- What is deferred
```

4. Link back from the project's main note (`02 - Projects/<project-name>/README.md`)

## Output
A permanent record under the project folder, linked from the project index.
