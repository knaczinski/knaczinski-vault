#!/bin/sh
# install-hooks.sh
# Installs the vault post-commit hook into every git repo under a given directory.
# Usage:   sh install-hooks.sh
# Default: scans C:/Users/felip/Documents/dev

HOOK_SRC="C:/Users/felip/Documents/dev/obsidian/knaczinski-vault/_system/hooks/post-commit"
SCAN_DIR="C:/Users/felip/Documents/dev"

echo "Scanning $SCAN_DIR for git repos..."

find "$SCAN_DIR" -maxdepth 2 -name ".git" -type d | while read gitdir; do
  HOOKS_DIR="$gitdir/hooks"
  DEST="$HOOKS_DIR/post-commit"
  REPO=$(dirname "$gitdir")

  # Skip the vault itself
  case "$REPO" in
    *obsidian*) echo "  Skipping vault repo: $REPO"; continue ;;
  esac

  cp "$HOOK_SRC" "$DEST"
  chmod +x "$DEST"
  echo "  Installed -> $DEST"
done

echo ""
echo "Done. Every commit in those repos will now create a note in the vault inbox."
