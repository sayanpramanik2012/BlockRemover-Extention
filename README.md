# Epaper Clean Tester (Local Install)

A small Chromium‑based browser extension that removes specific overlay elements on supported epaper pages for easier viewing during testing. It installs locally via the browser’s Developer Mode (no Web Store needed).

## Requirements

- Desktop browser: Google Chrome, Microsoft Edge, or Brave.
- Ability to enable Developer mode on the extensions page.

## Download

1. Open this repository’s “Releases” section.
2. Download the latest release asset named like: `BlockRemover-vX.Y.Z.zip`.
3. Avoid the generic “Source code (zip)” unless instructed; use the dedicated release asset for the extension.

## Unzip

1. Extract the downloaded ZIP to a convenient folder.
2. Ensure the selected folder directly contains `manifest.json` and the extension files (i.e., not nested an extra level inside another folder created by the unzip tool).

## Install in Google Chrome

1. Open `chrome://extensions` in a new tab.
2. Enable “Developer mode” (top‑right toggle).
3. Click “Load unpacked” and select the unzipped folder that contains `manifest.json`.
4. Confirm the extension appears in the list and its toggle is on.

## Install in Microsoft Edge

1. Open `edge://extensions`.
2. Enable “Developer mode.”
3. Click “Load unpacked” and select the unzipped folder.
4. Confirm the extension is listed and enabled.

## Install in Brave

1. Open `brave://extensions`.
2. Enable “Developer mode.”
3. Click “Load unpacked” and select the unzipped folder.
4. Confirm the extension is listed and enabled.

## Use

- Navigate to the supported epaper pages (including documented localhost routes for testing).
- Refresh the page if it was already open; overlays should be removed automatically when the URL matches.

## Update

1. Download the newest release ZIP and extract it to a new folder (or replace the old folder’s contents).
2. On the browser’s extensions page:
   - Click “Update” (if available) to reload unpacked extensions, or
   - Remove the old entry and use “Load unpacked” again with the new folder.

## Uninstall

- Open the extensions page and click “Remove” on the extension card to uninstall.
- Alternatively, toggle it off to disable temporarily.

## Troubleshooting

- “Load unpacked” missing: Ensure “Developer mode” is enabled on the extensions page.
- “Could not load manifest”: The selected folder must directly contain `manifest.json` (not within an extra nested folder).
- Extension loads but does nothing: Confirm the page URL matches one of the supported patterns and refresh.
- Managed or enterprise environments may restrict Developer mode or unpacked installs; consider using a personal profile or device if blocked.

## Privacy

- The extension runs only on the specific domains/paths documented in the project and does not collect or transmit data.
- Developer mode is required to install and manage unpacked extensions; it can typically be turned off afterward if not needed.
