// Big integer types (u128 / i128 / u256), vendored verbatim from
// @btc-vision/as-bignum v1.0.0 (Apache-2.0) under ./bignum. See ./bignum/LICENSE.
//
// This file is a top-level standard-library entry, so toilscript globalizes its
// named re-exports the same way it does Array/Map/String. That makes u128, i128
// and u256 usable with no import, as native types:
//
//     let a = u128.fromU64(40) + u128.fromU64(2);
//     let b = u256.fromU128(a);
//
// The vendored sources are unmodified; only this thin globalizer is toilscript's.
// i256 stays import-only (it backs i128/u128 internally); pull it from
// "bignum/integer/i256" if you need it directly.

export { u128 } from "./bignum/integer/u128";
export { i128 } from "./bignum/integer/i128";
export { u256 } from "./bignum/integer/u256";
