/**
 * ToilScript TypeScript Language Service plugin.
 *
 * Stock TypeScript has no grammar for toil-native decorators applied to
 * top-level functions and globals (`@main`, `@inline`, `@unmanaged`, ...), so
 * the editor's language service flags them as errors even though the toilscript
 * compiler (asc) handles them correctly. This plugin runs only inside the
 * editor's language service (VS Code, WebStorm, etc. — never `tsc`/asc builds)
 * and removes exactly those decorator-grammar false positives:
 *
 *   TS1206  "Decorators are not valid here."
 *   TS1249  "A decorator can only decorate a method implementation, not an overload."
 *
 * Every other diagnostic — unknown types, bad calls, missing names — passes
 * through untouched, so real type errors are still surfaced.
 */
const DECORATOR_GRAMMAR_CODES = new Set([1206, 1249]);

function init() {
  return {
    create(info) {
      const ls = info.languageService;

      // Proxy the language service, forwarding everything to the real one.
      const proxy = Object.create(null);
      for (const key of Object.keys(ls)) {
        const value = ls[key];
        proxy[key] = typeof value === 'function' ? value.bind(ls) : value;
      }

      const strip = (diagnostics) =>
        diagnostics.filter((d) => !DECORATOR_GRAMMAR_CODES.has(d.code));

      proxy.getSemanticDiagnostics = (fileName) =>
        strip(ls.getSemanticDiagnostics(fileName));
      proxy.getSyntacticDiagnostics = (fileName) =>
        strip(ls.getSyntacticDiagnostics(fileName));

      return proxy;
    },
  };
}

module.exports = init;
