# Epaper Clean Tester (Chrome MV3)

Removes specific overlay elements from epaper pages on production, using Manifest V3 content scripts and MutationObserver.

## Install (Load unpacked)

For local testing without publishing, enable Developer Mode and load the extension folder directly.  
Steps: open chrome://extensions → toggle Developer mode → Load unpacked → select the folder containing manifest.json.

## Release with GitHub CLI (manual)

Authenticate with GitHub CLI (`gh auth login`), then create a release with a tag and attach the ZIP asset.
Example:  
`gh release create v0.1.0 dist/epaper-clean-tester-v0.1.0.zip --title "Epaper Clean Tester v0.1.0" --notes "First release"`
You can attach multiple assets and optionally add a display label by appending `#Label` after the filename when uploading.

## Release with GitHub Actions (automatic)

Use a workflow that triggers on pushing a tag like `v*`, zips the extension, creates a release, and uploads the ZIP as an asset. 
Ensure the workflow checks out the repo and uses the provided `GITHUB_TOKEN` to create the release and upload assets.

## Development notes

- Load unpacked is sufficient for testing without a Web Store account or fee.
- When publishing to the Web Store, prepare a ZIP with manifest.json at the root and required listing assets.

