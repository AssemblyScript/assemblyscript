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

  export function floor(x: f64): f64 {
    return builtin_floor(x);
  }

  export function fround(x: f64): f32 {
    return <f32>x;
  }

  export function imul(x: f64, y: f64): i32 {
    return <i32>x * <i32>y;
  }

  export function log(x: f64): f64 {
    // based on musl's implementation of log:
    //   Copyright (C) 1993 by Sun Microsystems, Inc. All rights reserved.
    //   Developed at SunPro, a Sun Microsystems, Inc. business.
    //   Permission to use, copy, modify, and distribute this
    //   software is freely granted, provided that this notice
    //   is preserved.
    const
      ln2_hi = 6.93147180369123816490e-01, // 3fe62e42 fee00000
      ln2_lo = 1.90821492927058770002e-10, // 3dea39ef 35793c76
      Lg1 = 6.666666666666735130e-01,      // 3FE55555 55555593
      Lg2 = 3.999999999940941908e-01,      // 3FD99999 9997FA04
      Lg3 = 2.857142874366239149e-01,      // 3FD24924 94229359
      Lg4 = 2.222219843214978396e-01,      // 3FCC71C5 1D8E78AF
      Lg5 = 1.818357216161805012e-01,      // 3FC74664 96CB03DE
      Lg6 = 1.531383769920937332e-01,      // 3FC39A09 D078C69F
      Lg7 = 1.479819860511658591e-01;      // 3FC2F112 DF3E5244

    var u = reinterpret<u64>(x);
    var hfsq: f64, f: f64, s: f64, z: f64, R: f64, w: f64, t1: f64, t2: f64, dk: f64;

    var hx = <u32>(u >> 32);
    var k = 0;
    if (hx < 0x00100000 || <bool>(hx>>31)) {
      if (u<<1 == 0) {
        return -1/(x*x);  // log(+-0)=-inf
      }
      if (hx>>31) {
        return (x-x)/0.0; // log(-#) = NaN
      }
      // subnormal number, scale x up
      k -= 54;
      x *= 1.8014398509481984e16; // 0x1p54
      u = reinterpret<u64>(x);
      hx = <u32>(u>>32);
    } else if (hx >= 0x7ff00000) {
      return x;
    } else if (hx == 0x3ff00000 && u<<32 == 0) {
      return 0;
    }

    // reduce x into [sqrt(2)/2, sqrt(2)]
    hx += 0x3ff00000 - 0x3fe6a09e;
    k += (<i32>hx>>20) - 0x3ff;
    hx = (hx&0x000fffff) + 0x3fe6a09e;
    u = <u64>hx<<32 | (u&0xffffffff);
    x = reinterpret<f64>(u);

    f = x - 1.0;
    hfsq = 0.5*f*f;
    s = f/(2.0+f);
    z = s*s;
    w = z*z;
    t1 = w*(Lg2+w*(Lg4+w*Lg6));
    t2 = z*(Lg1+w*(Lg3+w*(Lg5+w*Lg7)));
    R = t2 + t1;
    dk = k;
    return s*(hfsq+R) + dk*ln2_lo - hfsq + f + dk*ln2_hi;
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

  export function imul(x: f32, y: f32): i32 {
    return <i32>x * <i32>y;
  }

  export function log(x: f32): f32 {
    // based on musl's implementaion of logf:
    //   Copyright (C) 1993 by Sun Microsystems, Inc. All rights reserved.
    //   Developed at SunPro, a Sun Microsystems, Inc. business.
    //   Permission to use, copy, modify, and distribute this
    //   software is freely granted, provided that this notice
    //   is preserved.
    const
      ln2_hi: f32 = 6.9313812256e-01, // 0x3f317180
      ln2_lo: f32 = 9.0580006145e-06, // 0x3717f7d1
      Lg1: f32 = 0.66666662693,       // 0xaaaaaa.0p-24
      Lg2: f32 = 0.40000972152,       // 0xccce13.0p-25
      Lg3: f32 = 0.28498786688,       // 0x91e9ee.0p-25
      Lg4: f32 = 0.24279078841;       // 0xf89e26.0p-26

    var u = reinterpret<u32>(x);
    var hfsq: f32, f: f32, s: f32, z: f32, R: f32, w: f32, t1: f32, t2: f32, dk: f32;

    var ix = u;
    var k = 0;
    if (ix < 0x00800000 || <bool>(ix>>31)) { // x < 2**-126
      if (ix<<1 == 0) {
        return -1/(x*x);     // log(+-0)=-inf
      }
      if (ix>>31) {
        return (x-x)/<f32>0; // log(-#) = NaN
      }
      // subnormal number, scale up x
      k -= 25;
      x *= 3.3554432; // 0x1p25f;
      u = reinterpret<u32>(x);
      ix = u;
    } else if (ix >= 0x7f800000) {
      return x;
    } else if (ix == 0x3f800000) {
      return 0;
    }

    // reduce x into [sqrt(2)/2, sqrt(2)]
    ix += 0x3f800000 - 0x3f3504f3;
    k += <u32>(<i32>ix>>23) - 0x7f;
    ix = (ix&0x007fffff) + 0x3f3504f3;
    x = reinterpret<f32>(ix);

    f = x - 1.0;
    s = f/(2.0 + f);
    z = s*s;
    w = z*z;
    t1= w*(Lg2+w*Lg4);
    t2= z*(Lg1+w*Lg3);
    R = t2 + t1;
    hfsq = 0.5*f*f;
    dk = <f32>k;
    return s*(hfsq+R) + dk*ln2_lo - hfsq + f + dk*ln2_hi;
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
