# SETUP.md — Machine Configuration Checklist

This file documents every configuration that lives outside the vault (OS, Git, tools).
When cloning this vault on a new machine, run through this checklist completely.

**Claude:** On every new conversation, check if the user is on a new machine by asking
"Are you on the same machine as before?" If not, read this file and verify each item below.

---

## How to use

1. Clone the vault into the correct path:
   ```bash
   git clone https://github.com/knaczinski/knaczinski-vault.git "C:\Users\<you>\Documents\dev\obsidian\knaczinski-vault"
   ```
2. Set the upstream tracking branch (run once after clone):
   ```bash
   cd "C:/Users/<you>/Documents/dev/obsidian/knaczinski-vault"
   git branch --set-upstream-to=origin/main main
   ```
3. Open Obsidian, add the cloned folder as a vault.
4. Work through every section below in order.
5. Mark each item as done by replacing `[ ]` with `[x]`.

---

## 1. Git global config

### 1.1 — Global hooks path
**Why:** Makes every git repo automatically create inbox notes on commit.

```bash
git config --global core.hooksPath "C:/Users/<you>/Documents/dev/obsidian/knaczinski-vault/_system/hooks"
```

> Note: replace `<you>` with your Windows username (e.g. `felip`).

Verify:
```bash
git config --global core.hooksPath
# Expected: path pointing to _system/hooks in this vault
```

Status: `[x] configured`

---

### 1.2 — User identity
**Why:** Commit notes include author name.

```bash
git config --global user.name "Felipe Knaczinski"
git config --global user.email "your@email.com"
```

Verify:
```bash
git config --global user.name
git config --global user.email
```

Status: `[ ] not configured`

---

## 2. Obsidian settings

### 2.1 — Homepage plugin
**Why:** Opens Home.md automatically on startup.

Steps:
1. Settings → Community plugins → turn off Safe mode
2. Browse → search "Homepage" → Install → Enable
3. Plugin settings → set Homepage to `Home`

Status: `[ ] not installed`

---

### 2.2 — Obsidian Git plugin (optional but recommended)
**Why:** Auto-commits vault changes without needing the terminal.

Steps:
1. Settings → Community plugins → Browse → search "Obsidian Git" → Install → Enable
2. Plugin settings:
   - Auto pull interval: `10` (minutes)
   - Auto push interval: `10` (minutes)
   - Commit message: `vault: auto-commit {{date}}`

Status: `[ ] not installed`

---

## 3. Shell / terminal

### 3.1 — Git Bash (Windows)
**Why:** The hook scripts use `sh` syntax. Git Bash provides this on Windows.

Install: https://git-scm.com/download/win

Verify:
```bash
sh --version
```

Status: `[ ] not verified`

---

## 4. Claude / MCP

### 4.1 — Filesystem MCP configured
**Why:** Claude needs filesystem access to read/write vault notes.

The MCP server must have `C:\` (or the vault path) in its allowed directories.
Check Claude Desktop config at: `C:\Users\<you>\.claude.json`

Status: `[ ] not verified`

---

## Checklist summary

| # | Item | Status |
|---|---|---|
| 1.1 | Git global hooks path | `[x]` |
| 1.2 | Git user identity | `[ ]` |
| 2.1 | Obsidian Homepage plugin | `[ ]` |
| 2.2 | Obsidian Git plugin | `[ ]` |
| 3.1 | Git Bash (Windows) | `[ ]` |
| 4.1 | Filesystem MCP | `[ ]` |

---

## Adding new config items

When you configure something new on your machine that isn't in the vault,
add it here immediately. Format:

```markdown
### N.N — Name
**Why:** one sentence reason.
<install/configure steps>
Verify: <command or check>
Status: `[ ] not configured`
```
