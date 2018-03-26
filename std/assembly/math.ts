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

// NativeMath/NativeMathf.cbrt/exp/log/pow
//   Copyright (C) 1993 by Sun Microsystems, Inc. All rights reserved.
//   Developed at SunPro, a Sun Microsystems, Inc. business.
//   Permission to use, copy, modify, and distribute this
//   software is freely granted, provided that this notice
//   is preserved.

export namespace NativeMath {

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

  export function acos(x: f64): f64 {
    unreachable(); // TODO
    return 0;
  }

  export function acosh(x: f64): f64 {
    unreachable(); // TODO
    return 0;
  }

  export function asin(x: f64): f64 {
    unreachable(); // TODO
    return 0;
  }

  export function asinh(x: f64): f64 {
    unreachable(); // TODO
    return 0;
  }

  export function atan(x: f64): f64 {
    unreachable(); // TODO
    return 0;
  }

  export function atanh(x: f64): f64 {
    unreachable(); // TODO
    return 0;
  }

  export function atan2(y: f64, x: f64): f64 {
    unreachable(); // TOOD
    return 0;
  }

  export function cbrt(x: f64): f64 { // based on musl's implementation of cbrt
    const
      B1 = <u32>715094163, // B1 = (1023-1023/3-0.03306235651)*2**20
      B2 = <u32>696219795, // B2 = (1023-1023/3-54/3-0.03306235651)*2**20
      // |1/cbrt(x) - p(x)| < 2**-23.5 (~[-7.93e-8, 7.929e-8]).
      P0 =  1.87595182427177009643,  // 0x3ffe03e6, 0x0f61e692
      P1 = -1.88497979543377169875,  // 0xbffe28e0, 0x92f02420
      P2 =  1.621429720105354466140, // 0x3ff9f160, 0x4a49d6c2
      P3 = -0.758397934778766047437, // 0xbfe844cb, 0xbee751d9
      P4 = 0.145996192886612446982,  // 0x3fc2b000, 0xd4e4edd7
      Ox1p54 = 18014398509481984.0;

    var __u = reinterpret<u64>(x);
    var hx = <u32>(__u >> 32) & 0x7fffffff;
    if (hx >= 0x7ff00000) return x + x; // cbrt(NaN,INF) is itself

    // Rough cbrt to 5 bits:
    //    cbrt(2**e*(1+m) ~= 2**(e/3)*(1+(e%3+m)/3)
    // where e is integral and >= 0, m is real and in [0, 1), and "/" and
    // "%" are integer division and modulus with rounding towards minus
    // infinity.  The RHS is always >= the LHS and has a maximum relative
    // error of about 1 in 16.  Adding a bias of -0.03306235651 to the
    // (e%3+m)/3 term reduces the error to about 1 in 32. With the IEEE
    // floating point representation, for finite positive normal values,
    // ordinary integer divison of the value in bits magically gives
    // almost exactly the RHS of the above provided we first subtract the
    // exponent bias (1023 for doubles) and later add it back.  We do the
    // subtraction virtually to keep e >= 0 so that ordinary integer
    // division rounds towards minus infinity; this is also efficient.
    if (hx < 0x00100000) { // zero or subnormal?
      __u = reinterpret<u64>(x * Ox1p54);
      hx = <u32>(__u >> 32) & 0x7fffffff;
      if (hx == 0) return x; // cbrt(0) is itself
      hx = hx / 3 + B2;
    } else {
      hx = hx / 3 + B1;
    }
    __u &= 1 << 63;
    __u |= <u64>hx << 32;
    var t = reinterpret<f64>(__u);

    // New cbrt to 23 bits:
    //    cbrt(x) = t*cbrt(x/t**3) ~= t*P(t**3/x)
    // where P(r) is a polynomial of degree 4 that approximates 1/cbrt(r)
    // to within 2**-23.5 when |r - 1| < 1/10.  The rough approximation
    // has produced t such than |t/cbrt(x) - 1| ~< 1/32, and cubing this
    // gives us bounds for r = t**3/x.
    var r = (t * t) * (t / x);
    t = t * ((P0 + r * (P1 + r * P2)) + ((r * r) * r) * (P3 + r * P4));

    // Round t away from zero to 23 bits (sloppily except for ensuring that
    // the result is larger in magnitude than cbrt(x) but not much more than
    // 2 23-bit ulps larger).  With rounding towards zero, the error bound
    // would be ~5/6 instead of ~4/6.  With a maximum error of 2 23-bit ulps
    // in the rounded t, the infinite-precision error in the Newton
    // approximation barely affects third digit in the final error
    // 0.667; the error in the rounded t can be up to about 3 23-bit ulps
    // before the final error is larger than 0.667 ulps.
    t = reinterpret<f64>((reinterpret<u64>(t) + 0x80000000) & 0xffffffffc0000000);

    // one step Newton iteration to 53 bits with error < 0.667 ulps
    var s = t * t;         // t*t is exact
    r = x / s;             // error <= 0.5 ulps; |r| < |t|
    var w = t + t;         // t+t is exact
    r = (r - t) / (w + r); // r-t is exact; w+r ~= 3*t
    t = t + t * r;         // error <= 0.5 + 0.5/3 + epsilon
    return t;
  }

  export function ceil(x: f64): f64 {
    return builtin_ceil(x);
  }

  export function clz32(x: f64): i32 {
    return builtin_clz(<i32>x);
  }

  export function cos(x: f64): f64 {
    unreachable(); // TODO
    return 0;
  }

  export function cosh(x: f64): f64 {
    unreachable(); // TODO
    return 0;
  }

  export function exp(x: f64): f64 { // based on musl's implementation of exp
    const
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
        k = <i32>(invln2 * x + copysign<f64>(0.5, x)); // was: [0.5, -0.5][sign_])
      } else {
        let sign_ = hx >> 31;
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

  export function expm1(x: f64): f64 {
    unreachable(); // TODO
    return 0;
  }

  export function floor(x: f64): f64 {
    return builtin_floor(x);
  }

  export function fround(x: f64): f32 {
    return <f32>x;
  }

  export function hypot(value1: f64, value2: f64): f64 { // TODO: rest
    unreachable(); // TODO
    return 0;
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

  export function log10(x: f64): f64 {
    // return log(x) / LN10;
    unreachable(); // TODO
    return 0;
  }

  export function log1p(x: f64): f64 {
    unreachable(); // TODO
    return 0;
  }

  export function log2(x: f64): f64 {
    // return log(x) / LN2;
    unreachable(); // TODO
    return 0;
  }

  export function max(value1: f64, value2: f64): f64 {
    return builtin_max(value1, value2);
  }

  export function min(value1: f64, value2: f64): f64 {
    return builtin_min(value1, value2);
  }

  export function pow(x: f64, y: f64): f64 { // pased on musl's implementation of pow
    const
      two53 = 9007199254740992.0,           // 0x43400000, 0x00000000
      huge = 1.0e+300,
      tiny = 1.0e-300,
      // poly coefs for (3/2)*(log(x)-2s-2/3*s**3
      L1 = 5.99999999999994648725e-01,      // 0x3FE33333, 0x33333303
      L2 = 4.28571428578550184252e-01,      // 0x3FDB6DB6, 0xDB6FABFF
      L3 = 3.33333329818377432918e-01,      // 0x3FD55555, 0x518F264D
      L4 = 2.72728123808534006489e-01,      // 0x3FD17460, 0xA91D4101
      L5 = 2.30660745775561754067e-01,      // 0x3FCD864A, 0x93C9DB65
      L6 = 2.06975017800338417784e-01,      // 0x3FCA7E28, 0x4A454EEF
      P1 = 1.66666666666666019037e-01,      // 0x3FC55555, 0x5555553E
      P2 = -2.77777777770155933842e-03,     // 0xBF66C16C, 0x16BEBD93
      P3 = 6.61375632143793436117e-05,      // 0x3F11566A, 0xAF25DE2C
      P4 = -1.65339022054652515390e-06,     // 0xBEBBBD41, 0xC5D26BF1
      P5 = 4.13813679705723846039e-08,      // 0x3E663769, 0x72BEA4D0
      lg2 = 6.93147180559945286227e-01,     // 0x3FE62E42, 0xFEFA39EF
      lg2_h = 6.93147182464599609375e-01,   // 0x3FE62E43, 0x00000000
      lg2_l = -1.90465429995776804525e-09,  // 0xBE205C61, 0x0CA86C39
      ovt = 8.0085662595372944372e-017,     // -(1024-log2(ovfl+.5ulp))
      cp = 9.61796693925975554329e-01,      // 0x3FEEC709, 0xDC3A03FD =2/(3ln2)
      cp_h = 9.61796700954437255859e-01,    // 0x3FEEC709, 0xE0000000 =(float)cp
      cp_l = -7.02846165095275826516e-09,   // 0xBE3E2FE0, 0x145B01F5 =tail of cp_h
      ivln2 = 1.44269504088896338700e+00,   // 0x3FF71547, 0x652B82FE =1/ln2
      ivln2_h = 1.44269502162933349609e+00, // 0x3FF71547, 0x60000000 =24b 1/ln2
      ivln2_l = 1.92596299112661746887e-0;  // 0x3E54AE0B, 0xF85DDF44 =1/ln2 tail

    var __u = reinterpret<u64>(x); // EXTRACT_WORDS(hx, lx, x)
    var hx = <i32>(__u >> 32);
    var lx = <u32>__u;

    __u = reinterpret<u64>(y); // EXTRACT_WORDS(hy, ly, y)
    var hy = <i32>(__u >> 32);
    var ly = <u32>__u;

    var ix = hx & 0x7fffffff;
    var iy = hy & 0x7fffffff;

    // x**0 = 1, even if x is NaN
    if ((iy | ly) == 0) return 1.0;
    // 1**y = 1, even if y is NaN
    if (hx == 0x3ff00000 && lx == 0) return 1.0;
    // NaN if either arg is NaN
    if (
      ix > 0x7ff00000 || (ix == 0x7ff00000 && lx != 0) ||
      iy > 0x7ff00000 || (iy == 0x7ff00000 && ly != 0)
    ) return x + y;

    // determine if y is an odd int when x < 0
    // yisint = 0       ... y is not an integer
    // yisint = 1       ... y is an odd int
    // yisint = 2       ... y is an even int
    var yisint = 0, k: i32;
    if (hx < 0) {
      if (iy >= 0x43400000) yisint = 2; // even integer y
      else if (iy >= 0x3ff00000) {
        k = (iy >> 20) - 0x3ff;  // exponent
        if (k > 20) {
          let jj = ly >> (52 - k);
          if ((jj << (52 - k)) == ly) yisint = 2 - (jj & 1);
        } else if (ly == 0) {
          let jj = iy >> (20 - k);
          if ((jj << (20 - k)) == iy) yisint = 2 - (jj & 1);
        }
      }
    }

    // special value of y
    if (ly == 0) {
      if (iy == 0x7ff00000) { // y is +-inf
        if (((ix - 0x3ff00000) | lx) == 0) return 1.0; // (-1)**+-inf is 1
        else if (ix >= 0x3ff00000) return hy >= 0 ? y : 0.0; // (|x|>1)**+-inf = inf,0
        else return hy >= 0 ? 0.0 : -y;   // (|x|<1)**+-inf = 0,inf
      }
      if (iy == 0x3ff00000) { // y is +-1
        if (hy >= 0) return x;
        return 1 / x;
      }
      if (hy == 0x40000000) return x * x; // y is 2
      if (hy == 0x3fe00000) {             // y is 0.5
        if (hx >= 0) return sqrt(x);      // x >= +0
      }
    }

    var ax = builtin_abs(x), z: f64;
    // special value of x
    if (lx == 0) {
      if (ix == 0x7ff00000 || ix == 0 || ix == 0x3ff00000) { // x is +-0,+-inf,+-1
        z = ax;
        if (hy < 0) z = 1.0 / z; // z = (1/|x|)
        if (hx < 0) {
          if (((ix - 0x3ff00000) | yisint) == 0) z = (z - z) / (z - z); // (-1)**non-int is NaN
          else if (yisint == 1) z = -z; // (x<0)**odd = -(|x|**odd)
        }
        return z;
      }
    }

    var s = 1.0; // sign of result
    if (hx < 0) {
      if (yisint == 0) return (x - x) / (x - x); // (x<0)**(non-int) is NaN
      if (yisint == 1) s = -1.0; // (x<0)**(odd int)
    }

    // |y| is huge
    var t1: f64, t2: f64, p_h: f64, p_l: f64, r: f64, t: f64, u: f64, v: f64, w: f64;
    var j: i32, n: i32;
    if (iy > 0x41e00000) { // if |y| > 2**31
      if (iy > 0x43f00000) {  // if |y| > 2**64, must o/uflow
        if (ix <= 0x3fefffff) return hy < 0 ? huge * huge : tiny * tiny;
        if (ix >= 0x3ff00000) return hy > 0 ? huge * huge : tiny * tiny;
      }
      // over/underflow if x is not close to one
      if (ix < 0x3fefffff) return hy < 0 ? s * huge * huge : s * tiny * tiny;
      if (ix > 0x3ff00000) return hy > 0 ? s * huge * huge : s * tiny * tiny;
      // now |1-x| is tiny <= 2**-20, suffice to compute
      // log(x) by x-x^2/2+x^3/3-x^4/4
      t = ax - 1.0;       // t has 20 trailing zeros
      w = (t * t) * (0.5 - t * (0.3333333333333333333333 - t * 0.25));
      u = ivln2_h * t;    // ivln2_h has 21 sig. bits
      v = t * ivln2_l - w * ivln2;
      t1 = u + v;
      t1 = reinterpret<f64>(reinterpret<u64>(t1) & 0xffffffff00000000); // SET_LOW_WORD(t1, 0)
      t2 = v - (t1 - u);
    } else {
      let ss: f64, s2: f64, s_h: f64, s_l: f64, t_h: f64, t_l: f64;
      n = 0;
      // take care subnormal number
      if (ix < 0x00100000) {
        ax *= two53;
        n -= 53;
        ix = <u32>(reinterpret<u64>(ax) >> 32);
      }
      n += (ix >> 20) - 0x3ff;
      j = ix & 0x000fffff;
      // determine interval
      ix = j | 0x3ff00000; // normalize ix
      if (j <= 0x3988E) k = 0; // |x|<sqrt(3/2)
      else if (j < 0xBB67A) k = 1; // |x|<sqrt(3)
      else {
        k = 0;
        n += 1;
        ix -= 0x00100000;
      }
      ax = reinterpret<f64>(reinterpret<u64>(ax) & 0xffffffff | (<u64>ix << 32)); // SET_HIGH_WORD(ax, ix)

      // compute ss = s_h+s_l = (x-1)/(x+1) or (x-1.5)/(x+1.5)
      let bp = select<f64>(1.5, 1.0, k); // bp[k], bp[0]=1.0, bp[1]=1.5
      u = ax - bp;
      v = 1.0 / (ax + bp);
      ss = u * v;
      s_h = ss;
      s_h = reinterpret<f64>(reinterpret<u64>(s_h) & 0xffffffff00000000); // SET_LOW_WORD(s_h, 0)
      // t_h=ax+bp[k] High
      t_h = reinterpret<f64>(<u64>(((ix >> 1) | 0x20000000) + 0x00080000 + (k << 18)) << 32); // SET_HIGH_WORD
      t_l = ax - (t_h - bp);
      s_l = v * ((u - s_h * t_h) - s_h * t_l);
      // compute log(ax)
      s2 = ss * ss;
      r = s2 * s2 * (L1 + s2 * (L2 + s2 * (L3 + s2 * (L4 + s2 * (L5 + s2 * L6)))));
      r += s_l * (s_h + ss);
      s2 = s_h * s_h;
      t_h = 3.0 + s2 + r;
      t_h = reinterpret<f64>(reinterpret<u64>(t_h) & 0xffffffff00000000); // SET_LOW_WORD(t_h, 0)
      t_l = r - ((t_h - 3.0) - s2);
      // u+v = ss*(1+...)
      u = s_h * t_h;
      v = s_l * t_h + t_l * ss;
      // 2/(3log2)*(ss+...)
      p_h = u + v;
      p_h = reinterpret<f64>(reinterpret<u64>(p_h) & 0xffffffff00000000); // SET_LOW_WORD(p_h, 0)
      p_l = v - (p_h - u);
      let z_h = cp_h * p_h; // cp_h+cp_l = 2/(3*log2)
      let dp_l = select<f64>(1.35003920212974897128e-08, 0.0, k); // dp_l[k]
      let z_l = cp_l * p_h + p_l * cp + dp_l;
      // log2(ax) = (ss+..)*2/(3*log2) = n + dp_h + z_h + z_l
      t = <f64>n;
      let dp_h = select<f64>(5.84962487220764160156e-01, 0.0, k); // dp_h[k]
      t1 = ((z_h + z_l) + dp_h) + t;
      t1 = reinterpret<f64>(reinterpret<u64>(t1) & 0xffffffff00000000); // SET_LOW_WORD(t1, 0);
      t2 = z_l - (((t1 - t) - dp_h) - z_h);
    }

    // split up y into y1+y2 and compute (y1+y2)*(t1+t2)
    var y1 = y;
    y1 = reinterpret<f64>(reinterpret<u64>(y1) & 0xffffffff00000000); // SET_LOW_WORD(y1, 0)
    p_l = (y - y1) * t1 + y * t2;
    p_h = y1 * t1;
    z = p_l + p_h;
    __u = reinterpret<u64>(z); // EXTRACT_WORDS(j, i, z) ...
    j = <u32>(__u >> 32);
    var i = <i32>__u;
    if (j >= 0x40900000) {                                     // z >= 1024
      if (((j - 0x40900000) | i) != 0) return s * huge * huge; // if z > 1024, overflow
      if (p_l + ovt > z - p_h) return s * huge * huge;         // overflow
    } else if ((j & 0x7fffffff) >= 0x4090cc00) {               // z <= -1075, FIXME: instead of abs(j) use unsigned j
      if (((j - 0xc090cc00) | i) != 0) return s * tiny * tiny; // z < -1075, underflow
      if (p_l <= z - p_h) return s * tiny * tiny;              // underflow
    }
    // compute 2**(p_h+p_l)
    i = j & 0x7fffffff;
    k = (i >> 20) - 0x3ff;
    n = 0;
    if (i > 0x3fe00000) { // if |z| > 0.5, set n = [z+0.5]
      n = j + (0x00100000 >> (k + 1));
      k = ((n & 0x7fffffff) >> 20) - 0x3ff; // new k for n
      t = 0.0;
      t = reinterpret<f64>(<u64>(n & ~(0x000fffff >> k)) << 32); // SET_HIGH_WORD(t, n & ~(0x000fffff>>k))
      n = ((n & 0x000fffff) | 0x00100000) >> (20 - k);
      if (j < 0) n = -n;
      p_h -= t;
    }
    t = p_l + p_h;
    t = reinterpret<f64>(reinterpret<u64>(t) & 0xffffffff00000000); // SET_LOW_WORD(t, 0)
    u = t * lg2_h;
    v = (p_l - (t - p_h)) * lg2 + t * lg2_l;
    z = u + v;
    w = v - (z - u);
    t = z * z;
    t1 = z - t * (P1 + t * (P2 + t * (P3 + t * (P4 + t * P5))));
    r = (z * t1) / (t1 - 2.0) - (w + z * w);
    z = 1.0 - (r - z);
    j = <u32>(reinterpret<u64>(z) >> 32); // GET_HIGH_WORD(j, z)
    j += n << 20;
    if ((j >> 20) <= 0) z = scalbn(z, n); // subnormal output
    else z = reinterpret<f64>(reinterpret<u64>(z) & 0xffffffff | (<u64>j << 32)); // SET_HIGH_WORD(z, j)
    return s * z;
  }

  var random_seeded = false;
  var random_state0: u64;
  var random_state1: u64;

  function murmurHash3(h: u64): u64 {
    h ^= h >> 33;
    h *= 0xFF51AFD7ED558CCD;
    h ^= h >> 33;
    h *= 0xC4CEB9FE1A85EC53;
    h ^= h >> 33;
    return h;
  }

  function xorShift128Plus(): u64 {
    var s1 = random_state0;
    var s0 = random_state1;
    random_state0 = s0;
    s1 ^= s1 << 23;
    s1 ^= s1 >> 17;
    s1 ^= s0;
    s1 ^= s0 >> 26;
    random_state1 = s1;
    return s0 + s1;
  }

  export function seedRandom(value: i64): void {
    assert(value);
    random_seeded = true;
    random_state0 = murmurHash3(value);
    random_state1 = murmurHash3(random_state0);
  }

  export function random(): f64 { // based on V8's implementation
    const
      kExponentBits = <u64>0x3FF0000000000000,
      kMantissaMask = <u64>0x000FFFFFFFFFFFFF;

    if (!random_seeded) unreachable();
    var r = (xorShift128Plus() & kMantissaMask) | kExponentBits;
    return reinterpret<f64>(r) - 1;
  }

  export function round(x: f64): f64 {
    return builtin_nearest(x);
  }

  export function sign(x: f64): f64 {
    return x > 0 ? 1 : x < 0 ? -1 : x;
  }

  export function sin(x: f64): f64 {
    unreachable(); // TODO
    return 0;
  }

  export function sinh(x: f64): f64 {
    unreachable(); // TODO
    return 0;
  }

  export function sqrt(x: f64): f64 {
    return builtin_sqrt(x);
  }

  export function tan(x: f64): f64 {
    unreachable(); // TODO
    return 0;
  }

  export function tanh(x: f64): f64 {
    unreachable(); // TODO
    return 0;
  }

  export function trunc(x: f64): f64 {
    return builtin_trunc(x);
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
}

export namespace NativeMathf {

  export const E = <f32>NativeMath.E;
  export const LN2 = <f32>NativeMath.LN2;
  export const LN10 = <f32>NativeMath.LN10;
  export const LOG2E = <f32>NativeMath.LOG2E;
  export const LOG10E = <f32>NativeMath.LOG10E;
  export const PI = <f32>NativeMath.PI;
  export const SQRT1_2 = <f32>NativeMath.SQRT1_2;
  export const SQRT2 = <f32>NativeMath.SQRT2;

  export function abs(x: f32): f32 {
    return builtin_abs(x);
  }

  export function acos(x: f32): f32 {
    unreachable(); // TOOD
    return 0;
  }

  export function acosh(x: f32): f32 {
    unreachable(); // TODO
    return 0;
  }

  export function asin(x: f32): f32 {
    unreachable(); // TODO
    return 0;
  }

  export function asinh(x: f32): f32 {
    unreachable(); // TODO
    return 0;
  }

  export function atan(x: f32): f32 {
    unreachable(); // TODO
    return 0;
  }

  export function atanh(x: f32): f32 {
    unreachable(); // TODO
    return 0;
  }

  export function atan2(y: f32, x: f32): f32 {
    unreachable(); // TOOD
    return 0;
  }

  export function cbrt(x: f32): f32 { // based on musl's implementation of cbrtf
    const
      B1 = <u32>709958130, /* B1 = (127-127.0/3-0.03306235651)*2**23 */
      B2 = <u32>642849266, /* B2 = (127-127.0/3-24/3-0.03306235651)*2**23 */
      Ox1p24f = <f32>16777216.0;

    var ux = reinterpret<u32>(x);
    var hx = ux & 0x7fffffff;
    if (hx >= 0x7f800000) return x + x; // cbrt(NaN,INF) is itself

    // rough cbrt to 5 bits
    if (hx < 0x00800000) { // zero or subnormal?
      if (hx == 0) return x; // cbrt(+-0) is itself
      ux = reinterpret<u32>(x * Ox1p24f);
      hx = ux & 0x7fffffff;
      hx = hx / 3 + B2;
    } else {
      hx = hx / 3 + B1;
    }
    ux &= 0x80000000;
    ux |= hx;

    // First step Newton iteration (solving t*t-x/t == 0) to 16 bits. In
    // double precision so that its terms can be arranged for efficiency
    // without causing overflow or underflow.
    var T = <f64>reinterpret<f32>(ux);
    var r = T * T * T;
    T = T * (<f64>x + x + r) / (x + r + r);

    // Second step Newton iteration to 47 bits. In double precision for
    // efficiency and accuracy.
    r = T * T * T;
    T = T * (<f64>x + x + r) / (x + r + r);

    // rounding to 24 bits is perfect in round-to-nearest mode
    return <f32>T;
  }

  export function ceil(x: f32): f32 {
    return builtin_ceil(x);
  }

  export function clz32(x: f32): i32 {
    return builtin_clz(<i32>x);
  }

  export function cos(x: f32): f32 {
    unreachable(); // TODO
    return 0;
  }

  export function cosh(x: f32): f32 {
    unreachable(); // TODO
    return 0;
  }

  export function floor(x: f32): f32 {
    return builtin_floor(x);
  }

  export function exp(x: f32): f32 { // based on musl's implementation of expf
    const
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
        if (hx >= 0x42cff1b5) { // x <= -103.972084f
          return 0;
        }
      }
    }

    // argument reduction
    var hi: f32, lo: f32;
    var k: i32;
    if (hx > 0x3eb17218) { // if |x| > 0.5 ln2
      if (hx > 0x3f851592) { // if |x| > 1.5 ln2
        k = <i32>(invln2 * x + copysign<f32>(0.5, x)); // was: [0.5, -0.5][sign_])
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
    return scalbn(y, k);
  }

  export function expm1(x: f32): f32 {
    unreachable(); // TODO
    return 0;
  }

  export function fround(x: f32): f32 {
    return x;
  }

  export function hypot(value1: f32, value2: f32): f32 { // TODO: rest
    unreachable(); // TODO
    return 0;
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

  export function log10(x: f32): f32 {
    // return log(x) / LN10;
    unreachable(); // TODO
    return 0;
  }

  export function log1p(x: f32): f32 {
    unreachable(); // TODO
    return 0;
  }

  export function log2(x: f32): f32 {
    // return log(x) / LN2;
    unreachable(); // TODO
    return 0;
  }

  export function max(value1: f32, value2: f32): f32 {
    return builtin_max(value1, value2);
  }

  export function min(value1: f32, value2: f32): f32 {
    return builtin_min(value1, value2);
  }

  export function pow(x: f32, y: f32): f32 { // based on musl's implementation of powf
    const
      two24 = <f32>16777216.0,         // 0x4b800000
      huge = <f32>1.0e30,
      tiny = <f32>1.0e-30,
      // poly coefs for (3/2)*(log(x)-2s-2/3*s**3
      L1 = <f32>6.0000002384e-01,      // 0x3f19999a
      L2 = <f32>4.2857143283e-01,      // 0x3edb6db7
      L3 = <f32>3.3333334327e-01,      // 0x3eaaaaab
      L4 = <f32>2.7272811532e-01,      // 0x3e8ba305
      L5 = <f32>2.3066075146e-01,      // 0x3e6c3255
      L6 = <f32>2.0697501302e-01,      // 0x3e53f142
      P1 = <f32>1.6666667163e-01,      // 0x3e2aaaab
      P2 = <f32>-2.7777778450e-03,     // 0xbb360b61
      P3 = <f32>6.6137559770e-05,      // 0x388ab355
      P4 = <f32>-1.6533901999e-06,     // 0xb5ddea0e
      P5 = <f32>4.1381369442e-08,      // 0x3331bb4c
      lg2 = <f32>6.9314718246e-01,     // 0x3f317218
      lg2_h = <f32>6.93145752e-01,     // 0x3f317200
      lg2_l = <f32>1.42860654e-06,     // 0x35bfbe8c
      ovt = <f32>4.2995665694e-08,     // -(128-log2(ovfl+.5ulp))
      cp = <f32>9.6179670095e-01,      // 0x3f76384f =2/(3ln2)
      cp_h = <f32>9.6191406250e-01,    // 0x3f764000 =12b cp
      cp_l = <f32>-1.1736857402e-04,   // 0xb8f623c6 =tail of cp_h
      ivln2 = <f32>1.4426950216e+00,   // 0x3fb8aa3b =1/ln2
      ivln2_h = <f32>1.4426879883e+00, // 0x3fb8aa00 =16b 1/ln2
      ivln2_l = <f32>7.0526075433e-06; // 0x36eca570 =1/ln2 tail

    var hx = reinterpret<i32>(x); // GET_FLOAT_WORD(hx, x)
    var hy = reinterpret<i32>(y); // GET_FLOAT_WORD(hy, y)
    var ix = hx & 0x7fffffff;
    var iy = hy & 0x7fffffff;

    // x**0 = 1, even if x is NaN
    if (iy == 0) return 1.0;
    // 1**y = 1, even if y is NaN
    if (hx == 0x3f800000) return 1.0;
    // NaN if either arg is NaN
    if (ix > 0x7f800000 || iy > 0x7f800000) return x + y;

    // determine if y is an odd int when x < 0
    // yisint = 0       ... y is not an integer
    // yisint = 1       ... y is an odd int
    // yisint = 2       ... y is an even int
    var yisint  = 0, j: i32, k: i32;
    if (hx < 0) {
      if (iy >= 0x4b800000) yisint = 2; // even integer y
      else if (iy >= 0x3f800000) {
        k = (iy >> 23) - 0x7f; // exponent
        j = iy >> (23 - k);
        if ((j << (23 - k)) == iy) yisint = 2 - (j & 1);
      }
    }

    // special value of y
    if (iy == 0x7f800000) {  // y is +-inf
      if (ix == 0x3f800000) return 1.0; // (-1)**+-inf is 1
      else if (ix > 0x3f800000) return hy >= 0 ? y : 0.0; // (|x|>1)**+-inf = inf,0
      else return hy >= 0 ? 0.0 : -y; // (|x|<1)**+-inf = 0,inf
    }
    if (iy == 0x3f800000) return hy >= 0 ? x : 1.0 / x; // y is +-1
    if (hy == 0x40000000) return x * x; // y is 2
    if (hy == 0x3f000000) { // y is  0.5
      if (hx >= 0) return builtin_sqrt(x); // x >= +0
    }

    var ax = builtin_abs(x);
    // special value of x
    var z: f32;
    if (ix == 0x7f800000 || ix == 0 || ix == 0x3f800000) { // x is +-0,+-inf,+-1
      z = ax;
      if (hy < 0) z = 1.0 / z; // z = (1/|x|)
      if (hx < 0) {
        if (((ix - 0x3f800000) | yisint) == 0) z = (z - z) / (z - z); // (-1)**non-int is NaN
        else if (yisint == 1) z = -z; // (x<0)**odd = -(|x|**odd)
      }
      return z;
    }

    var sn = <f32>1.0; // sign of result
    if (hx < 0) {
      if (yisint == 0) return (x - x) / (x - x); // (x<0)**(non-int) is NaN
      if (yisint == 1) sn = -1.0; // (x<0)**(odd int)
    }

    // |y| is huge
    var t1: f32, t2: f32, r: f32, s: f32, t: f32, u: f32, v: f32, w: f32, p_h: f32, p_l: f32;
    var n: i32, is: i32;
    if (iy > 0x4d000000) { // if |y| > 2**27
      // over/underflow if x is not close to one
      if (ix < 0x3f7ffff8) return hy < 0 ? sn * huge * huge : sn * tiny * tiny;
      if (ix > 0x3f800007) return hy > 0 ? sn * huge * huge : sn * tiny * tiny;
      // now |1-x| is tiny <= 2**-20, suffice to compute
      // log(x) by x-x^2/2+x^3/3-x^4/4
      t = ax - 1; // t has 20 trailing zeros
      w = (t * t) * (0.5 - t * (0.333333333333 - t * 0.25));
      u = ivln2_h * t; // ivln2_h has 16 sig. bits
      v = t * ivln2_l - w * ivln2;
      t1 = u + v;
      is = reinterpret<i32>(t1); // GET_FLOAT_WORD(is, t1)
      t1 = reinterpret<f32>(is & 0xfffff000); // SET_FLOAT_WORD(t1, is & 0xfffff000)
      t2 = v - (t1 - u);
    } else {
      let s2: f32, s_h: f32, s_l: f32, t_h: f32, t_l: f32;
      n = 0;
      // take care subnormal number
      if (ix < 0x00800000) {
        ax *= two24;
        n -= 24;
        ix = reinterpret<i32>(ax); // GET_FLOAT_WORD(ix, ax)
      }
      n += (ix >> 23) - 0x7f;
      j = ix & 0x007fffff;
      // determine interval
      ix = j | 0x3f800000; // normalize ix
      if (j <= 0x1cc471) k = 0; // |x|<sqrt(3/2)
      else if (j < 0x5db3d7) k = 1; // |x|<sqrt(3)
      else {
        k = 0;
        n += 1;
        ix -= 0x00800000;
      }
      ax = reinterpret<f32>(ix); // SET_FLOAT_WORD(ax, ix)

      // compute s = s_h+s_l = (x-1)/(x+1) or (x-1.5)/(x+1.5)
      let bp = select<f32>(1.5, 1.0, k); // bp[k], [1.0, 1.5]
      u = ax - bp;
      v = 1.0 / (ax + bp);
      s = u * v;
      s_h = s;
      is = reinterpret<u32>(s_h); // GET_FLOAT_WORD(is, s_h)
      s_h = reinterpret<f32>(is & 0xfffff000); // SET_FLOAT_WORD(s_h, is & 0xfffff000)
      // t_h=ax+bp[k] High
      is = ((ix >> 1) & 0xfffff000) | 0x20000000;
      t_h = reinterpret<f32>(is + 0x00400000 + (k << 21)); // SET_FLOAT_WORD(t_h, is + 0x00400000 + (k<<21))
      t_l = ax - (t_h - bp);
      s_l = v * ((u - s_h * t_h) - s_h * t_l);
      // compute log(ax)
      s2 = s * s;
      r = s2 * s2 * (L1 + s2 * (L2 + s2 * (L3 + s2 * (L4 + s2 * (L5 + s2 * L6)))));
      r += s_l * (s_h + s);
      s2 = s_h * s_h;
      t_h = 3.0 + s2 + r;
      is = reinterpret<u32>(t_h); // GET_FLOAT_WORD(is, t_h)
      t_h = reinterpret<f32>(is & 0xfffff000); // SET_FLOAT_WORD(t_h, is & 0xfffff000)
      t_l = r - ((t_h - 3.0) - s2);
      // u+v = s*(1+...)
      u = s_h * t_h;
      v = s_l * t_h + t_l * s;
      // 2/(3log2)*(s+...)
      p_h = u + v;
      is = reinterpret<u32>(p_h); // GET_FLOAT_WORD(is, p_h)
      p_h = reinterpret<f32>(is & 0xfffff000); // SET_FLOAT_WORD(p_h, is & 0xfffff000)
      p_l = v - (p_h - u);
      let z_h = cp_h * p_h;  // cp_h+cp_l = 2/(3*log2)
      let dp_l = select<f32>(1.56322085e-06, 0.0, k); // dp_l[k], [0.0, 1.56322085e-06]
      let z_l = cp_l * p_h + p_l * cp + dp_l;
      // log2(ax) = (s+..)*2/(3*log2) = n + dp_h + z_h + z_l
      t = <f32>n;
      let dp_h = select<f32>(5.84960938e-01, 0.0, k); // dp_h[k], [0.0, 5.84960938e-01]
      t1 = (((z_h + z_l) + dp_h) + t);
      is = reinterpret<u32>(t1); // GET_FLOAT_WORD(is, t1)
      t1 = reinterpret<f32>(is & 0xfffff000); // SET_FLOAT_WORD(t1, is & 0xfffff000)
      t2 = z_l - (((t1 - t) - dp_h) - z_h);
    }

    // split up y into y1+y2 and compute (y1+y2)*(t1+t2)
    is = reinterpret<u32>(y); // GET_FLOAT_WORD(is, y)
    var y1 = reinterpret<f32>(is & 0xfffff000); // SET_FLOAT_WORD(y1, is & 0xfffff000)
    p_l = (y - y1) * t1 + y * t2;
    p_h = y1 * t1;
    z = p_l + p_h;
    j = reinterpret<u32>(z); // GET_FLOAT_WORD(j, z)
    if (j > 0x43000000) { // if z > 128, overflow
      return sn * huge * huge;
    } else if (j == 0x43000000) { // if z == 128
      if (p_l + ovt > z - p_h) return sn * huge * huge; // overflow
    } else if ((j & 0x7fffffff) > 0x43160000) { // z < -150, FIXME: check should be  (uint32_t)j > 0xc3160000
      return sn * tiny * tiny; // underflow
    } else if (j == 0xc3160000) { // z == -150
      if (p_l <= z - p_h) return sn * tiny * tiny; // underflow
    }

    // compute 2**(p_h+p_l)
    var i = j & 0x7fffffff;
    k = (i >> 23) - 0x7f;
    n = 0;
    if (i > 0x3f000000) { // if |z| > 0.5, set n = [z+0.5]
      n = j + (0x00800000 >> (k + 1));
      k = ((n & 0x7fffffff) >> 23) - 0x7f; // new k for n
      t = reinterpret<f32>(n & ~(0x007fffff >> k)); // SET_FLOAT_WORD(t, n & ~(0x007fffff>>k))
      n = ((n & 0x007fffff) | 0x00800000) >> (23 - k);
      if (j < 0) n = -n;
      p_h -= t;
    }
    t = p_l + p_h;
    is = reinterpret<u32>(t); // GET_FLOAT_WORD(is, t)
    t = reinterpret<f32>(is & 0xffff8000); // SET_FLOAT_WORD(t, is & 0xffff8000);
    u = t * lg2_h;
    v = (p_l - (t - p_h)) * lg2 + t * lg2_l;
    z = u + v;
    w = v - (z - u);
    t = z * z;
    t1 = z - t * (P1 + t * (P2 + t * (P3 + t * (P4 + t * P5))));
    r = (z * t1) / (t1 - 2.0) - (w + z * w);
    z = 1.0 - (r - z);
    j = reinterpret<u32>(z); // GET_FLOAT_WORD(j, z)
    j += n << 23;
    if ((j >> 23) <= 0) z = scalbn(z, n); // subnormal output
    else z = reinterpret<f32>(j); // SET_FLOAT_WORD(z, j)
    return sn * z;
  }

  export function random(): f32 {
    return <f32>NativeMath.random();
  }

  export function round(x: f32): f32 {
    return builtin_nearest(x);
  }

  export function sign(x: f32): f32 {
    return x > 0 ? 1 : x < 0 ? -1 : x;
  }

  export function sin(x: f32): f32 {
    unreachable(); // TODO
    return 0;
  }

  export function sinh(x: f32): f32 {
    unreachable(); // TODO
    return 0;
  }

  export function sqrt(x: f32): f32 {
    return builtin_sqrt(x);
  }

  export function tan(x: f32): f32 {
    unreachable(); // TODO
    return 0;
  }

  export function tanh(x: f32): f32 {
    unreachable(); // TODO
    return 0;
  }

  export function trunc(x: f32): f32 {
    return builtin_trunc(x);
  }

  function scalbn(x: f32, n: i32): f32 { // based on musl's implementation of scalbnf
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
}
