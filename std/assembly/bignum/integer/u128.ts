import { i128 } from './i128';
import { i256 } from './i256';
import { u256 } from './u256';

// TODO import this on top level 'index.ts'
import {
  __clz128,
  __ctz128,
  __divmod_quot_hi,
  __divmod_rem_hi,
  __divmod_rem_lo,
  __floatuntidf,
  __multi3,
  __res128_hi,
  __udivmod128,
  __udivmod128_10,
} from '../globals';

import { atou128, u128toDecimalString } from '../utils';

@lazy const HEX_CHARS = '0123456789abcdef';

export class u128 {
  // CACHE: Static instances to avoid allocation
  private static readonly _ZERO: u128 = new u128(0, 0);
  private static readonly _ONE: u128 = new u128(1, 0);
  private static readonly _MAX: u128 = new u128(-1, -1);

  /**
   * Create 128-bit unsigned integer from 64-bit parts
   * @param lo low  64-bit part of 128-bit unsigned integer
   * @param hi high 64-bit part of 128-bit unsigned integer
   */
  constructor(
    public lo: u64 = 0,
    public hi: u64 = 0,
  ) {
  }

  @inline static get immutableZero(): u128 {
    return u128._ZERO;
  }

  @inline static get immutableOne(): u128 {
    return u128._ONE;
  }

  @inline static get immutableMin(): u128 {
    return u128._ZERO;
  }

  @inline static get immutableMax(): u128 {
    return u128._MAX;
  }

  @inline static get Zero(): u128 { return new u128(0, 0); }
  @inline static get One(): u128 { return new u128(1, 0); }
  @inline static get Min(): u128 { return new u128(0, 0); }
  @inline static get Max(): u128 { return new u128(-1, -1); }

  /**
   * Ensures the current instance is not a static constant.
   * If it is, throws an error.
   * Cost: 3 integer comparisons. Cheap insurance.
   */
  @inline
  private checkMutable(): void {
    const ptr = changetype<usize>(this);
    if (ptr == changetype<usize>(u128._ZERO) ||
      ptr == changetype<usize>(u128._ONE) ||
      ptr == changetype<usize>(u128._MAX)) {
      throw new Error("u128: Immutable constant");
    }
  }

  @inline
  static fromString(value: string, radix: i32 = 10): u128 {
    return atou128(value, radix);
  }

  @inline
  static fromI256(value: i256): u128 {
    return new u128(value.lo1, value.lo2);
  }

  @inline
  static fromU256(value: u256): u128 {
    return new u128(value.lo1, value.lo2);
  }

  @inline
  static fromI128(value: i128): u128 {
    return new u128(value.lo, value.hi);
  }

  @inline
  static fromU128(value: u128): u128 {
    return new u128(value.lo, value.hi);
  }

  @inline
  static fromI64(value: i64): u128 {
    if (value == 0) return u128.Zero;
    if (value == 1) return u128.One;
    return new u128(value, value >> 63);
  }

  @inline
  static fromU64(value: u64): u128 {
    if (value == 0) return u128.Zero;
    if (value == 1) return u128.One;
    return new u128(value);
  }

  // max safe uint for f64 actually 53-bits
  @inline
  static fromF64(value: f64): u128 {
    return new u128(<u64>value, reinterpret<i64>(value) >> 63);
  }

  // max safe int for f32 actually 23-bits
  @inline
  static fromF32(value: f32): u128 {
    return new u128(<u64>value, <u64>(reinterpret<i32>(value) >> 31));
  }

  @inline
  static fromI32(value: i32): u128 {
    if (value == 0) return u128.Zero;
    if (value == 1) return u128.One;
    return new u128(value, value >> 31);
  }

  @inline
  static fromU32(value: u32): u128 {
    if (value == 0) return u128.Zero;
    if (value == 1) return u128.One;
    return new u128(value);
  }

  @inline
  static fromBool(value: bool): u128 {
    return value ? u128.One : u128.Zero;
  }

  @inline
  static fromBits(lo1: u32, lo2: u32, hi1: u32, hi2: u32): u128 {
    return new u128(
      <u64>lo1 | ((<u64>lo2) << 32),
      <u64>hi1 | ((<u64>hi2) << 32),
    );
  }

  @inline
  static fromBytes<T>(array: T, bigEndian: bool = false): u128 {
    // @ts-ignore
    if (array instanceof u8[]) {
      return bigEndian
        // @ts-ignore
        ? u128.fromBytesBE(<u8[]>array)
        // @ts-ignore
        : u128.fromBytesLE(<u8[]>array);
    } else if (array instanceof Uint8Array) {
      return bigEndian
        ? u128.fromUint8ArrayBE(<Uint8Array>array)
        : u128.fromUint8ArrayLE(<Uint8Array>array);
    } else {
      throw new TypeError("Unsupported generic type");
    }
  }

  @inline
  static fromBytesLE(array: u8[]): u128 {
    if (array.length !== 16) throw new Error("Invalid length");
    let buffer = array.dataStart;
    return new u128(
      load<u64>(buffer, 0),
      load<u64>(buffer, 8)
    );
  }

  @inline
  static fromBytesBE(array: u8[]): u128 {
    if (array.length !== 16) throw new Error("Invalid length");
    let buffer = array.dataStart;
    return new u128(
      bswap<u64>(load<u64>(buffer, 8)),
      bswap<u64>(load<u64>(buffer, 0))
    );
  }

  @inline
  static fromUint8ArrayLE(array: Uint8Array): u128 {
    if (array.length !== 16) throw new Error("Invalid length");
    let buffer = array.dataStart;
    return new u128(
      load<u64>(buffer, 0),
      load<u64>(buffer, 8)
    );
  }

  @inline
  static fromUint8ArrayBE(array: Uint8Array): u128 {
    if (array.length !== 16) throw new Error("Invalid length");
    let buffer = array.dataStart;
    return new u128(
      bswap<u64>(load<u64>(buffer, 8)),
      bswap<u64>(load<u64>(buffer, 0))
    );
  }

  /**
   * Create 128-bit unsigned integer from generic type T
   * @param  value
   * @returns 128-bit unsigned integer
   */
  @inline
  static from<T>(value: T): u128 {
    if (value instanceof bool) return u128.fromU64(<u64>value);
    else if (value instanceof i8) return u128.fromI64(<i64>value);
    else if (value instanceof u8) return u128.fromU64(<u64>value);
    else if (value instanceof i16) return u128.fromI64(<i64>value);
    else if (value instanceof u16) return u128.fromU64(<u64>value);
    else if (value instanceof i32) return u128.fromI64(<i64>value);
    else if (value instanceof u32) return u128.fromU64(<u64>value);
    else if (value instanceof i64) return u128.fromI64(<i64>value);
    else if (value instanceof u64) return u128.fromU64(<u64>value);
    else if (value instanceof f32) return u128.fromF64(<f64>value);
    else if (value instanceof f64) return u128.fromF64(<f64>value);
    else if (value instanceof i128) return u128.fromI128(<i128>value);
    else if (value instanceof u128) return u128.fromU128(<u128>value);
    else if (value instanceof i256) return u128.fromI256(<i256>value);
    else if (value instanceof u256) return u128.fromU256(<u256>value);
    else if (value instanceof u8[]) return u128.fromBytes(<u8[]>value);
    else if (value instanceof Uint8Array) return u128.fromBytes(<Uint8Array>value);
    else if (value instanceof String) return u128.fromString(<string>value);
    else throw new TypeError("Unsupported generic type");
  }

  @inline @operator.prefix('!')
  static isEmpty(value: u128): bool {
    return !(value.lo | value.hi);
  }

  @inline @operator('|')
  static or(a: u128, b: u128): u128 {
    return new u128(a.lo | b.lo, a.hi | b.hi);
  }

  @inline @operator('^')
  static xor(a: u128, b: u128): u128 {
    return new u128(a.lo ^ b.lo, a.hi ^ b.hi);
  }

  @inline @operator('&')
  static and(a: u128, b: u128): u128 {
    return new u128(a.lo & b.lo, a.hi & b.hi);
  }

  @inline @operator('<<')
  static shl(value: u128, shift: i32): u128 {
    // Cache check: if shift is 0 or invalid, return existing constants if possible
    if (shift <= 0) {
      return shift == 0 ? value.clone() : u128.Zero; // Use cached Zero
    }

    if (shift >= 128) {
      return u128.Zero; // Use cached Zero
    }

    // Unrolled shift logic
    if (shift < 64) {
      const lo = value.lo << shift;
      const hi = (value.hi << shift) | (value.lo >>> (64 - shift));
      return new u128(lo, hi);
    } else {
      // shift >= 64
      return new u128(0, value.lo << (shift - 64));
    }
  }

  @inline @operator('>>')
  static shr(value: u128, shift: i32): u128 {
    shift &= 127;
    if (shift == 0) return value.clone();

    // Unrolled shift logic
    if (shift < 64) {
      let hi = value.hi >> shift;
      let lo = (value.hi << (64 - shift)) | (value.lo >> shift);
      return new u128(lo, hi);
    } else {
      let s = shift - 64;
      return new u128(value.hi >> s, 0);
    }
  }

  @inline @operator('>>>')
  static shr_u(value: u128, shift: i32): u128 {
    return u128.shr(value, shift);
  }

  @inline
  static rotl(value: u128, shift: i32): u128 {
    let n = shift & 127;
    if (n == 0) return value.clone();

    let lo = value.lo;
    let hi = value.hi;
    if (n == 64) {
      return new u128(hi, lo);
    }
    if (n & 64) {
      let t = lo;
      lo = hi;
      hi = t;
    }
    let slo = lo << n;
    let shi = hi << n;
    let rlo = lo >> (64 - n);
    let rhi = hi >> (64 - n);
    return new u128(slo | rhi, shi | rlo);
  }

  @inline
  static rotr(value: u128, shift: i32): u128 {
    let n = shift & 127;
    if (n == 0) return value.clone();

    let lo = value.lo;
    let hi = value.hi;
    if (n == 64) {
      return new u128(hi, lo);
    }
    if (n & 64) {
      let t = lo;
      lo = hi;
      hi = t;
    }
    let slo = lo >> n;
    let shi = hi >> n;
    let rlo = lo << (64 - n);
    let rhi = hi << (64 - n);
    return new u128(slo | rhi, shi | rlo);
  }

  @inline @operator('+')
  static add(a: u128, b: u128): u128 {
    var alo = a.lo;
    var lo = alo + b.lo;
    var hi = a.hi + b.hi + u64(lo < alo);
    return new u128(lo, hi);
  }

  @inline @operator('-')
  static sub(a: u128, b: u128): u128 {
    var alo = a.lo;
    var lo = alo - b.lo;
    var hi = a.hi - b.hi - u64(lo > alo);
    return new u128(lo, hi);
  }

  // mul: u128 x u128 = u128
  @inline @operator('*')
  static mul(a: u128, b: u128): u128 {
    return new u128(
      __multi3(a.lo, a.hi, b.lo, b.hi),
      __res128_hi
    );
  }

  @inline @operator('/')
  static div(a: u128, b: u128): u128 {
    return new u128(
      __udivmod128(a.lo, a.hi, b.lo, b.hi),
      __divmod_quot_hi
    );
  }

  @inline @operator('%')
  static rem(a: u128, b: u128): u128 {
    __udivmod128(a.lo, a.hi, b.lo, b.hi);
    return new u128(__divmod_rem_lo, __divmod_rem_hi);
  }

  @inline
  static div10(value: u128): u128 {
    return new u128(
      __udivmod128_10(value.lo, value.hi),
      __divmod_quot_hi
    );
  }

  @inline
  static rem10(value: u128): u128 {
    __udivmod128_10(value.lo, value.hi);
    return new u128(__divmod_rem_lo, __divmod_rem_hi);
  }

  /**
   * Calculate power of base with exponent
   * @param  base     128-bit unsigned integer
   * @param  exponent 32-bit signed integer
   * @returns         128-bit unsigned integer
   */
  @operator('**')
  static pow(base: u128, exponent: i32): u128 {
    // any negative exponent produce zero

    var result = u128.One;

    if (base == result) return result;
    var tmp = base.clone();
    if (exponent <= 1) {
      if (exponent < 0) return u128.Zero;
      return exponent == 0 ? result : tmp;
    }

    if (ASC_SHRINK_LEVEL < 1) {
      var lo = base.lo;
      var hi = base.hi;
      // if base > u64::max and exp > 1 always return "0"
      if (!lo) return u128.Zero;
      if (!hi) {
        let lo1 = lo - 1;
        // "1 ^ exponent" always return "1"
        if (!lo1) return result;

        // if base is power of two do "1 << log2(base) * exp"
        if (!(lo & lo1)) {
          let shift = <i32>(64 - clz(lo1)) * exponent;
          // @ts-ignore
          return shift < 128 ? result << shift : u128.Zero;
        }
      }

      if (exponent <= 4) {
        let baseSq = tmp.sqr();
        switch (exponent) {
          case 2:
            return baseSq;        // base ^ 2
          // @ts-ignore
          case 3:
            return baseSq * base; // base ^ 2 * base
          case 4:
            return baseSq.sqr();  // base ^ 2 * base ^ 2
          default:
            break;
        }
      }

      let log = 32 - clz(exponent);
      if (log <= 7) {
        // 128 = 2 ^ 7, so need usually only seven cases
        switch (log) {
          case 7:
            // @ts-ignore
            if (exponent & 1) result *= tmp;
            exponent >>= 1;
            tmp.sqr();
          case 6:
            // @ts-ignore
            if (exponent & 1) result *= tmp;
            exponent >>= 1;
            tmp.sqr();
          case 5:
            // @ts-ignore
            if (exponent & 1) result *= tmp;
            exponent >>= 1;
            tmp.sqr();
          case 4:
            // @ts-ignore
            if (exponent & 1) result *= tmp;
            exponent >>= 1;
            tmp.sqr();
          case 3:
            // @ts-ignore
            if (exponent & 1) result *= tmp;
            exponent >>= 1;
            tmp.sqr();
          case 2:
            // @ts-ignore
            if (exponent & 1) result *= tmp;
            exponent >>= 1;
            tmp.sqr();
          case 1:
            // @ts-ignore
            if (exponent & 1) result *= tmp;
        }
        return result;
      }
    }

    while (exponent > 0) {
      // @ts-ignore
      if (exponent & 1) result *= tmp;
      exponent >>= 1;
      tmp.sqr();
    }
    return result;
  }

  // compute floor(sqrt(x))
  static sqrt(value: u128): u128 {
    var rem = value.clone();
    if (value < new u128(2)) {
      return rem;
    }
    var res = u128.Zero;
    // @ts-ignore
    var pos = u128.One << (127 - (u128.clz(value) | 1));
    // @ts-ignore
    while (!pos.isZero()) {
      // @ts-ignore
      value = res + pos;
      if (rem >= value) {
        // @ts-ignore
        rem = rem - value;
        // @ts-ignore
        res = pos + value;
      }
      // @ts-ignore
      res >>= 1;
      pos >>= 2;
    }
    return res;
  }

  @inline @operator('==')
  static eq(a: u128, b: u128): bool {
    return a.hi == b.hi && a.lo == b.lo;
  }

  @inline @operator('!=')
  static ne(a: u128, b: u128): bool {
    return !u128.eq(a, b);
  }

  @inline @operator('<')
  static lt(a: u128, b: u128): bool {
    var ah = a.hi, bh = b.hi;
    return ah == bh ? a.lo < b.lo : ah < bh;
  }

  @inline @operator('>')
  static gt(a: u128, b: u128): bool {
    var ah = a.hi, bh = b.hi;
    return ah == bh ? a.lo > b.lo : ah > bh;
  }

  @inline @operator('<=')
  static le(a: u128, b: u128): bool {
    return !u128.gt(a, b);
  }

  @inline @operator('>=')
  static ge(a: u128, b: u128): bool {
    return !u128.lt(a, b);
  }

  /**
   * Get ordering
   * if a > b then result is  1
   * if a < b then result is -1
   * if a = b then result is  0
   * @param  a 128-bit unsigned integer
   * @param  b 128-bit unsigned integer
   * @returns  32-bit signed integer
   */
  @inline
  static ord(a: u128, b: u128): i32 {
    // if a > b => +1
    // if a < b => -1
    // if equal => 0
    if (a.hi > b.hi) return 1;
    if (a.hi < b.hi) return -1;
    if (a.lo > b.lo) return 1;
    if (a.lo < b.lo) return -1;
    return 0;
  }

  /**
   * Compute count of set (populated) bits
   * @param  value 128-bit unsigned integer
   * @returns      32-bit signed integer
   */
  @inline
  static popcnt(value: u128): i32 {
    return <i32>(popcnt(value.lo) + popcnt(value.hi));
  }

  /**
   * Compute bit count of leading zeros
   * @param  value 128-bit unsigned integer
   * @returns      32-bit signed integer
   */
  @inline
  static clz(value: u128): i32 {
    return __clz128(value.lo, value.hi);
  }

  /**
   * Compute bit count of trailing zeros
   * @param  value 128-bit unsigned integer
   * @returns      32-bit signed integer
   */
  @inline
  static ctz(value: u128): i32 {
    return __ctz128(value.lo, value.hi);
  }

  /**
   * Calculate squared value (value ** 2)
   * @param  value 128-bit unsigned integer
   * @returns      128-bit unsigned integer
   */
  @inline
  static sqr(value: u128): u128 {
    return value.clone().sqr();
  }

  /**
   * Calculate multiply and division as `number * numerator / denominator`
   * without overflow in multiplication part.
   *
   * @returns 128-bit unsigned integer
   */
  static muldiv(a: u128, b: u128, c: u128): u128 {
    let A = u256.fromU128(a);
    let B = u256.fromU128(b);
    let C = u256.fromU128(c);

    let product = u256.mul(A, B);
    let quotient = u256.div(product, C);

    return quotient.toU128();
  }

  @inline
  set(value: u128): this {
    this.checkMutable();
    this.lo = value.lo;
    this.hi = value.hi;
    return this;
  }

  @inline
  setI64(value: i64): this {
    this.checkMutable();
    this.lo = value;
    this.hi = value >> 63;
    return this;
  }

  @inline
  setU64(value: u64): this {
    this.checkMutable();
    this.lo = value;
    this.hi = 0;
    return this;
  }

  @inline
  setI32(value: i32): this {
    this.checkMutable();
    this.lo = value;
    this.hi = value >> 63;
    return this;
  }

  @inline
  setU32(value: u32): this {
    this.checkMutable();
    this.lo = value;
    this.hi = 0;
    return this;
  }

  @inline
  isZero(): bool {
    return !(this.lo | this.hi);
  }

  @inline @operator.prefix('~')
  not(): u128 {
    return new u128(~this.lo, ~this.hi);
  }

  @inline @operator.prefix('+')
  pos(): u128 {
    return this;
  }

  @inline @operator.prefix('-')
  neg(): u128 {
    var lo = ~this.lo;
    var hi = ~this.hi;
    var lo1 = lo + 1;
    return new u128(lo1, hi + u64(lo1 < lo));
  }

  @operator.prefix('++')
  preInc(): this {
    this.checkMutable();
    var lo = this.lo;
    var lo1 = lo + 1;
    this.hi += u64(lo1 < lo);
    this.lo = lo1;
    return this;
  }

  @operator.prefix('--')
  preDec(): this {
    this.checkMutable();
    var lo = this.lo;
    var lo1 = lo - 1;
    this.hi -= u64(lo1 > lo);
    this.lo = lo1;
    return this;
  }

  @operator.postfix('++')
  postInc(): u128 {
    return this.clone().preInc();
  }

  @operator.postfix('--')
  postDec(): u128 {
    return this.clone().preDec();
  }

  /**
   * Calculate inplace squared 128-bit unsigned integer (this ** 2)
   * @returns 128-bit unsigned integer
   */
  sqr(): this {
    this.checkMutable();
    // Use built-in 128×128 => 128 multiplication
    // i.e. "x * x"
    let tmp = u128.mul(this, this);
    this.lo = tmp.lo;
    this.hi = tmp.hi;
    return this;
  }

  /**
   * Convert to 256-bit signed integer
   * @returns 256-bit signed integer
   */
  @inline
  toI256(): i256 {
    return new i256(this.lo, this.hi);
  }

  /**
   * Convert to 256-bit unsigned integer
   * @returns 256-bit unsigned integer
   */
  @inline
  toU256(): u256 {
    return new u256(this.lo, this.hi);
  }

  /**
   * Convert to 128-bit signed integer
   * @returns 128-bit signed integer
   */
  @inline
  toI128(): i128 {
    return new i128(this.lo, this.hi);
  }

  /**
   * Convert to 128-bit unsigned integer
   * @returns 128-bit unsigned integer
   */
  @inline
  toU128(): this {
    return this;
  }

  /**
   * Convert to 64-bit signed integer
   * @returns 64-bit signed integer
   */
  @inline
  toI64(): i64 {
    return <i64>(
      (this.lo & 0x7FFFFFFFFFFFFFFF) |
      (this.hi & 0x8000000000000000)
    );
  }

  /**
   * Convert to 64-bit unsigned integer
   * @returns 64-bit unsigned integer
   */
  @inline
  toU64(): u64 {
    return this.lo;
  }

  /**
   * Convert to 32-bit signed integer
   * @returns 32-bit signed integer
   */
  @inline
  toI32(): i32 {
    return <i32>this.toI64();
  }

  /**
   * Convert to 32-bit unsigned integer
   * @returns 32-bit unsigned integer
   */
  @inline
  toU32(): u32 {
    return <u32>this.lo;
  }

  /**
   * Convert to 1-bit boolean
   * @returns 1-bit boolean
   */
  @inline
  toBool(): bool {
    return (this.lo | this.hi) != 0;
  }

  /**
   * Convert to 64-bit float number in deteministic way
   * @returns 64-bit float
   */
  @inline
  toF64(): f64 {
    return __floatuntidf(this.lo, this.hi);
  }

  /**
   * Convert to 32-bit float number
   * @returns 32-bit float
   */
  @inline
  toF32(): f32 {
    return <f32>this.toF64();
  }

  /**
   * Convert to generic type `T`. Useful inside other generics methods
   * @param  T  is <bool | i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64 | f32 | f64 | i128 | u128 | u256 | u8[] | Uint8Array | `StaticArray<u8>` | string>
   * @returns   type of `T`
   */
  @inline
  as<T>(): T {
    if (isBoolean<T>()) {
      return <T>this.toBool();
    } else if (isInteger<T>()) {
      if (isSigned<T>()) {
        // i8, i16, i32, i64
        return <T>this.toI64();
      } else {
        // u8, u16, u32, u64
        return <T>this.toU64();
      }
    } else if (isFloat<T>()) {
      // f32, f64
      return <T>this.toF64();
    } else if (isString<T>()) {
      return <T>this.toString();
    } else if (isReference<T>()) {
      let dummy = changetype<T>(0);
      if (dummy instanceof u8[]) return <T>this.toBytes();
      else if (dummy instanceof StaticArray<u8>) return <T>this.toStaticBytes();
      else if (dummy instanceof Uint8Array) return <T>this.toUint8Array();
      else if (dummy instanceof i128) return <T>this.toI128();
      else if (dummy instanceof u128) return <T>this;
      else if (dummy instanceof u256) return <T>this.toU256();
      else throw new TypeError('Unsupported generic type');
    } else throw new TypeError('Unsupported generic type');
  }

  /**
   * Convert to byte array
   * @param bigEndian Little or Big Endian? Default: false
   * @returns  Array of bytes
   */
  @inline
  toBytes(bigEndian: bool = false): u8[] {
    var result = new Array<u8>(16);
    this.toArrayBuffer(result.dataStart, bigEndian);
    return result;
  }

  /**
   * Convert to byte static array
   * @param bigEndian Little or Big Endian? Default: false
   * @returns  StaticArray of bytes
   */
  @inline
  toStaticBytes(bigEndian: bool = false): StaticArray<u8> {
    var result = new StaticArray<u8>(16);
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
    var result = new Uint8Array(16);
    this.toArrayBuffer(result.dataStart, bigEndian);
    return result;
  }

  /**
   * Return copy of current 128-bit value
   * @returns 128-bit unsigned integer
   */
  clone(): u128 {
    return new u128(this.lo, this.hi);
  }

  toString(radix: i32 = 10): string {
    assert(radix == 10 || radix == 16, 'radix argument must be between 10 or 16');
    if (this.isZero()) return '0';

    var result = '';
    if (radix == 16) {
      let shift: i32 = 124 - (u128.clz(this) & ~3);
      while (shift >= 0) {
        // @ts-ignore
        result += HEX_CHARS.charAt(<i32>((this >> shift).lo & 15));
        shift -= 4;
      }
      return result;
    }
    return u128toDecimalString(this);
  }

  @inline
  private toArrayBufferLE(buffer: usize): void {
    store<u64>(buffer, this.lo, 0 * sizeof<u64>());
    store<u64>(buffer, this.hi, 1 * sizeof<u64>());
  }

  @inline
  private toArrayBufferBE(buffer: usize): void {
    store<u64>(buffer, bswap(this.hi), 0 * sizeof<u64>());
    store<u64>(buffer, bswap(this.lo), 1 * sizeof<u64>());
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
