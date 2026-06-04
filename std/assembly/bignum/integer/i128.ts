import { u128 } from './u128';
import { i256 } from './i256';
import { u256 } from './u256';

import { __clz128, __ctz128, } from '../globals';

import { atou128 } from '../utils';

/**
 * 128-bit signed integer in two's complement representation.
 * The `hi` field is signed, storing sign bits for negative values.
 */
export class i128 {

  constructor(public lo: u64 = 0, public hi: i64 = 0) {
  }

  @inline static get Zero(): i128 {
    return new i128();
  }

  @inline static get One(): i128 {
    return new i128(1, 0);
  }

  @inline static get Min(): i128 {
    return new i128(0, 0x8000000000000000);
  }

  @inline static get Max(): i128 {
    return new i128(u64.MAX_VALUE, 0x7FFFFFFFFFFFFFFF);
  }

  // Construct from decimal or hex string
  @inline
  static fromString(value: string, radix: i32 = 10): i128 {
    // If the string is prefixed with "-" we rely on atou128 + two’s complement wrap
    // in the final reinterpret.
    return changetype<i128>(atou128(value, radix));
  }

  @inline
  static fromI256(value: i256): i128 {
    // Truncates top bits (value.hi1, value.hi2)
    return new i128(value.lo1, value.lo2);
  }

  @inline
  static fromU256(value: u256): i128 {
    // Also truncation
    return new i128(value.lo1, <i64>value.lo2);
  }

  @inline
  static fromI128(value: i128): i128 {
    return new i128(value.lo, value.hi);
  }

  @inline
  static fromU128(value: u128): i128 {
    return new i128(value.lo, <i64>value.hi);
  }

  @inline
  static fromI64(value: i64): i128 {
    return new i128(<u64>value, value >> 63);
  }

  @inline
  static fromU64(value: u64): i128 {
    return new i128(value, 0);
  }

  @inline
  static fromF64(value: f64): i128 {
    let i = <i64>value;         // convert f64 -> i64 (round/truncate)
    return new i128(<u64>i, i >> 63);
  }

  @inline
  static fromF32(value: f32): i128 {
    let i = <i64>value;  // or <i32> then sign-extend
    return new i128(<u64>i, i >> 63);
  }

  @inline
  static fromI32(value: i32): i128 {
    return new i128(<u64>value, <i64>(value >> 31));
  }

  @inline
  static fromU32(value: u32): i128 {
    return new i128(<u64>value, 0);
  }

  @inline
  static fromBits(lo1: i32, lo2: i32, hi1: i32, hi2: i32): i128 {
    let lo = ((<u64>lo2) << 32) | (<u64>(lo1) & 0xffffffff);
    let hi = ((<i64>hi2) << 32) | (<i64>(hi1) & 0xffffffff);
    return new i128(lo, hi);
  }

  @inline
  static fromBytes<T>(array: T, bigEndian: bool = false): i128 {
    if (array instanceof u8[]) {
      return bigEndian
        // @ts-ignore
        ? i128.fromBytesBE(<u8[]>array)
        : i128.fromBytesLE(<u8[]>array);
    } else if (array instanceof Uint8Array) {
      return bigEndian
        ? i128.fromUint8ArrayBE(<Uint8Array>array)
        : i128.fromUint8ArrayLE(<Uint8Array>array);
    } else {
      throw new TypeError("Unsupported generic type");
    }
  }

  @inline
  static fromBytesLE(array: u8[]): i128 {
    return i128.fromUint8ArrayLE(changetype<Uint8Array>(array));
  }

  @inline
  static fromBytesBE(array: u8[]): i128 {
    return i128.fromUint8ArrayBE(changetype<Uint8Array>(array));
  }

  @inline
  static fromUint8ArrayLE(array: Uint8Array): i128 {
    assert(array.length && (array.length & 15) == 0);
    let buffer = array.dataStart;
    return new i128(
      load<u64>(buffer, 0 * sizeof<u64>()),
      load<u64>(buffer, 1 * sizeof<u64>())
    );
  }

  static fromUint8ArrayBE(array: Uint8Array): i128 {
    assert(array.length && (array.length & 15) == 0);
    let buffer = array.dataStart;
    return new i128(
      bswap<u64>(load<u64>(buffer, 1 * sizeof<u64>())),
      bswap<u64>(load<u64>(buffer, 0 * sizeof<u64>()))
    );
  }

  /**
   * Create 128-bit signed integer from a generic type T
   * @param  value
   * @return 128-bit signed integer
   */
  @inline
  static from<T>(value: T): i128 {
    if (value instanceof bool) return i128.fromU64(<u64>value);
    else if (value instanceof i8) return i128.fromI64(<i64>value);
    else if (value instanceof u8) return i128.fromU64(<u64>value);
    else if (value instanceof i16) return i128.fromI64(<i64>value);
    else if (value instanceof u16) return i128.fromU64(<u64>value);
    else if (value instanceof i32) return i128.fromI64(<i64>value);
    else if (value instanceof u32) return i128.fromU64(<u64>value);
    else if (value instanceof i64) return i128.fromI64(<i64>value);
    else if (value instanceof u64) return i128.fromU64(<u64>value);
    else if (value instanceof f32) return i128.fromF64(<f64>value);
    else if (value instanceof f64) return i128.fromF64(<f64>value);
    else if (value instanceof i128) return i128.fromI128(<i128>value);
    else if (value instanceof u128) return i128.fromU128(<u128>value);
    else if (value instanceof i256) return i128.fromI256(<i256>value);
    else if (value instanceof u256) return i128.fromU256(<u256>value);
    else if (value instanceof u8[]) return i128.fromBytes(<u8[]>value);
    else throw new TypeError("Unsupported generic type");
  }

  @inline @operator.prefix('!')
  static isEmpty(value: i128): bool {
    return value.isZero();
  }

  @inline @operator('|')
  static or(a: i128, b: i128): i128 {
    return new i128(a.lo | b.lo, a.hi | b.hi);
  }

  @inline @operator('^')
  static xor(a: i128, b: i128): i128 {
    return new i128(a.lo ^ b.lo, a.hi ^ b.hi);
  }

  @inline @operator('&')
  static and(a: i128, b: i128): i128 {
    return new i128(a.lo & b.lo, a.hi & b.hi);
  }

  @inline @operator('<<')
  static shl(value: i128, shift: i32): i128 {
    shift &= 127;
    0xFFFFFFFFFFFFFFFF
    if (!shift) return value;

    let lo = value.lo;
    let hi = value.hi;
    if (shift < 64) {
      let newLo = lo << shift;
      let newHi = (hi << shift) | i64(lo >>> (64 - shift));
      return new i128(newLo, newHi);
    } else {
      // shift >= 64
      let s = shift - 64;
      if (s == 0) {
        // exactly 64
        return new i128(0, lo as i64);
      } else {
        // 1..63
        return new i128(0, (lo << s) as i64);
      }
    }
  }

  @inline @operator('>>>')
  static shr_u(value: i128, shift: i32): i128 {
    // an unsigned right shift of a *signed* 128
    shift &= 127;
    if (!shift) return value;

    let lo = value.lo;
    let hi = u64(value.hi); // reinterpret sign as high bits

    if (shift < 64) {
      let newLo = (lo >>> shift) | (hi << (64 - shift));
      let newHi = hi >>> shift;
      return new i128(newLo, newHi as i64);
    } else {
      // shift >= 64
      let s = shift - 64;
      if (s == 0) {
        return new i128(hi, 0);
      } else {
        // 1..63
        return new i128(hi >>> s, 0);
      }
    }
  }

  @inline @operator('+')
  static add(a: i128, b: i128): i128 {
    let lo = a.lo + b.lo;
    let carry = (lo < a.lo) ? 1 : 0;
    let hi = a.hi + b.hi + (carry as i64);
    return new i128(lo, hi);
  }

  @inline @operator('-')
  static sub(a: i128, b: i128): i128 {
    let lo = a.lo - b.lo;
    let borrow = (lo > a.lo) ? 1 : 0;
    let hi = a.hi - b.hi - (borrow as i64);
    return new i128(lo, hi);
  }

  @inline @operator('==')
  static eq(a: i128, b: i128): bool {
    return a.hi == b.hi && a.lo == b.lo;
  }

  @inline @operator('!=')
  static ne(a: i128, b: i128): bool {
    return !i128.eq(a, b);
  }

  @inline @operator('<')
  static lt(a: i128, b: i128): bool {
    let ah = a.hi, bh = b.hi;
    // If hi parts differ, that decides the sign. Otherwise compare lo.
    return ah == bh ? a.lo < b.lo : ah < bh;
  }

  @inline @operator('>')
  static gt(a: i128, b: i128): bool {
    return b < a;
  }

  @inline @operator('<=')
  static le(a: i128, b: i128): bool {
    return !i128.gt(a, b);
  }

  @inline @operator('>=')
  static ge(a: i128, b: i128): bool {
    return !i128.lt(a, b);
  }

  @inline
  static ord(a: i128, b: i128): i32 {
    // Return -1, 0, 1
    if (a == b) return 0;
    return i128.lt(a, b) ? -1 : 1;
  }

  @inline
  static popcnt(value: i128): i32 {
    return <i32>(popcnt(value.lo) + popcnt(value.hi));
  }

  @inline
  static clz(value: i128): i32 {
    return __clz128(value.lo, value.hi);
  }

  @inline
  static ctz(value: i128): i32 {
    return __ctz128(value.lo, value.hi);
  }

  @inline
  static abs(value: i128): i128 {
    // if negative, return -value
    return value.isNeg() ? value.neg() : value;
  }

  @inline
  isPos(): bool {
    return this.hi >= 0;
  }

  @inline
  isNeg(): bool {
    return this.hi < 0;
  }

  @inline
  isZero(): bool {
    return !(this.lo | this.hi);
  }

  @inline @operator.prefix('~')
  not(): i128 {
    return new i128(~this.lo, ~this.hi);
  }

  @inline @operator.prefix('+')
  pos(): i128 {
    return this;
  }

  @inline @operator.prefix('-')
  neg(): i128 {
    // two's complement: ~x + 1
    let nlo = ~this.lo;
    let nhi = ~this.hi;

    let sum = nlo + 1;
    let carry = (sum < nlo) ? 1 : 0;
    let hi2 = nhi + (carry as i64);

    return new i128(sum, hi2);
  }

  /**
   * Convert to a normal array of bytes (16 bytes for 128 bits).
   * @param bigEndian If true, the highest bytes come first.
   */
  @inline
  toBytes(bigEndian: bool = false): u8[] {
    let result = new Array<u8>(16);
    this.toArrayBuffer(result.dataStart, bigEndian);
    return result;
  }

  /**
   * Convert to a StaticArray<u8> of length 16.
   * @param bigEndian If true, the highest bytes come first.
   * @returns StaticArray<u8>
   */
  @inline
  toStaticBytes(bigEndian: bool = false): StaticArray<u8> {
    let result = new StaticArray<u8>(16);
    this.toArrayBuffer(changetype<usize>(result), bigEndian);
    return result;
  }

  /**
   * Convert to Uint8Array
   * @param bigEndian Little or Big Endian? Default: false
   * @returns  Uint8Array
   */
  @inline
  toUint8Array(bigEndian: bool = false): Uint8Array {
    let result = new Uint8Array(16);
    this.toArrayBuffer(result.dataStart, bigEndian);
    return result;
  }

  @inline
  private toArrayBufferLE(buffer: usize): void {
    store<u64>(buffer, this.lo, 0 * sizeof<u64>());
    store<u64>(buffer, this.hi, 1 * sizeof<u64>());
  }

  @inline
  private toArrayBufferBE(buffer: usize): void {
    store<u64>(buffer, bswap<u64>(this.hi), 0 * sizeof<u64>());
    store<u64>(buffer, bswap<u64>(this.lo), 1 * sizeof<u64>());
  }

  @inline
  private toArrayBuffer(buffer: usize, bigEndian: bool = false): void {
    if (bigEndian) {
      this.toArrayBufferBE(buffer);
    } else {
      this.toArrayBufferLE(buffer);
    }
  }
}
