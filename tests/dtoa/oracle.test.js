import assert from "node:assert/strict";
import { shortestFloat32, roundsToFloat32 } from "./oracle.js";

// Parsing through binary64 lands on the midpoint between these binary32
// values. The oracle must decide from the exact decimal rational instead.
for (const [bits, expected] of [
  [0x15ae43fd, "7.038531e-26"],
  [0x15ae43fe, "7.0385313e-26"],
  [0x95ae43fd, "-7.038531e-26"],
  [0x95ae43fe, "-7.0385313e-26"],
]) {
  assert.equal(shortestFloat32(bits), expected, `0x${bits.toString(16)}`);
}

// Midpoints belong to the encoding with an even significand, including the
// asymmetric interval at a power of two and the normal/subnormal transition.
for (const [lower, upper, digits, exponent] of [
  [0x3f7fffff, 0x3f800000, "9999999701976776123046875", -25],
  [0x3f800000, 0x3f800001, "1000000059604644775390625", -24],
  [0x3f800001, 0x3f800002, "1000000178813934326171875", -24],
  [0x00000001, 0x00000002, (3n * 5n ** 150n).toString(), -150],
  [0x007fffff, 0x00800000, (((1n << 24n) - 1n) * 5n ** 150n).toString(), -150],
]) {
  assert.equal(roundsToFloat32(lower, digits, exponent), (lower & 1) === 0);
  assert.equal(roundsToFloat32(upper, digits, exponent), (upper & 1) === 0);
}
const underflowMidpoint = (5n ** 150n).toString();
assert.equal(roundsToFloat32(1, underflowMidpoint, -150), false);
const overflowMidpoint = ((1n << 25n) - 1n) << 103n;
assert.equal(roundsToFloat32(0x7f7fffff, overflowMidpoint.toString(), 0), false);
assert.equal(roundsToFloat32(0x7f7fffff, (overflowMidpoint - 1n).toString(), 0), true);
