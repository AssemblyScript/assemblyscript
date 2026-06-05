# std/assembly/json.ts test coverage

`json.spec.ts` is an exhaustive unit suite for `std/assembly/json.ts`, run by
`run.mjs` (or `npm run test:json`). It targets 100% runtime branch coverage.

## Why not an automated coverage tool

`@btc-vision/as-pect` + `@btc-vision/as-covers` would print a percentage, but
as-pect hard-codes the `@btc-vision/assemblyscript` compiler, which does not
bundle the `JSON` global (only `toilscript` does). So the spec is compiled and
run by `toilscript` directly, and coverage is established by an exhaustive,
audited branch enumeration rather than a tool badge.

## Audit

Every runtime branch of `json.ts` is exercised by at least one assertion:

- `of<T>`: boolean, signed integer, unsigned integer, float, string.
- value-tree `toString`: bool both ways, number i64 / u64 / f64-finite /
  f64-nonfinite, string, array (empty + non-empty), object (empty + non-empty),
  default (null and error values).
- typed `stringify<T>`: bool, integer, float finite + non-finite, string
  (non-null + null + empty), array (non-null + null + empty).
- `quote`: every escape (`"`, `\`, `\b`, `\f`, `\n`, `\r`, `\t`), control char
  below 0x20 (`\uXXXX`), normal ascii, non-ascii pass-through, empty string.
- predicates `isNull`..`isError` (true and false each); `errorMessage` (error
  and non-error).
- accessors `asBool` / `asF64` / `asI64` / `asU64` across every number sub-kind
  and off-kind; `asString`; `length` / `at` (in range, negative, out of range,
  non-array) / `has` / `get` / `objectKeys`.
- `parse` / `Parser`: every value kind; numbers (unsigned, signed, u64 max,
  fraction, exponent lower `e` and upper `E`, exponent sign); strings (every
  escape, `\u` with digit / a-f / A-F, invalid `\u`); whitespace (space, tab,
  newline, carriage return, trailing); arrays and objects (empty, populated,
  nested, array of objects); and every error path (empty input, unexpected
  char, invalid literal, unterminated string, unterminated/invalid escape,
  invalid number, unclosed/bad-separator array, end-before-key/close, non-string
  key, missing colon, bad-separator object, element/value parse-error
  propagation, trailing characters). `hexVal` digit / a-f / A-F / invalid.

## Not runtime reachable (by design)

The two `ERROR(...)` guards in `of<T>` and `stringify<T>` are compile-time
checks: instantiating those generics with an unsupported type fails the build,
so the guard never runs at runtime. Every supported type compiles and runs,
which is what the suite verifies. During the audit two genuinely dead branches
were removed (`Parser.peek`'s out-of-range return, always guarded by `atEnd`;
`Parser.fail`'s "error already set" guard, callers always return on first error)
so there is no unreachable code left to skew the count.

## Run

    npm run test:json
