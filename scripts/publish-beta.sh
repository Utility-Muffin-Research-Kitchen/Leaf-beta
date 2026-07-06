#!/bin/sh
# Publish a Leaf beta release to the Leaf-beta repo.
#
# Guarantees the two things every beta release MUST have:
#   1. the tester-only banner (RELEASE_NOTES_HEADER.md) prepended to the notes, and
#   2. the GitHub release marked --prerelease (never "Latest").
#
# Usage:
#   scripts/publish-beta.sh <tag> "<title>" <notes-file> <artifact> [artifact...]
#
# Example:
#   scripts/publish-beta.sh v0.5.0-beta.1 "Leaf v0.5.0-beta.1 (Tester Build)" notes.md \
#       leaf-mlp1-sd-v0.5.0-beta.1.zip leaf-mlp1-recovery-v0.5.0-beta.1.zip
set -eu

REPO="Utility-Muffin-Research-Kitchen/Leaf-beta"
ROOT=$(cd "$(dirname "$0")/.." && pwd)
HEADER="$ROOT/RELEASE_NOTES_HEADER.md"

[ $# -ge 4 ] || { echo "usage: $0 <tag> <title> <notes-file> <artifact> [artifact...]" >&2; exit 2; }
case "$1" in
    v[0-9]*-beta.[0-9]*|v[0-9]*-rc.[0-9]*) : ;;
    *) echo "refusing: tag '$1' is not a vX.Y.Z-beta.N / -rc.N pre-release tag" >&2; exit 2 ;;
esac
[ -f "$HEADER" ] || { echo "missing banner: $HEADER" >&2; exit 1; }

tag=$1; title=$2; notes=$3; shift 3
[ -f "$notes" ] || { echo "notes file not found: $notes" >&2; exit 1; }

tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT
cat "$HEADER" "$notes" > "$tmp"

gh release create "$tag" \
    --repo "$REPO" \
    --prerelease \
    --title "$title" \
    --notes-file "$tmp" \
    "$@"
