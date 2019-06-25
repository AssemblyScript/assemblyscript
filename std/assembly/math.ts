import * as JSMath from "./bindings/Math";
export { JSMath };

import {
  abs as builtin_abs,
  ceil as builtin_ceil,
  clz as builtin_clz,
  copysign as builtin_copysign,
  floor as builtin_floor,
  max as builtin_max,
  min as builtin_min,
  sqrt as builtin_sqrt,
  trunc as builtin_trunc
} from "./builtins";

// SUN COPYRIGHT NOTICE
//
// Copyright (C) 1993 by Sun Microsystems, Inc. All rights reserved.
// Developed at SunPro, a Sun Microsystems, Inc. business.
// Permission to use, copy, modify, and distribute this software
// is freely granted, provided that this notice is preserved.
//
// Applies to all functions marked with a comment referring here.

// TODO: sin, cos, tan for Math namespace

/** @internal */
function R(z: f64): f64 { // Rational approximation of (asin(x)-x)/x^3
  const                   // see: musl/src/math/asin.c and SUN COPYRIGHT NOTICE above
    pS0 = reinterpret<f64>(0x3FC5555555555555), //  1.66666666666666657415e-01
    pS1 = reinterpret<f64>(0xBFD4D61203EB6F7D), // -3.25565818622400915405e-01
    pS2 = reinterpret<f64>(0x3FC9C1550E884455), //  2.01212532134862925881e-01
    pS3 = reinterpret<f64>(0xBFA48228B5688F3B), // -4.00555345006794114027e-02
    pS4 = reinterpret<f64>(0x3F49EFE07501B288), //  7.91534994289814532176e-04
    pS5 = reinterpret<f64>(0x3F023DE10DFDF709), //  3.47933107596021167570e-05
    qS1 = reinterpret<f64>(0xC0033A271C8A2D4B), // -2.40339491173441421878e+00
    qS2 = reinterpret<f64>(0x40002AE59C598AC8), //  2.02094576023350569471e+00
    qS3 = reinterpret<f64>(0xBFE6066C1B8D0159), // -6.88283971605453293030e-01
    qS4 = reinterpret<f64>(0x3FB3B8C5B12E9282); //  7.70381505559019352791e-02
  var p = z * (pS0 + z * (pS1 + z * (pS2 + z * (pS3 + z * (pS4 + z * pS5)))));
  var q = 1.0 + z * (qS1 + z * (qS2 + z * (qS3 + z * qS4)));
  return p / q;
}

@inline function expo2(x: f64): f64 { // exp(x)/2 for x >= log(DBL_MAX)
  const                       // see: musl/src/math/__expo2.c
    k    = <u32>2043,
    kln2 = reinterpret<f64>(0x40962066151ADD8B); // 0x1.62066151add8bp+10
  var scale = reinterpret<f64>(<u64>((<u32>0x3FF + k / 2) << 20) << 32);
  return NativeMath.exp(x - kln2) * scale * scale;
}

/** @internal */
@lazy var random_seeded = false;
@lazy var random_state0_64: u64;
@lazy var random_state1_64: u64;
@lazy var random_state0_32: u32;
@lazy var random_state1_32: u32;

function murmurHash3(h: u64): u64 { // Force all bits of a hash block to avalanche
  h ^= h >> 33;                     // see: https://github.com/aappleby/smhasher
  h *= 0xFF51AFD7ED558CCD;
  h ^= h >> 33;
  h *= 0xC4CEB9FE1A85EC53;
  h ^= h >> 33;
  return h;
}

function splitMix32(h: u32): u32 {
  h += 0x6D2B79F5;
  h  = (h ^ (h >> 15)) * (h | 1);
  h ^= h + (h ^ (h >> 7)) * (h | 61);
  return h ^ (h >> 14);
}

export namespace NativeMath {

  @lazy export const E       = reinterpret<f64>(0x4005BF0A8B145769); // 2.7182818284590452354
  @lazy export const LN2     = reinterpret<f64>(0x3FE62E42FEFA39EF); // 0.69314718055994530942
  @lazy export const LN10    = reinterpret<f64>(0x40026BB1BBB55516); // 2.30258509299404568402
  @lazy export const LOG2E   = reinterpret<f64>(0x3FF71547652B82FE); // 1.4426950408889634074
  @lazy export const LOG10E  = reinterpret<f64>(0x3FDBCB7B1526E50E); // 0.43429448190325182765
  @lazy export const PI      = reinterpret<f64>(0x400921FB54442D18); // 3.14159265358979323846
  @lazy export const SQRT1_2 = reinterpret<f64>(0x3FE6A09E667F3BCD); // 0.70710678118654752440
  @lazy export const SQRT2   = reinterpret<f64>(0x3FF6A09E667F3BCD); // 1.41421356237309504880

  @inline
  export function abs(x: f64): f64 {
    return builtin_abs<f64>(x);
  }

  export function acos(x: f64): f64 { // see: musl/src/math/acos.c and SUN COPYRIGHT NOTICE above
    const
      pio2_hi   = reinterpret<f64>(0x3FF921FB54442D18), // 1.57079632679489655800e+00
      pio2_lo   = reinterpret<f64>(0x3C91A62633145C07), // 6.12323399573676603587e-17
      Ox1p_120f = reinterpret<f32>(0x03800000);
    var hx = <u32>(reinterpret<u64>(x) >> 32);
    var ix = hx & 0x7FFFFFFF;
    if (ix >= 0x3FF00000) {
      let lx = <u32>reinterpret<u64>(x);
      if ((ix - 0x3FF00000 | lx) == 0) {
        if (hx >> 31) return 2 * pio2_hi + Ox1p_120f;
        return 0;
      }
      return 0 / (x - x);
    }
    if (ix < 0x3FE00000) {
      if (ix <= 0x3C600000) return pio2_hi + Ox1p_120f;
      return pio2_hi - (x - (pio2_lo - x * R(x * x)));
    }
    var s: f64, w: f64, z: f64;
    if (hx >> 31) {
      // z = (1.0 + x) * 0.5;
      z = 0.5 + x * 0.5;
      s = builtin_sqrt<f64>(z);
      w = R(z) * s - pio2_lo;
      return 2 * (pio2_hi - (s + w));
    }
    // z = (1.0 - x) * 0.5;
    z = 0.5 - x * 0.5;
    s = builtin_sqrt<f64>(z);
    var df = reinterpret<f64>(reinterpret<u64>(s) & 0xFFFFFFFF00000000);
    var c = (z - df * df) / (s + df);
    w = R(z) * s + c;
    return 2 * (df + w);
  }

  export function acosh(x: f64): f64 { // see: musl/src/math/acosh.c
    const s = reinterpret<f64>(0x3FE62E42FEFA39EF);
    var e = reinterpret<u64>(x) >> 52 & 0x7FF;
    if (e < 0x3FF + 1) return log1p(x - 1 + builtin_sqrt<f64>((x - 1) * (x - 1) + 2 * (x - 1)));
    if (e < 0x3FF + 26) return log(2 * x - 1 / (x + builtin_sqrt<f64>(x * x - 1)));
    return log(x) + s;
  }

  export function asin(x: f64): f64 { // see: musl/src/math/asin.c and SUN COPYRIGHT NOTICE above
    const
      pio2_hi   = reinterpret<f64>(0x3FF921FB54442D18), // 1.57079632679489655800e+00
      pio2_lo   = reinterpret<f64>(0x3C91A62633145C07), // 6.12323399573676603587e-17
      Ox1p_120f = reinterpret<f32>(0x03800000);
    var hx = <u32>(reinterpret<u64>(x) >> 32);
    var ix = hx & 0x7FFFFFFF;
    if (ix >= 0x3FF00000) {
      let lx = <u32>reinterpret<u64>(x);
      if ((ix - 0x3FF00000 | lx) == 0) return x * pio2_hi + Ox1p_120f;
      return 0 / (x - x);
    }
    if (ix < 0x3FE00000) {
      if (ix < 0x3E500000 && ix >= 0x00100000) return x;
      return x + x * R(x * x);
    }
    // var z = (1.0 - builtin_abs<f64>(x)) * 0.5;
    var z = 0.5 - builtin_abs<f64>(x) * 0.5;
    var s = builtin_sqrt<f64>(z);
    var r = R(z);
    if (ix >= 0x3FEF3333) x = pio2_hi - (2 * (s + s * r) - pio2_lo);
    else {
      let f = reinterpret<f64>(reinterpret<u64>(s) & 0xFFFFFFFF00000000);
      let c = (z - f * f) / (s + f);
      x = 0.5 * pio2_hi - (2 * s * r - (pio2_lo - 2 * c) - (0.5 * pio2_hi - 2 * f));
    }
    if (hx >> 31) return -x;
    return x;
  }

  export function asinh(x: f64): f64 { // see: musl/src/math/asinh.c
    const c = reinterpret<f64>(0x3FE62E42FEFA39EF); // 0.693147180559945309417232121458176568
    var u = reinterpret<u64>(x);
    var e = u >> 52 & 0x7FF;
    var y = reinterpret<f64>(u & 0x7FFFFFFFFFFFFFFF);
    if (e >= 0x3FF + 26) y = log(y) + c;
    else if (e >= 0x3FF + 1)  y =   log(2 * y + 1 / (builtin_sqrt<f64>(y * y + 1) + y));
    else if (e >= 0x3FF - 26) y = log1p(y + y * y / (builtin_sqrt<f64>(y * y + 1) + 1));
    return builtin_copysign(y, x);
  }

  export function atan(x: f64): f64 { // see musl/src/math/atan.c and SUN COPYRIGHT NOTICE above
    const
      atanhi0   = reinterpret<f64>(0x3FDDAC670561BB4F), //  4.63647609000806093515e-01
      atanhi1   = reinterpret<f64>(0x3FE921FB54442D18), //  7.85398163397448278999e-01
      atanhi2   = reinterpret<f64>(0x3FEF730BD281F69B), //  9.82793723247329054082e-01
      atanhi3   = reinterpret<f64>(0x3FF921FB54442D18), //  1.57079632679489655800e+00
      atanlo0   = reinterpret<f64>(0x3C7A2B7F222F65E2), //  2.26987774529616870924e-17
      atanlo1   = reinterpret<f64>(0x3C81A62633145C07), //  3.06161699786838301793e-17
      atanlo2   = reinterpret<f64>(0x3C7007887AF0CBBD), //  1.39033110312309984516e-17
      atanlo3   = reinterpret<f64>(0x3C91A62633145C07), //  6.12323399573676603587e-17
      aT0       = reinterpret<f64>(0x3FD555555555550D), //  3.33333333333329318027e-01
      aT1       = reinterpret<f64>(0xBFC999999998EBC4), // -1.99999999998764832476e-01
      aT2       = reinterpret<f64>(0x3FC24924920083FF), //  1.42857142725034663711e-01
      aT3       = reinterpret<f64>(0xBFBC71C6FE231671), // -1.11111104054623557880e-01,
      aT4       = reinterpret<f64>(0x3FB745CDC54C206E), //  9.09088713343650656196e-02
      aT5       = reinterpret<f64>(0xBFB3B0F2AF749A6D), // -7.69187620504482999495e-02
      aT6       = reinterpret<f64>(0x3FB10D66A0D03D51), //  6.66107313738753120669e-02
      aT7       = reinterpret<f64>(0xBFADDE2D52DEFD9A), // -5.83357013379057348645e-02
      aT8       = reinterpret<f64>(0x3FA97B4B24760DEB), //  4.97687799461593236017e-02
      aT9       = reinterpret<f64>(0xBFA2B4442C6A6C2F), // -3.65315727442169155270e-02
      aT10      = reinterpret<f64>(0x3F90AD3AE322DA11), //  1.62858201153657823623e-02
      Ox1p_120f = reinterpret<f32>(0x03800000);
    var ix = <u32>(reinterpret<u64>(x) >> 32);
    var sx = x;
    ix &= 0x7FFFFFFF;
    var z: f64;
    if (ix >= 0x44100000) {
      if (isNaN(x)) return x;
      z = atanhi3 + Ox1p_120f;
      return builtin_copysign<f64>(z, sx);
    }
    var id: i32;
    if (ix < 0x3FDC0000) {
      if (ix < 0x3E400000) return x;
      id = -1;
    } else {
      x = builtin_abs<f64>(x);
      if (ix < 0x3FF30000) {
        if (ix < 0x3FE60000) {
          id = 0;
          x = (2.0 * x - 1.0) / (2.0 + x);
        } else {
          id = 1;
          x = (x - 1.0) / (x + 1.0);
        }
      } else {
        if (ix < 0x40038000) {
          id = 2;
          x = (x - 1.5) / (1.0 + 1.5 * x);
        } else {
          id = 3;
          x = -1.0 / x;
        }
      }
    }
    z = x * x;
    var w = z * z;
    var s1 = z * (aT0 + w * (aT2 + w * (aT4 + w * (aT6 + w * (aT8 + w * aT10)))));
    var s2 = w * (aT1 + w * (aT3 + w * (aT5 + w * (aT7 + w * aT9))));
    var s3 = x * (s1 + s2);
    if (id < 0) return x - s3;
    switch (id) {
      case 0: { z = atanhi0 - ((s3 - atanlo0) - x); break; }
      case 1: { z = atanhi1 - ((s3 - atanlo1) - x); break; }
      case 2: { z = atanhi2 - ((s3 - atanlo2) - x); break; }
      case 3: { z = atanhi3 - ((s3 - atanlo3) - x); break; }
      default: unreachable();
    }
    return builtin_copysign<f64>(z, sx);
  }

  export function atanh(x: f64): f64 { // see: musl/src/math/atanh.c
    var u = reinterpret<u64>(x);
    var e = u >> 52 & 0x7FF;
    var s = u >> 63;
    u &= 0x7FFFFFFFFFFFFFFF;
    var y = reinterpret<f64>(u);
    if (e < 0x3FF - 1) {
      if (e >= 0x3FF - 32) y = 0.5 * log1p(2 * y + 2 * y * y / (1 - y));
    } else {
      y = 0.5 * log1p(2 * (y / (1 - y)));
    }
    return builtin_copysign<f64>(y, x);
  }

  export function atan2(y: f64, x: f64): f64 { // see: musl/src/math/atan2.c and SUN COPYRIGHT NOTICE above
    const pi_lo = reinterpret<f64>(0x3CA1A62633145C07); // 1.2246467991473531772E-16
    if (isNaN(x) || isNaN(y)) return x + y;
    var u = reinterpret<u64>(x);
    var ix = <u32>(u >> 32);
    var lx = <u32>u;
    u = reinterpret<u64>(y);
    var iy = <u32>(u >> 32);
    var ly = <u32>u;
    if ((ix - 0x3FF00000 | lx) == 0) return atan(y);
    var m = ((iy >> 31) & 1) | ((ix >> 30) & 2);
    ix = ix & 0x7FFFFFFF;
    iy = iy & 0x7FFFFFFF;
    if ((iy | ly) == 0) {
      switch (m) {
        case 0:
        case 1: return  y;
        case 2: return  PI;
        case 3: return -PI;
      }
    }
    if ((ix | lx) == 0) return m & 1 ? -PI / 2 : PI / 2;
    if (ix == 0x7FF00000) {
      if (iy == 0x7FF00000) {
        switch (m) {
          case 0: return  PI / 4;
          case 1: return -PI / 4;
          case 2: return  3 * PI / 4;
          case 3: return -3 * PI / 4;
        }
      } else {
        switch (m) {
          case 0: return  0.0;
          case 1: return -0.0;
          case 2: return  PI;
          case 3: return -PI;
        }
      }
    }
    var z: f64;
    if (ix + (64 << 20) < iy || iy == 0x7FF00000) return m & 1 ? -PI / 2 : PI / 2;
    if ((m & 2) && iy + (64 << 20) < ix) z = 0;
    else z = atan(builtin_abs<f64>(y / x));
    switch (m) {
      case 0: return  z;
      case 1: return -z;
      case 2: return PI - (z - pi_lo);
      case 3: return (z - pi_lo) - PI;
    }
    unreachable();
    return 0;
  }

  export function cbrt(x: f64): f64 { // see: musl/src/math/cbrt.c and SUN COPYRIGHT NOTICE above
    const
      B1     = <u32>715094163,
      B2     = <u32>696219795,
      P0     = reinterpret<f64>(0x3FFE03E60F61E692), //  1.87595182427177009643
      P1     = reinterpret<f64>(0xBFFE28E092F02420), // -1.88497979543377169875
      P2     = reinterpret<f64>(0x3FF9F1604A49D6C2), //  1.621429720105354466140
      P3     = reinterpret<f64>(0xBFE844CBBEE751D9), // -0.758397934778766047437
      P4     = reinterpret<f64>(0x3FC2B000D4E4EDD7), //  0.145996192886612446982
      Ox1p54 = reinterpret<f64>(0x4350000000000000);
    var u = reinterpret<u64>(x);
    var hx = <u32>(u >> 32) & 0x7FFFFFFF;
    if (hx >= 0x7FF00000) return x + x;
    if (hx < 0x00100000) {
      u = reinterpret<u64>(x * Ox1p54);
      hx = <u32>(u >> 32) & 0x7FFFFFFF;
      if (hx == 0) return x;
      hx = hx / 3 + B2;
    } else {
      hx = hx / 3 + B1;
    }
    u &= 1 << 63;
    u |= <u64>hx << 32;
    var t = reinterpret<f64>(u);
    var r = (t * t) * (t / x);
    t = t * ((P0 + r * (P1 + r * P2)) + ((r * r) * r) * (P3 + r * P4));
    t = reinterpret<f64>((reinterpret<u64>(t) + 0x80000000) & 0xFFFFFFFFC0000000);
    var s = t * t;
    r = x / s;
    r = (r - t) / (2 * t + r);
    t = t + t * r;
    return t;
  }

  @inline
  export function ceil(x: f64): f64 {
    return builtin_ceil<f64>(x);
  }

  export function clz32(x: f64): f64 {
    if (!isFinite(x)) return 32;
    /*
     * Wasm (MVP) and JS have different approaches for double->int conversions.
     *
     * For emulate JS conversion behavior and avoid trapping from wasm we should modulate by MAX_INT
     * our float-point arguments before actual convertion to integers.
     */
    return builtin_clz(
      <i32><i64>(x - 4294967296 * builtin_floor(x * (1.0 / 4294967296)))
    );
  }

  export function cos(x: f64): f64 { // TODO
    unreachable();
    return 0;
  }

  export function cosh(x: f64): f64 { // see: musl/src/math/cosh.c
    var u = reinterpret<u64>(x);
    u &= 0x7FFFFFFFFFFFFFFF;
    x = reinterpret<f64>(u);
    var w = <u32>(u >> 32);
    var t: f64;
    if (w < 0x3FE62E42) {
      if (w < 0x3FF00000 - (26 << 20)) return 1;
      t = expm1(x);
      // return 1 + t * t / (2 * (1 + t));
      return 1 + t * t / (2 + 2 * t);
    }
    if (w < 0x40862E42) {
      t = exp(x);
      return 0.5 * (t + 1 / t);
    }
    t = expo2(x);
    return t;
  }

  export function exp(x: f64): f64 { // see: musl/src/math/exp.c and SUN COPYRIGHT NOTICE above
    const
      ln2hi     = reinterpret<f64>(0x3FE62E42FEE00000), //  6.93147180369123816490e-01
      ln2lo     = reinterpret<f64>(0x3DEA39EF35793C76), //  1.90821492927058770002e-10
      invln2    = reinterpret<f64>(0x3FF71547652B82FE), //  1.44269504088896338700e+00
      P1        = reinterpret<f64>(0x3FC555555555553E), //  1.66666666666666019037e-01
      P2        = reinterpret<f64>(0xBF66C16C16BEBD93), // -2.77777777770155933842e-03
      P3        = reinterpret<f64>(0x3F11566AAF25DE2C), //  6.61375632143793436117e-05
      P4        = reinterpret<f64>(0xBEBBBD41C5D26BF1), // -1.65339022054652515390e-06
      P5        = reinterpret<f64>(0x3E66376972BEA4D0), //  4.13813679705723846039e-08
      overflow  = reinterpret<f64>(0x40862E42FEFA39EF), //  709.782712893383973096
      underflow = reinterpret<f64>(0xC0874910D52D3051), // -745.13321910194110842
      Ox1p1023  = reinterpret<f64>(0x7FE0000000000000);
    var hx = <u32>(reinterpret<u64>(x) >> 32);
    var sign_ = <i32>(hx >> 31);
    hx &= 0x7FFFFFFF;
    if (hx >= 0x4086232B) {
      if (isNaN(x)) return x;
      if (x > overflow)  return x * Ox1p1023;
      if (x < underflow) return 0;
    }
    var hi: f64, lo: f64 = 0;
    var k = 0;
    if (hx > 0x3FD62E42) {
      if (hx >= 0x3FF0A2B2) {
        k = <i32>(invln2 * x + builtin_copysign<f64>(0.5, x));
      } else {
        k = 1 - (sign_ << 1);
      }
      hi = x - k * ln2hi;
      lo = k * ln2lo;
      x = hi - lo;
    } else if (hx > 0x3E300000) {
      hi = x;
    } else return 1.0 + x;
    var xs = x * x;
    // var c = x - xp2 * (P1 + xp2 * (P2 + xp2 * (P3 + xp2 * (P4 + xp2 * P5))));
    var xq = xs * xs;
    var c = x - (xs * P1 + xq * ((P2 + xs * P3) + xq * (P4 + xs * P5)));
    var y = 1.0 + (x * c / (2 - c) - lo + hi);
    if (k == 0) return y;
    return scalbn(y, k);
  }

  export function expm1(x: f64): f64 { // see: musl/src/math/expm1.c and SUN COPYRIGHT NOTICE above
    const
      o_threshold = reinterpret<f64>(0x40862E42FEFA39EF), //  7.09782712893383973096e+02
      ln2_hi      = reinterpret<f64>(0x3FE62E42FEE00000), //  6.93147180369123816490e-01
      ln2_lo      = reinterpret<f64>(0x3DEA39EF35793C76), //  1.90821492927058770002e-10
      invln2      = reinterpret<f64>(0x3FF71547652B82FE), //  1.44269504088896338700e+00
      Q1          = reinterpret<f64>(0xBFA11111111110F4), // -3.33333333333331316428e-02
      Q2          = reinterpret<f64>(0x3F5A01A019FE5585), //  1.58730158725481460165e-03
      Q3          = reinterpret<f64>(0xBF14CE199EAADBB7), // -7.93650757867487942473e-05
      Q4          = reinterpret<f64>(0x3ED0CFCA86E65239), //  4.00821782732936239552e-06
      Q5          = reinterpret<f64>(0xBE8AFDB76E09C32D), // -2.01099218183624371326e-07
      Ox1p1023    = reinterpret<f64>(0x7FE0000000000000);
    var u = reinterpret<u64>(x);
    var hx = <u32>(u >> 32 & 0x7FFFFFFF);
    var k = 0, sign_ = <i32>(u >> 63);
    if (hx >= 0x4043687A) {
      if (isNaN(x)) return x;
      if (sign_) return -1;
      if (x > o_threshold) return x * Ox1p1023;
    }
    var c = 0.0, t: f64;
    if (hx > 0x3FD62E42) {
      k = select<i32>(
        1 - (sign_ << 1),
        <i32>(invln2 * x + builtin_copysign<f64>(0.5, x)),
        hx < 0x3FF0A2B2
      );
      t = <f64>k;
      let hi = x - t * ln2_hi;
      let lo = t * ln2_lo;
      x = hi - lo;
      c = (hi - x) - lo;
    } else if (hx < 0x3C900000) return x;
    var hfx = 0.5 * x;
    var hxs = x * hfx;
    // var r1 = 1.0 + hxs * (Q1 + hxs * (Q2 + hxs * (Q3 + hxs * (Q4 + hxs * Q5))));
    var hxq = hxs * hxs;
    var r1 = (1.0 + hxs * Q1) + hxq * ((Q2 + hxs * Q3) + hxq * (Q4 + hxs * Q5));
    t = 3.0 - r1 * hfx;
    var e = hxs * ((r1 - t) / (6.0 - x * t));
    if (k == 0) return x - (x * e - hxs);
    e = x * (e - c) - c;
    e -= hxs;
    if (k == -1) return 0.5 * (x - e) - 0.5;
    if (k == 1) {
      if (x < -0.25) return -2.0 * (e - (x + 0.5));
      return 1.0 + 2.0 * (x - e);
    }
    u = (0x3FF + k) << 52;
    var twopk = reinterpret<f64>(u);
    var y: f64;
    if (k < 0 || k > 56) {
      y = x - e + 1.0;
      if (k == 1024) y = y * 2.0 * Ox1p1023;
      else y = y * twopk;
      return y - 1.0;
    }
    u = (0x3FF - k) << 52;
    y = reinterpret<f64>(u);
    if (k < 20) y = (1 - y) - e;
    else y = 1 - (e + y);
    return (x + y) * twopk;
  }

  @inline
  export function floor(x: f64): f64 {
    return builtin_floor<f64>(x);
  }

  @inline
  export function fround(x: f64): f32 {
    return <f32>x;
  }

  export function hypot(x: f64, y: f64): f64 { // see: musl/src/math/hypot.c
    const
      SPLIT    = reinterpret<f64>(0x41A0000000000000) + 1, // 0x1p27 + 1
      Ox1p700  = reinterpret<f64>(0x6BB0000000000000),
      Ox1p_700 = reinterpret<f64>(0x1430000000000000);
    var ux = reinterpret<u64>(x);
    var uy = reinterpret<u64>(y);
    ux &= 0x7FFFFFFFFFFFFFFF;
    uy &= 0x7FFFFFFFFFFFFFFF;
    if (ux < uy) {
      let ut = ux;
      ux = uy;
      uy = ut;
    }
    var ex = <i32>(ux >> 52);
    var ey = <i32>(uy >> 52);
    y = reinterpret<f64>(uy);
    if (ey == 0x7FF) return y;
    x = reinterpret<f64>(ux);
    if (ex == 0x7FF || uy == 0) return x;
    if (ex - ey > 64) return x + y;
    var z = 1.0;
    if (ex > 0x3FF + 510) {
      z  = Ox1p700;
      x *= Ox1p_700;
      y *= Ox1p_700;
    } else if (ey < 0x3FF - 450) {
      z  = Ox1p_700;
      x *= Ox1p700;
      y *= Ox1p700;
    }
    var c = x * SPLIT;
    var h = x - c + c;
    var l = x - h;
    var hx = x * x;
    var lx = h * h - hx + (2 * h + l) * l;
    c = y * SPLIT;
    h = y - c + c;
    l = y - h;
    var hy = y * y;
    var ly = h * h - hy + (2 * h + l) * l;
    return z * builtin_sqrt(ly + lx + hy + hx);
  }

  export function imul(x: f64, y: f64): f64 {
    /*
     * Wasm (MVP) and JS have different approaches for double->int conversions.
     *
     * For emulate JS conversion behavior and avoid trapping from wasm we should modulate by MAX_INT
     * our float-point arguments before actual convertion to integers.
     */
    if (!isFinite(x + y)) return 0;
    const inv32 = 1.0 / 4294967296;
    return (
      <i32><i64>(x - 4294967296 * builtin_floor(x * inv32)) *
      <i32><i64>(y - 4294967296 * builtin_floor(y * inv32))
    );
  }

  export function log(x: f64): f64 { // see: musl/src/math/log.c and SUN COPYRIGHT NOTICE above
    const
      ln2_hi = reinterpret<f64>(0x3FE62E42FEE00000), // 6.93147180369123816490e-01
      ln2_lo = reinterpret<f64>(0x3DEA39EF35793C76), // 1.90821492927058770002e-10
      Lg1    = reinterpret<f64>(0x3FE5555555555593), // 6.666666666666735130e-01
      Lg2    = reinterpret<f64>(0x3FD999999997FA04), // 3.999999999940941908e-01
      Lg3    = reinterpret<f64>(0x3FD2492494229359), // 2.857142874366239149e-01
      Lg4    = reinterpret<f64>(0x3FCC71C51D8E78AF), // 2.222219843214978396e-01
      Lg5    = reinterpret<f64>(0x3FC7466496CB03DE), // 1.818357216161805012e-01
      Lg6    = reinterpret<f64>(0x3FC39A09D078C69F), // 1.531383769920937332e-01
      Lg7    = reinterpret<f64>(0x3FC2F112DF3E5244), // 1.479819860511658591e-01
      Ox1p54 = reinterpret<f64>(0x4350000000000000);
    var u = reinterpret<u64>(x);
    var hx = <u32>(u >> 32);
    var k = 0;
    if (hx < 0x00100000 || <bool>(hx >> 31)) {
      if (u << 1 == 0) return -1 / (x * x);
      if (hx >> 31)    return (x - x) / 0.0;
      k -= 54;
      x *= Ox1p54;
      u = reinterpret<u64>(x);
      hx = <u32>(u >> 32);
    } else if (hx >= 0x7FF00000) return x;
      else if (hx == 0x3FF00000 && u << 32 == 0) return 0;
    hx += 0x3FF00000 - 0x3FE6A09E;
    k += (<i32>hx >> 20) - 0x3FF;
    hx = (hx & 0x000FFFFF) + 0x3FE6A09E;
    u = <u64>hx << 32 | (u & 0xFFFFFFFF);
    x = reinterpret<f64>(u);
    var f = x - 1.0;
    var hfsq = 0.5 * f * f;
    var s = f / (2.0 + f);
    var z = s * s;
    var w = z * z;
    var t1 = w * (Lg2 + w * (Lg4 + w * Lg6));
    var t2 = z * (Lg1 + w * (Lg3 + w * (Lg5 + w * Lg7)));
    var r = t2 + t1;
    var dk = k;
    return s * (hfsq + r) + dk * ln2_lo - hfsq + f + dk * ln2_hi;
  }

  export function log10(x: f64): f64 { // see: musl/src/math/log10.c and SUN COPYRIGHT NOTICE above
    const
      ivln10hi  = reinterpret<f64>(0x3FDBCB7B15200000), // 4.34294481878168880939e-01
      ivln10lo  = reinterpret<f64>(0x3DBB9438CA9AADD5), // 2.50829467116452752298e-11
      log10_2hi = reinterpret<f64>(0x3FD34413509F6000), // 3.01029995663611771306e-01
      log10_2lo = reinterpret<f64>(0x3D59FEF311F12B36), // 3.69423907715893078616e-13
      Lg1       = reinterpret<f64>(0x3FE5555555555593), // 6.666666666666735130e-01
      Lg2       = reinterpret<f64>(0x3FD999999997FA04), // 3.999999999940941908e-01
      Lg3       = reinterpret<f64>(0x3FD2492494229359), // 2.857142874366239149e-01
      Lg4       = reinterpret<f64>(0x3FCC71C51D8E78AF), // 2.222219843214978396e-01
      Lg5       = reinterpret<f64>(0x3FC7466496CB03DE), // 1.818357216161805012e-01
      Lg6       = reinterpret<f64>(0x3FC39A09D078C69F), // 1.531383769920937332e-01
      Lg7       = reinterpret<f64>(0x3FC2F112DF3E5244), // 1.479819860511658591e-01
      Ox1p54    = reinterpret<f64>(0x4350000000000000);
    var u = reinterpret<u64>(x);
    var hx = <u32>(u >> 32);
    var k = 0;
    if (hx < 0x00100000 || <bool>(hx >> 31)) {
      if (u << 1 == 0) return -1 / (x * x);
      if (hx >> 31) return (x - x) / 0.0;
      k -= 54;
      x *= Ox1p54;
      u = reinterpret<u64>(x);
      hx = <u32>(u >> 32);
    } else if (hx >= 0x7FF00000) return x;
      else if (hx == 0x3FF00000 && u << 32 == 0) return 0;
    hx += 0x3FF00000 - 0x3FE6A09E;
    k += <i32>(hx >> 20) - 0x3FF;
    hx = (hx & 0x000FFFFF) + 0x3FE6A09E;
    u = <u64>hx << 32 | (u & 0xFFFFFFFF);
    x = reinterpret<f64>(u);
    var f = x - 1.0;
    var hfsq = 0.5 * f * f;
    var s = f / (2.0 + f);
    var z = s * s;
    var w = z * z;
    var t1 = w * (Lg2 + w * (Lg4 + w * Lg6));
    var t2 = z * (Lg1 + w * (Lg3 + w * (Lg5 + w * Lg7)));
    var r = t2 + t1;
    var hi = f - hfsq;
    u = reinterpret<u64>(hi);
    u &= 0xFFFFFFFF00000000;
    hi = reinterpret<f64>(u);
    var lo = f - hi - hfsq + s * (hfsq + r);
    var val_hi = hi * ivln10hi;
    var dk = <f64>k;
    var y = dk * log10_2hi;
    var val_lo = dk * log10_2lo + (lo + hi) * ivln10lo + lo * ivln10hi;
    w = y + val_hi;
    val_lo += (y - w) + val_hi;
    return val_lo + w;
  }

  export function log1p(x: f64): f64 { // see: musl/src/math/log1p.c and SUN COPYRIGHT NOTICE above
    const
      ln2_hi = reinterpret<f64>(0x3FE62E42FEE00000), // 6.93147180369123816490e-01
      ln2_lo = reinterpret<f64>(0x3DEA39EF35793C76), // 1.90821492927058770002e-10
      Lg1    = reinterpret<f64>(0x3FE5555555555593), // 6.666666666666735130e-01
      Lg2    = reinterpret<f64>(0x3FD999999997FA04), // 3.999999999940941908e-01
      Lg3    = reinterpret<f64>(0x3FD2492494229359), // 2.857142874366239149e-01
      Lg4    = reinterpret<f64>(0x3FCC71C51D8E78AF), // 2.222219843214978396e-01
      Lg5    = reinterpret<f64>(0x3FC7466496CB03DE), // 1.818357216161805012e-01
      Lg6    = reinterpret<f64>(0x3FC39A09D078C69F), // 1.531383769920937332e-01
      Lg7    = reinterpret<f64>(0x3FC2F112DF3E5244); // 1.479819860511658591e-01
    var u = reinterpret<u64>(x);
    var hx = <u32>(u >> 32);
    var k = 1;
    var c = 0.0, f = 0.0;
    if (hx < 0x3FDA827A || <bool>(hx >> 31)) {
      if (hx >= 0xBFF00000) {
        if (x == -1) return x / 0.0;
        return (x - x) / 0.0;
      }
      if (hx << 1 < 0x3CA00000 << 1) return x;
      if (hx <= 0xBFD2BEC4) {
        k = 0;
        c = 0;
        f = x;
      }
    } else if (hx >= 0x7FF00000) return x;
    if (k) {
      u = reinterpret<u64>(1 + x);
      let hu = <u32>(u >> 32);
      hu += 0x3FF00000 - 0x3FE6A09E;
      k = <i32>(hu >> 20) - 0x3FF;
      if (k < 54) {
        let uf = reinterpret<f64>(u);
        c = k >= 2 ? 1 - (uf - x) : x - (uf - 1);
        c /= uf;
      } else c = 0;
      hu = (hu & 0x000FFFFF) + 0x3FE6A09E;
      u = <u64>hu << 32 | (u & 0xFFFFFFFF);
      f = reinterpret<f64>(u) - 1;
    }
    var hfsq = 0.5 * f * f;
    var s = f / (2.0 + f);
    var z = s * s;
    var w = z * z;
    var t1 = w * (Lg2 + w * (Lg4 + w * Lg6));
    var t2 = z * (Lg1 + w * (Lg3 + w * (Lg5 + w * Lg7)));
    var r = t2 + t1;
    var dk = <f64>k;
    return s * (hfsq + r) + (dk * ln2_lo + c) - hfsq + f + dk * ln2_hi;
  }

  export function log2(x: f64): f64 { // see: musl/src/math/log2.c and SUN COPYRIGHT NOTICE above
    const
      ivln2hi = reinterpret<f64>(0x3FF7154765200000), // 1.44269504072144627571e+00
      ivln2lo = reinterpret<f64>(0x3DE705FC2EEFA200), // 1.67517131648865118353e-10
      Lg1     = reinterpret<f64>(0x3FE5555555555593), // 6.666666666666735130e-01
      Lg2     = reinterpret<f64>(0x3FD999999997FA04), // 3.999999999940941908e-01
      Lg3     = reinterpret<f64>(0x3FD2492494229359), // 2.857142874366239149e-01
      Lg4     = reinterpret<f64>(0x3FCC71C51D8E78AF), // 2.222219843214978396e-01
      Lg5     = reinterpret<f64>(0x3FC7466496CB03DE), // 1.818357216161805012e-01
      Lg6     = reinterpret<f64>(0x3FC39A09D078C69F), // 1.531383769920937332e-01
      Lg7     = reinterpret<f64>(0x3FC2F112DF3E5244), // 1.479819860511658591e-01
      Ox1p54  = reinterpret<f64>(0x4350000000000000);
    var u = reinterpret<u64>(x);
    var hx = <u32>(u >> 32);
    var k = 0;
    if (hx < 0x00100000 || <bool>(hx >> 31)) {
      if (u << 1 == 0) return -1 / (x * x);
      if (hx >> 31) return (x - x) / 0.0;
      k -= 54;
      x *= Ox1p54;
      u = reinterpret<u64>(x);
      hx = <u32>(u >> 32);
    } else if (hx >= 0x7FF00000) return x;
      else if (hx == 0x3FF00000 && u << 32 == 0) return 0;
    hx += 0x3FF00000 - 0x3FE6A09E;
    k += <i32>(hx >> 20) - 0x3FF;
    hx = (hx & 0x000FFFFF) + 0x3FE6A09E;
    u = <u64>hx << 32 | (u & 0xFFFFFFFF);
    x = reinterpret<f64>(u);
    var f = x - 1.0;
    var hfsq = 0.5 * f * f;
    var s = f / (2.0 + f);
    var z = s * s;
    var w = z * z;
    var t1 = w * (Lg2 + w * (Lg4 + w * Lg6));
    var t2 = z * (Lg1 + w * (Lg3 + w * (Lg5 + w * Lg7)));
    var r = t2 + t1;
    var hi = f - hfsq;
    u = reinterpret<u64>(hi);
    u &= 0xFFFFFFFF00000000;
    hi = reinterpret<f64>(u);
    var lo = f - hi - hfsq + s * (hfsq + r);
    var val_hi = hi * ivln2hi;
    var val_lo = (lo + hi) * ivln2lo + lo * ivln2hi;
    var y = <f64>k;
    w = y + val_hi;
    val_lo += (y - w) + val_hi;
    val_hi = w;
    return val_lo + val_hi;
  }

  @inline
  export function max(value1: f64, value2: f64): f64 {
    return builtin_max<f64>(value1, value2);
  }

  @inline
  export function min(value1: f64, value2: f64): f64 {
    return builtin_min<f64>(value1, value2);
  }

  export function pow(x: f64, y: f64): f64 { // see: musl/src/math/pow.c and SUN COPYRIGHT NOTICE above
    const
      dp_h1   = reinterpret<f64>(0x3FE2B80340000000), //  5.84962487220764160156e-01
      dp_l1   = reinterpret<f64>(0x3E4CFDEB43CFD006), //  1.35003920212974897128e-08
      two53   = reinterpret<f64>(0x4340000000000000), //  9007199254740992.0
      huge    = reinterpret<f64>(0x7E37E43C8800759C), //  1e+300
      tiny    = reinterpret<f64>(0x01A56E1FC2F8F359), //  1e-300
      L1      = reinterpret<f64>(0x3FE3333333333303), //  5.99999999999994648725e-01
      L2      = reinterpret<f64>(0x3FDB6DB6DB6FABFF), //  4.28571428578550184252e-01
      L3      = reinterpret<f64>(0x3FD55555518F264D), //  3.33333329818377432918e-01
      L4      = reinterpret<f64>(0x3FD17460A91D4101), //  2.72728123808534006489e-01
      L5      = reinterpret<f64>(0x3FCD864A93C9DB65), //  2.30660745775561754067e-01
      L6      = reinterpret<f64>(0x3FCA7E284A454EEF), //  2.06975017800338417784e-01
      P1      = reinterpret<f64>(0x3FC555555555553E), //  1.66666666666666019037e-01
      P2      = reinterpret<f64>(0xBF66C16C16BEBD93), // -2.77777777770155933842e-03
      P3      = reinterpret<f64>(0x3F11566AAF25DE2C), //  6.61375632143793436117e-05
      P4      = reinterpret<f64>(0xBEBBBD41C5D26BF1), // -1.65339022054652515390e-06
      P5      = reinterpret<f64>(0x3E66376972BEA4D0), //  4.13813679705723846039e-08
      lg2     = reinterpret<f64>(0x3FE62E42FEFA39EF), //  6.93147180559945286227e-01
      lg2_h   = reinterpret<f64>(0x3FE62E4300000000), //  6.93147182464599609375e-01
      lg2_l   = reinterpret<f64>(0xBE205C610CA86C39), // -1.90465429995776804525e-09
      ovt     = reinterpret<f64>(0x3C971547652B82FE), //  8.0085662595372944372e-017
      cp      = reinterpret<f64>(0x3FEEC709DC3A03FD), //  9.61796693925975554329e-01
      cp_h    = reinterpret<f64>(0x3FEEC709E0000000), //  9.61796700954437255859e-01
      cp_l    = reinterpret<f64>(0xBE3E2FE0145B01F5), // -7.02846165095275826516e-09
      ivln2   = reinterpret<f64>(0x3FF71547652B82FE), //  1.44269504088896338700e+00
      ivln2_h = reinterpret<f64>(0x3FF7154760000000), //  1.44269502162933349609e+00
      ivln2_l = reinterpret<f64>(0x3E54AE0BF85DDF44), //  1.92596299112661746887e-08
      inv3    = reinterpret<f64>(0x3FD5555555555555); //  0.3333333333333333333333
    var u_ = reinterpret<u64>(x);
    var hx = <i32>(u_ >> 32);
    var lx = <u32>u_;
    u_ = reinterpret<u64>(y);
    var hy = <i32>(u_ >> 32);
    var ly = <u32>u_;
    var ix = hx & 0x7FFFFFFF;
    var iy = hy & 0x7FFFFFFF;
    if ((iy | ly) == 0) return 1.0; // x**0 = 1, even if x is NaN
    // if (hx == 0x3FF00000 && lx == 0) return 1.0; // C: 1**y = 1, even if y is NaN, JS: NaN
    if ( // NaN if either arg is NaN
      ix > 0x7FF00000 || (ix == 0x7FF00000 && lx != 0) ||
      iy > 0x7FF00000 || (iy == 0x7FF00000 && ly != 0)
    ) return x + y;
    var yisint = 0, k: i32;
    if (hx < 0) {
      if (iy >= 0x43400000) yisint = 2;
      else if (iy >= 0x3FF00000) {
        k = (iy >> 20) - 0x3FF;
        let kcond = k > 20;
        let offset = select<i32>(52, 20, kcond) - k;
        let Ly = select<i32>(ly, iy, kcond);
        let jj = Ly >> offset;
        if ((jj << offset) == Ly) yisint = 2 - (jj & 1);
      }
    }
    if (ly == 0) {
      if (iy == 0x7FF00000) { // y is +-inf
        if (((ix - 0x3FF00000) | lx) == 0) return NaN; // C: (-1)**+-inf is 1, JS: NaN
        else if (ix >= 0x3FF00000) return hy >= 0 ? y : 0.0; // (|x|>1)**+-inf = inf,0
        else return hy >= 0 ? 0.0 : -y; // (|x|<1)**+-inf = 0,inf
      }
      if (iy == 0x3FF00000) {
        if (hy >= 0) return x;
        return 1 / x;
      }
      if (hy == 0x40000000) return x * x;
      if (hy == 0x3FE00000) {
        if (hx >= 0) return builtin_sqrt(x);
      }
    }
    var ax = builtin_abs<f64>(x), z: f64;
    if (lx == 0) {
      if (ix == 0 || ix == 0x7FF00000 || ix == 0x3FF00000) {
        z = ax;
        if (hy < 0) z = 1.0 / z;
        if (hx < 0) {
          if (((ix - 0x3FF00000) | yisint) == 0) {
            let d = z - z;
            z = d / d;
          } else if (yisint == 1) z = -z;
        }
        return z;
      }
    }
    var s = 1.0;
    if (hx < 0) {
      if (yisint == 0) {
        let d = x - x;
        return d / d;
      }
      if (yisint == 1) s = -1.0;
    }
    var t1: f64, t2: f64, p_h: f64, p_l: f64, r: f64, t: f64, u: f64, v: f64, w: f64;
    var j: i32, n: i32;
    if (iy > 0x41E00000) {
      if (iy > 0x43F00000) {
        if (ix <= 0x3FEFFFFF) return hy < 0 ? huge * huge : tiny * tiny;
        if (ix >= 0x3FF00000) return hy > 0 ? huge * huge : tiny * tiny;
      }
      if (ix < 0x3FEFFFFF) return hy < 0 ? s * huge * huge : s * tiny * tiny;
      if (ix > 0x3FF00000) return hy > 0 ? s * huge * huge : s * tiny * tiny;
      t = ax - 1.0;
      w = (t * t) * (0.5 - t * (inv3 - t * 0.25));
      u = ivln2_h * t;
      v = t * ivln2_l - w * ivln2;
      t1 = u + v;
      t1 = reinterpret<f64>(reinterpret<u64>(t1) & 0xFFFFFFFF00000000);
      t2 = v - (t1 - u);
    } else {
      let ss: f64, s2: f64, s_h: f64, s_l: f64, t_h: f64, t_l: f64;
      n = 0;
      if (ix < 0x00100000) {
        ax *= two53;
        n -= 53;
        ix = <u32>(reinterpret<u64>(ax) >> 32);
      }
      n += (ix >> 20) - 0x3FF;
      j = ix & 0x000FFFFF;
      ix = j | 0x3FF00000;
      if (j <= 0x3988E) k = 0;
      else if (j < 0xBB67A) k = 1;
      else {
        k = 0;
        n += 1;
        ix -= 0x00100000;
      }
      ax = reinterpret<f64>(reinterpret<u64>(ax) & 0xFFFFFFFF | (<u64>ix << 32));
      let bp = select<f64>(1.5, 1.0, k); // k ? 1.5 : 1.0
      u = ax - bp;
      v = 1.0 / (ax + bp);
      ss = u * v;
      s_h = ss;
      s_h = reinterpret<f64>(reinterpret<u64>(s_h) & 0xFFFFFFFF00000000);
      t_h = reinterpret<f64>(<u64>(((ix >> 1) | 0x20000000) + 0x00080000 + (k << 18)) << 32);
      t_l = ax - (t_h - bp);
      s_l = v * ((u - s_h * t_h) - s_h * t_l);
      s2 = ss * ss;
      r = s2 * s2 * (L1 + s2 * (L2 + s2 * (L3 + s2 * (L4 + s2 * (L5 + s2 * L6)))));
      r += s_l * (s_h + ss);
      s2 = s_h * s_h;
      t_h = 3.0 + s2 + r;
      t_h = reinterpret<f64>(reinterpret<u64>(t_h) & 0xFFFFFFFF00000000);
      t_l = r - ((t_h - 3.0) - s2);
      u = s_h * t_h;
      v = s_l * t_h + t_l * ss;
      p_h = u + v;
      p_h = reinterpret<f64>(reinterpret<u64>(p_h) & 0xFFFFFFFF00000000);
      p_l = v - (p_h - u);
      let z_h = cp_h * p_h;
      let dp_l = select<f64>(dp_l1, 0.0, k);
      let z_l = cp_l * p_h + p_l * cp + dp_l;
      t = <f64>n;
      let dp_h = select<f64>(dp_h1, 0.0, k);
      t1 = ((z_h + z_l) + dp_h) + t;
      t1 = reinterpret<f64>(reinterpret<u64>(t1) & 0xFFFFFFFF00000000);
      t2 = z_l - (((t1 - t) - dp_h) - z_h);
    }
    var y1 = y;
    y1 = reinterpret<f64>(reinterpret<u64>(y1) & 0xFFFFFFFF00000000);
    p_l = (y - y1) * t1 + y * t2;
    p_h = y1 * t1;
    z = p_l + p_h;
    u_ = reinterpret<u64>(z);
    j = <u32>(u_ >> 32);
    var i = <i32>u_;
    if (j >= 0x40900000) {
      if (((j - 0x40900000) | i) != 0) return s * huge * huge;
      if (p_l + ovt > z - p_h) return s * huge * huge;
    } else if ((j & 0x7FFFFFFF) >= 0x4090CC00) {
      if (((j - 0xC090CC00) | i) != 0) return s * tiny * tiny;
      if (p_l <= z - p_h) return s * tiny * tiny;
    }
    i = j & 0x7FFFFFFF;
    k = (i >> 20) - 0x3FF;
    n = 0;
    if (i > 0x3FE00000) {
      n = j + (0x00100000 >> (k + 1));
      k = ((n & 0x7FFFFFFF) >> 20) - 0x3FF;
      t = 0.0;
      t = reinterpret<f64>(<u64>(n & ~(0x000FFFFF >> k)) << 32);
      n = ((n & 0x000FFFFF) | 0x00100000) >> (20 - k);
      if (j < 0) n = -n;
      p_h -= t;
    }
    t = p_l + p_h;
    t = reinterpret<f64>(reinterpret<u64>(t) & 0xFFFFFFFF00000000);
    u = t * lg2_h;
    v = (p_l - (t - p_h)) * lg2 + t * lg2_l;
    z = u + v;
    w = v - (z - u);
    t = z * z;
    t1 = z - t * (P1 + t * (P2 + t * (P3 + t * (P4 + t * P5))));
    r = (z * t1) / (t1 - 2.0) - (w + z * w);
    z = 1.0 - (r - z);
    j = <u32>(reinterpret<u64>(z) >> 32);
    j += n << 20;
    if ((j >> 20) <= 0) z = scalbn(z, n);
    else z = reinterpret<f64>(reinterpret<u64>(z) & 0xFFFFFFFF | (<u64>j << 32));
    return s * z;
  }

  export function seedRandom(value: i64): void {
    assert(value);
    random_seeded = true;
    random_state0_64 = murmurHash3(value);
    random_state1_64 = murmurHash3(~random_state0_64);
    random_state0_32 = splitMix32(<u32>value);
    random_state1_32 = splitMix32(random_state0_32);
  }

  export function random(): f64 { // see: v8/src/base/random-number-generator.cc
    if (!random_seeded) throw new Error("PRNG must be seeded.");
    var s1 = random_state0_64;
    var s0 = random_state1_64;
    random_state0_64 = s0;
    s1 ^= s1 << 23;
    s1 ^= s1 >> 17;
    s1 ^= s0;
    s1 ^= s0 >> 26;
    random_state1_64 = s1;
    var r = ((s0 + s1) & 0x000FFFFFFFFFFFFF) | 0x3FF0000000000000;
    return reinterpret<f64>(r) - 1;
  }

  @inline
  export function round(x: f64): f64 {
    return builtin_copysign<f64>(builtin_floor<f64>(x + 0.5), x);
  }

  @inline
  export function sign(x: f64): f64 {
    if (ASC_SHRINK_LEVEL > 0) {
      return builtin_abs(x) > 0 ? builtin_copysign<f64>(1, x) : x;
    } else {
      return x > 0 ? 1 : x < 0 ? -1 : x;
    }
  }

  @inline
  export function signbit(x: f64): bool {
    // In ECMAScript all NaN values are indistinguishable from each other
    // so we need handle NaN and negative NaN in similar way
    return <bool>(<i32>(reinterpret<u64>(x) >>> 63) & (x == x));
  }

  export function sin(x: f64): f64 { // TODO
    unreachable();
    return 0;
  }

  export function sinh(x: f64): f64 { // see: musl/src/math/sinh.c
    var u = reinterpret<u64>(x) & 0x7FFFFFFFFFFFFFFF;
    var absx = reinterpret<f64>(u);
    var w = <u32>(u >> 32);
    var t: f64;
    var h = builtin_copysign(0.5, x);
    if (w < 0x40862E42) {
      t = expm1(absx);
      if (w < 0x3FF00000) {
        if (w < 0x3FF00000 - (26 << 20)) return x;
        return h * (2 * t - t * t / (t + 1));
      }
      return h * (t + t / (t + 1));
    }
    t = 2 * h * expo2(absx);
    return t;
  }

  @inline
  export function sqrt(x: f64): f64 {
    return builtin_sqrt<f64>(x);
  }

  export function tan(x: f64): f64 { // TODO
    unreachable();
    return 0;
  }

  export function tanh(x: f64): f64 { // see: musl/src/math/tanh.c
    var u = reinterpret<u64>(x);
    u &= 0x7FFFFFFFFFFFFFFF;
    var y = reinterpret<f64>(u);
    var w = <u32>(u >> 32);
    var t: f64;
    if (w > 0x3FE193EA) {
      if (w > 0x40340000) {
        t = 1 - 0 / y;
      } else {
        t = expm1(2 * y);
        t = 1 - 2 / (t + 2);
      }
    } else if (w > 0x3FD058AE) {
      t = expm1(2 * y);
      t = t / (t + 2);
    } else if (w >= 0x00100000) {
      t = expm1(-2 * y);
      t = -t / (t + 2);
    } else t = y;
    return builtin_copysign<f64>(t, x);
  }

  @inline
  export function trunc(x: f64): f64 {
    return builtin_trunc<f64>(x);
  }

  export function scalbn(x: f64, n: i32): f64 { // see: https://git.musl-libc.org/cgit/musl/tree/src/math/scalbn.c
    const
      Ox1p53    = reinterpret<f64>(0x4340000000000000),
      Ox1p1023  = reinterpret<f64>(0x7FE0000000000000),
      Ox1p_1022 = reinterpret<f64>(0x0010000000000000);
    var y = x;
    if (n > 1023) {
      y *= Ox1p1023;
      n -= 1023;
      if (n > 1023) {
        y *= Ox1p1023;
        n = builtin_min<i32>(n - 1023, 1023);
      }
    } else if (n < -1022) {
      /* make sure final n < -53 to avoid double
       rounding in the subnormal range */
      y *= Ox1p_1022 * Ox1p53;
      n += 1022 - 53;
      if (n < -1022) {
        y *= Ox1p_1022 * Ox1p53;
        n = builtin_max<i32>(n + 1022 - 53, -1022);
      }
    }
    return y * reinterpret<f64>(<u64>(0x3FF + n) << 52);
  }

  export function mod(x: f64, y: f64): f64 { // see: musl/src/math/fmod.c
    var ux = reinterpret<u64>(x);
    var uy = reinterpret<u64>(y);
    var ex = <i64>(ux >> 52 & 0x7FF);
    var ey = <i64>(uy >> 52 & 0x7FF);
    var sx = ux >> 63;
    var uy1 = uy << 1;
    if (uy1 == 0 || ex == 0x7FF || isNaN<f64>(y)) {
      let m = x * y;
      return m / m;
    }
    var ux1 = ux << 1;
    if (ux1 <= uy1) {
      if (ux1 == uy1) return 0 * x;
      return x;
    }
    if (!ex) {
      ex -= builtin_clz<i64>(ux << 12);
      ux <<= -ex + 1;
    } else {
      ux &= <u64>-1 >> 12;
      ux |= 1 << 52;
    }
    if (!ey) {
      ey -= builtin_clz<i64>(uy << 12);
      uy <<= -ey + 1;
    } else {
      uy &= <u64>-1 >> 12;
      uy |= 1 << 52;
    }
    while (ex > ey) {
      if (ux >= uy) {
        if (ux == uy) return 0 * x;
        ux -= uy;
      }
      ux <<= 1;
      --ex;
    }
    if (ux >= uy) {
      if (ux == uy) return 0 * x;
      ux -= uy;
    }
    // for (; !(ux >> 52); ux <<= 1) --ex;
    var shift = builtin_clz<i64>(ux << 11);
    ex -= shift;
    ux <<= shift;
    if (ex > 0) {
      ux -= 1 << 52;
      ux |= ex << 52;
    } else {
      ux >>= -ex + 1;
    }
    ux |= sx << 63;
    return reinterpret<f64>(ux);
  }

  export function rem(x: f64, y: f64): f64 { // see: musl/src/math/remquo.c
    var ux = reinterpret<u64>(x);
    var uy = reinterpret<u64>(y);
    var ex = <i64>(ux >> 52 & 0x7FF);
    var ey = <i64>(uy >> 52 & 0x7FF);
    var sx = <i32>(ux >> 63);
    if (uy << 1 == 0 || ex == 0x7FF || isNaN(y)) {
      let m = x * y;
      return m / m;
    }
    if (ux << 1 == 0) return x;
    var uxi = ux;
    if (!ex) {
      ex -= builtin_clz<i64>(uxi << 12);
      uxi <<= -ex + 1;
    } else {
      uxi &= <u64>-1 >> 12;
      uxi |= 1 << 52;
    }
    if (!ey) {
      ey -= builtin_clz<i64>(uy << 12);
      uy <<= -ey + 1;
    } else {
      uy &= <u64>-1 >> 12;
      uy |= 1 << 52;
    }
    var q: u32 = 0;
    do {
      if (ex < ey) {
        if (ex + 1 == ey) break; // goto end
        return x;
      }
      while (ex > ey) {
        if (uxi >= uy) {
          uxi -= uy;
          ++q;
        }
        uxi <<= 1;
        q <<= 1;
        --ex;
      }
      if (uxi >= uy) {
        uxi -= uy;
        ++q;
      }
      if (uxi == 0) ex = -60;
      else {
        let shift = builtin_clz<i64>(uxi << 11);
        ex -= shift;
        uxi <<= shift;
      }
      break;
    } while (false);
  // end:
    if (ex > 0) {
      uxi -= 1 << 52;
      uxi |= ex << 52;
    } else {
      uxi >>= -ex + 1;
    }
    x = reinterpret<f64>(uxi);
    y = builtin_abs<f64>(y);
    var x2 = x + x;
    if (ex == ey || (ex + 1 == ey && (x2 > y || (x2 == y && <bool>(q & 1))))) {
      x -= y;
      // ++q;
    }
    return sx ? -x : x;
  }
}

/** @internal */
@lazy var rempio2f_y: f64;
@lazy const PIO2_TABLE: u64[] = [
  0xA2F9836E4E441529,
  0xFC2757D1F534DDC0,
  0xDB6295993C439041,
  0xFE5163ABDEBBC561
];

/** @internal */
function Rf(z: f32): f32 { // Rational approximation of (asin(x)-x)/x^3
  const                    // see: musl/src/math/asinf.c and SUN COPYRIGHT NOTICE above
    pS0 = reinterpret<f32>(0x3E2AAA75), //  1.6666586697e-01f
    pS1 = reinterpret<f32>(0xBD2F13BA), // -4.2743422091e-02f
    pS2 = reinterpret<f32>(0xBC0DD36B), // -8.6563630030e-03f
    qS1 = reinterpret<f32>(0xBF34E5AE); // -7.0662963390e-01f
  var p = z * (pS0 + z * (pS1 + z * pS2));
  var q: f32 = 1 + z * qS1;
  return p / q;
}

@inline function expo2f(x: f32): f32 { // exp(x)/2 for x >= log(DBL_MAX)
  const                                // see: musl/src/math/__expo2f.c
    k    = <u32>235,
    kln2 = reinterpret<f32>(0x4322E3BC); // 0x1.45c778p+7f
  var scale = reinterpret<f32>(<u32>(0x7F + (k >> 1)) << 23);
  return NativeMathf.exp(x - kln2) * scale * scale;
}

@inline /** @internal */
function pio2_large_quot(x: f32, u: i32): i32 {       // see: jdh8/metallic/blob/master/src/math/float/rem_pio2f.c
  const coeff = reinterpret<f64>(0x3BF921FB54442D18); // π * 0x1p-65 = 8.51530395021638647334e-20
  const bits = PIO2_TABLE;

  var offset = (u >> 23) - 152;
  var index  = offset >> 6;
  var shift  = offset & 63;

  var b0 = unchecked(bits[index + 0]);
  var b1 = unchecked(bits[index + 1]);
  var lo: u64;

  if (shift > 32) {
    let b2 = unchecked(bits[index + 2]);
    lo  = b2 >> (96 - shift);
    lo |= b1 << (shift - 32);
  } else {
    lo = b1 >> (32 - shift);
  }

  var hi = (b1 >> (64 - shift)) | (b0 << shift);
  var mantissa: u64 = (u & 0x007FFFFF) | 0x00800000;
  var product: u64 = mantissa * hi + (mantissa * lo >> 32);
  var r: i64 = product << 2;
  var q: i32 = <i32>((product >> 62) + (r >>> 63));
  rempio2f_y = copysign<f64>(coeff, x) * <f64>r;
  return q;
}

@inline /** @internal */
function rempio2f(x: f32, u: u32, sign: i32): i32 {   // see: jdh8/metallic/blob/master/src/math/float/rem_pio2f.c
  const pi2hi = reinterpret<f64>(0x3FF921FB50000000); // 1.57079631090164184570
  const pi2lo = reinterpret<f64>(0x3E5110B4611A6263); // 1.58932547735281966916e-8
  const _2_pi = reinterpret<f64>(0x3FE45F306DC9C883); // 0.63661977236758134308

  if (u < 0x4DC90FDB) { /* π * 0x1p28 */
    let q = nearest(x * _2_pi);
    rempio2f_y = x - q * pi2hi - q * pi2lo;
    return <i32>q;
  }

  var q = pio2_large_quot(x, u);
  return select(-q, q, sign);
}

/* |sin(x)/x - s(x)| < 2**-37.5 (~[-4.89e-12, 4.824e-12]). */
@inline /** @internal */
function sin_kernf(x: f64): f32 { // see: musl/tree/src/math/__sindf.c
  const S1 = reinterpret<f64>(0xBFC5555554CBAC77); // -0x15555554cbac77.0p-55
  const S2 = reinterpret<f64>(0x3F811110896EFBB2); //  0x111110896efbb2.0p-59
  const S3 = reinterpret<f64>(0xBF2A00F9E2CAE774); // -0x1a00f9e2cae774.0p-65
  const S4 = reinterpret<f64>(0x3EC6CD878C3B46A7); //  0x16cd878c3b46a7.0p-71

  var z = x * x;
  var w = z * z;
  var r = S3 + z * S4;
  var s = z * x;
  return <f32>((x + s * (S1 + z * S2)) + s * w * r);
}

/* |cos(x) - c(x)| < 2**-34.1 (~[-5.37e-11, 5.295e-11]). */
@inline /** @internal */
function cos_kernf(x: f64): f32 { // see: musl/tree/src/math/__cosdf.c
  const C0 = reinterpret<f64>(0xBFDFFFFFFD0C5E81); // -0x1ffffffd0c5e81.0p-54
  const C1 = reinterpret<f64>(0x3FA55553E1053A42); //  0x155553e1053a42.0p-57
  const C2 = reinterpret<f64>(0xBF56C087E80F1E27); // -0x16c087e80f1e27.0p-62
  const C3 = reinterpret<f64>(0x3EF99342E0EE5069); //  0x199342e0ee5069.0p-68

  var z = x * x;
  var w = z * z;
  var r = C2 + z * C3;
  return <f32>(((1 + z * C0) + w * C1) + (w * z) * r);
}

/* |tan(x)/x - t(x)| < 2**-25.5 (~[-2e-08, 2e-08]). */
@inline /** @internal */
function tan_kernf(x: f64, odd: i32): f32 { // see: musl/tree/src/math/__tandf.c

  const T0 = reinterpret<f64>(0x3FD5554D3418C99F); /* 0x15554d3418c99f.0p-54 */
  const T1 = reinterpret<f64>(0x3FC112FD38999F72); /* 0x1112fd38999f72.0p-55 */
  const T2 = reinterpret<f64>(0x3FAB54C91D865AFE); /* 0x1b54c91d865afe.0p-57 */
  const T3 = reinterpret<f64>(0x3F991DF3908C33CE); /* 0x191df3908c33ce.0p-58 */
  const T4 = reinterpret<f64>(0x3F685DADFCECF44E); /* 0x185dadfcecf44e.0p-61 */
  const T5 = reinterpret<f64>(0x3F8362B9BF971BCD); /* 0x1362b9bf971bcd.0p-59 */

  var z = x * x;
  var r = T4 + z * T5;
  var t = T2 + z * T3;
  var w = z * z;
  var s = z * x;
  var u = T0 + z * T1;

  r = (x + s * u) + (s * w) * (t + w * r);
  return <f32>(odd ? -1 / r : r);
}

export namespace NativeMathf {

  @lazy export const E       = <f32>NativeMath.E;
  @lazy export const LN2     = <f32>NativeMath.LN2;
  @lazy export const LN10    = <f32>NativeMath.LN10;
  @lazy export const LOG2E   = <f32>NativeMath.LOG2E;
  @lazy export const LOG10E  = <f32>NativeMath.LOG10E;
  @lazy export const PI      = <f32>NativeMath.PI;
  @lazy export const SQRT1_2 = <f32>NativeMath.SQRT1_2;
  @lazy export const SQRT2   = <f32>NativeMath.SQRT2;

  /** Used as return values from Mathf.sincos */
  @lazy export var sincos_sin: f32 = 0;
  @lazy export var sincos_cos: f32 = 0;

  @inline
  export function abs(x: f32): f32 {
    return builtin_abs<f32>(x);
  }

  export function acos(x: f32): f32 { // see: musl/src/math/acosf.c and SUN COPYRIGHT NOTICE above
    const
      pio2_hi   = reinterpret<f32>(0x3FC90FDA), // 1.5707962513e+00f
      pio2_lo   = reinterpret<f32>(0x33A22168), // 7.5497894159e-08f
      Ox1p_120f = reinterpret<f32>(0x03800000);
    var hx = reinterpret<u32>(x);
    var ix = hx & 0x7FFFFFFF;
    if (ix >= 0x3F800000) {
      if (ix == 0x3F800000) {
        if (hx >> 31) return 2 * pio2_hi + Ox1p_120f;
        return 0;
      }
      return 0 / (x - x);
    }
    if (ix < 0x3F000000) {
      if (ix <= 0x32800000) return pio2_hi + Ox1p_120f;
      return pio2_hi - (x - (pio2_lo - x * Rf(x * x)));
    }
    var z: f32, w: f32, s: f32;
    if (hx >> 31) {
      // z = (1 + x) * 0.5;
      z = 0.5 + x * 0.5;
      s = builtin_sqrt<f32>(z);
      w = Rf(z) * s - pio2_lo;
      return 2 * (pio2_hi - (s + w));
    }
    // z = (1 - x) * 0.5;
    z = 0.5 - x * 0.5;
    s = builtin_sqrt<f32>(z);
    hx = reinterpret<u32>(s);
    var df = reinterpret<f32>(hx & 0xFFFFF000);
    var c = (z - df * df) / (s + df);
    w = Rf(z) * s + c;
    return 2 * (df + w);
  }

  export function acosh(x: f32): f32 { // see: musl/src/math/acoshf.c
    const s = reinterpret<f32>(0x3F317218); // 0.693147180559945309417232121458176568f
    var u = reinterpret<u32>(x);
    var a = u & 0x7FFFFFFF;
    if (a < 0x3F800000 + (1 << 23)) {
      let xm1 = x - 1;
      return log1p(xm1 + builtin_sqrt(xm1 * (xm1 + 2)));
    }
    if (a < 0x3F800000 + (12 << 23)) return log(2 * x - 1 / (x + builtin_sqrt<f32>(x * x - 1)));
    return log(x) + s;
  }

  export function asin(x: f32): f32 { // see: musl/src/math/asinf.c and SUN COPYRIGHT NOTICE above
    const
      pio2      = reinterpret<f32>(0x3FC90FDB), // 1.570796326794896558e+00f
      Ox1p_120f = reinterpret<f32>(0x03800000);
    var sx = x;
    var hx = reinterpret<u32>(x) & 0x7FFFFFFF;
    if (hx >= 0x3F800000) {
      if (hx == 0x3F800000) return x * pio2 + Ox1p_120f;
      return 0 / (x - x);
    }
    if (hx < 0x3F000000) {
      if (hx < 0x39800000 && hx >= 0x00800000) return x;
      return x + x * Rf(x * x);
    }
    // var z: f32 = (1 - builtin_abs<f32>(x)) * 0.5;
    var z: f32 = 0.5 - builtin_abs<f32>(x) * 0.5;
    var s = builtin_sqrt<f64>(z); // sic
    x = <f32>(pio2 - 2 * (s + s * Rf(z)));
    return builtin_copysign(x, sx);
  }

  export function asinh(x: f32): f32 { // see: musl/src/math/asinhf.c
    const c = reinterpret<f32>(0x3F317218); // 0.693147180559945309417232121458176568f
    var u = reinterpret<u32>(x) & 0x7FFFFFFF;
    var y = reinterpret<f32>(u);
    if (u >= 0x3F800000 + (12 << 23)) y = log(y) + c;
    else if (u >= 0x3F800000 + (1 << 23))  y =   log(2 * y + 1 / (builtin_sqrt<f32>(y * y + 1) + y));
    else if (u >= 0x3F800000 - (12 << 23)) y = log1p(y + y * y / (builtin_sqrt<f32>(y * y + 1) + 1));
    return builtin_copysign(y, x);
  }

  export function atan(x: f32): f32 { // see: musl/src/math/atanf.c and SUN COPYRIGHT NOTICE above
    const
      atanhi0   = reinterpret<f32>(0x3EED6338), //  4.6364760399e-01f
      atanhi1   = reinterpret<f32>(0x3F490FDA), //  7.8539812565e-01f
      atanhi2   = reinterpret<f32>(0x3F7B985E), //  9.8279368877e-01f
      atanhi3   = reinterpret<f32>(0x3FC90FDA), //  1.5707962513e+00f
      atanlo0   = reinterpret<f32>(0x31AC3769), //  5.0121582440e-09f
      atanlo1   = reinterpret<f32>(0x33222168), //  3.7748947079e-08f
      atanlo2   = reinterpret<f32>(0x33140FB4), //  3.4473217170e-08f
      atanlo3   = reinterpret<f32>(0x33A22168), //  7.5497894159e-08f
      aT0       = reinterpret<f32>(0x3EAAAAA9), //  3.3333328366e-01f
      aT1       = reinterpret<f32>(0xBE4CCA98), // -1.9999158382e-01f
      aT2       = reinterpret<f32>(0x3E11F50D), //  1.4253635705e-01f
      aT3       = reinterpret<f32>(0xBDDA1247), // -1.0648017377e-01f
      aT4       = reinterpret<f32>(0x3D7CAC25), //  6.1687607318e-02f
      Ox1p_120f = reinterpret<f32>(0x03800000);
    var ix = reinterpret<u32>(x);
    var sx = x;
    ix &= 0x7FFFFFFF;
    var z: f32;
    if (ix >= 0x4C800000) {
      if (isNaN(x)) return x;
      z = atanhi3 + Ox1p_120f;
      return builtin_copysign(z, sx);
    }
    var id: i32;
    if (ix < 0x3EE00000) {
      if (ix < 0x39800000) return x;
      id = -1;
    } else {
      x = builtin_abs<f32>(x);
      if (ix < 0x3F980000) {
        if (ix < 0x3F300000) {
          id = 0;
          x = (2.0 * x - 1.0) / (2.0 + x);
        } else {
          id = 1;
          x = (x - 1.0) / (x + 1.0);
        }
      } else {
        if (ix < 0x401C0000) {
          id = 2;
          x = (x - 1.5) / (1.0 + 1.5 * x);
        } else {
          id = 3;
          x = -1.0 / x;
        }
      }
    }
    z = x * x;
    var w = z * z;
    var s1 = z * (aT0 + w * (aT2 + w * aT4));
    var s2 = w * (aT1 + w * aT3);
    var s3 = x * (s1 + s2);
    if (id < 0) return x - s3;
    switch (id) {
      case 0: { z = atanhi0 - ((s3 - atanlo0) - x); break; }
      case 1: { z = atanhi1 - ((s3 - atanlo1) - x); break; }
      case 2: { z = atanhi2 - ((s3 - atanlo2) - x); break; }
      case 3: { z = atanhi3 - ((s3 - atanlo3) - x); break; }
      default: unreachable();
    }
    return builtin_copysign(z, sx);
  }

  export function atanh(x: f32): f32 { // see: musl/src/math/atanhf.c
    var u = reinterpret<u32>(x);
    u &= 0x7FFFFFFF;
    var y = reinterpret<f32>(u);
    if (u < 0x3F800000 - (1 << 23)) {
      if (u >= 0x3F800000 - (32 << 23)) y = 0.5 * log1p(2 * y * (1.0 + y / (1 - y)));
    } else y = 0.5 * log1p(2 * (y / (1 - y)));
    return builtin_copysign(y, x);
  }

  export function atan2(y: f32, x: f32): f32 { // see: musl/src/math/atan2f.c and SUN COPYRIGHT NOTICE above
    const
      pi    = reinterpret<f32>(0x40490FDB), //  3.1415927410e+00f
      pi_lo = reinterpret<f32>(0xB3BBBD2E); // -8.7422776573e-08f
    if (isNaN(x) || isNaN(y)) return x + y;
    var ix = reinterpret<u32>(x);
    var iy = reinterpret<u32>(y);
    if (ix == 0x3F800000) return atan(y);
    var m = <u32>(((iy >> 31) & 1) | ((ix >> 30) & 2));
    ix &= 0x7FFFFFFF;
    iy &= 0x7FFFFFFF;
    if (iy == 0) {
      switch (m) {
        case 0:
        case 1: return  y;
        case 2: return  pi;
        case 3: return -pi;
      }
    }
    if (ix == 0) return m & 1 ? -pi / 2 : pi / 2;
    if (ix == 0x7F800000) {
      if (iy == 0x7F800000) {
        switch (m) {
          case 0: return  pi / 4;
          case 1: return -pi / 4;
          case 2: return  3 * pi / 4;
          case 3: return -3 * pi / 4;
        }
      } else {
        switch (m) {
          case 0: return  0;
          case 1: return -0;
          case 2: return  pi;
          case 3: return -pi;
        }
      }
    }
    if (ix + (26 << 23) < iy || iy == 0x7F800000) return m & 1 ? -pi / 2 : pi / 2;
    var z: f32;
    if ((m & 2) && iy + (26 << 23) < ix) z = 0.0;
    else z = atan(builtin_abs<f32>(y / x));
    switch (m) {
      case 0: return  z;
      case 1: return -z;
      case 2: return pi - (z - pi_lo);
      case 3: return (z - pi_lo) - pi;
    }
    unreachable();
    return 0;
  }

  export function cbrt(x: f32): f32 { // see: musl/src/math/cbrtf.c and SUN COPYRIGHT NOTICE above
    const
      B1      = <u32>709958130,
      B2      = <u32>642849266,
      Ox1p24f = reinterpret<f32>(0x4B800000);
    var u = reinterpret<u32>(x);
    var hx = u & 0x7FFFFFFF;
    if (hx >= 0x7F800000) return x + x;
    if (hx < 0x00800000) {
      if (hx == 0) return x;
      u = reinterpret<u32>(x * Ox1p24f);
      hx = u & 0x7FFFFFFF;
      hx = hx / 3 + B2;
    } else {
      hx = hx / 3 + B1;
    }
    u &= 0x80000000;
    u |= hx;
    var t = <f64>reinterpret<f32>(u);
    var r = t * t * t;
    t = t * (<f64>x + x + r) / (x + r + r);
    r = t * t * t;
    t = t * (<f64>x + x + r) / (x + r + r);
    return <f32>t;
  }

  @inline
  export function ceil(x: f32): f32 {
    return builtin_ceil<f32>(x);
  }

  export function clz32(x: f32): f32 {
    if (!isFinite(x)) return 32;
    return builtin_clz(
      <i32><i64>(x - 4294967296 * builtin_floor(x * (1.0 / 4294967296)))
    );
  }

  export function cos(x: f32): f32 { // see: musl/src/math/cosf.c
    const c1pio2 = reinterpret<f64>(0x3FF921FB54442D18); // M_PI_2 * 1
    const c2pio2 = reinterpret<f64>(0x400921FB54442D18); // M_PI_2 * 2
    const c3pio2 = reinterpret<f64>(0x4012D97C7F3321D2); // M_PI_2 * 3
    const c4pio2 = reinterpret<f64>(0x401921FB54442D18); // M_PI_2 * 4

    var ix = reinterpret<u32>(x);
    var sign = ix >> 31;
    ix &= 0x7FFFFFFF;

    if (ix <= 0x3f490fda) {  /* |x| ~<= π/4 */
      if (ix < 0x39800000) { /* |x| < 2**-12 */
        /* raise inexact if x != 0 */
        return 1;
      }
      return cos_kernf(x);
    }

    if (ASC_SHRINK_LEVEL < 1) {
      if (ix <= 0x407b53d1) {  /* |x| ~<= 5π/4 */
        if (ix > 0x4016cbe3) { /* |x|  ~> 3π/4 */
          return -cos_kernf(sign ? x + c2pio2 : x - c2pio2);
        } else {
          return sign ? sin_kernf(x + c1pio2) : sin_kernf(c1pio2 - x);
        }
      }
      if (ix <= 0x40e231d5) {  /* |x| ~<= 9π/4 */
        if (ix > 0x40afeddf) { /* |x|  ~> 7π/4 */
          return cos_kernf(sign ? x + c4pio2 : x - c4pio2);
        } else {
          return sign ? sin_kernf(-x - c3pio2) : sin_kernf(x - c3pio2);
        }
      }
    }

    /* cos(Inf or NaN) is NaN */
    if (ix >= 0x7f800000) return x - x;

    /* general argument reduction needed */
    var n = rempio2f(x, ix, sign);
    var y = rempio2f_y;

    var t = n & 1 ? sin_kernf(y) : cos_kernf(y);
    return (n + 1) & 2 ? -t : t;
  }

  export function cosh(x: f32): f32 { // see: musl/src/math/coshf.c
    var u = reinterpret<u32>(x);
    u &= 0x7FFFFFFF;
    x = reinterpret<f32>(u);
    if (u < 0x3F317217) {
      if (u < 0x3F800000 - (12 << 23)) return 1;
      let t = expm1(x);
      // return 1 + t * t / (2 * (1 + t));
      return 1 + t * t / (2 + 2 * t);
    }
    if (u < 0x42B17217) {
      let t = exp(x);
      // return 0.5 * (t + 1 / t);
      return 0.5 * t + 0.5 / t;
    }
    return expo2f(x);
  }

  @inline
  export function floor(x: f32): f32 {
    return builtin_floor<f32>(x);
  }

  export function exp(x: f32): f32 { // see: musl/src/math/expf.c and SUN COPYRIGHT NOTICE above
    const
      ln2hi    = reinterpret<f32>(0x3F317200), //  6.9314575195e-1f
      ln2lo    = reinterpret<f32>(0x35BFBE8E), //  1.4286067653e-6f
      invln2   = reinterpret<f32>(0x3FB8AA3B), //  1.4426950216e+0f
      P1       = reinterpret<f32>(0x3E2AAA8F), //  1.6666625440e-1f
      P2       = reinterpret<f32>(0xBB355215), // -2.7667332906e-3f
      Ox1p127f = reinterpret<f32>(0x7F000000);
    var hx = reinterpret<u32>(x);
    var sign_ = <i32>(hx >> 31);
    hx &= 0x7FFFFFFF;
    if (hx >= 0x42AEAC50) {
      if (hx >= 0x42B17218) {
        if (!sign_) return x * Ox1p127f;
        else if (hx >= 0x42CFF1B5) return 0;
      }
    }
    var hi: f32, lo: f32;
    var k: i32;
    if (hx > 0x3EB17218) {
      if (hx > 0x3F851592) {
        k = <i32>(invln2 * x + builtin_copysign<f32>(0.5, x));
      } else {
        k = 1 - (sign_ << 1);
      }
      hi = x - <f32>k * ln2hi;
      lo = <f32>k * ln2lo;
      x = hi - lo;
    } else if (hx > 0x39000000) {
      k = 0;
      hi = x;
      lo = 0;
    } else {
      return 1 + x;
    }
    var xx = x * x;
    var c = x - xx * (P1 + xx * P2);
    var y: f32 = 1 + (x * c / (2 - c) - lo + hi);
    if (k == 0) return y;
    return scalbn(y, k);
  }

  export function expm1(x: f32): f32 { // see: musl/src/math/expm1f.c and SUN COPYRIGHT NOTICE above
    const
      o_threshold = reinterpret<f32>(0x42B17180), //  8.8721679688e+01f
      ln2_hi      = reinterpret<f32>(0x3F317180), //  6.9313812256e-01f
      ln2_lo      = reinterpret<f32>(0x3717F7D1), //  9.0580006145e-06f
      invln2      = reinterpret<f32>(0x3FB8AA3B), //  1.4426950216e+00f
      Q1          = reinterpret<f32>(0xBD088868), // -3.3333212137e-02f
      Q2          = reinterpret<f32>(0x3ACF3010), //  1.5807170421e-03f
      Ox1p127f    = reinterpret<f32>(0x7F000000);
    var u = reinterpret<u32>(x);
    var hx = u & 0x7FFFFFFF;
    var sign_ = <i32>(u >> 31);
    if (hx >= 0x4195B844) {
      if (hx > 0x7F800000) return x;
      if (sign_) return -1;
      if (x > o_threshold) {
        x *= Ox1p127f;
        return x;
      }
    }
    var c: f32 = 0.0, t: f32, k: i32;
    if (hx > 0x3EB17218) {
      k = select<i32>(
        1 - (sign_ << 1),
        <i32>(invln2 * x + builtin_copysign<f32>(0.5, x)),
        hx < 0x3F851592
      );
      t = <f32>k;
      let hi = x - t * ln2_hi;
      let lo = t * ln2_lo;
      x = hi - lo;
      c = (hi - x) - lo;
    } else if (hx < 0x33000000) {
      return x;
    } else k = 0;
    var hfx: f32 = 0.5 * x;
    var hxs: f32 = x * hfx;
    var r1: f32 = 1.0 + hxs * (Q1 + hxs * Q2);
    t  = 3.0 - r1 * hfx;
    var e = hxs * ((r1 - t) / (6.0 - x * t));
    if (k == 0) return x - (x * e - hxs);
    e  = x * (e - c) - c;
    e -= hxs;
    if (k == -1) return 0.5 * (x - e) - 0.5;
    if (k == 1) {
      if (x < -0.25) return -2.0 * (e - (x + 0.5));
      return 1.0 + 2.0 * (x - e);
    }
    u = (0x7F + k) << 23;
    var twopk = reinterpret<f32>(u);
    var y: f32;
    if (k < 0 || k > 56) {
      y = x - e + 1.0;
      if (k == 128) y = y * 2.0 * Ox1p127f;
      else y = y * twopk;
      return y - 1.0;
    }
    u = (0x7F - k) << 23;
    y = reinterpret<f32>(u);
    if (k < 20) y = (1 - y) - e;
    else y = 1 - (e + y);
    return (x + y) * twopk;
  }

  @inline
  export function fround(x: f32): f32 {
    return x;
  }

  export function hypot(x: f32, y: f32): f32 { // see: musl/src/math/hypotf.c
    const
      Ox1p90f  = reinterpret<f32>(0x6C800000),
      Ox1p_90f = reinterpret<f32>(0x12800000);
    var ux = reinterpret<u32>(x);
    var uy = reinterpret<u32>(y);
    ux &= 0x7FFFFFFF;
    uy &= 0x7FFFFFFF;
    if (ux < uy) {
      let ut = ux;
      ux = uy;
      uy = ut;
    }
    x = reinterpret<f32>(ux);
    y = reinterpret<f32>(uy);
    if (uy == 0xFF << 23) return y;
    if (ux >= 0xFF << 23 || uy == 0 || ux - uy >= 25 << 23) return x + y;
    var z: f32 = 1;
    if (ux >= (0x7F + 60) << 23) {
      z  = Ox1p90f;
      x *= Ox1p_90f;
      y *= Ox1p_90f;
    } else if (uy < (0x7F - 60) << 23) {
      z  = Ox1p_90f;
      x *= Ox1p90f;
      y *= Ox1p90f;
    }
    return z * builtin_sqrt<f32>(<f32>(<f64>x * x + <f64>y * y));
  }

  @inline
  export function imul(x: f32, y: f32): f32 {
    /*
     * Wasm (MVP) and JS have different approaches for double->int conversions.
     *
     * For emulate JS conversion behavior and avoid trapping from wasm we should modulate by MAX_INT
     * our float-point arguments before actual convertion to integers.
     */
    if (!isFinite(x + y)) return 0;
    const inv32 = 1.0 / 4294967296;
    return (
      <i32><i64>(x - 4294967296 * builtin_floor(x * inv32)) *
      <i32><i64>(y - 4294967296 * builtin_floor(y * inv32))
    );
  }

  export function log(x: f32): f32 { // see: musl/src/math/logf.c and SUN COPYRIGHT NOTICE above
    const
      ln2_hi  = reinterpret<f32>(0x3F317180), // 6.9313812256e-01f
      ln2_lo  = reinterpret<f32>(0x3717F7D1), // 9.0580006145e-06f
      Lg1     = reinterpret<f32>(0x3F2AAAAA), // 0xaaaaaa.0p-24f
      Lg2     = reinterpret<f32>(0x3ECCCE13), // 0xccce13.0p-25f
      Lg3     = reinterpret<f32>(0x3E91E9EE), // 0x91e9ee.0p-25f
      Lg4     = reinterpret<f32>(0x3E789E26), // 0xf89e26.0p-26f
      Ox1p25f = reinterpret<f32>(0x4C000000);
    var u = reinterpret<u32>(x);
    var k = 0;
    if (u < 0x00800000 || <bool>(u >> 31)) {
      if (u << 1 == 0) return -1 / (x * x);
      if (u >> 31) return (x - x) / 0;
      k -= 25;
      x *= Ox1p25f;
      u = reinterpret<u32>(x);
    } else if (u >= 0x7F800000) return x;
      else if (u == 0x3F800000) return 0;
    u += 0x3F800000 - 0x3F3504F3;
    k += <u32>(<i32>u >> 23) - 0x7F;
    u = (u & 0x007FFFFF) + 0x3F3504F3;
    x = reinterpret<f32>(u);
    var f = x - 1.0;
    var s = f / (2.0 + f);
    var z = s * s;
    var w = z * z;
    var t1 = w * (Lg2 + w * Lg4);
    var t2 = z * (Lg1 + w * Lg3);
    var r = t2 + t1;
    var hfsq = <f32>0.5 * f * f;
    var dk = <f32>k;
    return s * (hfsq + r) + dk * ln2_lo - hfsq + f + dk * ln2_hi;
  }

  export function log10(x: f32): f32 { // see: musl/src/math/log10f.c and SUN COPYRIGHT NOTICE above
    const
      ivln10hi  = reinterpret<f32>(0x3EDE6000), //  4.3432617188e-01f
      ivln10lo  = reinterpret<f32>(0xB804EAD9), // -3.1689971365e-05f
      log10_2hi = reinterpret<f32>(0x3E9A2080), //  3.0102920532e-01f
      log10_2lo = reinterpret<f32>(0x355427DB), //  7.9034151668e-07f
      Lg1       = reinterpret<f32>(0x3F2AAAAA), //  0xaaaaaa.0p-24f, 0.66666662693f
      Lg2       = reinterpret<f32>(0x3ECCCE13), //  0xccce13.0p-25f, 0.40000972152f
      Lg3       = reinterpret<f32>(0x3E91E9EE), //  0x91e9ee.0p-25f, 0.28498786688f
      Lg4       = reinterpret<f32>(0x3E789E26), //  0xf89e26.0p-26f, 0.24279078841f
      Ox1p25f   = reinterpret<f32>(0x4C000000);
    var ix = reinterpret<u32>(x);
    var k = 0;
    if (ix < 0x00800000 || <bool>(ix >> 31)) {
      if (ix << 1 == 0) return -1 / (x * x);
      if (ix >> 31) return (x - x) / 0.0;
      k -= 25;
      x *= Ox1p25f;
      ix = reinterpret<u32>(x);
    } else if (ix >= 0x7F800000) return x;
      else if (ix == 0x3F800000) return 0;
    ix += 0x3F800000 - 0x3F3504F3;
    k += <i32>(ix >> 23) - 0x7F;
    ix = (ix & 0x007FFFFF) + 0x3F3504F3;
    x = reinterpret<f32>(ix);
    var f = x - 1.0;
    var s = f / (2.0 + f);
    var z = s * s;
    var w = z * z;
    var t1 = w * (Lg2 + w * Lg4);
    var t2 = z * (Lg1 + w * Lg3);
    var r = t2 + t1;
    var hfsq: f32 = 0.5 * f * f;
    var hi = f - hfsq;
    ix = reinterpret<u32>(hi);
    ix &= 0xFFFFF000;
    hi = reinterpret<f32>(ix);
    var lo = f - hi - hfsq + s * (hfsq + r);
    var dk = <f32>k;
    return dk * log10_2lo + (lo + hi) * ivln10lo + lo * ivln10hi + hi * ivln10hi + dk * log10_2hi;
  }

  export function log1p(x: f32): f32 { // see: musl/src/math/log1pf.c and SUN COPYRIGHT NOTICE above
    const
      ln2_hi = reinterpret<f32>(0x3F317180), // 6.9313812256e-01
      ln2_lo = reinterpret<f32>(0x3717F7D1), // 9.0580006145e-06
      Lg1    = reinterpret<f32>(0x3F2AAAAA), // 0xaaaaaa.0p-24f, 0.66666662693f
      Lg2    = reinterpret<f32>(0x3ECCCE13), // 0xccce13.0p-25f, 0.40000972152f
      Lg3    = reinterpret<f32>(0x3E91E9EE), // 0x91e9ee.0p-25f, 0.28498786688f
      Lg4    = reinterpret<f32>(0x3E789E26); // 0xf89e26.0p-26f, 0.24279078841f
    var ix = reinterpret<u32>(x);
    var c: f32 = 0, f: f32 = 0;
    var k: i32 = 1;
    if (ix < 0x3ED413D0 || <bool>(ix >> 31)) {
      if (ix >= 0xBF800000) {
        if (x == -1) return x / 0.0;
        return (x - x) / 0.0;
      }
      if (ix << 1 < 0x33800000 << 1) return x;
      if (ix <= 0xBE95F619) {
        k = 0;
        c = 0;
        f = x;
      }
    } else if (ix >= 0x7F800000) return x;
    if (k) {
      let uf: f32 = 1 + x;
      let iu = reinterpret<u32>(uf);
      iu += 0x3F800000 - 0x3F3504F3;
      k = <i32>(iu >> 23) - 0x7F;
      if (k < 25) {
        c = k >= 2 ? 1 - (uf - x) : x - (uf - 1);
        c /= uf;
      } else c = 0;
      iu = (iu & 0x007FFFFF) + 0x3F3504F3;
      f = reinterpret<f32>(iu) - 1;
    }
    var s = f / (2.0 + f);
    var z = s * s;
    var w = z * z;
    var t1 = w * (Lg2 + w * Lg4);
    var t2 = z * (Lg1 + w * Lg3);
    var r = t2 + t1;
    var hfsq: f32 = 0.5 * f * f;
    var dk = <f32>k;
    return s * (hfsq + r) + (dk * ln2_lo + c) - hfsq + f + dk * ln2_hi;
  }

  export function log2(x: f32): f32 { // see: musl/src/math/log2f.c and SUN COPYRIGHT NOTICE above
    const
      ivln2hi = reinterpret<f32>(0x3FB8B000), //  1.4428710938e+00f
      ivln2lo = reinterpret<f32>(0xB9389AD4), // -1.7605285393e-04
      Lg1     = reinterpret<f32>(0x3F2AAAAA), //  0xaaaaaa.0p-24f, 0.66666662693f
      Lg2     = reinterpret<f32>(0x3ECCCE13), //  0xccce13.0p-25f, 0.40000972152f
      Lg3     = reinterpret<f32>(0x3E91E9EE), //  0x91e9ee.0p-25f, 0.28498786688f
      Lg4     = reinterpret<f32>(0x3E789E26), //  0xf89e26.0p-26f, 0.24279078841f
      Ox1p25f = reinterpret<f32>(0x4C000000);
    var ix = reinterpret<u32>(x);
    var k: i32 = 0;
    if (ix < 0x00800000 || <bool>(ix >> 31)) {
      if (ix << 1 == 0) return -1 / (x * x);
      if (ix >> 31) return (x - x) / 0.0;
      k -= 25;
      x *= Ox1p25f;
      ix = reinterpret<u32>(x);
    } else if (ix >= 0x7F800000) return x;
      else if (ix == 0x3F800000) return 0;
    ix += 0x3F800000 - 0x3F3504F3;
    k += <i32>(ix >> 23) - 0x7F;
    ix = (ix & 0x007FFFFF) + 0x3F3504F3;
    x = reinterpret<f32>(ix);
    var f = x - 1.0;
    var s = f / (2.0 + f);
    var z = s * s;
    var w = z * z;
    var t1 = w * (Lg2 + w * Lg4);
    var t2 = z * (Lg1 + w * Lg3);
    var r = t2 + t1;
    var hfsq: f32 = 0.5 * f * f;
    var hi = f - hfsq;
    var u = reinterpret<u32>(hi);
    u &= 0xFFFFF000;
    hi = reinterpret<f32>(u);
    var lo: f32 = f - hi - hfsq + s * (hfsq + r);
    var dk = <f32>k;
    return (lo + hi) * ivln2lo + lo * ivln2hi + hi * ivln2hi + dk;
  }

  @inline
  export function max(value1: f32, value2: f32): f32 {
    return builtin_max<f32>(value1, value2);
  }

  @inline
  export function min(value1: f32, value2: f32): f32 {
    return builtin_min<f32>(value1, value2);
  }

  export function pow(x: f32, y: f32): f32 { // see: musl/src/math/powf.c and SUN COPYRIGHT NOTICE above
    const
      dp_h1   = reinterpret<f32>(0x3F15C000), //  5.84960938e-01f
      dp_l1   = reinterpret<f32>(0x35D1CFDC), //  1.56322085e-06f
      two24   = reinterpret<f32>(0x4B800000), //  16777216f
      huge    = reinterpret<f32>(0x7149F2CA), //  1.0e+30f
      tiny    = reinterpret<f32>(0x0DA24260), //  1.0e-30f
      L1      = reinterpret<f32>(0x3F19999A), //  6.0000002384e-01f
      L2      = reinterpret<f32>(0x3EDB6DB7), //  4.2857143283e-01f
      L3      = reinterpret<f32>(0x3EAAAAAB), //  3.3333334327e-01f
      L4      = reinterpret<f32>(0x3E8BA305), //  2.7272811532e-01f
      L5      = reinterpret<f32>(0x3E6C3255), //  2.3066075146e-01f
      L6      = reinterpret<f32>(0x3E53F142), //  2.0697501302e-01f
      P1      = reinterpret<f32>(0x3E2AAAAB), //  1.6666667163e-01f
      P2      = reinterpret<f32>(0xBB360B61), // -2.7777778450e-03f
      P3      = reinterpret<f32>(0x388AB355), //  6.6137559770e-05f
      P4      = reinterpret<f32>(0xB5DDEA0E), // -1.6533901999e-06f
      P5      = reinterpret<f32>(0x3331BB4C), //  4.1381369442e-08f
      lg2     = reinterpret<f32>(0x3F317218), //  6.9314718246e-01f
      lg2_h   = reinterpret<f32>(0x3F317200), //  6.93145752e-01f
      lg2_l   = reinterpret<f32>(0x35BFBE8C), //  1.42860654e-06f
      ovt     = reinterpret<f32>(0x3338AA3C), //  4.2995665694e-08f
      cp      = reinterpret<f32>(0x3F76384F), //  9.6179670095e-01
      cp_h    = reinterpret<f32>(0x3F764000), //  9.6191406250e-01
      cp_l    = reinterpret<f32>(0xB8F623C6), // -1.1736857402e-04
      ivln2   = reinterpret<f32>(0x3FB8AA3B), //  1.4426950216e+00
      ivln2_h = reinterpret<f32>(0x3FB8AA00), //  1.4426879883e+00
      ivln2_l = reinterpret<f32>(0x36ECA570), //  7.0526075433e-06
      inv3    = reinterpret<f32>(0x3EAAAAAB);  // 0.333333333333
    var hx = reinterpret<i32>(x);
    var hy = reinterpret<i32>(y);
    var ix = hx & 0x7FFFFFFF;
    var iy = hy & 0x7FFFFFFF;
    if (iy == 0) return 1.0; // x**0 = 1, even if x is NaN
    // if (hx == 0x3F800000) return 1.0; // C: 1**y = 1, even if y is NaN, JS: NaN
    if (ix > 0x7F800000 || iy > 0x7F800000) return x + y; // NaN if either arg is NaN
    var yisint  = 0, j: i32, k: i32;
    if (hx < 0) {
      if (iy >= 0x4B800000) yisint = 2;
      else if (iy >= 0x3F800000) {
        k = (iy >> 23) - 0x7F;
        let ki = 23 - k;
        j = iy >> ki;
        if ((j << ki) == iy) yisint = 2 - (j & 1);
      }
    }
    if (iy == 0x7F800000) { // y is +-inf
      if (ix == 0x3F800000) return NaN; // C: (-1)**+-inf is 1, JS: NaN
      else if (ix > 0x3F800000) return hy >= 0 ? y : 0.0; // (|x|>1)**+-inf = inf,0
      else return hy >= 0 ? 0.0 : -y; // (|x|<1)**+-inf = 0,inf
    }
    if (iy == 0x3F800000) return hy >= 0 ? x : 1.0 / x;
    if (hy == 0x40000000) return x * x;
    if (hy == 0x3F000000) {
      if (hx >= 0) return builtin_sqrt<f32>(x);
    }
    var ax = builtin_abs<f32>(x);
    var z: f32;
    if (ix == 0x7F800000 || ix == 0 || ix == 0x3F800000) {
      z = ax;
      if (hy < 0) z = 1.0 / z;
      if (hx < 0) {
        if (((ix - 0x3F800000) | yisint) == 0) {
          let d = z - z;
          z = d / d;
        }
        else if (yisint == 1) z = -z;
      }
      return z;
    }
    var sn = <f32>1.0;
    if (hx < 0) {
      if (yisint == 0) {
        let d = x - x;
        return d / d;
      }
      if (yisint == 1) sn = -1.0;
    }
    var t1: f32, t2: f32, r: f32, s: f32, t: f32, u: f32, v: f32, w: f32, p_h: f32, p_l: f32;
    var n: i32, is: i32;
    if (iy > 0x4D000000) {
      if (ix < 0x3F7FFFF8) return hy < 0 ? sn * huge * huge : sn * tiny * tiny;
      if (ix > 0x3F800007) return hy > 0 ? sn * huge * huge : sn * tiny * tiny;
      t = ax - 1;
      w = (t * t) * (0.5 - t * (inv3 - t * 0.25));
      u = ivln2_h * t;
      v = t * ivln2_l - w * ivln2;
      t1 = u + v;
      is = reinterpret<i32>(t1);
      t1 = reinterpret<f32>(is & 0xFFFFF000);
      t2 = v - (t1 - u);
    } else {
      let s2: f32, s_h: f32, s_l: f32, t_h: f32, t_l: f32;
      n = 0;
      if (ix < 0x00800000) {
        ax *= two24;
        n -= 24;
        ix = reinterpret<i32>(ax);
      }
      n += (ix >> 23) - 0x7F;
      j = ix & 0x007FFFFF;
      ix = j | 0x3F800000;
      if (j <= 0x1CC471) k = 0;
      else if (j < 0x5DB3D7) k = 1;
      else {
        k = 0;
        n += 1;
        ix -= 0x00800000;
      }
      ax = reinterpret<f32>(ix);
      let bp = select<f32>(1.5, 1.0, k); // k ? 1.5 : 1.0
      u = ax - bp;
      v = 1.0 / (ax + bp);
      s = u * v;
      s_h = s;
      is = reinterpret<u32>(s_h);
      s_h = reinterpret<f32>(is & 0xFFFFF000);
      is = ((ix >> 1) & 0xFFFFF000) | 0x20000000;
      t_h = reinterpret<f32>(is + 0x00400000 + (k << 21));
      t_l = ax - (t_h - bp);
      s_l = v * ((u - s_h * t_h) - s_h * t_l);
      s2 = s * s;
      r = s2 * s2 * (L1 + s2 * (L2 + s2 * (L3 + s2 * (L4 + s2 * (L5 + s2 * L6)))));
      r += s_l * (s_h + s);
      s2 = s_h * s_h;
      t_h = 3.0 + s2 + r;
      is  = reinterpret<u32>(t_h);
      t_h = reinterpret<f32>(is & 0xFFFFF000);
      t_l = r - ((t_h - 3.0) - s2);
      u = s_h * t_h;
      v = s_l * t_h + t_l * s;
      p_h = u + v;
      is  = reinterpret<u32>(p_h);
      p_h = reinterpret<f32>(is & 0xFFFFF000);
      p_l = v - (p_h - u);
      let z_h = cp_h * p_h;
      let dp_l = select<f32>(dp_l1, 0.0, k);
      let z_l = cp_l * p_h + p_l * cp + dp_l;
      t = <f32>n;
      let dp_h = select<f32>(dp_h1, 0.0, k);
      t1 = (((z_h + z_l) + dp_h) + t);
      is = reinterpret<u32>(t1);
      t1 = reinterpret<f32>(is & 0xFFFFF000);
      t2 = z_l - (((t1 - t) - dp_h) - z_h);
    }
    is = reinterpret<u32>(y);
    var y1 = reinterpret<f32>(is & 0xFFFFF000);
    p_l = (y - y1) * t1 + y * t2;
    p_h = y1 * t1;
    z = p_l + p_h;
    j = reinterpret<u32>(z);
    if (j > 0x43000000) {
      return sn * huge * huge;
    } else if (j == 0x43000000) {
      if (p_l + ovt > z - p_h) return sn * huge * huge;
    } else if ((j & 0x7FFFFFFF) > 0x43160000) {
      return sn * tiny * tiny;
    } else if (j == 0xC3160000) {
      if (p_l <= z - p_h) return sn * tiny * tiny;
    }
    var i = j & 0x7FFFFFFF;
    k = (i >> 23) - 0x7F;
    n = 0;
    if (i > 0x3F000000) {
      n = j + (0x00800000 >> (k + 1));
      k = ((n & 0x7FFFFFFF) >> 23) - 0x7F;
      t = reinterpret<f32>(n & ~(0x007FFFFF >> k));
      n = ((n & 0x007FFFFF) | 0x00800000) >> (23 - k);
      if (j < 0) n = -n;
      p_h -= t;
    }
    t = p_l + p_h;
    is = reinterpret<u32>(t);
    t = reinterpret<f32>(is & 0xFFFF8000);
    u = t * lg2_h;
    v = (p_l - (t - p_h)) * lg2 + t * lg2_l;
    z = u + v;
    w = v - (z - u);
    t = z * z;
    t1 = z - t * (P1 + t * (P2 + t * (P3 + t * (P4 + t * P5))));
    r = (z * t1) / (t1 - 2.0) - (w + z * w);
    z = 1.0 - (r - z);
    j = reinterpret<u32>(z);
    j += n << 23;
    if ((j >> 23) <= 0) z = scalbn(z, n);
    else z = reinterpret<f32>(j);
    return sn * z;
  }

  @inline
  export function seedRandom(value: i64): void {
    NativeMath.seedRandom(value);
  }

  // Using xoroshiro64starstar from http://xoshiro.di.unimi.it/xoroshiro64starstar.c
  export function random(): f32 {
    if (!random_seeded) throw new Error("PRNG must be seeded.");

    var s0 = random_state0_32;
    var s1 = random_state1_32;
    var r  = rotl<u32>(s0 * 0x9E3779BB, 5) * 5;

    s1 ^= s0;
    random_state0_32 = rotl<u32>(s0, 26) ^ s1 ^ (s1 << 9);
    random_state1_32 = rotl<u32>(s1, 13);

    return reinterpret<f32>((r >> 9) | (127 << 23)) - 1.0;
  }

  @inline
  export function round(x: f32): f32 {
    return builtin_copysign<f32>(builtin_floor<f32>(x + 0.5), x);
  }

  @inline
  export function sign(x: f32): f32 {
    if (ASC_SHRINK_LEVEL > 0) {
      return builtin_abs(x) > 0 ? builtin_copysign<f32>(1, x) : x;
    } else {
      return x > 0 ? 1 : x < 0 ? -1 : x;
    }
  }

  @inline
  export function signbit(x: f32): bool {
    return <bool>((reinterpret<u32>(x) >>> 31) & (x == x));
  }

  export function sin(x: f32): f32 { // see: musl/src/math/sinf.c
    const s1pio2 = reinterpret<f64>(0x3FF921FB54442D18); // M_PI_2 * 1
    const s2pio2 = reinterpret<f64>(0x400921FB54442D18); // M_PI_2 * 2
    const s3pio2 = reinterpret<f64>(0x4012D97C7F3321D2); // M_PI_2 * 3
    const s4pio2 = reinterpret<f64>(0x401921FB54442D18); // M_PI_2 * 4

    var ix = reinterpret<u32>(x);
    var sign = ix >> 31;
    ix &= 0x7FFFFFFF;

    if (ix <= 0x3f490fda) {  /* |x| ~<= π/4 */
      if (ix < 0x39800000) { /* |x| < 2**-12 */
        return x;
      }
      return sin_kernf(x);
    }

    if (ASC_SHRINK_LEVEL < 1) {
      if (ix <= 0x407b53d1) {   /* |x| ~<= 5π/4 */
        if (ix <= 0x4016cbe3) { /* |x| ~<= 3π/4 */
          return sign ? -cos_kernf(x + s1pio2) : cos_kernf(x - s1pio2);
        }
        return sin_kernf(-(sign ? x + s2pio2 : x - s2pio2));
      }

      if (ix <= 0x40e231d5) {   /* |x| ~<= 9π/4 */
        if (ix <= 0x40afeddf) { /* |x| ~<= 7π/4 */
          return sign ? cos_kernf(x + s3pio2) : -cos_kernf(x - s3pio2);
        }
        return sin_kernf(sign ? x + s4pio2 : x - s4pio2);
      }
    }

    /* sin(Inf or NaN) is NaN */
    if (ix >= 0x7f800000) return x - x;

    var n = rempio2f(x, ix, sign);
    var y = rempio2f_y;

    var t = n & 1 ? cos_kernf(y) : sin_kernf(y);
    return n & 2 ? -t : t;
  }

  export function sinh(x: f32): f32 { // see: musl/src/math/sinhf.c
    var u = reinterpret<u32>(x) & 0x7FFFFFFF;
    var absx = reinterpret<f32>(u);
    var t: f32;
    var h = builtin_copysign<f32>(0.5, x);
    if (u < 0x42B17217) {
      t = expm1(absx);
      if (u < 0x3F800000) {
        if (u < 0x3F800000 - (12 << 23)) return x;
        return h * (2 * t - t * t / (t + 1));
      }
      return h * (t + t / (t + 1));
    }
    t = 2 * h * expo2f(absx);
    return t;
  }

  @inline
  export function sqrt(x: f32): f32 {
    return builtin_sqrt<f32>(x);
  }

  export function tan(x: f32): f32 { // see: musl/src/math/tanf.c
    const t1pio2 = reinterpret<f64>(0x3FF921FB54442D18); // 1 * M_PI_2
    const t2pio2 = reinterpret<f64>(0x400921FB54442D18); // 2 * M_PI_2
    const t3pio2 = reinterpret<f64>(0x4012D97C7F3321D2); // 3 * M_PI_2
    const t4pio2 = reinterpret<f64>(0x401921FB54442D18); // 4 * M_PI_2

    var ix = reinterpret<u32>(x);
    var sign = ix >> 31;
    ix &= 0x7FFFFFFF;

    if (ix <= 0x3f490fda) {  /* |x| ~<= π/4 */
      if (ix < 0x39800000) { /* |x| < 2**-12 */
        return x;
      }
      return tan_kernf(x, 0);
    }

    if (ASC_SHRINK_LEVEL < 1) {
      if (ix <= 0x407b53d1) {   /* |x| ~<= 5π/4 */
        if (ix <= 0x4016cbe3) { /* |x| ~<= 3π/4 */
          return tan_kernf((sign ? x + t1pio2 : x - t1pio2), 1);
        } else {
          return tan_kernf((sign ? x + t2pio2 : x - t2pio2), 0);
        }
      }
      if (ix <= 0x40e231d5) {   /* |x| ~<= 9π/4 */
        if (ix <= 0x40afeddf) { /* |x| ~<= 7π/4 */
          return tan_kernf((sign ? x + t3pio2 : x - t3pio2), 1);
        } else {
          return tan_kernf((sign ? x + t4pio2 : x - t4pio2), 0);
        }
      }
    }

    /* tan(Inf or NaN) is NaN */
    if (ix >= 0x7f800000) return x - x;

    /* argument reduction */
    var n = rempio2f(x, ix, sign);
    var y = rempio2f_y;
    return tan_kernf(y, n & 1);
  }

  export function tanh(x: f32): f32 { // see: musl/src/math/tanhf.c
    var u = reinterpret<u32>(x);
    u &= 0x7FFFFFFF;
    var y = reinterpret<f32>(u);
    var t: f32;
    if (u > 0x3F0C9F54) {
      if (u > 0x41200000) t = 1 + 0 / y;
      else {
        t = expm1(2 * y);
        t = 1 - 2 / (t + 2);
      }
    } else if (u > 0x3E82C578) {
      t = expm1(2 * y);
      t = t / (t + 2);
    } else if (u >= 0x00800000) {
      t = expm1(-2 * y);
      t = -t / (t + 2);
    } else t = y;
    return builtin_copysign<f32>(t, x);
  }

  @inline
  export function trunc(x: f32): f32 {
    return builtin_trunc<f32>(x);
  }

  export function scalbn(x: f32, n: i32): f32 { // see: https://git.musl-libc.org/cgit/musl/tree/src/math/scalbnf.c
    const
      Ox1p24f   = reinterpret<f32>(0x4B800000),
      Ox1p127f  = reinterpret<f32>(0x7F000000),
      Ox1p_126f = reinterpret<f32>(0x00800000);
    var y = x;
    if (n > 127) {
      y *= Ox1p127f;
      n -= 127;
      if (n > 127) {
        y *= Ox1p127f;
        n = builtin_min<i32>(n - 127, 127);
      }
    } else if (n < -126) {
      y *= Ox1p_126f * Ox1p24f;
      n += 126 - 24;
      if (n < -126) {
        y *= Ox1p_126f * Ox1p24f;
        n = builtin_max<i32>(n + 126 - 24, -126);
      }
    }
    return y * reinterpret<f32>(<u32>(0x7F + n) << 23);
  }

  export function mod(x: f32, y: f32): f32 { // see: musl/src/math/fmodf.c
    var ux = reinterpret<u32>(x);
    var uy = reinterpret<u32>(y);
    var ex = <i32>(ux >> 23 & 0xFF);
    var ey = <i32>(uy >> 23 & 0xFF);
    var sx = ux & 0x80000000;
    var uy1 = uy << 1;
    if (uy1 == 0 || ex == 0xFF || isNaN<f32>(y)) {
      let m = x * y;
      return m / m;
    }
    var ux1 = ux << 1;
    if (ux1 <= uy1) {
      if (ux1 == uy1) return 0 * x;
      return x;
    }
    if (!ex) {
      ex -= builtin_clz<u32>(ux << 9);
      ux <<= -ex + 1;
    } else {
      ux &= <u32>-1 >> 9;
      ux |= 1 << 23;
    }
    if (!ey) {
      ey -= builtin_clz<u32>(uy << 9);
      uy <<= -ey + 1;
    } else {
      uy &= <u32>-1 >> 9;
      uy |= 1 << 23;
    }
    while (ex > ey) {
      if (ux >= uy) {
        if (ux == uy) return 0 * x;
        ux -= uy;
      }
      ux <<= 1;
      --ex;
    }
    if (ux >= uy) {
      if (ux == uy) return 0 * x;
      ux -= uy;
    }
    // for (; !(ux >> 23); ux <<= 1) --ex;
    var shift = <i32>builtin_clz<u32>(ux << 8);
    ex -= shift;
    ux <<= shift;
    if (ex > 0) {
      ux -= 1 << 23;
      ux |= <u32>ex << 23;
    } else {
      ux >>= -ex + 1;
    }
    ux |= sx;
    return reinterpret<f32>(ux);
  }

  export function rem(x: f32, y: f32): f32 { // see: musl/src/math/remquof.c
    var ux = reinterpret<u32>(x);
    var uy = reinterpret<u32>(y);
    var ex = <i32>(ux >> 23 & 0xFF);
    var ey = <i32>(uy >> 23 & 0xFF);
    var sx = <i32>(ux >> 31);
    var uxi = ux;
    if (uy << 1 == 0 || ex == 0xFF || isNaN(y)) return (x * y) / (x * y);
    if (ux << 1 == 0) return x;
    if (!ex) {
      ex -= builtin_clz<u32>(uxi << 9);
      uxi <<= -ex + 1;
    } else {
      uxi &= <u32>-1 >> 9;
      uxi |= 1 << 23;
    }
    if (!ey) {
      ey -= builtin_clz<u32>(uy << 9);
      uy <<= -ey + 1;
    } else {
      uy &= <u32>-1 >> 9;
      uy |= 1 << 23;
    }
    var q = 0;
    do {
      if (ex < ey) {
        if (ex + 1 == ey) break; // goto end
        return x;
      }
      while (ex > ey) {
        if (uxi >= uy) {
          uxi -= uy;
          ++q;
        }
        uxi <<= 1;
        q <<= 1;
        --ex;
      }
      if (uxi >= uy) {
        uxi -= uy;
        ++q;
      }
      if (uxi == 0) ex = -30;
      else {
        let shift = builtin_clz<i32>(uxi << 8);
        ex -= shift;
        uxi <<= shift;
      }
      break;
    } while (false);
  // end
    if (ex > 0) {
      uxi -= 1 << 23;
      uxi |= <u32>ex << 23;
    } else {
      uxi >>= -ex + 1;
    }
    x = reinterpret<f32>(uxi);
    y = builtin_abs<f32>(y);
    var x2 = x + x;
    if (ex == ey || (ex + 1 == ey && (<f32>x2 > y || (<f32>x2 == y && <bool>(q & 1))))) {
      x -= y;
      // q++;
    }
    return sx ? -x : x;
  }

  export function sincos(x: f32): void { // see: musl/tree/src/math/sincosf.c
    const s1pio2 = reinterpret<f64>(0x3FF921FB54442D18); // 1 * M_PI_2
    const s2pio2 = reinterpret<f64>(0x400921FB54442D18); // 2 * M_PI_2
    const s3pio2 = reinterpret<f64>(0x4012D97C7F3321D2); // 3 * M_PI_2
    const s4pio2 = reinterpret<f64>(0x401921FB54442D18); // 4 * M_PI_2

    var ix = reinterpret<u32>(x);
    var sign = ix >> 31;
    ix &= 0x7fffffff;

    if (ix <= 0x3f490fda) {  /* |x| ~<= π/4 */
      if (ix < 0x39800000) { /* |x| < 2**-12 */
        sincos_s32 = x;
        sincos_c32 = 1;
        return;
      }
      sincos_s32 = sin_kernf(x);
      sincos_c32 = cos_kernf(x);
      return;
    }

    if (ASC_SHRINK_LEVEL < 1) {
      if (ix <= 0x407b53d1) {   /* |x| ~<= 5π/4 */
        if (ix <= 0x4016cbe3) { /* |x| ~<= 3π/4 */
          if (sign) {
            sincos_s32 = -cos_kernf(x + s1pio2);
            sincos_c32 =  sin_kernf(x + s1pio2);
          } else {
            sincos_s32 = cos_kernf(s1pio2 - x);
            sincos_c32 = sin_kernf(s1pio2 - x);
          }
          return;
        }
        /* -sin(x + c) is not correct if x+c could be 0: -0 vs +0 */
        sincos_s32 = -sin_kernf(sign ? x + s2pio2 : x - s2pio2);
        sincos_c32 = -cos_kernf(sign ? x + s2pio2 : x - s2pio2);
        return;
      }

      if (ix <= 0x40e231d5) {   /* |x| ~<= 9π/4 */
        if (ix <= 0x40afeddf) { /* |x| ~<= 7π/4 */
          if (sign) {
            sincos_s32 =  cos_kernf(x + s3pio2);
            sincos_c32 = -sin_kernf(x + s3pio2);
          } else {
            sincos_s32 = -cos_kernf(x - s3pio2);
            sincos_c32 =  sin_kernf(x - s3pio2);
          }
          return;
        }
        sincos_s32 = sin_kernf(sign ? x + s4pio2 : x - s4pio2);
        sincos_c32 = cos_kernf(sign ? x + s4pio2 : x - s4pio2);
        return;
      }
    }

    /* sin(Inf or NaN) is NaN */
    if (ix >= 0x7f800000) {
      let xx = x - x;
      sincos_s32 = xx;
      sincos_c32 = xx;
      return;
    }

    /* general argument reduction needed */
    var n = rempio2f(x, ix, sign);
    var y = rempio2f_y;
    var s = sin_kernf(y);
    var c = cos_kernf(y);

    switch (n & 3) {
      case 0: {
        sincos_s32 = s;
        sincos_c32 = c;
        break;
      }
      case 1: {
        sincos_s32 =  c;
        sincos_c32 = -s;
        break;
      }
      case 2: {
        sincos_s32 = -s;
        sincos_c32 = -c;
        break;
      }
      case 3:
      default: {
        sincos_s32 = -c;
        sincos_c32 =  s;
        break;
      }
    }
  }
}

export function ipow32(x: i32, e: i32): i32 {
  var out = 1;
  if (ASC_SHRINK_LEVEL < 1) {
    if (e < 0) return 0;

    switch (e) {
      case 0: return 1;
      case 1: return x;
      case 2: return x * x;
    }

    let log = 32 - clz(e);
    if (log <= 5) {
      // 32 = 2 ^ 5, so need only five cases.
      // But some extra cases needs for properly overflowing
      switch (log) {
        case 5: {
          if (e & 1) out *= x;
          e >>= 1;
          x *= x;
        }
        case 4: {
          if (e & 1) out *= x;
          e >>= 1;
          x *= x;
        }
        case 3: {
          if (e & 1) out *= x;
          e >>= 1;
          x *= x;
        }
        case 2: {
          if (e & 1) out *= x;
          e >>= 1;
          x *= x;
        }
        case 1: {
          if (e & 1) out *= x;
        }
      }
      return out;
    }
  }

  while (e > 0) {
    if (e & 1) out *= x;
    e >>= 1;
    x *= x;
  }
  return out;
}

export function ipow64(x: i64, e: i32): i64 {
  var out: i64 = 1;
  if (ASC_SHRINK_LEVEL < 1) {
    if (e < 0) return 0;
    switch (e) {
      case 0: return 1;
      case 1: return x;
      case 2: return x * x;
    }

    let log = 32 - clz(e);
    if (log <= 6) {
      // 64 = 2 ^ 6, so need only six cases.
      // But some extra cases needs for properly overflowing
      switch (log) {
        case 6: {
          if (e & 1) out *= x;
          e >>= 1;
          x *= x;
        }
        case 5: {
          if (e & 1) out *= x;
          e >>= 1;
          x *= x;
        }
        case 4: {
          if (e & 1) out *= x;
          e >>= 1;
          x *= x;
        }
        case 3: {
          if (e & 1) out *= x;
          e >>= 1;
          x *= x;
        }
        case 2: {
          if (e & 1) out *= x;
          e >>= 1;
          x *= x;
        }
        case 1: {
          if (e & 1) out *= x;
        }
      }
      return out;
    }
  }

  while (e > 0) {
    if (e & 1) out *= x;
    e >>= 1;
    x *= x;
  }
  return out;
}

export function ipow32f(x: f32, e: i32): f32 {
  var sign = e >> 31;
  e = (e + sign) ^ sign; // abs(e)
  var out: f32 = 1;
  while (e) {
    out *= select<f32>(x, 1.0, e & 1);
    e >>= 1;
    x *= x;
  }
  return sign ? <f32>1.0 / out : out;
}

export function ipow64f(x: f64, e: i32): f64 {
  var sign = e >> 31;
  e = (e + sign) ^ sign; // abs(e)
  var out = 1.0;
  while (e) {
    out *= select(x, 1.0, e & 1);
    e >>= 1;
    x *= x;
  }
  return sign ? 1.0 / out : out;
}
