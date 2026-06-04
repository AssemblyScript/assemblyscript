import { u128, u256 } from "./integer";

@lazy export var __divmod_quot_hi: u64 = 0;
@lazy export var __divmod_rem_lo: u64 = 0;
@lazy export var __divmod_rem_hi: u64 = 0;

// used for returning low and high part of __mulq64, __multi3 etc
@lazy export var __res128_hi: u64 = 0;

// used for returning 0 or 1
@lazy export var __carry: u64 = 0;
@lazy export var __u256carry: u64 = 0;
@lazy export var __u256carrySub: u64 = 0;

/**
 * Convert 128-bit unsigned integer to 64-bit float
 * @param  lo lower  64-bit part of unsigned 128-bit integer
 * @param  hi higher 64-bit part of unsigned 128-bit integer
 * @return    64-bit float result
 */
// @ts-ignore: decorator
@global
export function __floatuntidf(lo: u64, hi: u64): f64 {
  // __floatuntidf ported from LLVM sources
  if (!(lo | hi)) return 0.0;

  var v = new u128(lo, hi);
  var sd = 128 - __clz128(lo, hi);
  var e = sd - 1;

  if (sd > 53) {
    if (sd != 55) {
      if (sd == 54) {
        v = u128.shl(v, 1);
      } else {
        v = u128.or(
          u128.shr(v, sd - 55),
          u128.fromBool(u128.and(v, u128.shr(u128.Max, 128 + 55 - sd)).toBool())
        );
      }
    }

    v.lo |= (v.lo & 4) >> 2;
    v.preInc();

    v = u128.shr(v, 2);

    if (v.lo & (1 << 53)) {
      v = u128.shr(v, 1);
      ++e;
    }

  } else {
    v = u128.shl(v, 53 - sd);
  }

  var w: u64 = u128.shr(v, 32).lo & 0x000FFFFF;
  var u: u64 = <u64>(((e + 1023) << 20) | w) << 32;
  return reinterpret<f64>(u | (v.lo & 0xFFFFFFFF));
}


/**
 * Adds two 64-bit unsigned integers `a` and `b` along with a carry-in value.
 * Sets the global `__carry2` variable to indicate whether an overflow occurred.
 * @param {u64} a - The first 64-bit unsigned integer.
 * @param {u64} b - The second 64-bit unsigned integer.
 * @param {u64} carryIn - Carry-in value (0 or 1).
 * @returns {u64} - The 64-bit result of the addition.
 */
@inline
export function add64Local(a: u64, b: u64, carryIn: u64): u64 {
  let tmp = a + carryIn;
  let carry = tmp < a ? 1 : 0;
  let sum = tmp + b;
  carry += sum < tmp ? 1 : 0;
  __u256carry = carry;
  return sum;
}

/**
 * Subtracts the 64-bit unsigned integer `b` from `a` along with a borrow-in value.
 * Sets the global `__carry2` variable to indicate whether a borrow occurred.
 * @param {u64} a - The minuend (64-bit unsigned integer).
 * @param {u64} b - The subtrahend (64-bit unsigned integer).
 * @param {u64} borrowIn - Borrow-in value (0 or 1).
 * @returns {u64} - The 64-bit result of the subtraction.
 */
@inline
export function sub64(a: u64, b: u64, borrowIn: u64): u64 {
  let tmp = a - b;
  let borrow = tmp > a ? 1 : 0;
  let diff = tmp - borrowIn;
  borrow += diff > tmp ? 1 : 0;
  __u256carrySub = borrow;
  return diff;
}

// @ts-ignore: decorator
@global
export function __umulh64(a: u64, b: u64): u64 {
  var u = a & 0xFFFFFFFF;
  a >>= 32;
  var v = b & 0xFFFFFFFF;
  b >>= 32;

  var uv = u * v;
  uv = a * v + (uv >> 32);
  var w0 = (u * b) + (uv & 0xFFFFFFFF);
  return a * b + (uv >> 32) + (w0 >> 32);
}

// @ts-ignore: decorator
@global
export function __umulq64(a: u64, b: u64): u64 {
  var u = a & 0xFFFFFFFF;
  a >>= 32;
  var v = b & 0xFFFFFFFF;
  b >>= 32;

  var uv = u * v;
  var w0 = uv & 0xFFFFFFFF;
  uv = a * v + (uv >>> 32);
  var w1 = uv >>> 32;
  uv = u * b + (uv & 0xFFFFFFFF);

  __res128_hi = a * b + w1 + (uv >>> 32);
  return (uv << 32) | w0;
}

// __umul64Hop computes (hi * 2^64 + lo) = z + (x * y)
// @ts-ignore: decorator
@inline
export function __umul64Hop(z: u64, x: u64, y: u64): u64 {
  var lo = __umulq64(x, y);
  lo = __uadd64(lo, z);
  var hi = __res128_hi + __carry;
  __res128_hi = hi;
  return lo
}

// __umul64Step computes (hi * 2^64 + lo) = z + (x * y) + carry.
// @ts-ignore: decorator
@inline
export function __umul64Step(z: u64, x: u64, y: u64, carry: u64): u64 {
  var lo = __umulq64(x, y)
  lo = __uadd64(lo, carry);
  var hi = __uadd64(__res128_hi, 0, __carry);
  lo = __uadd64(lo, z);
  hi += __carry;
  __res128_hi = hi;
  return lo
}

// __uadd64 returns the sum with carry of x, y and carry: sum = x + y + carry.
// The carry input must be 0 or 1; otherwise the behavior is undefined.
// The carryOut output is guaranteed to be 0 or 1.
// @ts-ignore: decorator
@inline
export function __uadd64(x: u64, y: u64, carry: u64 = 0): u64 {
  var sum = x + y + carry
  // // The sum will overflow if both top bits are set (x & y) or if one of them
  // // is (x | y), and a carry from the lower place happened. If such a carry
  // // happens, the top bit will be 1 + 0 + 1 = 0 (& ~sum).
  __carry = ((x & y) | ((x | y) & ~sum)) >>> 63
  return sum;
}

// 64x64 => 128 bits
@inline
function mul64To128(x: u64, y: u64): u128 {
  let lo = __umulq64(x, y);  // sets __res128_hi
  let hi = __res128_hi;
  return new u128(lo, hi);
}

/**
 * A correct 256×256 -> 256 multiply (mod 2^256).
 * We do standard "schoolbook" multiplication for each 64-bit limb,
 * skipping products that shift above 255 bits (they vanish mod 2^256).
 */
@global
export function __mul256(
  ax0: u64, ax1: u64, ax2: u64, ax3: u64,
  bx0: u64, bx1: u64, bx2: u64, bx3: u64
): u256 {
  let result = new u256();
  let a = [ax0, ax1, ax2, ax3];
  let b = [bx0, bx1, bx2, bx3];

  // For each (i,j), partial = a[i]*b[j], shift = 64*(i+j).
  // If shift >= 256, that partial is 0 mod 2^256.
  // Otherwise shift partial, add to result.
  for (let i = 0; i < 4; i++) {
    for (let j = 0; j < 4; j++) {
      let shift = (i + j) << 6; // 64*(i+j)
      if (shift >= 256) continue;
      let p128 = mul64To128(a[i], b[j]); // 128-bit partial product
      // convert to u256
      let part = new u256(p128.lo, p128.hi, 0, 0);
      // shift left by 'shift' bits
      if (shift != 0) {
        part = u256.shl(part, shift);
      }
      // add to accumulator
      result = result + part;
    }
  }

  return result;
}

// @ts-ignore: decorator
@global
export function __multi3(al: u64, ah: u64, bl: u64, bh: u64): u64 {
  var u = al, v = bl;
  var w: u64, k: u64;

  var u1 = u & 0xFFFFFFFF;
  u >>= 32;
  var v1 = v & 0xFFFFFFFF;
  v >>= 32;
  var t = u1 * v1;
  var w1 = t & 0xFFFFFFFF;

  t = u * v1 + (t >> 32);
  k = t & 0xFFFFFFFF;
  w = t >> 32;
  t = u1 * v + k;

  var lo = (t << 32) | w1;
  var hi = u * v + w;
  hi += ah * bl;
  hi += al * bh;
  hi += t >> 32;

  __res128_hi = hi;
  return lo;
}

// @ts-ignore: decorator
@global
export function __floatuntfdi(value: f64): u64 {
  var u = reinterpret<u64>(value);

  // if (value < -1.7014118346046e38) { // -(2^127-1)
  if (value < reinterpret<f64>(0xC7F0000000000000)) { // -(2^128-1)
    // __float_u128_hi = <u64>-1; // for i128
    __res128_hi = 0;
    // overflow negative
    return 0;
    // } else if (value < -9.2233720368547e18) { // -2^63-1 // for i128
  } else if (value < reinterpret<f64>(0xC3F0000000000000)) { // // -(2^64-1)
    let lo: u64, hi: u64, m: u64;

    m = (u & 0x000FFFFFFFFFFFFF) | (1 << 52);
    u = (u & 0x7FFFFFFFFFFFFFFF) >> 52;

    u -= 1075;
    if (u > 64) {
      lo = 0;
      hi = m << (u - 64);
    } else {
      lo = m << u;
      hi = m >> (64 - u);
    }
    // Convert to 2's complement for correct negative representation
    lo = ~lo;
    hi = ~hi;
    lo += 1;
    if (lo == 0) hi += 1; // carry to high part

    __res128_hi = hi;
    return lo;
    // } else if (value < 9.2233720368547e18) { // 2^63-1 // for i128
  } else if (value < reinterpret<f64>(0x43F0000000000000)) { // 2^64-1
    // __float_u128_hi = (value < 0) ? -1 : 0; // for int
    __res128_hi = 0;
    // fit in a u64
    return <u64>value;
    // } else if (value < 1.7014118346046e38) {
  } else if (value < reinterpret<f64>(0x47F0000000000000)) { // 2^128-1
    let lo: u64, hi: u64, m: u64;

    m = (u & 0x000FFFFFFFFFFFFF) | (1 << 52);
    u = (u & 0x7FFFFFFFFFFFFFFF) >> 52;
    u -= 1075;
    if (u > 64) {
      lo = 0;
      hi = m << (u - 64);
    } else {
      lo = m << u;
      hi = m >> (64 - u);
    }
    __res128_hi = hi;
    return lo;
  } else {
    // overflow positive
    __res128_hi = <u64>-1; // 0x7FFFFFFFFFFFFFFF for i128
    return <u64>-1;
  }
}

/**
 * Count leading zeros in a 64-bit unsigned integer `x`, returning i32 in [0..64].
 * If x == 0, returns 64.
 */
function clz64(x: u64): i32 {
  if (x == 0) return 64;

  let n: i32 = 0;
  // Check high half [ bits 63..32 ]
  if ((x & 0xFFFFFFFF00000000) == 0) {
    n += 32;
    x <<= 32; // shift left so next checks are for the upper bits
  }
  // Check bits [63..48]
  if ((x & 0xFFFF000000000000) == 0) {
    n += 16;
    x <<= 16;
  }
  // Check bits [63..56]
  if ((x & 0xFF00000000000000) == 0) {
    n += 8;
    x <<= 8;
  }
  // Check bits [63..60]
  if ((x & 0xF000000000000000) == 0) {
    n += 4;
    x <<= 4;
  }
  // Check bits [63..62]
  if ((x & 0xC000000000000000) == 0) {
    n += 2;
    x <<= 2;
  }
  // Check bit [63]
  if ((x & 0x8000000000000000) == 0) {
    n += 1;
  }
  return n;
}

/**
 * Count trailing zeros in a 64-bit unsigned integer `x`, returning i32 in [0..64].
 * If x == 0, returns 64.
 */
function ctz64(x: u64): i32 {
  if (x == 0) return 64;

  let n: i32 = 0;
  // Check low half [bits 31..0]
  if ((x & 0xFFFFFFFF) == 0) {
    n += 32;
    x >>= 32;
  }
  // Check bits [15..0]
  if ((x & 0xFFFF) == 0) {
    n += 16;
    x >>= 16;
  }
  // Check bits [7..0]
  if ((x & 0xFF) == 0) {
    n += 8;
    x >>= 8;
  }
  // Check bits [3..0]
  if ((x & 0xF) == 0) {
    n += 4;
    x >>= 4;
  }
  // Check bits [1..0]
  if ((x & 0x3) == 0) {
    n += 2;
    x >>= 2;
  }
  // Check bit [0]
  if ((x & 0x1) == 0) {
    n += 1;
  }
  return n;
}

/**
 * Count leading zeros in a 128-bit integer [hi:lo], returning i32 in [0..128].
 * If both hi and lo are 0, returns 128.
 *
 * hi is signed in i128, but we interpret it as unsigned here.
 */
// @ts-ignore: decorator
@global @inline
export function __clz128(lo: u64, hi: i64): i32 {
  let h: u64 = <u64>hi;  // reinterpret hi as unsigned
  if (h == 0) {
    // If hi is 0, the leading zeros are "64 plus however many are in lo"
    return 64 + <i32>i64.clz(lo);
  } else {
    // The top 64 bits are set => just measure their leading zeros
    return <i32>i64.clz(h);
  }
}

/**
 * Count trailing zeros in a 128-bit integer [hi:lo], returning i32 in [0..128].
 * If both hi and lo are 0, returns 128.
 *
 * For i128 we typically treat hi as signed, but ctz is purely bitwise, so we
 * can pass it as u64 as well.
 */
// @ts-ignore: decorator
@global @inline
export function __ctz128(lo: u64, hi: u64): i32 {
  if (lo == 0) {
    // Otherwise, ctz is 64 plus ctz(hi)
    return 64 + <i32>i64.ctz(hi);
  } else {
    // If the lower 64 bits are non-zero, measure ctz(lo)
    return <i32>i64.ctz(lo);
  }
}

// @ts-ignore: decorator
@global
export function __udivmod128(alo: u64, ahi: u64, blo: u64, bhi: u64): u64 {
  var bzn = __clz128(blo, bhi); // N

  // b == 0
  if (bzn == 128) {
    throw new RangeError("Division by zero"); // division by zero
  }

  // var azn = __clz128(alo, ahi); // M
  var btz = __ctz128(blo, bhi); // N

  // a == 0
  if (!(alo | ahi)) {
    __divmod_quot_hi = 0;
    __divmod_rem_lo = 0;
    __divmod_rem_hi = 0;
    return 0;
  }

  // a / 1
  if (bzn == 127) {
    __divmod_quot_hi = ahi;
    __divmod_rem_lo = 0;
    __divmod_rem_hi = 0;
    return alo;
  }

  // a == b
  if (alo == blo && ahi == bhi) {
    __divmod_quot_hi = 0;
    __divmod_rem_lo = 0;
    __divmod_rem_hi = 0;
    return 1;
  }

  if (!(ahi | bhi)) {
    __divmod_quot_hi = 0;
    __divmod_rem_hi = 0;
    // if `b.lo` is power of two
    if (!(blo & (blo - 1))) {
      __divmod_rem_lo = alo & (blo - 1);
      return alo >> btz;
    } else {
      let dlo = alo / blo;
      __divmod_rem_lo = alo - dlo * blo;
      return dlo;
    }
  }
  return __udivmod128core(alo, ahi, blo, bhi);
}

function __udivmod128core(alo: u64, ahi: u64, blo: u64, bhi: u64): u64 {
  var r = new u128(alo, ahi);
  var d = new u128(blo, bhi);
  var q = new u128(0, 0);

  // Standard division by shifting
  var leadingZeros = __clz128(blo, bhi) - __clz128(alo, ahi);

  if (leadingZeros < 0) {
    __divmod_quot_hi = 0;
    __divmod_rem_lo = alo;
    __divmod_rem_hi = ahi;
    return 0;
  }

  var dShift = u128.shl(d, leadingZeros);

  for (let i = 0; i <= leadingZeros; i++) {
    q = u128.shl(q, 1);
    if (r >= dShift) {
      r -= dShift;
      q = u128.add(q, u128.One);
    }
    dShift = u128.shr(dShift, 1);
  }

  __divmod_quot_hi = q.hi;
  __divmod_rem_lo = r.lo;
  __divmod_rem_hi = r.hi;
  return q.lo;
}

// @ts-ignore: decorator
@global
export function __udivmod128_10(lo: u64, hi: u64): u64 {
  if (hi == 0) {
    __divmod_quot_hi = 0;
    let q = lo / 10;
    __divmod_rem_lo = lo - (q * 10);
    __divmod_rem_hi = 0;
    return q;
  }

  // High part division
  let q_hi = hi / 10;
  let r_hi = hi - (q_hi * 10);

  // Low part chunking to avoid 128-bit math
  // r_hi becomes the high bits for the next division
  let lo_hi = lo >>> 32;
  let lo_lo = lo & 0xFFFFFFFF;

  // Divide upper half of lo (plus carry from hi)
  let t1 = (r_hi << 32) | lo_hi;
  let q1 = t1 / 10;
  let r1 = t1 - (q1 * 10);

  // Divide lower half of lo (plus carry from above)
  let t2 = (r1 << 32) | lo_lo;
  let q2 = t2 / 10;
  let r2 = t2 - (q2 * 10);

  // Reassemble quotient
  // q1 is known to fit in 32 bits because max t1 < 10 * 2^32
  let q_lo = (q1 << 32) | q2;

  __divmod_quot_hi = q_hi;
  __divmod_rem_lo = r2;
  __divmod_rem_hi = 0;

  return q_lo;
}
