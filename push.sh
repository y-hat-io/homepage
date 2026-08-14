#!/bin/sh
# Publish the notebook. Usage: ./push.sh [commit message]
set -e
cd "$(dirname "$0")"

if git diff --quiet && git diff --cached --quiet && [ -z "$(git ls-files --others --exclude-standard)" ]; then
  echo "nothing to publish"
  exit 0
fi

git add -A
git commit -m "${1:-note $(date +%Y-%m-%d)}"
git push origin main
echo "pushed — live in ~40s at https://y-hat.io"
