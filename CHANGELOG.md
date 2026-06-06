# Changelog

## [v0.1.14] - 2026-06-06

- Editor: the codec members the compiler injects into a `@data` class are now TYPED in the editor, not merely error-free. The language-service plugin declaration-merges typed signatures onto each `@data` class (appending ambient decls to the file the editor sees), so `value.toJSON()` is `JSON`, `value.encode()` is `Uint8Array`, and `Type.decode(bytes)` / `Type.fromJSON(j)` return the class, with autocomplete. A typo or a member on a non-`@data` type still errors. Also adds the ambient declaration for the globalized `JSON` value tree (`JSON.obj()`/`arr()`/`parse()`/`stringify()`, `.set()`/`.push()`/`.get()`/`.toString()`, the `is*`/`as*` accessors). Editor-only; compiler behavior is unchanged.


## [v0.1.13] - 2026-06-06

- No changes


## [v0.1.13] - 2026-06-06

- Editor: the language-service plugin now stops a class, method, or function that is used only via a toil-native decorator (`@data`, `@rest`, `@service`, `@remote`, `@route` and the verb shortcuts, `@main`, ...) from being reported as unused ("declared but never used", `TS6133` / `TS6196`), in both the semantic and the suggestion (greying) streams. The check is scoped to the known toil decorators, so an undecorated unused declaration is still flagged. Compiler behavior is unchanged.


## [v0.1.12] - 2026-06-06

- Editor: the language-service plugin now also hides the false `TS2339` ("Property '<m>' does not exist on type '<T>'") for the members the compiler injects into a `@data` class - `encode` / `encodeInto` / `decode` / `decodeFrom` / `toJSON` / `fromJSON` / `dataId`, both instance and static. The suppression is scoped by type to `@data` classes, so a typo, or the same member name on any other type, still surfaces. This lets server code build and return a `Response` carrying a serialized `@data` body (e.g. `Response.json(value.toJSON().toString()).setHeader(...)`) without spurious editor errors. Compiler behavior is unchanged.


## [v0.1.11] - 2026-06-06

- No changes


## [v0.1.11] - 2026-06-06

- Add the `@rest` / `@route` HTTP layer. Tag a class `@rest("prefix")` and its methods with `@route({ method, path, stream })` or a verb shortcut (`@get` / `@post` / `@put` / `@del` / `@patch` / `@head` / `@options`) to declare HTTP routes. Each controller self-registers, so a handler that calls `Rest.dispatch(req)` serves every route: HTTP method plus the prefix-joined path with `:param` capture, request-body decode and response encode per `DataStream.JSON` / `DataStream.Binary`. Adds globalized `Methods` and `DataStream` enums and their ambient editor declarations.
- Extend `--rpcModule` to also emit a working, typed `Server.REST.<controller>.<route>(args)` `fetch` client (URL building, path params, JSON/binary body, typed response parse) into the generated client module, alongside the existing `@data` classes and the `@remote`/`@service` surface. Route `:param` names are emitted as safe object keys (quoted unless a plain identifier), so a hostile route path cannot inject code into the generated client.
- Security: bound JSON parse nesting depth at 512. The recursive-descent parser had no depth limit, so a small hostile input (e.g. a body of `[[[[...`) could overflow the stack and trap the instance, reachable wherever untrusted JSON is parsed (now including `@rest` JSON-stream request bodies). Over-nested input now fails as an ordinary parse error; valid JSON is unaffected.
- Merge the upstream fix to evaluate a `call_indirect` callee before its arguments (#2994), adapted for the fork's closures code path.


## [v0.1.10] - 2026-06-05

- No changes


## [v0.1.10] - 2026-06-05

- Add ambient editor declarations for the `@data`/`@remote`/`@service` decorators (typed as their decorator targets: class decorators take the constructor, the method decorator takes target/key/descriptor) so IDEs resolve them instead of reporting `TS2304: Cannot find name 'data'`. The bundled TS language-service plugin already suppresses the remaining decorator-grammar notices. Compiler behavior unchanged.


## [v0.1.9] - 2026-06-05

### Other Changes

- fix(rpc): bound @data array decode (CWE-770) + hard-error on unsupported types ([#1](https://github.com/dacely-cloud/toilscript/pull/1)) by @BlobMaster41




## [v0.1.9] - 2026-06-05

- Harden the `@data` codegen against hostile input: the generated array decoders now stop at the bytes actually present (`&& r.ok` / `&&__r.ok`) instead of looping on the wire-supplied element count, so a tiny payload claiming billions of elements can no longer exhaust memory (CWE-770). No change to the wire format or to well-formed decoding.
- Emit a hard compile error for an unsupported `@data` field or `@remote` parameter/return type (a `Map`, a nested array, a non-`@data` class, ...) instead of silently generating an uncompilable client module.


## [v0.1.8] - 2026-06-05

- Add the `@data` binary codec: tag a class `@data` and the compiler generates `encode`/`decode` (compact, self-identifying, little-endian, with a stable FNV-1a typeId at the message boundary) plus a `toJSON`/`fromJSON` view, over scalars, `bool`, `string`, native `u128`/`i128`/`u256`/`i256`, nested `@data`, and `Array<T>`. Round-trip covered by `npm run test:data`.
- Add `@remote` and `@service` decorators plus `--rpcModule <path.ts>` (and `--rpcRuntime`, default `toiljs/io`): the server build emits one TypeScript module describing the client-callable surface, an `export class` per `@data` type (positional constructor, `encodeInto`/`encode`/`decodeFrom`/`decode`/`dataId`, declared field modifiers preserved), plus `declare global { const Server }`, so a client gets a typed `Server.fn()` / `Server.service.method()` API (all async) with no imports.


## [v0.1.7] - 2026-06-05

- Add a native `JSON` standard-library global (no import): a dynamic value tree (`JSON.obj()/arr()/of()/nul()` with chainable `.set()/.push()`, serialized via `toString()`, so a type can implement `toJSON(): JSON`), the typed serializer `JSON.stringify<T>` (booleans, signed and unsigned integers, floats with NaN and Infinity mapping to null, escaped strings, null, and arrays), and `JSON.parse` (recursive descent yielding the value tree, returning an error value on malformed input rather than trapping). Value accessors include `isNull` through `isError`, `asBool`/`asF64`/`asI64`/`asU64`/`asString`, and `length`/`at`/`has`/`get`/`objectKeys`. Covered by an exhaustive `npm run test:json` suite.


## [v0.1.6] - 2026-06-05

- Relocate the big-integer ambient declarations (`u128`/`i128`/`u256`/`i256`) into `std/assembly/toilscript.d.ts` alongside `@main`, and drop the now-unused compiled `std/assembly/toilscript.ts`. No API change, the types resolve exactly as before.


## [v0.1.5] - 2026-06-05

- Add native `u128`, `i128` and `u256` (plus `i256`) integer types: an audited 128/256-bit integer implementation lives in `std/assembly/bignum` (Apache-2.0), promoted to global types via a top-level library entry, with ambient declarations for editors. Usable with no import, like the built-in integer types.
- Add `std/ts-plugin.cjs`, a TypeScript Language Service plugin that suppresses the decorator-grammar false positives (TS1206, TS1249) stock TypeScript emits for toil-native decorators (`@main`, `@inline`, `@unmanaged`, ...) in editors. Wired into `std/assembly.json` so every project extending it gets a clean editor (VS Code, WebStorm) with no source-level `@ts-ignore`. Editor-only, does not affect `toilscript`/asc builds, and real type errors are still reported.
- Tighten the `@main` declaration from `(...args: any[]): any` to a strict generic decorator signature (no `any`).


## [v0.1.4] - 2026-05-31

- No changes

## [v0.1.2] - 2026-05-30

- No changes


## [v0.1.2] - 2026-05-30

- Rename the CLI from `asc` to `toilscript` (bin `bin/toilscript.js`, bundle `dist/cli.js`, `./cli` export, help text)
- Rename `asinit` -> `toilinit` and `asconfig` -> `toilconfig` (scaffolder bin + config test fixtures)
- README logo now uses `media/icon.png`

## [v0.1.1] - 2026-05-30

- No changes


## [v0.1.0] - 2026-05-30

- No changes


All notable changes to this project will be documented in this file.

This changelog is automatically generated from merged pull requests.
