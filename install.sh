#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${1:-${HOME}/.skills}"

mkdir -p "$TARGET_DIR"

for skill in "$ROOT_DIR"/*; do
  if [ -d "$skill" ] && [ -f "$skill/SKILL.md" ]; then
    name="$(basename "$skill")"
    rm -rf "${TARGET_DIR:?}/$name"
    cp -R "$skill" "$TARGET_DIR/"
    echo "Installed: $name"
  fi
done

echo ""
echo "Skill pack installed to: $TARGET_DIR"
echo "You can now reference the installed skills from a compatible skill runner or host environment."
