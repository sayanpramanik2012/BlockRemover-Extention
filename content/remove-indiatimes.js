// content/remove-indiatimes.js
(() => {
  const selector = '.epaperBlockerWrap';

  const removeMatches = (root = document) => {
    root.querySelectorAll(selector).forEach(el => el.remove());
  };

  // Try immediately
  removeMatches();

  // Also try after DOM is parsed
  document.addEventListener('DOMContentLoaded', () => removeMatches());

  // Observe future additions
  const obs = new MutationObserver(mutations => {
    for (const m of mutations) {
      for (const node of m.addedNodes) {
        if (!(node instanceof Element)) continue;
        if (node.matches && node.matches(selector)) {
          node.remove();
          continue;
        }
        const found = node.querySelectorAll ? node.querySelectorAll(selector) : [];
        found.forEach(el => el.remove());
      }
    }
  });

  obs.observe(document.documentElement, { childList: true, subtree: true });
})();
