# Changelog

## [Unreleased]

- Add `std/ts-plugin.cjs`, a TypeScript Language Service plugin that suppresses the decorator-grammar false positives (TS1206, TS1249) stock TypeScript emits for toil-native decorators (`@main`, `@inline`, `@unmanaged`, ...) in editors. Wired into `std/assembly.json` so every project extending it gets a clean editor (VS Code, WebStorm) with no source-level `@ts-ignore`. Editor-only — does not affect `toilscript`/asc builds, and real type errors are still reported.
- Tighten the `@main` declaration in `std/assembly/toilscript.ts` from `(...args: any[]): any` to a strict generic decorator signature (no `any`).

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
