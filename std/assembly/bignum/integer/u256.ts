import { i128 } from './i128';
import { u128 } from './u128';
import { u256toDecimalString } from "../utils";
import {
  __mul256, __u256carry, __u256carrySub, add64Local, sub64
} from '../globals';

@lazy const HEX_CHARS = '0123456789abcdef';

/**
 * Represents a 256-bit unsigned integer.
 * Optimized for gas efficiency with unrolled loops and direct memory access.
 */
export class u256 {
  /**
   * Constructs a new `u256` with the specified 64-bit limbs.
   * @constructor
   * @param {u64} [lo1=0] - The lowest 64 bits.
   * @param {u64} [lo2=0] - The 64 bits above `lo1`.
   * @param {u64} [hi1=0] - The 64 bits above `lo2`.
   * @param {u64} [hi2=0] - The highest 64 bits.
   */
  constructor(
    public lo1: u64 = 0,
    public lo2: u64 = 0,
    public hi1: u64 = 0,
    public hi2: u64 = 0,
  ) {}

  @inline static get Zero(): u256 { return  new u256(0, 0, 0, 0); }
  @inline static get One(): u256 { return new u256(1, 0, 0, 0); }
  @inline static get Min(): u256 { return  new u256(0, 0, 0, 0); }
  @inline static get Max(): u256 { return new u256(-1, -1, -1, -1); }

  /**
   * A constant representing the maximum value for 256-bit unsigned integer.
   * All bits set to 1.
   * @returns {u256}
   */
  /**
   * Creates a new `u256` from an existing `u256`.
   * @param {u256} value - The source `u256` value.
   * @returns {u256} - A new copy of the `value`.
   */
  @inline
  static fromU256(value: u256): u256 {
    return new u256(value.lo1, value.lo2, value.hi1, value.hi2);
  }

  /**
   * Creates a new `u256` from a 128-bit unsigned integer.
   * @param {u128} value - The 128-bit unsigned integer.
   * @returns {u256} - The resulting 256-bit unsigned integer.
   */
  @inline
  static fromU128(value: u128): u256 {
    return new u256(value.lo, value.hi);
  }

  /**
   * Creates a new `u256` from a 64-bit unsigned integer.
   * @param {u64} value - The 64-bit unsigned integer.
   * @returns {u256} - The resulting 256-bit unsigned integer.
   */
  @inline
  static fromU64(value: u64): u256 {
    if (value == 0) return u256.Zero;
    if (value == 1) return u256.One;
    return new u256(value);
  }

  /**
   * Creates a new `u256` from a 64-bit signed integer (sign-extends).
   * @param {i64} value - The 64-bit signed integer.
   * @returns {u256} - The resulting 256-bit unsigned integer.
   */
  @inline
  static fromI64(value: i64): u256 {
    if (value == 0) return u256.Zero;
    if (value == 1) return u256.One;
    if (value == -1) return u256.Max;
    let mask = value >> 63;
    return new u256(<u64>value, mask, mask, mask);
  }

  /**
   * Creates a new `u256` from a 32-bit unsigned integer.
   * @param {u32} value - The 32-bit unsigned integer.
   * @returns {u256} - The resulting 256-bit unsigned integer.
   */
  @inline
  static fromU32(value: u32): u256 {
    if (value == 0) return u256.Zero;
    if (value == 1) return u256.One;
    return new u256(value);
  }

  /**
   * Creates a new `u256` from a 32-bit signed integer (sign-extends).
   * @param {i32} value - The 32-bit signed integer.
   * @returns {u256} - The resulting 256-bit unsigned integer.
   */
  @inline
  static fromI32(value: i32): u256 {
    if (value == 0) return u256.Zero;
    if (value == 1) return u256.One;
    if (value == -1) return u256.Max;
    let mask: u64 = value >> 63;
    return new u256(value, mask, mask, mask);
  }

  /**
   * Creates a new `u256` from 8 separate 32-bit segments (lower to higher).
   * @param {u32} l0 - Lower 32 bits of the first 64-bit segment.
   * @param {u32} l1 - Higher 32 bits of the first 64-bit segment.
   * @param {u32} l2 - Lower 32 bits of the second 64-bit segment.
   * @param {u32} l3 - Higher 32 bits of the second 64-bit segment.
   * @param {u32} h0 - Lower 32 bits of the third 64-bit segment.
   * @param {u32} h1 - Higher 32 bits of the third 64-bit segment.
   * @param {u32} h2 - Lower 32 bits of the fourth 64-bit segment.
   * @param {u32} h3 - Higher 32 bits of the fourth 64-bit segment.
   * @returns {u256} - The resulting 256-bit unsigned integer.
   */
  @inline
  static fromBits(
    l0: u32, l1: u32, l2: u32, l3: u32,
    h0: u32, h1: u32, h2: u32, h3: u32,
  ): u256 {
    return new u256(
      <u64>l0 | ((<u64>l1) << 32),
      <u64>l2 | ((<u64>l3) << 32),
      <u64>h0 | ((<u64>h1) << 32),
      <u64>h2 | ((<u64>h3) << 32),
    );
  }

  /**
   * Creates a new `u256` from an array of bytes or `Uint8Array`.
   * @param {T} array - The source array of bytes (u8[] or Uint8Array).
   * @param {boolean} [bigEndian=false] - Whether the bytes are in big-endian format.
   * @throws {TypeError} If the generic type `T` is not supported.
   * @returns {u256} - The resulting `u256`.
   */
  @inline
  static fromBytes<T>(array: T, bigEndian: bool = false): u256 {
    // @ts-ignore
    if (array instanceof u8[]) {
      return bigEndian
        // @ts-ignore
        ? u256.fromBytesBE(<u8[]>array)
        // @ts-ignore
        : u256.fromBytesLE(<u8[]>array);
    } else if (array instanceof Uint8Array) {
      return bigEndian
        ? u256.fromUint8ArrayBE(<Uint8Array>array)
        : u256.fromUint8ArrayLE(<Uint8Array>array);
    } else {
      throw new TypeError("Unsupported generic type");
    }
  }

  /**
   * Creates a new `u256` from a little-endian array of bytes.
   * @param {u8[]} array - A 32-byte array (little-endian).
   * @returns {u256} - The resulting `u256`.
   */
  @inline
  static fromBytesLE(array: u8[]): u256 {
    if (array.length !== 32) throw new Error("Invalid length");
    let buffer = array.dataStart;
    return new u256(
      load<u64>(buffer, 0),
      load<u64>(buffer, 8),
      load<u64>(buffer, 16),
      load<u64>(buffer, 24),
    );
  }

  /**
   * Creates a new `u256` from a big-endian array of bytes.
   * @param {u8[]} array - A 32-byte array (big-endian).
   * @returns {u256} - The resulting `u256`.
   */
  @inline
  static fromBytesBE(array: u8[]): u256 {
    if (array.length !== 32) throw new Error("Invalid length");
    let buffer = array.dataStart;
    return new u256(
      bswap<u64>(load<u64>(buffer, 24)),
      bswap<u64>(load<u64>(buffer, 16)),
      bswap<u64>(load<u64>(buffer, 8)),
      bswap<u64>(load<u64>(buffer, 0))
    );
  }

  /**
   * Creates a new `u256` from a little-endian `Uint8Array`.
   * @param {Uint8Array} array - A 32-byte `Uint8Array` (little-endian).
   * @returns {u256} - The resulting `u256`.
   */
  @inline
  static fromUint8ArrayLE(array: Uint8Array): u256 {
    if (array.length !== 32) throw new Error("Invalid length");
    let buffer = array.dataStart;
    return new u256(
      load<u64>(buffer, 0),
      load<u64>(buffer, 8),
      load<u64>(buffer, 16),
      load<u64>(buffer, 24)
    );
  }

  /**
   * Creates a new `u256` from a big-endian `Uint8Array`.
   * @param {Uint8Array} array - A 32-byte `Uint8Array` (big-endian).
   * @returns {u256} - The resulting `u256`.
   */
  @inline
  static fromUint8ArrayBE(array: Uint8Array): u256 {
    if (array.length !== 32) throw new Error("Invalid length");
    let buffer = array.dataStart;
    return new u256(
      bswap<u64>(load<u64>(buffer, 24)),
      bswap<u64>(load<u64>(buffer, 16)),
      bswap<u64>(load<u64>(buffer, 8)),
      bswap<u64>(load<u64>(buffer, 0))
    );
  }

  /**
   * Creates a new `u256` from a 64-bit floating-point number.
   * NOTE: This is only correct up to about 2^53.
   * @param {f64} value - The 64-bit float value.
   * @returns {u256} - The resulting `u256`.
   */
  @inline
  static fromF64(value: f64): u256 {
    let mask = u64(reinterpret<i64>(value) >> 63);
    return new u256(<u64>value, mask, mask, mask);
  }

  /**
   * Creates a new `u256` from a 32-bit floating-point number.
   * NOTE: This is only correct up to about 2^23.
   * @param {f32} value - The 32-bit float value.
   * @returns {u256} - The resulting `u256`.
   */
  @inline
  static fromF32(value: f32): u256 {
    let mask = u64(reinterpret<i32>(value) >> 31);
    return new u256(<u64>value, mask, mask, mask);
  }

  /**
   * Creates a new `u256` from a generic value `T`.
   * Supported types: bool, i8, u8, i16, u16, i32, u32, i64, u64, f32, f64, u128, u256, u8[], Uint8Array.
   * @param {T} value - The source value.
   * @throws {TypeError} If the type `T` is not supported.
   * @returns {u256} - The resulting `u256`.
   */
  @inline
  static from<T>(value: T): u256 {
    if (value instanceof bool) return u256.fromU64(<u64>value);
    else if (value instanceof i8) return u256.fromI64(<i64>value);
    else if (value instanceof u8) return u256.fromU64(<u64>value);
    else if (value instanceof i16) return u256.fromI64(<i64>value);
    else if (value instanceof u16) return u256.fromU64(<u64>value);
    else if (value instanceof i32) return u256.fromI64(<i64>value);
    else if (value instanceof u32) return u256.fromU64(<u64>value);
    else if (value instanceof i64) return u256.fromI64(<i64>value);
    else if (value instanceof u64) return u256.fromU64(<u64>value);
    else if (value instanceof f32) return u256.fromF64(<f64>value);
    else if (value instanceof f64) return u256.fromF64(<f64>value);
    else if (value instanceof u128) return u256.fromU128(<u128>value);
    else if (value instanceof u256) return u256.fromU256(<u256>value);
    else if (value instanceof u8[]) return u256.fromBytes(<u8[]>value);
    else if (value instanceof Uint8Array) return u256.fromBytes(<Uint8Array>value);
    else throw new TypeError("Unsupported generic type");
  }

  /**
   * Parses a string in decimal or hexadecimal format into a `u256`.
   * @param {string} str - The input string.
   * @param {i32} [radix=10] - The base (10 for decimal, 16 for hexadecimal).
   * @returns {u256} - The resulting `u256`.
   */
  @inline
  static fromString(str: string, radix: i32 = 10): u256 {
    assert(radix == 10 || radix == 16, "radix must be 10 or 16");
    let len = str.length;
    if (len == 0) return u256.Zero;
    let result = u256.Zero; // Use cached Zero
    if (radix == 10) {
      for (let i = 0; i < len; i++) {
        let c = str.charCodeAt(i);
        assert(c >= 0x30 && c <= 0x39, "Invalid decimal digit");
        let digit: u64 = c - 0x30;
        result = result * u256.from(10) + u256.from(digit);
      }
    } else {
      for (let i = 0; i < len; i++) {
        let c = str.charCodeAt(i);
        let digit: u64 = 0;
        if (c >= 0x30 && c <= 0x39) digit = c - 0x30;
        else if (c >= 0x41 && c <= 0x46) digit = c - 0x41 + 10;
        else if (c >= 0x61 && c <= 0x66) digit = c - 0x61 + 10;
        else assert(false, "Invalid hexadecimal digit");
        result = result * u256.from(16) + u256.from(digit);
      }
    }
    return result;
  }

  /**
   * Checks if a given `u256` value is zero using the `!` operator.
   * @param {u256} value - The `u256` to check.
   * @returns {boolean} - True if zero, false otherwise.
   */
  @inline @operator.prefix('!')
  static isEmpty(value: u256): bool {
    return value.isZero();
  }

  /**
   * Adds two `u256` values and returns a new `u256` with the sum.
   * @param {u256} a - The first `u256` addend.
   * @param {u256} b - The second `u256` addend.
   * @returns {u256} - The sum of `a` and `b`.
   */
  @operator('+')
  static add(a: u256, b: u256): u256 {
    let lo1 = add64Local(a.lo1, b.lo1, 0);
    let c1 = __u256carry;
    let lo2 = add64Local(a.lo2, b.lo2, c1);
    let c2 = __u256carry;
    let hi1 = add64Local(a.hi1, b.hi1, c2);
    let c3 = __u256carry;
    let hi2 = add64Local(a.hi2, b.hi2, c3);
    return new u256(lo1, lo2, hi1, hi2);
  }

  /**
   * Divides `a` by `b` (integer division).
   * @param {u256} a - The dividend.
   * @param {u256} b - The divisor.
   * @throws {Error} If `b` is zero.
   * @returns {u256} - The quotient of the division.
   * Optimized Division.
   * Performs division in-place on clones to minimize object allocation.
   */
  @operator('/')
  public static div(a: u256, b: u256): u256 {
    if (b.isZero()) throw new Error('Division by zero');
    if (a.isZero() || u256.lt(a, b)) return u256.Zero; // Return cached Zero
    if (u256.eq(a, b)) return u256.One; // Return cached One

    // Clone to mutate in-place
    let n = a.clone();
    let d = b.clone();
    let result = u256.Zero.clone(); // Start with fresh Zero

    const shift = u256.clz(d) - u256.clz(n);

    // Shift d left by 'shift'
    // Since d is a clone, we can mutate/reassign it
    d = u256.shl(d, shift);

    // Unrolled restore division
    for (let i = shift; i >= 0; i--) {
      if (u256.ge(n, d)) {
        n.subAssign(d); // In-place subtract
        result.orAssignBit(i); // In-place bit set
      }
      d.rshiftOne(); // In-place right shift by 1
    }
    return result;
  }

  /**
   * Left-shifts a `u256` by the specified number of bits.
   * @param {u256} value - The `u256` to shift.
   * @param {i32} shift - The number of bits to shift (modulo 256).
   * @returns {u256} - The shifted `u256`.
   * Optimized Left Shift (Massacred allocation overhead).
   * Unrolls the logic into local variables to avoid Array<u64> allocation.
   */
  @operator('<<')
  public static shl(value: u256, shift: i32): u256 {
    if (shift <= 0) return shift == 0 ? value.clone() : u256.Zero; // Return cached
    if (shift >= 256) return u256.Zero; // Return cached

    shift &= 255;

    const bits = 64;
    const segShift = (shift / bits) | 0;
    const bitShift = shift % bits;
    const invShift = bits - bitShift;

    let r0: u64 = 0, r1: u64 = 0, r2: u64 = 0, r3: u64 = 0;
    const i0 = value.lo1, i1 = value.lo2, i2 = value.hi1, i3 = value.hi2;

    if (segShift == 0) {
      r0 = i0 << bitShift;
      r1 = (i1 << bitShift) | (bitShift == 0 ? 0 : i0 >>> invShift);
      r2 = (i2 << bitShift) | (bitShift == 0 ? 0 : i1 >>> invShift);
      r3 = (i3 << bitShift) | (bitShift == 0 ? 0 : i2 >>> invShift);
    } else if (segShift == 1) {
      r1 = i0 << bitShift;
      r2 = (i1 << bitShift) | (bitShift == 0 ? 0 : i0 >>> invShift);
      r3 = (i2 << bitShift) | (bitShift == 0 ? 0 : i1 >>> invShift);
    } else if (segShift == 2) {
      r2 = i0 << bitShift;
      r3 = (i1 << bitShift) | (bitShift == 0 ? 0 : i0 >>> invShift);
    } else if (segShift == 3) {
      r3 = i0 << bitShift;
    }

    return new u256(r0, r1, r2, r3);
  }

  /**
   * Subtracts `b` from `a` and returns a new `u256`.
   * @param {u256} a - The minuend.
   * @param {u256} b - The subtrahend.
   * @returns {u256} - The difference `a - b`.
   */
  @operator('-')
  static sub(a: u256, b: u256): u256 {
    let lo1 = sub64(a.lo1, b.lo1, 0);
    let b1 = __u256carrySub;
    let lo2 = sub64(a.lo2, b.lo2, b1);
    let b2 = __u256carrySub;
    let hi1 = sub64(a.hi1, b.hi1, b2);
    let b3 = __u256carrySub;
    let hi2 = sub64(a.hi2, b.hi2, b3);
    return new u256(lo1, lo2, hi1, hi2);
  }

  /**
   * Bitwise OR between two `u256` values.
   * @param {u256} a - The first operand.
   * @param {u256} b - The second operand.
   * @returns {u256} - The bitwise OR result.
   */
  @inline @operator('|')
  static or(a: u256, b: u256): u256 {
    return new u256(a.lo1 | b.lo1, a.lo2 | b.lo2, a.hi1 | b.hi1, a.hi2 | b.hi2);
  }

  /**
   * Bitwise XOR between two `u256` values.
   * @param {u256} a - The first operand.
   * @param {u256} b - The second operand.
   * @returns {u256} - The bitwise XOR result.
   */
  @inline @operator('^')
  static xor(a: u256, b: u256): u256 {
    return new u256(a.lo1 ^ b.lo1, a.lo2 ^ b.lo2, a.hi1 ^ b.hi1, a.hi2 ^ b.hi2);
  }

  /**
   * Bitwise AND between two `u256` values.
   * @param {u256} a - The first operand.
   * @param {u256} b - The second operand.
   * @returns {u256} - The bitwise AND result.
   */
  @inline @operator('&')
  static and(a: u256, b: u256): u256 {
    return new u256(a.lo1 & b.lo1, a.lo2 & b.lo2, a.hi1 & b.hi1, a.hi2 & b.hi2);
  }

  /**
   * Right-shifts a `u256` by the specified number of bits (logical shift).
   * @param {u256} value - The `u256` to shift.
   * @param {i32} shift - The number of bits to shift (modulo 256).
   * @returns {u256} - The shifted `u256`.
   */
  @operator('>>')
  static shr(value: u256, shift: i32): u256 {
    // If shift <= 0 => shift=0 means "no shift," shift<0 is arguably invalid.
    // We just return a if shift=0, else zero if negative. Adjust to your preference.
    if (shift <= 0) {
      return shift == 0 ? value.clone() : u256.Zero;
    }

    // If shift >= 256 => the result is zero for a 256-bit integer
    if (shift >= 256) {
      return u256.Zero;
    }

    // Now shift is in [1..255]
    // Some code likes to do shift &= 255; but after the above check, it’s no longer necessary.
    // We'll keep it for consistency:
    shift &= 255;

    // If after masking shift is 0, that means the original shift was multiple of 256, but we handled it above
    if (shift == 0) return value.clone();

    const w = shift >>> 6; // how many full 64-bit words to drop
    const b = shift & 63;  // how many bits to shift within a word

    let lo1 = value.lo1;
    let lo2 = value.lo2;
    let hi1 = value.hi1;
    let hi2 = value.hi2;

    // Shift words down by w words
    if (w >= 4) return u256.Zero; // Return cached
    else if (w == 3) { lo1 = hi2; lo2 = 0; hi1 = 0; hi2 = 0; }
    else if (w == 2) { lo1 = hi1; lo2 = hi2; hi1 = 0; hi2 = 0; }
    else if (w == 1) { lo1 = lo2; lo2 = hi1; hi1 = hi2; hi2 = 0; }

    // Now apply the bit shift b
    if (b > 0) {
      const invB = 64 - b;
      lo1 = (lo1 >>> b) | (lo2 << invB);
      lo2 = (lo2 >>> b) | (hi1 << invB);
      hi1 = (hi1 >>> b) | (hi2 << invB);
      hi2 = hi2 >>> b;
    }

    return new u256(lo1, lo2, hi1, hi2);
  }

  /**
   * Unsigned right shift operator (same as `shr` for `u256`).
   * @param {u256} value - The `u256` to shift.
   * @param {i32} shift - The number of bits to shift (modulo 256).
   * @returns {u256} - The shifted `u256`.
   */
  @inline @operator('>>>')
  static shr_u(value: u256, shift: i32): u256 {
    return u256.shr(value, shift);
  }

  /**
   * Checks if two `u256` values are equal.
   * @param {u256} a - The first operand.
   * @param {u256} b - The second operand.
   * @returns {boolean} - True if the two values are equal, otherwise false.
   */
  @inline @operator('==')
  static eq(a: u256, b: u256): bool {
    return a.lo1 == b.lo1 && a.lo2 == b.lo2 && a.hi1 == b.hi1 && a.hi2 == b.hi2;
  }

  /**
   * Checks if two `u256` values are not equal.
   * @param {u256} a - The first operand.
   * @param {u256} b - The second operand.
   * @returns {boolean} - True if the two values differ, otherwise false.
   */
  @inline @operator('!=')
  static ne(a: u256, b: u256): bool {
    return !u256.eq(a, b);
  }

  /**
   * Checks if `a < b`.
   * @param {u256} a - The first operand.
   * @param {u256} b - The second operand.
   * @returns {boolean} - True if `a` is less than `b`, otherwise false.
   */
  @operator('<')
  static lt(a: u256, b: u256): bool {
    if (a.hi2 != b.hi2) return a.hi2 < b.hi2;
    if (a.hi1 != b.hi1) return a.hi1 < b.hi1;
    if (a.lo2 != b.lo2) return a.lo2 < b.lo2;
    return a.lo1 < b.lo1;
  }

  @inline @operator('>')
  static gt(a: u256, b: u256): bool { return b < a; }
  @inline @operator('<=')
  static le(a: u256, b: u256): bool { return !u256.gt(a, b); }
  @inline @operator('>=')
  static ge(a: u256, b: u256): bool { return !u256.lt(a, b); }

  @inline @operator('*')
  static mul(a: u256, b: u256): u256 {
    return __mul256(a.lo1, a.lo2, a.hi1, a.hi2, b.lo1, b.lo2, b.hi1, b.hi2);
  }

  /**
   * Counts the number of set bits (1s) in the `u256`.
   * @param {u256} value - The `u256` to count bits for.
   * @returns {i32} - The number of bits set to 1.
   */
  @inline
  static popcnt(value: u256): i32 {
    return <i32>(popcnt(value.lo1) + popcnt(value.lo2) + popcnt(value.hi1) + popcnt(value.hi2));
  }

  /**
   * Counts leading zeros in the `u256`.
   * @param {u256} value - The `u256` to evaluate.
   * @returns {i32} - The number of leading zero bits.
   */
  @inline
  static clz(value: u256): i32 {
    if (value.hi2) return <i32>clz(value.hi2);
    if (value.hi1) return <i32>(clz(value.hi1) + 64);
    if (value.lo2) return <i32>(clz(value.lo2) + 128);
    if (value.lo1) return <i32>(clz(value.lo1) + 192);
    return 256;
  }

  /**
   * Counts trailing zeros in the `u256`.
   * @param {u256} value - The `u256` to evaluate.
   * @returns {i32} - The number of trailing zero bits.
   */
  @inline
  static ctz(value: u256): i32 {
    if (value.lo1) return <i32>ctz(value.lo1);
    if (value.lo2) return <i32>(ctz(value.lo2) + 64);
    if (value.hi1) return <i32>(ctz(value.hi1) + 128);
    if (value.hi2) return <i32>(ctz(value.hi2) + 192);
    return 256;
  }

  /**
   * Sets the value of this `u256` to another `u256`.
   * @param {u256} value - The source `u256`.
   * @returns {this} - The current instance.
   */
  @inline
  set(value: u256): this {
    this.lo1 = value.lo1; this.lo2 = value.lo2; this.hi1 = value.hi1; this.hi2 = value.hi2;
    return this;
  }

  /**
   * Sets the lower 128 bits of this `u256` from a `u128`, resetting the higher 128 bits to zero.
   * @param {u128} value - The source 128-bit unsigned integer.
   * @returns {this} - The current instance.
   */
  @inline
  setU128(value: u128): this {
    this.lo1 = value.lo; this.lo2 = value.hi; this.hi1 = 0; this.hi2 = 0;
    return this;
  }

  /**
   * Sets this `u256` to the sign-extended value of a 64-bit signed integer.
   * @param {i64} value - The 64-bit signed integer.
   * @returns {this} - The current instance.
   */
  @inline
  setI64(value: i64): this {
    let mask: u64 = value >> 63;
    this.lo1 = <u64>value; this.lo2 = mask; this.hi1 = mask; this.hi2 = mask;
    return this;
  }

  /**
   * Sets this `u256` to the specified 64-bit unsigned integer, clearing higher bits.
   * @param {u64} value - The 64-bit unsigned integer.
   * @returns {this} - The current instance.
   */
  @inline
  setU64(value: u64): this {
    this.lo1 = value; this.lo2 = 0; this.hi1 = 0; this.hi2 = 0;
    return this;
  }

  /**
   * Sets this `u256` to the sign-extended value of a 32-bit signed integer.
   * @param {i32} value - The 32-bit signed integer.
   * @returns {this} - The current instance.
   */
  @inline
  setI32(value: i32): this {
    let mask: u64 = value >> 63;
    this.lo1 = value; this.lo2 = mask; this.hi1 = mask; this.hi2 = mask;
    return this;
  }

  /**
   * Sets this `u256` to the specified 32-bit unsigned integer, clearing higher bits.
   * @param {u32} value - The 32-bit unsigned integer.
   * @returns {this} - The current instance.
   */
  @inline
  setU32(value: u32): this {
    this.lo1 = value; this.lo2 = 0; this.hi1 = 0; this.hi2 = 0;
    return this;
  }

  /**
   * Checks if this `u256` is equal to zero.
   * @returns {boolean} - True if zero, false otherwise.
   */
  @inline
  isZero(): bool {
    return !(this.lo1 | this.lo2 | this.hi1 | this.hi2);
  }

  /**
   * Performs a bitwise NOT operation (`~`) on the current `u256`.
   * @returns {u256} - A new `u256` with inverted bits.
   */
  @inline @operator.prefix('~')
  not(): u256 {
    return new u256(~this.lo1, ~this.lo2, ~this.hi1, ~this.hi2);
  }

  /**
   * A unary plus operator, returning the current `u256` without changes.
   * @returns {u256} - The current `u256`.
   */
  @inline @operator.prefix('+')
  pos(): u256 { return this; }

  /**
   * A unary negation operator (`-x`), computed as `~x + 1`.
   * @returns {u256} - A new `u256` representing the negated value (mod 2^256).
   */
  @operator.prefix('-')
  neg(): u256 {
    let lo1 = ~this.lo1, lo2 = ~this.lo2, hi1 = ~this.hi1, hi2 = ~this.hi2;
    let sum = lo1 + 1;
    let carry = (sum < lo1) ? 1 : 0;
    lo1 = sum;
    sum = lo2 + carry;
    carry = (sum < lo2) ? 1 : 0;
    lo2 = sum;
    sum = hi1 + carry;
    carry = (sum < hi1) ? 1 : 0;
    hi1 = sum;
    hi2 = hi2 + carry;
    return new u256(lo1, lo2, hi1, hi2);
  }

  @operator.prefix("++")
  public preInc(): this {
    let sum = this.lo1 + 1;
    let carry = sum < this.lo1 ? 1 : 0;
    this.lo1 = sum;
    sum = this.lo2 + carry;
    carry = sum < this.lo2 ? 1 : 0;
    this.lo2 = sum;
    sum = this.hi1 + carry;
    carry = sum < this.hi1 ? 1 : 0;
    this.hi1 = sum;
    this.hi2 += carry;
    return this;
  }

  @operator.prefix("--")
  public preDec(): this {
    let diff = this.lo1 - 1;
    let borrow = (diff > this.lo1) ? 1 : 0;
    this.lo1 = diff;
    diff = this.lo2 - borrow;
    borrow = (diff > this.lo2) ? 1 : 0;
    this.lo2 = diff;
    diff = this.hi1 - borrow;
    borrow = (diff > this.hi1) ? 1 : 0;
    this.hi1 = diff;
    this.hi2 -= borrow;
    return this;
  }

  @inline @operator.postfix('++')
  postInc(): u256 { return this.clone().preInc(); }

  @inline @operator.postfix('--')
  postDec(): u256 { return this.clone().preDec(); }

  /**
   * Converts this `u256` to a generic type `T`.
   * Supported types: bool, i8, u8, i16, u16, i32, u32, i64, u64, i128, u128, u256, u8[], Uint8Array, StaticArray<u8>, string.
   * @returns {T} - The converted value.
   */
  @inline
  as<T>(): T {
    if (isReference<T>()) {
      let typeName = nameof<T>();
      if (typeName.indexOf("Array<u8>") >= 0) return changetype<T>(this.toBytes());
      else if (typeName.indexOf("Uint8Array") >= 0) return changetype<T>(this.toUint8Array());
      else if (typeName.indexOf("StaticArray<u8>") >= 0) return changetype<T>(this.toStaticBytes());
      else if (typeName.indexOf("String") >= 0) return changetype<T>(this.toString());
      else if (typeName.indexOf("u128") >= 0) return changetype<T>(this.toU128());
      else if (typeName.indexOf("i128") >= 0) return changetype<T>(this.toI128());
      else if (typeName.indexOf("u256") >= 0) return changetype<T>(this.toU256());
      else throw new TypeError(`Unsupported generic type ${typeName}`);
    } else {
      if (isInteger<T>()) {
        if (sizeof<T>() == 1) return <T><u64>this.toU64();
        else if (sizeof<T>() == 2) return <T><u64>this.toU64();
        else if (sizeof<T>() == 4) return <T><u64>this.toU64();
        else if (sizeof<T>() == 8) return <T>this.toU64();
        else throw new TypeError(`Unsupported generic type ${nameof<T>()}`);
      } else if (isFloat<T>()) {
        return <T><f64>this.toU64();
      } else {
        // bool
        return <T>this.toBool();
      }
    }
  }

  /**
   * Converts this `u256` to a signed 128-bit integer (i128).
   * The highest bit of the 256-bit value is sign bit for i128.
   * @returns {i128} - The resulting `i128`.
   */
  @inline
  toI128(): i128 {
    return new i128(this.lo1, (this.lo2 & 0x7FFFFFFFFFFFFFFF) | (this.hi2 & 0x8000000000000000));
  }

  /**
   * Converts this `u256` to an unsigned 128-bit integer (u128).
   * Truncates higher bits.
   * @returns {u128} - The resulting `u128`.
   */
  @inline
  toU128(): u128 { return new u128(this.lo1, this.lo2); }

  /**
   * Returns this `u256` itself, effectively a no-op for `u256`.
   * @returns {u256} - The current `u256`.
   */
  @inline
  toU256(): this { return this; }

  /**
   * Converts this `u256` to a signed 64-bit integer (i64).
   * Truncates and treats the highest bit of the 256-bit as sign.
   * @returns {i64} - The resulting 64-bit signed integer.
   */
  @inline
  toI64(): i64 { return <i64>( (this.lo1 & 0x7FFFFFFFFFFFFFFF) | (this.hi2 & 0x8000000000000000) ); }

  /**
   * Converts this `u256` to an unsigned 64-bit integer (u64).
   * Truncates higher bits.
   * @returns {u64} - The resulting 64-bit unsigned integer.
   */
  @inline
  toU64(): u64 { return this.lo1; }

  /**
   * Converts this `u256` to a signed 32-bit integer (i32).
   * @returns {i32} - The resulting 32-bit signed integer.
   */
  @inline
  toI32(): i32 { return <i32>this.toI64(); }

  /**
   * Converts this `u256` to an unsigned 32-bit integer (u32).
   * Truncates higher bits.
   * @returns {u32} - The resulting 32-bit unsigned integer.
   */
  @inline
  toU32(): u32 { return <u32>this.lo1; }

  /**
   * Checks if the `u256` is non-zero, then returns `true`; otherwise `false`.
   * @returns {boolean} - True if non-zero, otherwise false.
   */
  @inline
  toBool(): bool { return <bool>(this.lo1 | this.lo2 | this.hi1 | this.hi2); }

  /**
   * Converts this `u256` to an array of 32 bytes (u8[]).
   * @param {boolean} [bigEndian=false] - Output in big-endian if true, else little-endian.
   * @returns {u8[]} - The resulting byte array.
   */
  @inline
  toBytes(bigEndian: bool = false): u8[] {
    let result = new Array<u8>(32);
    this.toArrayBuffer(changetype<usize>(result.dataStart), bigEndian);
    return result;
  }

  /**
   * Converts this `u256` to a static array of 32 bytes (StaticArray<u8>).
   * @param {boolean} [bigEndian=false] - Output in big-endian if true, else little-endian.
   * @returns {StaticArray<u8>} - The resulting static byte array.
   */
  @inline
  toStaticBytes(bigEndian: bool = false): StaticArray<u8> {
    let result = new StaticArray<u8>(32);
    this.toArrayBuffer(changetype<usize>(result), bigEndian);
    return result;
  }

  /**
   * Converts this `u256` to a `Uint8Array` of length 32.
   * @param {boolean} [bigEndian=false] - Output in big-endian if true, else little-endian.
   * @returns {Uint8Array} - The resulting `Uint8Array`.
   */
  @inline
  toUint8Array(bigEndian: bool = false): Uint8Array {
    let result = new Uint8Array(32);
    this.toArrayBuffer(changetype<usize>(result.dataStart), bigEndian);
    return result;
  }

  /**
   * Creates and returns a clone (deep copy) of this `u256`.
   * @returns {u256} - A new `u256` instance with the same value.
   */
  clone(): u256 { return new u256(this.lo1, this.lo2, this.hi1, this.hi2); }

  /**
   * Converts this `u256` to a string in either decimal or hexadecimal format.
   * @param {i32} [radix=10] - The base (10 or 16).
   * @throws {Error} If `radix` is not 10 or 16.
   * @returns {string} - The string representation of the `u256`.
   */
  toString(radix: i32 = 10): string {
    assert(radix == 10 || radix == 16, 'radix argument must be between 10 or 16');
    if (this.isZero()) return '0';
    if (radix == 16) {
      let result = '';
      let shift: i32 = 252 - (u256.clz(this) & ~3);
      while (shift >= 0) {
        // @ts-ignore
        result += HEX_CHARS.charAt(<i32>((this >> shift).lo1 & 15));
        shift -= 4;
      }
      return result;
    }
    return u256toDecimalString(this);
  }

  /**
   * @private
   * Stores this `u256` into a buffer in little-endian format.
   * @param {usize} buffer - The buffer start pointer.
   */
  // --- INTERNAL HELPERS FOR DIV OPTIMIZATION ---
  // These allow in-place mutation to avoid allocations inside the div loop.

  /** In-place subtraction. Assumes this >= other. */
  @inline
  private subAssign(other: u256): void {
    let lo1 = sub64(this.lo1, other.lo1, 0);
    let b1 = __u256carrySub;
    let lo2 = sub64(this.lo2, other.lo2, b1);
    let b2 = __u256carrySub;
    let hi1 = sub64(this.hi1, other.hi1, b2);
    let b3 = __u256carrySub;
    let hi2 = sub64(this.hi2, other.hi2, b3);
    this.lo1 = lo1; this.lo2 = lo2; this.hi1 = hi1; this.hi2 = hi2;
  }

  /** In-place bit set: this |= (1 << bit) */
  @inline
  private orAssignBit(bit: i32): void {
    const bits = 64;
    const seg = (bit / bits) | 0;
    const shift = bit % bits;
    // FIX: Explicitly cast literal 1 to u64 to ensure proper 64-bit shifting
    const mask: u64 = <u64>1 << shift;
    if (seg == 0) this.lo1 |= mask;
    else if (seg == 1) this.lo2 |= mask;
    else if (seg == 2) this.hi1 |= mask;
    else if (seg == 3) this.hi2 |= mask;
  }

  /** In-place right shift by 1. */
  @inline
  private rshiftOne(): void {
    this.lo1 = (this.lo1 >>> 1) | (this.lo2 << 63);
    this.lo2 = (this.lo2 >>> 1) | (this.hi1 << 63);
    this.hi1 = (this.hi1 >>> 1) | (this.hi2 << 63);
    this.hi2 = (this.hi2 >>> 1);
  }

  @inline
  private toArrayBufferLE(buffer: usize): void {
    store<u64>(buffer, this.lo1, 0);
    store<u64>(buffer, this.lo2, 8);
    store<u64>(buffer, this.hi1, 16);
    store<u64>(buffer, this.hi2, 24);
  }

  /**
   * @private
   * Stores this `u256` into a buffer in big-endian format.
   * @param {usize} buffer - The buffer start pointer.
   */
  @inline
  private toArrayBufferBE(buffer: usize): void {
    store<u64>(buffer, bswap(this.hi2), 0);
    store<u64>(buffer, bswap(this.hi1), 8);
    store<u64>(buffer, bswap(this.lo2), 16);
    store<u64>(buffer, bswap(this.lo1), 24);
  }

  /**
   * @private
   * Stores this `u256` into a buffer in either little-endian or big-endian format.
   * @param {usize} buffer - The buffer start pointer.
   * @param {boolean} [bigEndian=false] - Use big-endian if true, else little-endian.
   */
  @inline
  private toArrayBuffer(buffer: usize, bigEndian: bool = false): void {
    if (bigEndian) this.toArrayBufferBE(buffer);
    else this.toArrayBufferLE(buffer);
  }
}
