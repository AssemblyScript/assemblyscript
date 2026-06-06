/**
 * ToilScript TypeScript Language Service plugin.
 *
 * Stock TypeScript has no grammar for toil-native decorators applied to
 * top-level functions and globals (`@main`, `@inline`, `@unmanaged`, ...), so
 * the editor's language service flags them as errors even though the toilscript
 * compiler handles them correctly. It also can't see the members the compiler
 * injects into a `@data` class, and treats a class/method that is only ever used
 * via a toil decorator (`@data`, `@rest`, `@service`, `@remote`, ...) as unused.
 * This plugin runs only inside the editor's language service (VS Code, WebStorm,
 * etc. - never `tsc`/compiler builds) and removes exactly those false positives:
 *
 *   TS1206  "Decorators are not valid here."
 *   TS1249  "A decorator can only decorate a method implementation, not an overload."
 *   TS2339  "Property '<m>' does not exist on type '<T>'." - but ONLY when `<m>` is a
 *           `@data`-injected member and `<T>` is a `@data` class (a typo on any other
 *           type still surfaces).
 *   TS6133 / TS6196  "'<x>' is declared but never used." - but ONLY when `<x>` is a
 *           class/method/function carrying a toil-native decorator (so the compiler
 *           uses it); an undecorated unused declaration is still greyed out.
 *
 * Every other diagnostic - unknown types, bad calls, missing names - passes
 * through untouched, so real type errors are still surfaced.
 */
const DECORATOR_GRAMMAR_CODES = new Set([1206, 1249]);
const PROPERTY_NOT_EXIST = 2339;
const DECLARED_NEVER_USED = new Set([6133, 6196]);

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

/** Toil-native decorators whose presence means the compiler uses the declaration. */
const TOIL_DECORATORS = new Set([
  'data',
  'remote',
  'service',
  'rest',
  'route',
  'get',
  'post',
  'put',
  'del',
  'patch',
  'head',
  'options',
  'main',
  'global',
  'inline',
  'external',
  'unmanaged',
  'final',
  'operator',
  'lazy',
  'unsafe',
  'builtin',
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

  /** A decorator's bare name, for `@name` and `@name(...)`. */
  function decoratorName(d) {
    const e = d.expression;
    return e && (e.text || (e.expression && e.expression.text));
  }

  function declHasDecorator(decl, names) {
    const decorators = (ts.getDecorators ? ts.getDecorators(decl) : decl.decorators) || [];
    return decorators.some((d) => {
      const n = decoratorName(d);
      return typeof names === 'string' ? n === names : !!n && names.has(n);
    });
  }

  function declsAreDataClass(declarations) {
    return (
      !!declarations &&
      declarations.some((d) => ts.isClassDeclaration(d) && declHasDecorator(d, 'data'))
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

  function canHoldDecorators(node) {
    return (
      ts.isClassDeclaration(node) ||
      ts.isClassExpression(node) ||
      ts.isMethodDeclaration(node) ||
      ts.isFunctionDeclaration(node) ||
      ts.isPropertyDeclaration(node) ||
      ts.isGetAccessorDeclaration(node) ||
      ts.isSetAccessorDeclaration(node)
    );
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

      // A TS2339 for a `@data`-injected member accessed on a `@data` class.
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

      // A "declared but never used" for a class/method/function with a toil decorator.
      const isToilDecoratedUnused = (fileName, diag) => {
        if (!DECLARED_NEVER_USED.has(diag.code) || diag.start == null) return false;
        const program = ls.getProgram();
        const sf = program && program.getSourceFile(fileName);
        if (!sf) return false;
        const node = nodeAt(sf, diag.start);
        if (!node) return false;
        const decl = canHoldDecorators(node) ? node : node.parent;
        return !!decl && canHoldDecorators(decl) && declHasDecorator(decl, TOIL_DECORATORS);
      };

      const strip = (fileName, diagnostics) =>
        diagnostics.filter(
          (d) =>
            !DECORATOR_GRAMMAR_CODES.has(d.code) &&
            !isInjectedDataMember(fileName, d) &&
            !isToilDecoratedUnused(fileName, d),
        );

      proxy.getSemanticDiagnostics = (fileName) =>
        strip(fileName, ls.getSemanticDiagnostics(fileName));
      proxy.getSyntacticDiagnostics = (fileName) =>
        strip(fileName, ls.getSyntacticDiagnostics(fileName));

      // The "unused" greying is a suggestion diagnostic when `noUnusedLocals` is off.
      if (typeof ls.getSuggestionDiagnostics === 'function') {
        proxy.getSuggestionDiagnostics = (fileName) =>
          ls.getSuggestionDiagnostics(fileName).filter((d) => !isToilDecoratedUnused(fileName, d));
      }

      return proxy;
    },
  };
}

module.exports = init;
