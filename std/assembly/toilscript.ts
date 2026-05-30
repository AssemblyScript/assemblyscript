/**
 * ToilScript-native declarations.
 *
 * Compiler-level natives available everywhere with no import. `@main` is handled
 * directly by the ToilScript compiler — it exports the decorated top-level
 * function as the module's `main` entry — so this declaration exists only so
 * editors and type-checking recognize the decorator. Future zero-import toil
 * natives (globals/decorators) belong here too.
 */

/**
 * Marks a single top-level function as the module entry point. The compiler
 * exports it as the WebAssembly export `main` — no `export` keyword needed.
 * Exactly one `@main` is allowed per module.
 */
declare function main(...args: any[]): any;
