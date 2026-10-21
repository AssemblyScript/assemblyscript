import assert from "node:assert/strict";

export function postInstantiate({ exports: e }) {
  assert.deepEqual(e.pair(3, 7n), [3, 7n]);
  assert.deepEqual(e.floats(1.5, 2.5), [1.5, 2.5]);
  assert.deepEqual(e.forward(3, 7n), [3, 7n]);
  assert.deepEqual(e.named(3, 7n), [3, 7n]);
  const stackPointer = e.stackPointer();
  for (let i = 0; i < 100; ++i) {
    assert.deepEqual(e.indirectOrder(), [7, 9n]);
    assert.equal(e.evaluationOrder(), 12);
  }
  assert.equal(e.stackPointer(), stackPointer);
}
