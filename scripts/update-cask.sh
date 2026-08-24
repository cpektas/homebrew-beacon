#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

RELEASE=$(gh api repos/cpektas/beacon/releases/latest)
VERSION=$(printf '%s' "$RELEASE" | jq -r '.tag_name | sub("^v"; "")')
URL=$(printf '%s' "$RELEASE" | jq -r --arg name "Beacon-${VERSION}.dmg" \
  '.assets[] | select(.name == $name) | .browser_download_url')

if [[ -z "$VERSION" || "$VERSION" == "null" || -z "$URL" || "$URL" == "null" ]]; then
  echo "Latest Beacon release has no matching DMG" >&2
  exit 1
fi

ARCHIVE=$(mktemp)
trap 'rm -f "$ARCHIVE"' EXIT
curl -fsSL "$URL" -o "$ARCHIVE"
SHA=$(shasum -a 256 "$ARCHIVE" | awk '{print $1}')

perl -0pi -e 's/version "[^"]+"/version "'$VERSION'"/; s/sha256 "[a-f0-9]+"/sha256 "'$SHA'"/' Casks/beacon.rb

echo "Beacon $VERSION"
echo "sha256 $SHA"
