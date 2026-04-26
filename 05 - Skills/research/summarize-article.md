---
title: Summarize Article or Resource
category: research
trigger: Use when Felipe shares a URL, PDF, or pasted article content to save to the vault
---

# Summarize Article or Resource

## When to use
When Felipe shares an article, blog post, paper, or doc and wants it captured in the vault.

## Inputs
- URL or raw content of the article
- Optional: topic tags Felipe wants applied

## Steps
1. If URL is provided, fetch and read the content
2. Extract:
   - Title and author
   - Publication date (if available)
   - Core argument or main thesis (1–2 sentences)
   - Key points (3–7 bullet points)
   - Quotes worth keeping (max 2, under 15 words each)
   - Relevance to Felipe's current projects or interests
3. Create a note at `03 - Resources/articles/YYYY-MM-DD-<slug-title>.md`
4. Frontmatter tags: `article`, relevant topic tags
5. If the article introduces or explains a concept, check if a concept note exists in `03 - Resources/concepts/` and link or create one

## Output
A compact summary note in `03 - Resources/articles/`. The note should be readable in 2 minutes and capture everything worth keeping.

## Format

```markdown
---
title: Article Title
date: YYYY-MM-DD
tags: [article, topic]
status: active
source: https://...
author: Name
---

# Article Title

**Core thesis:** One sentence summary.

## Key Points
- Point 1
- Point 2
- Point 3

## Notable Quote
> "Short quote under 15 words"

## Why it matters
Connection to Felipe's current work or interests.

## Related notes
- [[Concept Note]]
- [[Project Note]]
```
