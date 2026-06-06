/**
 * ToilScript TypeScript Language Service plugin.
 *
 * Stock TypeScript has no grammar for toil-native decorators applied to
 * top-level functions and globals (`@main`, `@inline`, `@unmanaged`, ...), so
 * the editor's language service flags them as errors even though the toilscript
 * compiler handles them correctly. It also can't see the members the compiler
 * injects into a `@data` class (`encode`/`decode`/`toJSON`/...). This plugin runs
 * only inside the editor's language service (VS Code, WebStorm, etc. - never
 * `tsc`/compiler builds) and removes exactly those false positives:
 *
 *   TS1206  "Decorators are not valid here."
 *   TS1249  "A decorator can only decorate a method implementation, not an overload."
 *   TS2339  "Property '<m>' does not exist on type '<T>'." - but ONLY when `<m>` is a
 *           `@data`-injected member and `<T>` is a `@data` class (so a typo on any
 *           other type still surfaces).
 *
 * Every other diagnostic - unknown types, bad calls, missing names - passes
 * through untouched, so real type errors are still surfaced.
 */
const DECORATOR_GRAMMAR_CODES = new Set([1206, 1249]);
const PROPERTY_NOT_EXIST = 2339;

/** Members the compiler injects into every `@data` class (instance + static). */
const DATA_MEMBERS = new Set([
  'encode',
  'encodeInto',
  'decode',
  'decodeFrom',
  'toJSON',
  'fromJSON',
  'dataId',
]);

function init(modules) {
  const ts = modules.typescript;

  /** Deepest node spanning `pos`. */
  function nodeAt(node, pos) {
    if (pos < node.getStart() || pos >= node.getEnd()) return undefined;
    let found = node;
    node.forEachChild((child) => {
      const inner = nodeAt(child, pos);
      if (inner) found = inner;
    });
    return found;
  }

  /** Whether a class declaration carries the `@data` decorator (bare or called). */
  function hasDataDecorator(decl) {
    const decorators = (ts.getDecorators ? ts.getDecorators(decl) : decl.decorators) || [];
    for (const d of decorators) {
      const e = d.expression;
      const name = e && (e.text || (e.expression && e.expression.text));
      if (name === 'data') return true;
    }
    return false;
  }

  function declsAreDataClass(declarations) {
    return (
      !!declarations &&
      declarations.some((d) => ts.isClassDeclaration(d) && hasDataDecorator(d))
    );
  }

  /** Whether `expr` is (an instance of, or the static side of) a `@data` class. */
  function resolvesToDataClass(expr, checker) {
    const type = checker.getTypeAtLocation(expr);
    const typeSym = type && type.getSymbol && type.getSymbol();
    if (typeSym && declsAreDataClass(typeSym.declarations)) return true;
    // Static access like `Player.decode(...)`: resolve the identifier's own symbol.
    const sym = checker.getSymbolAtLocation(expr);
    return !!sym && declsAreDataClass(sym.declarations);
  }

  return {
    create(info) {
      const ls = info.languageService;

      // Proxy the language service, forwarding everything to the real one.
      const proxy = Object.create(null);
      for (const key of Object.keys(ls)) {
        const value = ls[key];
        proxy[key] = typeof value === 'function' ? value.bind(ls) : value;
      }

      const isInjectedDataMember = (fileName, diag) => {
        if (diag.code !== PROPERTY_NOT_EXIST || diag.start == null) return false;
        const program = ls.getProgram();
        const sf = program && program.getSourceFile(fileName);
        if (!sf) return false;
        const node = nodeAt(sf, diag.start);
        const access =
          node && ts.isPropertyAccessExpression(node)
            ? node
            : node && ts.isPropertyAccessExpression(node.parent)
              ? node.parent
              : undefined;
        if (!access || !DATA_MEMBERS.has(access.name.text)) return false;
        return resolvesToDataClass(access.expression, program.getTypeChecker());
      };

      const strip = (fileName, diagnostics) =>
        diagnostics.filter(
          (d) => !DECORATOR_GRAMMAR_CODES.has(d.code) && !isInjectedDataMember(fileName, d),
        );

      proxy.getSemanticDiagnostics = (fileName) =>
        strip(fileName, ls.getSemanticDiagnostics(fileName));
      proxy.getSyntacticDiagnostics = (fileName) =>
        strip(fileName, ls.getSyntacticDiagnostics(fileName));

      return proxy;
    },
  };
}

module.exports = init;
