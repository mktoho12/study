#!/usr/bin/env bash
# 別端末でこのリポジトリを clone した後に一度だけ実行する。
# Claude Code の auto-memory ディレクトリを、リポジトリ内の .claude/memory への symlink にする。

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MEMORY_SRC="$REPO_DIR/.claude/memory"
MEMORY_DST_PARENT="$HOME/.claude/projects/-Users-$USER-work-study"
MEMORY_DST="$MEMORY_DST_PARENT/memory"

if [ ! -d "$MEMORY_SRC" ]; then
  echo "error: $MEMORY_SRC not found" >&2
  exit 1
fi

mkdir -p "$MEMORY_DST_PARENT"

if [ -e "$MEMORY_DST" ] || [ -L "$MEMORY_DST" ]; then
  echo "warning: $MEMORY_DST already exists. moving to ${MEMORY_DST}.bak"
  mv "$MEMORY_DST" "${MEMORY_DST}.bak"
fi

ln -s "$MEMORY_SRC" "$MEMORY_DST"
echo "linked: $MEMORY_DST -> $MEMORY_SRC"
