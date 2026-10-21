import assert from "node:assert/strict";

export function preInstantiate(imports) {
  imports.env.tailHost = x => x + 2;
}

export function postInstantiate({ exports: e }) {
  assert.equal(e.direct(40), 41);
  assert.equal(e.indirect(40), 41);
  assert.equal(e.converted(40), 41n);
  assert.equal(e.convertedIndirect(40), 41n);
  assert.equal(e.nullable(0), 0);
  assert.notEqual(e.nullable(1), 0);
  assert.equal(e.nullableIndirect(0), 0);
  assert.notEqual(e.nullableIndirect(1), 0);

  // These exceed the ordinary Wasm call stack in debug as well as release.
  for (const name of ["recursive", "mutualA", "ternary", "temporary", "deepIndirect", "deepRaw"]) {
    assert.equal(e[name](100000), 42, name);
  }
  assert.equal(e.comma(100000), 100000);
  assert.equal(e.switchCall(0), 1);
  assert.equal(e.switchCall(1), 3);
  assert.equal(e.switchCall(5), 8);
  assert.equal(e.bothCalls(0), 1);
  assert.equal(e.bothCalls(40), 41);
  assert.equal(e.nestedArguments(40), 42);
  assert.equal(e.branches(0), 1);
  assert.equal(e.branches(4), 5);
  assert.equal(e.callTemporaryIndirect(40), 41);
  assert.equal(e.indirectOrder(), 41);
  assert.equal(e.getOrder(), 12);
  assert.equal(e.optionalDirect(3), 10);
  assert.equal(e.optionalIndirect(3), 10);
  assert.equal(e.inlineCaller(40), 42);
  assert.equal(e.narrowed(), 255);
  assert.equal(e.wrapped(511), 255);
  assert.equal(e.discarded(40), undefined);
  assert.equal(e.afterCall(40), 41);
  assert.equal(e.comma(0), 100001);
  assert.equal(e.nonTail(10), 10);
  assert.notEqual(e.nonNull(1), 0);
  assert.throws(() => e.nonNull(0), WebAssembly.RuntimeError);
  assert.equal(e.voidCall(), undefined);
  assert.equal(e.voidImplicit(), undefined);
  assert.equal(e.callArrow(40), 41);
  assert.equal(e.virtual(40), 42);
  assert.equal(e.imported(40), 42);

  const stackPointer = e.stackPointer();
  for (let i = 0; i < 100; ++i) assert.equal(e.managed(), 42);
  assert.equal(e.stackPointer(), stackPointer);
}
