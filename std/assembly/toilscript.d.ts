/**
 * ToilScript-native ambient declarations.
 *
 * Zero-import natives the ToilScript compiler provides directly: the `@main`
 * entry decorator and the big-integer global types (u128 / i128 / u256 / i256,
 * implemented in std/assembly/bignum). They live in this ambient `.d.ts`
 * (referenced from index.d.ts) so editors and type-checking recognize them; the
 * compiler handles `@main` and resolves the real bignum classes on its own.
 */

/**
 * Marks a single top-level function as the module entry point. The compiler
 * exports it as the WebAssembly export `main` — no `export` keyword needed.
 * Exactly one `@main` is allowed per module.
 */
declare function main(): void;

// Big integers — native globals implemented in std/assembly/bignum. The
// arithmetic/bitwise/comparison operators
// (+ - * / % & | ^ << >> == != < > <= >=) are operator overloads resolved by
// the compiler; the equivalent static methods are listed for tooling.

/** A 128-bit unsigned integer. */
declare class u128 {
  lo: u64;
  hi: u64;
  constructor(lo?: u64, hi?: u64);

  static readonly Zero: u128;
  static readonly One: u128;
  static readonly Min: u128;
  static readonly Max: u128;

  static fromString(value: string, radix?: i32): u128;
  static fromI256(value: i256): u128;
  static fromU256(value: u256): u128;
  static fromI128(value: i128): u128;
  static fromU128(value: u128): u128;
  static fromI64(value: i64): u128;
  static fromU64(value: u64): u128;
  static fromF64(value: f64): u128;
  static fromF32(value: f32): u128;
  static fromI32(value: i32): u128;
  static fromU32(value: u32): u128;
  static fromBool(value: bool): u128;
  static fromBits(lo1: u32, lo2: u32, hi1: u32, hi2: u32): u128;
  static fromBytes<T>(array: T, bigEndian?: bool): u128;
  static fromBytesLE(array: u8[]): u128;
  static fromBytesBE(array: u8[]): u128;
  static fromUint8ArrayLE(array: Uint8Array): u128;
  static fromUint8ArrayBE(array: Uint8Array): u128;
  static from<T>(value: T): u128;

  static isEmpty(value: u128): bool;
  static or(a: u128, b: u128): u128;
  static xor(a: u128, b: u128): u128;
  static and(a: u128, b: u128): u128;
  static shl(value: u128, shift: i32): u128;
  static shr(value: u128, shift: i32): u128;
  static shr_u(value: u128, shift: i32): u128;
  static rotl(value: u128, shift: i32): u128;
  static rotr(value: u128, shift: i32): u128;
  static add(a: u128, b: u128): u128;
  static sub(a: u128, b: u128): u128;
  static mul(a: u128, b: u128): u128;
  static div(a: u128, b: u128): u128;
  static rem(a: u128, b: u128): u128;
  static div10(value: u128): u128;
  static rem10(value: u128): u128;
  static pow(base: u128, exponent: i32): u128;
  static sqrt(value: u128): u128;
  static sqr(value: u128): u128;
  static muldiv(a: u128, b: u128, c: u128): u128;
  static eq(a: u128, b: u128): bool;
  static ne(a: u128, b: u128): bool;
  static lt(a: u128, b: u128): bool;
  static gt(a: u128, b: u128): bool;
  static le(a: u128, b: u128): bool;
  static ge(a: u128, b: u128): bool;
  static ord(a: u128, b: u128): i32;
  static popcnt(value: u128): i32;
  static clz(value: u128): i32;
  static ctz(value: u128): i32;

  set(value: u128): this;
  setI64(value: i64): this;
  setU64(value: u64): this;
  setI32(value: i32): this;
  setU32(value: u32): this;
  isZero(): bool;
  not(): u128;
  neg(): u128;
  pos(): u128;
  sqr(): this;
  preInc(): this;
  preDec(): this;
  postInc(): u128;
  postDec(): u128;
  clone(): u128;
  as<T>(): T;
  toI64(): i64;
  toU64(): u64;
  toI32(): i32;
  toU32(): u32;
  toBool(): bool;
  toF64(): f64;
  toF32(): f32;
  toI128(): i128;
  toU128(): this;
  toI256(): i256;
  toU256(): u256;
  toBytes(bigEndian?: bool): u8[];
  toStaticBytes(bigEndian?: bool): StaticArray<u8>;
  toUint8Array(bigEndian?: bool): Uint8Array;
  toString(radix?: i32): string;
}

/** A 128-bit signed integer. */
declare class i128 {
  lo: u64;
  hi: i64;
  constructor(lo?: u64, hi?: i64);

  static readonly Zero: i128;
  static readonly One: i128;
  static readonly Min: i128;
  static readonly Max: i128;

  static fromString(value: string, radix?: i32): i128;
  static fromI256(value: i256): i128;
  static fromU256(value: u256): i128;
  static fromI128(value: i128): i128;
  static fromU128(value: u128): i128;
  static fromI64(value: i64): i128;
  static fromU64(value: u64): i128;
  static fromF64(value: f64): i128;
  static fromF32(value: f32): i128;
  static fromI32(value: i32): i128;
  static fromU32(value: u32): i128;
  static fromBits(lo1: i32, lo2: i32, hi1: i32, hi2: i32): i128;
  static fromBytes<T>(array: T, bigEndian?: bool): i128;
  static fromBytesLE(array: u8[]): i128;
  static fromBytesBE(array: u8[]): i128;
  static fromUint8ArrayLE(array: Uint8Array): i128;
  static fromUint8ArrayBE(array: Uint8Array): i128;
  static from<T>(value: T): i128;

  static isEmpty(value: i128): bool;
  static or(a: i128, b: i128): i128;
  static xor(a: i128, b: i128): i128;
  static and(a: i128, b: i128): i128;
  static shl(value: i128, shift: i32): i128;
  static shr_u(value: i128, shift: i32): i128;
  static add(a: i128, b: i128): i128;
  static sub(a: i128, b: i128): i128;
  static eq(a: i128, b: i128): bool;
  static ne(a: i128, b: i128): bool;
  static lt(a: i128, b: i128): bool;
  static gt(a: i128, b: i128): bool;
  static le(a: i128, b: i128): bool;
  static ge(a: i128, b: i128): bool;
  static ord(a: i128, b: i128): i32;
  static popcnt(value: i128): i32;
  static clz(value: i128): i32;
  static ctz(value: i128): i32;
  static abs(value: i128): i128;

  isNeg(): bool;
  isPos(): bool;
  isZero(): bool;
  not(): i128;
  neg(): i128;
  pos(): i128;
  toBytes(bigEndian?: bool): u8[];
  toStaticBytes(bigEndian?: bool): StaticArray<u8>;
  toUint8Array(bigEndian?: bool): Uint8Array;
}

/** A 256-bit unsigned integer. */
declare class u256 {
  lo1: u64;
  lo2: u64;
  hi1: u64;
  hi2: u64;
  constructor(lo1?: u64, lo2?: u64, hi1?: u64, hi2?: u64);

  static readonly Zero: u256;
  static readonly One: u256;
  static readonly Min: u256;
  static readonly Max: u256;

  static fromU256(value: u256): u256;
  static fromU128(value: u128): u256;
  static fromU64(value: u64): u256;
  static fromI64(value: i64): u256;
  static fromU32(value: u32): u256;
  static fromI32(value: i32): u256;
  static fromBits(l0: u32, l1: u32, l2: u32, l3: u32, h0: u32, h1: u32, h2: u32, h3: u32): u256;
  static fromBytes<T>(array: T, bigEndian?: bool): u256;
  static fromBytesLE(array: u8[]): u256;
  static fromBytesBE(array: u8[]): u256;
  static fromUint8ArrayLE(array: Uint8Array): u256;
  static fromUint8ArrayBE(array: Uint8Array): u256;
  static fromF64(value: f64): u256;
  static fromF32(value: f32): u256;
  static from<T>(value: T): u256;
  static fromString(str: string, radix?: i32): u256;

  static isEmpty(value: u256): bool;
  static add(a: u256, b: u256): u256;
  static sub(a: u256, b: u256): u256;
  static mul(a: u256, b: u256): u256;
  static or(a: u256, b: u256): u256;
  static xor(a: u256, b: u256): u256;
  static and(a: u256, b: u256): u256;
  static shr(value: u256, shift: i32): u256;
  static shr_u(value: u256, shift: i32): u256;
  static eq(a: u256, b: u256): bool;
  static ne(a: u256, b: u256): bool;
  static lt(a: u256, b: u256): bool;
  static gt(a: u256, b: u256): bool;
  static le(a: u256, b: u256): bool;
  static ge(a: u256, b: u256): bool;
  static popcnt(value: u256): i32;
  static clz(value: u256): i32;
  static ctz(value: u256): i32;

  set(value: u256): this;
  setI64(value: i64): this;
  setU64(value: u64): this;
  setI32(value: i32): this;
  setU32(value: u32): this;
  setU128(value: u128): this;
  isZero(): bool;
  not(): u256;
  neg(): u256;
  pos(): u256;
  postInc(): u256;
  postDec(): u256;
  clone(): u256;
  as<T>(): T;
  toI64(): i64;
  toU64(): u64;
  toI32(): i32;
  toU32(): u32;
  toBool(): bool;
  toI128(): i128;
  toU128(): u128;
  toU256(): this;
  toBytes(bigEndian?: bool): u8[];
  toStaticBytes(bigEndian?: bool): StaticArray<u8>;
  toUint8Array(bigEndian?: bool): Uint8Array;
  toString(radix?: i32): string;
}

/** A 256-bit signed integer (backs the signed conversions of the family). */
declare class i256 {
  lo1: i64;
  lo2: i64;
  hi1: i64;
  hi2: i64;
  constructor(lo1?: i64, lo2?: i64, hi1?: i64, hi2?: i64);

  static readonly Zero: i256;
  static readonly One: i256;
  static readonly Min: i256;
  static readonly Max: i256;

  static isEmpty(value: i256): bool;

  isNeg(): bool;
  isZero(): bool;
}
