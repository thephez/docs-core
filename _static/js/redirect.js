// As part of the migration of the docs-core repo into dashpay/docs the docs-core pages need to be
// redirect docs.dash.org for anyone still accessing docs via outdated links. This script
// accomplishes the redirects without having to manually define through the readthedocs console.

document.addEventListener('DOMContentLoaded', function () {
  // Get the current path and host
  var currentPath = window.location.pathname; // e.g., /projects/core/en/some-branch/
  var currentHash = window.location.hash; // This captures any anchor (e.g., #section1)  
  var newBaseURL = 'https://docs.dash.org';

    // Insert a breakpoint for debugging if Developer Tools are open
    debugger;

  // Transform the path by replacing only the start of the path
  // Remove '/projects/core/' and replace 'en' with 'develop/docs/core'
  var replacements = [
    { pattern: /^\/projects\/core\/en\/stable\/docs\//, replacement: '/en/develop/docs/core/' },
    { pattern: /^\/projects\/core\/en\/stable\//, replacement: '/en/develop/docs/core/' },
    { pattern: /^\/projects\/core\/en\/22.0.0\/docs\//, replacement: '/en/develop/docs/core/' },
    { pattern: /^\/projects\/core\/en\/22.0.0\//, replacement: '/en/develop/docs/core/' },
    { pattern: /^\/projects\/core\/en\/develop\/docs\//, replacement: '/en/develop/docs/core/' },
    { pattern: /^\/projects\/core\/en\/develop\//, replacement: '/en/develop/docs/core/' },
    { pattern: /^\/projects\/core\/en\/latest\/docs\//, replacement: '/en/latest/docs/core/' },
    { pattern: /^\/projects\/core\/en\/latest\//, replacement: '/en/latest/docs/core/' }
  ];

  var transformedPath = currentPath; // Start with the original path

  for (var i = 0; i < replacements.length; i++) {
      if (replacements[i].pattern.test(currentPath)) {
          transformedPath = currentPath.replace(replacements[i].pattern, replacements[i].replacement);
          break; // Stop after the first match
      }
  }

  // Only redirect if the transformed path is different from the original path
  if (transformedPath !== currentPath) {
    var newURL = newBaseURL + transformedPath + currentHash;
    window.location.replace(newURL);
  }
});
