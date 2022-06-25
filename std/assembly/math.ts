import { Math as JSMath } from "./bindings/dom";
export { JSMath };

import {
  dtoi32, murmurHash3,
  acos32, acos64,
  acosh32, acosh64,
  asin32, asin64,
  asinh32, asinh64,
  atan32, atan64,
  atanh32, atanh64,
  atan2_32, atan2_64,
  cbrt32, cbrt64,
  cos32, cos64,
  cosh32, cosh64,
  exp32, exp64,
  expm1_32, expm1_64,
  log32, log64,
  log1p32, log1p64,
  log2_32, log2_64,
  log10_32, log10_64,
  hypot32, hypot64,
  ipow32, ipow64,
  pow32, pow64,
  sin32, sin64,
  sinh32, sinh64,
  tan32, tan64,
  tanh32, tanh64,
  sincos32, sincos64,
  sincos_cos32, sincos_cos64,
  exp2_32_lut, exp2_64_lut
} from "./util/math";

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

// @ts-ignore: decorator
@lazy var
  random_seeded = false,
  random_state0_64: u64,
  random_state1_64: u64;

export namespace NativeMath {

  // @ts-ignore: decorator
  @lazy
  export const E       = reinterpret<f64>(0x4005BF0A8B145769); // 2.7182818284590452354

  // @ts-ignore: decorator
  @lazy
  export const LN2     = reinterpret<f64>(0x3FE62E42FEFA39EF); // 0.69314718055994530942

  // @ts-ignore: decorator
  @lazy
  export const LN10    = reinterpret<f64>(0x40026BB1BBB55516); // 2.30258509299404568402

  // @ts-ignore: decorator
  @lazy
  export const LOG2E   = reinterpret<f64>(0x3FF71547652B82FE); // 1.4426950408889634074

  // @ts-ignore: decorator
  @lazy
  export const LOG10E  = reinterpret<f64>(0x3FDBCB7B1526E50E); // 0.43429448190325182765

  // @ts-ignore: decorator
  @lazy
  export const PI      = reinterpret<f64>(0x400921FB54442D18); // 3.14159265358979323846

  // @ts-ignore: decorator
  @lazy
  export const SQRT1_2 = reinterpret<f64>(0x3FE6A09E667F3BCD); // 0.70710678118654752440

  // @ts-ignore: decorator
  @lazy
  export const SQRT2   = reinterpret<f64>(0x3FF6A09E667F3BCD); // 1.41421356237309504880

  // @ts-ignore: decorator
  @lazy
  export var sincos_sin: f64 = 0;

  // @ts-ignore: decorator
  @lazy
  export var sincos_cos: f64 = 0;

  // @ts-ignore: decorator
  @inline
  export function abs<T extends number = f64>(x: T): T {
    return builtin_abs<T>(x);
  }

  // @ts-ignore: decorator
  @inline
  export function acos<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>acos32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>acos64(x);
      }
    }
    return ERROR("Math.acos accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function acosh<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>acosh32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>acosh64(x);
      }
    }
    return ERROR("Math.acosh accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function asin<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>asin32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>asin64(x);
      }
    }
    return ERROR("Math.asin accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function asinh<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>asinh32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>asinh64(x);
      }
    }
    return ERROR("Math.asinh accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function atan<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>atan32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>atan64(x);
      }
    }
    return ERROR("Math.atan accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function atanh<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>atanh32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>atanh64(x);
      }
    }
    return ERROR("Math.atanh accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function atan2<T extends number = f64>(x: T, y: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>atan2_32(x, y);
      }
      if (sizeof<T>() == 8) {
        return <T>atan2_64(x, y);
      }
    }
    return ERROR("Math.atan2 accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function cbrt<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>cbrt32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>cbrt64(x);
      }
    }
    return ERROR("Math.cbrt accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function ceil<T extends number = f64>(x: T): T {
    if (isInteger<T>()) {
      return x;
    } else if (isFloat<T>()) {
      return builtin_ceil<T>(x);
    } else {
      return ERROR("Math.ceil accept only numeric types");
    }
  }

  export function clz32<T extends number = f64>(x: T): i32 {
    if (isInteger<T>()) {
      return builtin_clz(i32(x));
    } else if (isFloat<T>()) {
      if (!isFinite<T>(x)) return 32;
      /*
      * Wasm (MVP) and JS have different approaches for double->int conversions.
      *
      * For emulate JS conversion behavior and avoid trapping from wasm we should modulate by MAX_INT
      * our float-point arguments before actual convertion to integers.
      */
      return builtin_clz<i32>(dtoi32(f64(x)));
    } else {
      return ERROR("Math.clz32 accept only numeric types");
    }
  }

  // @ts-ignore: decorator
  @inline
  export function cos<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>cos32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>cos64(x);
      }
    }
    return ERROR("Math.cos accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function cosh<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>cosh32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>cosh64(x);
      }
    }
    return ERROR("Math.cosh accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function exp<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>exp32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>exp64(x);
      }
    }
    return ERROR("Math.exp accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function exp2<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>exp2_32_lut(x);
      }
      if (sizeof<T>() == 8) {
        return <T>exp2_64_lut(x);
      }
    }
    return ERROR("Math.exp2 accept only numeric types");
  }

  // @ts-ignore: decorator
  @inline
  export function expm1<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>expm1_32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>expm1_64(x);
      }
    }
    return ERROR("Math.expm1 accept only numeric types");
  }

  // @ts-ignore: decorator
  @inline
  export function floor<T extends number = f64>(x: T): T {
    if (isInteger<T>()) {
      return x;
    } else if (isFloat<T>()) {
      return builtin_floor<T>(x);
    } else {
      return ERROR("Math.floor accept only numeric types");
    }
  }

  // @ts-ignore: decorator
  @inline
  export function fround<T extends number = f64>(x: T): f32 {
    if (isFloat<T>()) {
      return <f32>x;
    } else {
      return ERROR("Math.fround accept only f32 or f64 types");
    }
  }

  // @ts-ignore: decorator
  @inline
  export function hypot<T extends number = f64>(x: T, y: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>hypot32(x, y);
      }
      if (sizeof<T>() == 8) {
        return <T>hypot64(x, y);
      }
    }
    return ERROR("Math.hypot accept only f32 or f64 types");
  }

  export function imul<T extends number = f64>(x: T, y: T): T {
    if (isInteger<T>()) {
      return <T>(<i32>x * <i32>y);
    } else if (isFloat<T>()) {
      /*
      * Wasm (MVP) and JS have different approaches for double->int conversions.
      *
      * For emulate JS conversion behavior and avoid trapping from wasm we should modulate by MAX_INT
      * our float-point arguments before actual convertion to integers.
      */
      if (!isFinite(x + y)) return <T>0;
      return <T>(dtoi32(x) * dtoi32(y));
    } else {
      return ERROR("Math.imul accept only numeric types");
    }
  }

  // @ts-ignore: decorator
  @inline
  export function log<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>log32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>log64(x);
      }
    }
    return ERROR("Math.log accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function log10<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>log10_32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>log10_64(x);
      }
    }
    return ERROR("Math.log10 accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function log1p<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>log1p32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>log1p64(x);
      }
    }
    return ERROR("Math.log1p accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function log2<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>log2_32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>log2_64(x);
      }
    }
    return ERROR("Math.log2 accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function max<T extends number = f64>(a: T, b: T): T {
    return builtin_max<T>(a, b);
  }

  // @ts-ignore: decorator
  @inline
  export function min<T extends number = f64>(a: T, b: T): T {
    return builtin_min<T>(a, b);
  }

  // @ts-ignore: decorator
  @inline
  export function pow<T extends number = f64>(x: T, y: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>pow32(x, y);
      }
      if (sizeof<T>() == 8) {
        return <T>pow64(x, y);
      }
    } else if (isInteger<T>()) {
      if (sizeof<T>() <= 4) {
        return <T>ipow32(x, y);
      }
      if (sizeof<T>() == 8) {
        return <T>ipow64(x, y);
      }
    }
    return ERROR("Math.pow accept only numeric types");
  }

  export function seedRandom(value: i64): void {
    // Instead zero seed use golden ratio:
    // phi = (1 + sqrt(5)) / 2
    // trunc(2^64 / phi) = 0x9e3779b97f4a7c15
    if (value == 0) value = 0x9e3779b97f4a7c15;
    random_state0_64 = murmurHash3(value);
    random_state1_64 = murmurHash3(~random_state0_64);
    random_seeded = true;
  }

  export function random(): f64 { // see: v8/src/base/utils/random-number-generator.cc
    if (!random_seeded) seedRandom(reinterpret<i64>(seed()));
    var s1 = random_state0_64;
    var s0 = random_state1_64;
    random_state0_64 = s0;
    s1 ^= s1 << 23;
    s1 ^= s1 >> 17;
    s1 ^= s0;
    s1 ^= s0 >> 26;
    random_state1_64 = s1;
    var r = (s0 >> 12) | 0x3FF0000000000000;
    return reinterpret<f64>(r) - 1;
  }

  // @ts-ignore: decorator
  @inline
  export function round<T extends number = f64>(x: T): T {
    if (isInteger<T>()) {
      return x;
    } else if (isFloat<T>()) {
      let roundUp = builtin_ceil<T>(x);
      return select<T>(roundUp, <T>(roundUp - 1.0), roundUp - 0.5 <= x);
    } else {
      return ERROR("Math.round accept only numeric types");
    }
  }

  // @ts-ignore: decorator
  @inline
  export function sign<T extends number = f64>(x: T): T {
    if (isInteger<T>()) {
      if (isSigned<T>()) {
        return <T>(x ? (x >> sizeof<T>() * 8 - 1) | 1 : 0);
      } else {
        return <T>(x ? 1 : 0);
      }
    } else if (isFloat<T>()) {
      if (ASC_SHRINK_LEVEL > 0) {
        return builtin_abs<T>(x) > 0 ? builtin_copysign<T>(<T>1, x) : x;
      } else {
        return <T>(x > 0 ? 1 : x < 0 ? -1 : x);
      }
    } else {
      return ERROR("Math.sign accept only numeric types");
    }
  }

  // @ts-ignore: decorator
  @inline
  export function signbit<T extends number = f64>(x: T): bool {
    if (isInteger<T>()) {
      if (isSigned<T>()) {
        return <bool>(x >>> sizeof<T>() * 8 - 1);
      } else {
        return false;
      }
    } else if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <bool>(reinterpret<u32>(x) >>> 31);
      }
      if (sizeof<T>() == 8) {
        return <bool>(reinterpret<u64>(x) >>> 63);
      }
    }
    return ERROR("Math.signbit accept only numeric types");
  }

  // @ts-ignore: decorator
  @inline
  export function sin<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>sin32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>sin64(x);
      }
    }
    return ERROR("Math.sin accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function sinh<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>sinh32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>sinh64(x);
      }
    }
    return ERROR("Math.sinh accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function sqrt<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      return builtin_sqrt<T>(x);
    } else {
      return ERROR("Math.sqrt accept only f32 or f64 types");
    }
  }

  // @ts-ignore: decorator
  @inline
  export function tan<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>tan32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>tan64(x);
      }
    }
    return ERROR("Math.tan accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function tanh<T extends number = f64>(x: T): T {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        return <T>tanh32(x);
      }
      if (sizeof<T>() == 8) {
        return <T>tanh64(x);
      }
    }
    return ERROR("Math.tanh accept only f32 or f64 types");
  }

  // @ts-ignore: decorator
  @inline
  export function trunc<T extends number = f64>(x: T): T {
    if (isInteger<T>()) {
      return x;
    } else if (isFloat<T>()) {
      return builtin_trunc<T>(x);
    } else {
      return ERROR("Math.trunc accept only numeric types");
    }
  }

  // @ts-ignore: decorator
  @inline
  export function sincos<T extends number = f64>(x: T): void {
    if (isFloat<T>()) {
      if (sizeof<T>() == 4) {
        sincos_sin = <f64>sincos32(x);
        sincos_cos = <f64>sincos_cos32;
      } else if (sizeof<T>() == 8) {
        sincos_sin = sincos64(x);
        sincos_cos = sincos_cos64;
      } else {
        ERROR("Math.sincos accept only f32 or f64 types");
      }
    } else {
      ERROR("Math.sincos accept only f32 or f64 types");
    }
  }
}
