import { I64 } from "../src/util/i64";
import * as Long from "long";
import * as assert from "assert";

function test(fn, lo, hi, otherLo, otherHi) {
  let expected = Long.fromBits(lo, hi)[fn](Long.fromBits(otherLo, otherHi));
  let actual = new I64(lo, hi); actual[fn + "32"](otherLo, otherHi);
  assert.equal(actual.lo, expected.low, fn + " lo ");
  assert.equal(actual.hi, expected.high, fn + " hi");
}

function rand() {
  let r = Math.random();
  // 10% edge cases
  if (r < 0.05) return 0x80000000 | 0;
  else if (r < 0.1) return 0;
  return (Math.random() * 0xffffffff) | 0;
}

let i = 0;
while (i++ < 1000000) {
  let lo = rand();
  let hi = rand();
  let otherLo = rand();
  let otherHi = rand();
  // console.log(lo, hi, otherLo, otherHi);
  test("add", lo, hi, otherLo, otherHi);
  test("sub", lo, hi, otherLo, otherHi);
  test("mul", lo, hi, otherLo, otherHi);
  test("shl", lo, hi, otherLo, otherHi);
  test("shr", lo, hi, otherLo, otherHi);
  test("shru", lo, hi, otherLo, otherHi);
  test("and", lo, hi, otherLo, otherHi);
  test("or", lo, hi, otherLo, otherHi);
  test("xor", lo, hi, otherLo, otherHi);
}
console.log("done");
