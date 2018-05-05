var assert = require("assert");

function assertUnary(op, loLeft, hiLeft, loResult, hiResult) {
  op(loLeft, hiLeft);
  assert.strictEqual(i64.getLo(), loResult);
  assert.strictEqual(i64.getHi(), hiResult);
}

function assertBinary(op, loLeft, hiLeft, loRight, hiRight, loResult, hiResult) {
  op(loLeft, hiLeft, loLeft, loRight);
  assert.strictEqual(i64.getLo(), loResult);
  assert.strictEqual(i64.getHi(), hiResult);
}

var i64 = require("..");

assertUnary(i64.clz, 1, 0, 63, 0);
assertUnary(i64.clz, 0, 1, 31, 0);
assertUnary(i64.clz, 1, 1, 31, 0);
assertUnary(i64.clz, 0, 0, 64, 0);

assertUnary(i64.ctz, 0, 0x80000000, 63, 0);
assertUnary(i64.ctz, 0x80000000, 0x80000000, 31, 0);
assertUnary(i64.ctz, 0, 1, 32, 0);
assertUnary(i64.ctz, 1, 0, 0, 0);
assertUnary(i64.ctz, 0, 0, 64, 0);

assertUnary(i64.popcnt, 0x55555555, 0x55555555, 32, 0);
assertUnary(i64.popcnt, -1, -1, 64, 0);
assertUnary(i64.popcnt, 0, 0, 0, 0);
assertUnary(i64.popcnt, 0x55, 0, 4, 0);
assertUnary(i64.popcnt, 0, 0x55, 4, 0);
assertUnary(i64.popcnt, 0x55, 0x55, 8, 0);

assertUnary(i64.eqz, 0, 0, 1, 0);
assertUnary(i64.eqz, 0, 1, 0, 0);
assertUnary(i64.eqz, 1, 0, 0, 0);
assertUnary(i64.eqz, 1, 1, 0, 0);

// TODO...

console.log("ok");
