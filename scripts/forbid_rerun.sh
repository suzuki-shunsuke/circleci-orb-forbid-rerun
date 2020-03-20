#!/usr/bin/env bash

set -eu
set -o pipefail

CIRCLE_BRANCH=master
CIRCLE_SHA1="xxx"

matched=false
for branch in $(echo "ma.*,develop" | tr , "\n"); do
  echo "branch: $branch"
  if [ "$CIRCLE_BRANCH" = "$branch" ]; then
    matched=true
    break
  fi
  if [[ "$CIRCLE_BRANCH" =~ $branch ]]; then
    matched=true
    break
  fi
done

if [ "$matched" != "true" ]; then
  echo "branch doesn't match"
  exit 0
fi
cd .
git fetch
sha1="$(git show -s --format=%H "origin/$CIRCLE_BRANCH")"
echo "SHA1 of origin/$CIRCLE_BRANCH: $sha1"

if [ "$CIRCLE_SHA1" = "$sha1" ]; then
  echo "branch is latest"
  exit 0
fi

echo "The revision isn't latest" >&2
exit 1
