// Big integer types (u128 / i128 / u256), implemented under ./bignum
// (Apache-2.0; see ./bignum/LICENSE).
//
// This file is a top-level standard-library entry, so toilscript globalizes its
// named re-exports the same way it does Array/Map/String. That makes u128, i128
// and u256 usable with no import, as native types:
//
//     let a = u128.fromU64(40) + u128.fromU64(2);
//     let b = u256.fromU128(a);
//
// The vendored sources are unmodified; only this thin globalizer is toilscript's.
// i256 is the signed-256 backing type of the family (u128/i128 convert to it),
// so it is globalized too for a self-consistent surface.

export { u128 } from "./bignum/integer/u128";
export { i128 } from "./bignum/integer/i128";
export { u256 } from "./bignum/integer/u256";
export { i256 } from "./bignum/integer/i256";
