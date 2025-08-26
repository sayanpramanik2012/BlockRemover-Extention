#!/usr/bin/env bash
set -euo pipefail

# Usage: ./build_and_release.sh v0.1.0
TAG="${1:-}"
if [[ -z "$TAG" ]]; then
  echo "Usage: $0 <tag> (e.g. v0.1.0)"
  exit 1
fi

# Derive version without leading 'v'
VERSION="${TAG#v}"

# Ensure dist directory
mkdir -p dist

ZIP="dist/BlockRemover-${VERSION}.zip"

# Build ZIP excluding typical dev artifacts
# - exclude .git, node_modules, dist itself, and GitHub workflows
zip -r "$ZIP" . \
  -x '*.git*' \
  -x 'dist/*' \
  -x '.github/*' >/dev/null
echo "Built: $ZIP"

# Create a Git tag if it doesn't exist locally
if ! git rev-parse "$TAG" >/dev/null 2>&1; then
  git tag -a "$TAG" -m "Release $TAG"
  git push origin "$TAG"
fi

# Create GitHub release and upload asset
# Requires: gh auth login
gh release create "$TAG" "$ZIP" \
  --title "BlockRemover ${TAG}" \
  --notes "Automated release ${TAG}" || {
  # If release exists, just upload asset
  gh release upload "$TAG" "$ZIP" --clobber
}

echo "Release created/updated for $TAG with asset: $ZIP"
