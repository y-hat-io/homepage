#!/bin/sh
# Publish the notebook. Usage: ./push.sh [commit message]
# Spell-checks changed md/html first; add legit words to .spellwords (one per line).
set -e
cd "$(dirname "$0")"

if git diff --quiet && git diff --cached --quiet && [ -z "$(git ls-files --others --exclude-standard)" ]; then
  echo "nothing to publish"
  exit 0
fi

# spell-check whatever text files changed
changed=$( { git diff --name-only HEAD; git ls-files --others --exclude-standard; } | grep -E '\.(md|html)$' || true )
if [ -n "$changed" ] && command -v hunspell >/dev/null; then
  suspects=""
  for f in $changed; do
    [ -f "$f" ] || continue
    case "$f" in
      *.html) words=$(hunspell -H -d en_AU -p ./.spellwords -l < "$f") ;;
      *)      words=$(hunspell    -d en_AU -p ./.spellwords -l < "$f") ;;
    esac
    [ -n "$words" ] && suspects="$suspects$words
"
  done
  suspects=$(printf '%s' "$suspects" | sort -u | grep -v '^$' || true)
  if [ -n "$suspects" ]; then
    echo "spell-check doesn't know these words:"
    printf '%s\n' "$suspects" | sed 's/^/  /'
    printf "publish anyway? (legit words -> .spellwords) [y/N] "
    read -r ans
    case "$ans" in y|Y|yes) ;; *) echo "aborted — nothing pushed"; exit 1 ;; esac
  fi
fi

git add -A
git commit -m "${1:-note $(date +%Y-%m-%d)}"
git push origin main
echo "pushed — live in ~40s at https://y-hat.io"
