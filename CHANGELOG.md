# Changelog

## [v0.1.8] - 2026-06-05

- No changes


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
