/*

 To remain compatible with TSC / compiling to JS, we have to emulate I64s in a
 portable way. The following is based on long.js with the main difference being
 that instances are mutable and operations affect 'this'. In our scenario,
 that's useful because it's mostly used for constant evaluation and we are
 exclusively interested in the result (saves a heap of allocations).

*/

// TODO: div/mod

const I64_MIN_LO: i32 = 0;
const I64_MIN_HI: i32 = 0x80000000 | 0;

export class I64 {

  lo: i32;
  hi: i32;

  static fromI32(n: i32): I64 {
    return new I64(n, n < 0 ? -1 : 0);
  }

  constructor(lo: i32 = 0, hi: i32 = 0) {
    this.lo = lo;
    this.hi = hi;
  }

  get isZero(): bool {
    return this.lo == 0 && this.hi == 0;
  }

  get isOne(): bool {
    return this.lo == 1 && this.hi == 0;
  }

  get isPositive(): bool {
    return this.hi >= 0;
  }

  get isNegative(): bool {
    return this.hi < 0;
  }

  get isOdd(): bool {
    return (this.lo & 1) == 1;
  }

  get isEven(): bool {
    return (this.lo & 1) == 0;
  }

  get fitsInI32(): bool {
    return this.hi == 0 || (this.hi == -1 && this.lo < 0);
  }

  toI32(): i32 {
    return this.lo;
  }

  eq(other: I64): bool {
    return this.eq32(other.lo, other.hi);
  }

  eq32(lo: i32, hi: i32 = 0): bool {
    return this.lo == lo && this.hi == hi;
  }

  ne(other: I64): bool {
    return this.ne32(other.lo, other.hi);
  }

  ne32(lo: i32, hi: i32 = 0): bool {
    return this.lo != lo || this.hi != hi;
  }

  neg(): void {
    this.lo = ~this.lo;
    this.hi = ~this.hi;
    this.add32(1, 0);
  }

  add(other: I64): void {
    this.add32(other.lo, other.hi);
  }

  add32(lo: i32, hi: i32 = 0): void {
    i64_add_internal(this.lo, this.hi, lo, hi);
    this.lo = i64_lo;
    this.hi = i64_hi;
  }

  sub(other: I64): void {
    this.sub32(other.lo, other.hi);
  }

  sub32(lo: i32, hi: i32 = 0): void {
    i64_add_internal(~lo, ~hi, 1, 0);
    this.add32(i64_lo, i64_hi);
  }

  comp(other: I64): i32 {
    return this.comp32(other.lo, other.hi);
  }

  comp32(lo: i32, hi: i32 = 0): i32 {
    if (this.lo == lo && this.hi == hi)
      return 0;
    if (this.hi < 0 && hi >= 0)
      return -1;
    if (this.hi >= 0 && hi < 0)
      return 1;
    i64_add_internal(~lo, ~hi, 1, 0);
    i64_add_internal(this.lo, this.hi, i64_lo, i64_hi);
    return i64_hi < 0 ? -1 : 1;
  }

  lt(other: I64): bool {
    return this.lt32(other.lo, other.hi);
  }

  lt32(lo: i32, hi: i32 = 0): bool {
    return this.comp32(lo, hi) < 0;
  }

  lte(other: I64): bool {
    return this.lte32(other.lo, other.hi);
  }

  lte32(lo: i32, hi: i32 = 0): bool {
    return this.comp32(lo, hi) <= 0;
  }

  gt(other: I64): bool {
    return this.gt32(other.lo, other.hi);
  }

  gt32(lo: i32, hi: i32 = 0): bool {
    return this.comp32(lo, hi) > 0;
  }

  gte(other: I64): bool {
    return this.gte32(other.lo, other.hi);
  }

  gte32(lo: i32, hi: i32 = 0): bool {
    return this.comp32(lo, hi) >= 0;
  }

  mul(other: I64): void {
    this.mul32(other.lo, other.hi);
  }

  mul32(lo: i32, hi: i32 = 0): void {
    if (this.lo == 0 && this.hi == 0)
      return;

    if (lo == 0 && hi == 0) {
      this.lo = 0;
      this.hi = 0;
      return;
    }

    // this == MIN
    if (this.lo == I64_MIN_LO && this.hi == I64_MIN_HI) {
      this.lo = 0; // == MIN_LO
      this.hi = lo & 1 ? I64_MIN_HI : 0; // other.isOdd ? this = MIN : this = ZERO
      return;
    }

    // other == MIN
    if (lo == I64_MIN_LO && hi == I64_MIN_HI) {
      this.hi = this.lo & 1 ? I64_MIN_HI : 0; // this.isOdd ? this = MIN : this = ZERO
      this.lo = 0; // == MIN_LO
      return;
    }

    if (this.hi < 0) {
      this.neg();

      // both negative: negate both and multiply
      if (hi < 0) {
        i64_add_internal(~lo, ~hi, 1, 0);
        i64_mul_internal(this.lo, this.hi, i64_lo, i64_hi);
        this.lo = i64_lo;
        this.hi = i64_hi;

      // this negative: negate this, multiply and negate result
      } else {
        i64_mul_internal(this.lo, this.hi, lo, hi);
        this.lo = i64_lo;
        this.hi = i64_hi;
        this.neg();
      }
      return;

    // other negative: negate other, multiply and negate result
    } else if (hi < 0) {
      i64_add_internal(~lo, ~hi, 1, 0);
      i64_mul_internal(this.lo, this.hi, i64_lo, i64_hi);
      this.lo = i64_lo;
      this.hi = i64_hi;
      this.neg();
      return;
    }

    // both positive
    i64_mul_internal(this.lo, this.hi, lo, hi);
    this.lo = i64_lo;
    this.hi = i64_hi;
  }

  div(other: I64): void {
    this.div32(other.lo, other.hi);
  }

  div32(lo: i32, hi: i32 = 0): void {
    // other == 0
    if (lo == 0 && hi == 0)
      throw new Error("division by zero");

    // this == 0
    if (this.lo == 0 && this.hi == 0)
      return;

    // this == MIN
    if (this.lo == I64_MIN_LO && this.hi == I64_MIN_HI) {

      // other == 1 or -1
      if (lo == 1 && hi == 0 || lo == -1 && hi == -1) // -MIN == MIN
        return;

      // both == MIN
      if (lo == I64_MIN_LO && hi == I64_MIN_HI) {
        this.lo = 1;
        this.hi = 0;
        return;
      }

      // |other| >= 2, so |this/other| < |MIN_VALUE|
      let tempLo: i32 = this.lo;
      let tempHi: i32 = this.hi;
      this.shr32(1, 0);
      this.div32(lo, hi);
      this.shl32(1, 0);
      if (this.lo == 0 && this.hi == 0) {
        if (hi < 0) {
          this.lo = 1;
          this.hi = 0;
        } else {
          this.lo = -1;
          this.hi = -1;
        }
        return;
      }
      i64_mul_internal(lo, hi, this.lo, this.hi);
      this.lo = tempLo;
      this.hi = tempHi;
      tempLo = i64_lo;
      tempHi = i64_hi;
      this.div32(lo, hi);
      this.sub32(i64_lo, i64_hi);
      i64_add_internal(tempLo, tempHi, this.lo, this.hi);
      this.lo = i64_lo;
      this.hi = i64_hi;
      return;
    }

    if (this.hi < 0) {
      this.neg();

      // both negative: negate both and divide
      if (hi < 0) {
        i64_add_internal(~lo, ~hi, 1, 0);
        i64_div_internal(this.lo, this.hi, i64_lo, i64_hi);
        this.lo = i64_lo;
        this.hi = i64_hi;

      // this negative: negate this, divide and negate result
      } else {
        i64_div_internal(this.lo, this.hi, lo, hi);
        this.lo = i64_lo;
        this.hi = i64_hi;
        this.neg();
      }
      return;

    // other negative: negate other, divide and negate result
    } else if (hi < 0) {
      i64_add_internal(~lo, ~hi, 1, 0);
      i64_div_internal(this.lo, this.hi, i64_lo, i64_hi);
      this.lo = i64_lo;
      this.hi = i64_hi;
      this.neg();
      return;
    }

    // both positive
    i64_div_internal(this.lo, this.hi, lo, hi);
    this.lo = i64_lo;
    this.hi = i64_hi;
  }

  mod(other: I64): void {
    this.mod32(other.lo, other.hi);
  }

  mod32(lo: i32, hi: i32 = 0): void {
    const thisLo: i32 = this.lo;
    const thisHi: i32 = this.hi;
    this.div32(lo, hi);
    this.mul32(lo, hi);
    const resLo: i32 = this.lo;
    const resHi: i32 = this.hi;
    this.lo = thisLo;
    this.hi = thisHi;
    this.sub32(resLo, resHi);
  }

  not(): void {
    this.lo = ~this.lo;
    this.hi = ~this.hi;
  }

  and(other: I64): void {
    this.and32(other.lo, other.hi);
  }

  and32(lo: i32, hi: i32 = 0): void {
    this.lo &= lo;
    this.hi &= hi;
  }

  or(other: I64): void {
    this.or32(other.lo, other.hi);
  }

  or32(lo: i32, hi: i32 = 0): void {
    this.lo |= lo;
    this.hi |= hi;
  }

  xor(other: I64): void {
    this.xor32(other.lo, other.hi);
  }

  xor32(lo: i32, hi: i32 = 0): void {
    this.lo ^= lo;
    this.hi ^= hi;
  }

  shl(other: I64): void {
    this.shl32(other.lo, other.hi);
  }

  shl32(lo: i32, hi: i32 = 0): void {
    if ((lo &= 63) == 0)
      return;
    if (lo < 32) {
      this.hi = (this.hi << lo) | (this.lo >>> (32 - lo));
      this.lo = this.lo << lo;
    } else {
      this.hi = this.lo << (lo - 32);
      this.lo = 0;
    }
  }

  shr(other: I64): void {
    this.shr32(other.lo, other.hi);
  }

  shr32(lo: i32, hi: i32 = 0): void {
    if ((lo &= 63) == 0)
      return;
    if (lo < 32) {
      this.lo = (this.lo >>> lo) | (this.hi << (32 - lo));
      this.hi = this.hi >> lo;
    } else {
      this.lo = this.hi >> (lo - 32);
      this.hi = this.hi >= 0 ? 0 : -1;
    }
  }

  shru(other: I64): void {
    this.shru32(other.lo, other.hi);
  }

  shru32(lo: i32, hi: i32 = 0): void {
    if ((lo &= 63) == 0)
      return;
    if (lo < 32) {
      this.lo = (this.lo >>> lo) | (this.hi << (32 - lo));
      this.hi = (this.hi >>> lo) | 0;
    } else if (lo == 32) {
      this.lo = this.hi;
      this.hi = 0;
    } else {
      this.lo = (this.hi >>> (lo - 32)) | 0;
      this.hi = 0;
    }
  }

  clone(): I64 {
    return new I64(this.lo, this.hi);
  }

  toString(): string {
    let negative: bool = false;
    if (this.hi < 0) {
      i64_add_internal(~this.lo, ~this.hi, 1, 0);
      negative = true;
    } else {
      i64_lo = this.lo;
      i64_hi = this.hi;
    }

    if (i64_hi) {
      let lo: string = (i64_lo as u32 >>> 0).toString(16);
      while (lo.length < 8)
        lo = "0" + lo;
      return (negative ? "-0x" : "0x") + (i64_hi as u32 >>> 0).toString(16) + lo;
    }
    return negative ? "-" + i64_lo.toString() : i64_lo.toString();
  }
}

let i64_lo: i32 = 0;
let i64_hi: i32 = 0;

function i64_add_internal(lo: i32, hi: i32, otherLo: i32, otherHi: i32): void {
  let a48: i32 = hi >>> 16;
  let a32: i32 = hi & 0xFFFF;
  let a16: i32 = lo >>> 16;
  let a00: i32 = lo & 0xFFFF;

  let b48: i32 = otherHi >>> 16;
  let b32: i32 = otherHi & 0xFFFF;
  let b16: i32 = otherLo >>> 16;
  let b00: i32 = otherLo & 0xFFFF;

  let c48: i32 = 0, c32: i32 = 0, c16: i32 = 0, c00: i32 = 0;
  c00 += a00 + b00;
  c16 += c00 >>> 16;
  c00 &= 0xFFFF;
  c16 += a16 + b16;
  c32 += c16 >>> 16;
  c16 &= 0xFFFF;
  c32 += a32 + b32;
  c48 += c32 >>> 16;
  c32 &= 0xFFFF;
  c48 += a48 + b48;
  c48 &= 0xFFFF;

  i64_lo = (c16 << 16) | c00;
  i64_hi = (c48 << 16) | c32;
}

function i64_mul_internal(lo: i32, hi: i32, otherLo: i32, otherHi: i32): void {
  let a48: i32 = hi >>> 16;
  let a32: i32 = hi & 0xFFFF;
  let a16: i32 = lo >>> 16;
  let a00: i32 = lo & 0xFFFF;

  let b48: i32 = otherHi >>> 16;
  let b32: i32 = otherHi & 0xFFFF;
  let b16: i32 = otherLo >>> 16;
  let b00: i32 = otherLo & 0xFFFF;

  var c48 = 0, c32 = 0, c16 = 0, c00 = 0;
  c00 += a00 * b00;
  c16 += c00 >>> 16;
  c00 &= 0xFFFF;
  c16 += a16 * b00;
  c32 += c16 >>> 16;
  c16 &= 0xFFFF;
  c16 += a00 * b16;
  c32 += c16 >>> 16;
  c16 &= 0xFFFF;
  c32 += a32 * b00;
  c48 += c32 >>> 16;
  c32 &= 0xFFFF;
  c32 += a16 * b16;
  c48 += c32 >>> 16;
  c32 &= 0xFFFF;
  c32 += a00 * b32;
  c48 += c32 >>> 16;
  c32 &= 0xFFFF;
  c48 += a48 * b00 + a32 * b16 + a16 * b32 + a00 * b48;
  c48 &= 0xFFFF;

  i64_lo = (c16 << 16) | c00;
  i64_hi = (c48 << 16) | c32;
}

function i64_div_internal(lo: i32, hi: i32, otherLo: i32, otherHi: i32): void {
  throw new Error("not implemented");
}

export class U64 extends I64 {

  static fromI32(n: i32): U64 {
    return new U64(n, 0);
  }

  get isPositive(): bool {
    return true;
  }

  get isNegative(): bool {
    return false;
  }

  comp32(lo: i32, hi: i32): i32 {
    // uses both a cast and a js-like shift for portability
    return ((hi as u32 >>> 0) > (this.hi as u32 >>> 0)) || (hi == this.hi && (lo as u32 >>> 0) > (this.lo as u32 >>> 0)) ? -1 : 1;
  }

  neg(): void {
    this.lo = ~this.lo;
    this.hi = ~this.hi;
    this.add32(1, 0);
  }

  clone(): U64 {
    return new U64(this.lo, this.hi);
  }
}
