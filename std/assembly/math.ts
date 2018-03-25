export declare namespace JSMath {

  export const E: f64;
  export const LN2: f64;
  export const LN10: f64;
  export const LOG2E: f64;
  export const LOG10E: f64;
  export const PI: f64;
  export const SQRT1_2: f64;
  export const SQRT2: f64;

  export function abs(x: f64): f64;
  export function acos(x: f64): f64;
  export function acosh(x: f64): f64;
  export function asin(x: f64): f64;
  export function asinh(x: f64): f64;
  export function atan(x: f64): f64;
  export function atan2(y: f64, x: f64): f64;
  export function atanh(x: f64): f64;
  export function cbrt(x: f64): f64;
  export function ceil(x: f64): f64;
  export function clz32(x: f64): i32;
  export function cos(x: f64): f64;
  export function cosh(x: f64): f64;
  export function exp(x: f64): f64;
  export function expm1(x: f64): f64;
  export function floor(x: f64): f64;
  export function fround(x: f64): f32;
  export function hypot(value1: f64, value2: f64): f64; // hypot(...values: f64[]): f64;
  export function imul(a: f64, b: f64): i32;
  export function log(x: f64): f64;
  export function log10(x: f64): f64;
  export function log1p(x: f64): f64;
  export function log2(x: f64): f64;
  export function max(value1: f64, value2: f64): f64; // max(...values: f64[]): f64;
  export function min(value1: f64, value2: f64): f64; // min(...values: f64[]): f64;
  export function pow(base: f64, exponent: f64): f64;
  export function random(): f64;
  export function round(x: f64): f64;
  export function sign(x: f64): f64;
  export function sin(x: f64): f64;
  export function sinh(x: f64): f64;
  export function sqrt(x: f64): f64;
  export function tan(x: f64): f64;
  export function tanh(x: f64): f64;
  export function trunc(x: f64): f64;
}

import {
  abs as builtin_abs,
  ceil as builtin_ceil,
  clz as builtin_clz,
  floor as builtin_floor,
  max as builtin_max,
  min as builtin_min,
  nearest as builtin_nearest,
  sqrt as builtin_sqrt,
  trunc as builtin_trunc
} from "./builtins";

// Math/Mathf.log/exp
//   Copyright (C) 1993 by Sun Microsystems, Inc. All rights reserved.
//   Developed at SunPro, a Sun Microsystems, Inc. business.
//   Permission to use, copy, modify, and distribute this
//   software is freely granted, provided that this notice
//   is preserved.

export namespace Math {

  export const E = 2.7182818284590452354;
  export const LN2 = 0.69314718055994530942;
  export const LN10 = 2.30258509299404568402;
  export const LOG2E = 1.4426950408889634074;
  export const LOG10E = 0.43429448190325182765;
  export const PI = 3.14159265358979323846;
  export const SQRT1_2 = 0.70710678118654752440;
  export const SQRT2 = 1.41421356237309504880;

  export function abs(x: f64): f64 {
    return builtin_abs(x);
  }

  export function ceil(x: f64): f64 {
    return builtin_ceil(x);
  }

  export function clz32(x: f64): i32 {
    return builtin_clz(<i32>x);
  }

  export function exp(x: f64): f64 {
    // based on musl's implementation of exp:
    const
      half = <f64[]>[0.5,-0.5],
      ln2hi = 6.93147180369123816490e-01,  // 0x3fe62e42, 0xfee00000
      ln2lo = 1.90821492927058770002e-10,  // 0x3dea39ef, 0x35793c76
      invln2 = 1.44269504088896338700e+00, // 0x3ff71547, 0x652b82fe
      P1 =  1.66666666666666019037e-01,    // 0x3FC55555, 0x5555553E
      P2 = -2.77777777770155933842e-03,    // 0xBF66C16C, 0x16BEBD93
      P3 =  6.61375632143793436117e-05,    // 0x3F11566A, 0xAF25DE2C
      P4 = -1.65339022054652515390e-06,    // 0xBEBBBD41, 0xC5D26BF1
      P5 =  4.13813679705723846039e-08,    // 0x3E663769, 0x72BEA4D0
      Ox1p1023 = 8.98846567431157954e+307;

    var hx = <u32>(reinterpret<u64>(x) >> 32);
    var sign_ = hx >> 31;
    hx &= 0x7fffffff; // high word of |x|

    // special cases
    if (hx >= 0x4086232b) {  // if |x| >= 708.39...
      if (isNaN(x)) return x;
      if (x > 709.782712893383973096) {
        // overflow if x!=inf
        x *= Ox1p1023;
        return x;
      }
      if (x < -708.39641853226410622) {
        // underflow if x!=-inf
        if (x < -745.13321910194110842) return 0;
      }
    }

    // argument reduction
    var hi: f64, lo: f64;
    var k: i32;
    if (hx > 0x3fd62e42) {  // if |x| > 0.5 ln2
      if (hx >= 0x3ff0a2b2) { // if |x| >= 1.5 ln2
        k = <i32>(invln2 * x + half[sign_]);
      } else {
        k = 1 - sign_ - sign_;
      }
      hi = x - k * ln2hi;  // k * ln2hi is exact here
      lo = k * ln2lo;
      x = hi - lo;
    } else if (hx > 0x3e300000)  {  // if |x| > 2**-28
      k = 0;
      hi = x;
      lo = 0;
    } else {
      // inexact if x != 0
      return 1 + x;
    }

    // x is now in primary range
    var xx = x * x;
    var c = x - xx * (P1 + xx * (P2 + xx * (P3 + xx * (P4 + xx * P5))));
    var y: f64 = 1 + (x * c / (2 - c) - lo + hi);
    if (k == 0) return y;
    return scalbn(y, k);
  }

  export function floor(x: f64): f64 {
    return builtin_floor(x);
  }

  export function fround(x: f64): f32 {
    return <f32>x;
  }

  export function imul(x: f64, y: f64): i32 {
    return <i32>x * <i32>y;
  }

  export function log(x: f64): f64 { // based on musl's implementation of log
    const
      ln2_hi = 6.93147180369123816490e-01, // 3fe62e42 fee00000
      ln2_lo = 1.90821492927058770002e-10, // 3dea39ef 35793c76
      Lg1 = 6.666666666666735130e-01,      // 3FE55555 55555593
      Lg2 = 3.999999999940941908e-01,      // 3FD99999 9997FA04
      Lg3 = 2.857142874366239149e-01,      // 3FD24924 94229359
      Lg4 = 2.222219843214978396e-01,      // 3FCC71C5 1D8E78AF
      Lg5 = 1.818357216161805012e-01,      // 3FC74664 96CB03DE
      Lg6 = 1.531383769920937332e-01,      // 3FC39A09 D078C69F
      Lg7 = 1.479819860511658591e-01,      // 3FC2F112 DF3E5244
      Ox1p54 = 18014398509481984.0;

    var Ux = reinterpret<u64>(x);
    var hx = <u32>(Ux >> 32);
    var k = 0;
    if (hx < 0x00100000 || <bool>(hx >> 31)) {
      if (Ux << 1 == 0) return -1 / (x * x);  // log(+-0)=-inf
      if (hx >> 31)     return (x - x) / 0.0; // log(-#) = NaN
      // subnormal number, scale x up
      k -= 54;
      x *= Ox1p54;
      Ux = reinterpret<u64>(x);
      hx = <u32>(Ux >> 32);
    } else if (hx >= 0x7ff00000) return x;
      else if (hx == 0x3ff00000 && Ux << 32 == 0) return 0;

    // reduce x into [sqrt(2)/2, sqrt(2)]
    hx += 0x3ff00000 - 0x3fe6a09e;
    k += (<i32>hx >> 20) - 0x3ff;
    hx = (hx & 0x000fffff) + 0x3fe6a09e;
    Ux = <u64>hx << 32 | (Ux & 0xffffffff);
    x = reinterpret<f64>(Ux);

    var f = x - 1.0;
    var hfsq = 0.5 * f * f;
    var s = f / (2.0 + f);
    var z = s * s;
    var w = z * z;
    var t1 = w * (Lg2 + w * (Lg4 + w * Lg6));
    var t2 = z * (Lg1 + w * (Lg3 + w * (Lg5 + w * Lg7)));
    var R = t2 + t1;
    var dk = k;
    return s * (hfsq + R) + dk * ln2_lo - hfsq + f + dk * ln2_hi;
  }

  // export function log2(x: f64): f64 {
  //   return log(x) / LN2;
  // }

  // export function log10(x: f64): f64 {
  //   return log(x) / LN10;
  // }

  export function max(value1: f64, value2: f64): f64 {
    return builtin_max(value1, value2);
  }

  export function min(value1: f64, value2: f64): f64 {
    return builtin_min(value1, value2);
  }

  export function round(x: f64): f64 {
    return builtin_nearest(x);
  }

  export function sign(x: f64): f64 {
    return x > 0 ? 1 : x < 0 ? -1 : x;
  }

  export function sqrt(x: f64): f64 {
    return builtin_sqrt(x);
  }

  export function trunc(x: f64): f64 {
    return builtin_trunc(x);
  }
}

export namespace Mathf {

  export const E = <f32>Math.E;
  export const LN2 = <f32>Math.LN2;
  export const LN10 = <f32>Math.LN10;
  export const LOG2E = <f32>Math.LOG2E;
  export const LOG10E = <f32>Math.LOG10E;
  export const PI = <f32>Math.PI;
  export const SQRT1_2 = <f32>Math.SQRT1_2;
  export const SQRT2 = <f32>Math.SQRT2;

  export function abs(x: f32): f32 {
    return builtin_abs(x);
  }

  export function ceil(x: f32): f32 {
    return builtin_ceil(x);
  }

  export function clz32(x: f32): i32 {
    return builtin_clz(<i32>x);
  }

  export function floor(x: f32): f32 {
    return builtin_floor(x);
  }

  export function exp(x: f32): f32 { // based on musl's implementation of expf
    const
      half = <f32[]>[0.5,-0.5],
      ln2hi = <f32>6.9314575195e-1,  // 0x3f317200
      ln2lo = <f32>1.4286067653e-6,  // 0x35bfbe8e
      invln2 = <f32>1.4426950216e+0, // 0x3fb8aa3b
      // Domain [-0.34568, 0.34568], range ~[-4.278e-9, 4.447e-9]:
      // |x*(exp(x)+1)/(exp(x)-1) - p(x)| < 2**-27.74
      P1 = <f32>1.6666625440e-1,     // 0xaaaa8f.0p-26
      P2 = <f32>-2.7667332906e-3,    // -0xb55215.0p-32
      Ox1p127f = <f32>1.701411835e+38;

    var hx = reinterpret<u32>(x);
    var sign_ = <i32>(hx >> 31); // sign bit of x
    hx &= 0x7fffffff;            // high word of |x|

    // special cases
    if (hx >= 0x42aeac50) {  // if |x| >= -87.33655f or NaN
      if (hx >= 0x42b17218 && !sign_) { // x >= 88.722839f
        // overflow
        x *= Ox1p127f;
        return x;
      }
      if (sign_) {
        // underflow
        if (hx >= 0x42cff1b5) { // x <= -103.972084f */
          return 0;
        }
      }
    }

    // argument reduction
    var hi: f32, lo: f32;
    var k: i32;
    if (hx > 0x3eb17218) { // if |x| > 0.5 ln2
      if (hx > 0x3f851592) { // if |x| > 1.5 ln2
        k = <i32>(invln2 * x + half[sign_]);
      } else {
        k = 1 - sign_ - sign_;
      }
      hi = x - <f32>k * ln2hi;  // k * ln2hi is exact here
      lo = <f32>k * ln2lo;
      x = hi - lo;
    } else if (hx > 0x39000000) {  // |x| > 2**-14
      k = 0;
      hi = x;
      lo = 0;
    } else {
      // raise inexact
      return 1 + x;
    }

    // x is now in primary range
    var xx = x * x;
    var c = x - xx * (P1 + xx * P2);
    var y: f32 = 1 + (x * c / (2 - c) - lo + hi);
    if (k == 0) return y;
    return scalbnf(y, k);
  }

  export function imul(x: f32, y: f32): i32 {
    return <i32>x * <i32>y;
  }

  export function log(x: f32): f32 { // based on musl's implementaion of logf
    const
      ln2_hi = <f32>6.9313812256e-01, // 0x3f317180
      ln2_lo = <f32>9.0580006145e-06, // 0x3717f7d1
      Lg1 = <f32>0.66666662693,       // 0xaaaaaa.0p-24
      Lg2 = <f32>0.40000972152,       // 0xccce13.0p-25
      Lg3 = <f32>0.28498786688,       // 0x91e9ee.0p-25
      Lg4 = <f32>0.24279078841,       // 0xf89e26.0p-26
      Ox1p25f = <f32>33554432.0;

    var ux = reinterpret<u32>(x);
    var k = 0;
    if (ux < 0x00800000 || <bool>(ux >> 31)) { // x < 2**-126
      if (ux << 1 == 0) return -1 / (x * x);   // log(+-0)=-inf
      if (ux >> 31)     return (x - x) / 0;    // log(-#) = NaN
      // subnormal number, scale up x
      k -= 25;
      x *= Ox1p25f;
      ux = reinterpret<u32>(x);
    } else if (ux >= 0x7f800000) return x;
      else if (ux == 0x3f800000) return 0;

    // reduce x into [sqrt(2)/2, sqrt(2)]
    ux += 0x3f800000 - 0x3f3504f3;
    k += <u32>(<i32>ux >> 23) - 0x7f;
    ux = (ux & 0x007fffff) + 0x3f3504f3;
    x = reinterpret<f32>(ux);

    var f = x - 1.0;
    var s = f / (2.0 + f);
    var z = s * s;
    var w = z * z;
    var t1 = w * (Lg2 + w * Lg4);
    var t2 = z * (Lg1 + w * Lg3);
    var R = t2 + t1;
    var hfsq = <f32>0.5 * f * f;
    var dk = <f32>k;
    return s * (hfsq + R) + dk * ln2_lo - hfsq + f + dk * ln2_hi;
  }

  // export function log2(x: f32): f32 {
  //   return log(x) / LN2;
  // }

  // export function log10(x: f32): f32 {
  //   return log(x) / LN10;
  // }

  export function max(value1: f32, value2: f32): f32 {
    return builtin_max(value1, value2);
  }

  export function min(value1: f32, value2: f32): f32 {
    return builtin_min(value1, value2);
  }

  export function round(x: f32): f32 {
    return builtin_nearest(x);
  }

  export function sign(x: f32): f32 {
    return x > 0 ? 1 : x < 0 ? -1 : x;
  }

  export function sqrt(x: f32): f32 {
    return builtin_sqrt(x);
  }

  export function trunc(x: f32): f32 {
    return builtin_trunc(x);
  }
}

function scalbn(x: f64, n: i32): f64 { // based on musl's implementation of scalbn
  const
    Ox1p1023 = 8.98846567431157954e+307,
    Ox1p_1022 = 2.22507385850720138e-308;

  var y = x;
  if (n > 1023) {
    y *= Ox1p1023;
    n -= 1023;
    if (n > 1023) {
      y *= Ox1p1023;
      n -= 1023;
      if (n > 1023) n = 1023;
    }
  } else if (n < -1022) {
    y *= Ox1p_1022;
    n += 1022;
    if (n < -1022) {
      y *= Ox1p_1022;
      n += 1022;
      if (n < -1022) n = -1022;
    }
  }
  return y * reinterpret<f64>(<u64>(0x3ff + n) << 52);
}

function scalbnf(x: f32, n: i32): f32 { // based on musl's implementation of scalbnf
  const
    Ox1p127f = <f32>1.701411835e+38,
    Ox1p_126f = <f32>1.175494351e-38;

  var y = x;
  if (n > 127) {
    y *= Ox1p127f;
    n -= 127;
    if (n > 127) {
      y *= Ox1p127f;
      n -= 127;
      if (n > 127) n = 127;
    }
  } else if (n < -126) {
    y *= Ox1p_126f;
    n += 126;
    if (n < -126) {
      y *= Ox1p_126f;
      n += 126;
      if (n < -126) n = -126;
    }
  }
  return y * reinterpret<f32>(<u32>(0x7f + n) << 23);
}
