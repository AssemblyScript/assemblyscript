/**
 * ToilScript TypeScript Language Service plugin.
 *
 * Stock TypeScript can't see what the toilscript compiler does to a source file:
 * the native decorators on top-level functions (`@main`, `@inline`, ...), the
 * members it injects into a `@data` class (`encode`/`decode`/`toJSON`/...), or the
 * fact that a class used only via a toil decorator is actually used. This plugin
 * runs only inside the editor's language service (VS Code, WebStorm, etc. - never
 * `tsc`/compiler builds) and bridges that gap:
 *
 *  1. Declaration-merges TYPED members onto each `@data` class (so `value.toJSON()`
 *     is `JSON`, `Type.decode(bytes)` is the class, etc.) by appending ambient decls
 *     to the file the editor sees. Diagnostics in that appended region are hidden.
 *  2. As a fallback (if 1 doesn't apply), still removes the false positives:
 *       TS1206 / TS1249  decorator grammar
 *       TS2339  a `@data`-injected member accessed on a `@data` class
 *       TS6133 / TS6196  a toil-decorated class/method reported as unused
 *
 * Every other diagnostic passes through untouched, so real errors still surface.
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

/**
 * Decorators whose class carries the compiler-injected `@data` binary codec.
 * `@user` is `@data` plus the auth-user registration (it also types
 * `AuthService.getUser()`); both get the same codec members.
 */
const CODEC_DECORATORS = new Set(['data', 'user']);

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
  'user',
  'auth',
  'cache',
  'ratelimit',
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
      declarations.some((d) => ts.isClassDeclaration(d) && declHasDecorator(d, CODEC_DECORATORS))
    );
  }

  function resolvesToDataClass(expr, checker) {
    const type = checker.getTypeAtLocation(expr);
    const typeSym = type && type.getSymbol && type.getSymbol();
    if (typeSym && declsAreDataClass(typeSym.declarations)) return true;
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

  /** True when the parsed file is an ES module (has a top-level import/export), so
   *  a global augmentation must be wrapped in `declare global { ... }`. */
  function isModuleFile(sf) {
    const modsOf = (n) =>
      (ts.getModifiers && ts.canHaveModifiers && ts.canHaveModifiers(n)
        ? ts.getModifiers(n)
        : n.modifiers) || [];
    return sf.statements.some(
      (s) =>
        ts.isImportDeclaration(s) ||
        ts.isImportEqualsDeclaration(s) ||
        ts.isExportDeclaration(s) ||
        ts.isExportAssignment(s) ||
        modsOf(s).some((m) => m.kind === ts.SyntaxKind.ExportKeyword),
    );
  }

  /**
   * Ambient declarations to append so the editor types each `@data`/`@user` class's
   * injected codec members, plus the project-wide type of `AuthService.getUser()`
   * (the single `@user` class). Returns "" when the file declares neither. Uses only
   * editor-visible globals (`Uint8Array`, `JSON`, `u32`), so the appended block is
   * itself error-free; any diagnostics there are filtered anyway.
   */
  function dataAugmentation(text) {
    if (text.indexOf('@data') < 0 && text.indexOf('@user') < 0) return '';
    let sf;
    try {
      sf = ts.createSourceFile('__toil_aug__.ts', text, ts.ScriptTarget.Latest, true);
    } catch {
      return '';
    }
    const moduleScoped = isModuleFile(sf);
    let out = '';
    sf.forEachChild((node) => {
      if (!ts.isClassDeclaration(node) || !node.name) return;
      const isUser = declHasDecorator(node, 'user');
      if (!declHasDecorator(node, 'data') && !isUser) return;
      const n = node.name.text;
      // Both `@data` and `@user` classes get the compiler-injected binary codec.
      out +=
        `\n// toilscript: editor types for the compiler-injected ${isUser ? '@user' : '@data'} ${n} codec\n` +
        `interface ${n} { encode(): Uint8Array; toJSON(): JSON; }\n` +
        `declare namespace ${n} { function decode(buf: Uint8Array): ${n}; function fromJSON(v: JSON): ${n}; function dataId(): u32; }\n`;
      // The single `@user` class is also the type of `AuthService.getUser()`
      // everywhere: merge it into the global `__ToilAuthUser` interface that the
      // generated env d.ts returns from `getUser()`. `declare global` when the
      // file is a module (else a bare interface, already global in a script).
      if (isUser) {
        const merge = `interface __ToilAuthUser extends ${n} {}`;
        out +=
          `// toilscript: editor type for AuthService.getUser() (the @user ${n})\n` +
          (moduleScoped ? `declare global { ${merge} }\n` : `${merge}\n`);
      }
    });
    return out;
  }

  return {
    create(info) {
      const ls = info.languageService;
      const host = info.languageServiceHost;

      // Original text length per augmented file, so diagnostics in the appended region drop.
      const originalLength = new Map();

      // Inject the typed @data members into the editor's view of each source file.
      if (typeof host.getScriptSnapshot === 'function' && typeof host.getScriptVersion === 'function') {
        const origSnapshot = host.getScriptSnapshot.bind(host);
        const origVersion = host.getScriptVersion.bind(host);
        host.getScriptSnapshot = (fileName) => {
          const snap = origSnapshot(fileName);
          if (!snap) return snap;
          let aug = '';
          try {
            aug = dataAugmentation(snap.getText(0, snap.getLength()));
          } catch {
            aug = '';
          }
          if (!aug) {
            originalLength.delete(fileName);
            return snap;
          }
          const text = snap.getText(0, snap.getLength());
          originalLength.set(fileName, text.length);
          return ts.ScriptSnapshot.fromString(text + aug);
        };
        // A stable suffix so the service re-reads once and picks up the augmentation; it
        // still changes whenever the underlying file changes.
        host.getScriptVersion = (fileName) => origVersion(fileName) + ':toil-data';
      }

      // Proxy the language service, forwarding everything to the real one.
      const proxy = Object.create(null);
      for (const key of Object.keys(ls)) {
        const value = ls[key];
        proxy[key] = typeof value === 'function' ? value.bind(ls) : value;
      }

      const inAugmentedRegion = (fileName, diag) => {
        const len = originalLength.get(fileName);
        return len != null && diag.start != null && diag.start >= len;
      };

      // Fallback: a TS2339 for a `@data`-injected member on a `@data` class.
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
            !inAugmentedRegion(fileName, d) &&
            !isInjectedDataMember(fileName, d) &&
            !isToilDecoratedUnused(fileName, d),
        );

      proxy.getSemanticDiagnostics = (fileName) =>
        strip(fileName, ls.getSemanticDiagnostics(fileName));
      proxy.getSyntacticDiagnostics = (fileName) =>
        strip(fileName, ls.getSyntacticDiagnostics(fileName));

      if (typeof ls.getSuggestionDiagnostics === 'function') {
        proxy.getSuggestionDiagnostics = (fileName) =>
          ls
            .getSuggestionDiagnostics(fileName)
            .filter((d) => !inAugmentedRegion(fileName, d) && !isToilDecoratedUnused(fileName, d));
      }

      return proxy;
    },
  };
}

module.exports = init;
