# Changelog

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
