/**
 * @fileoverview Various math utility.
 * @license Apache-2.0
 */

/** Tests if `x` is a power of two. */
export function isPowerOf2(x: i32): bool {
  return x != 0 && (x & (x - 1)) == 0;
}

export function accuratePow64(x: f64, y: f64): f64 {
  if (!ASC_TARGET) { // ASC_TARGET == JS
    // Engines like V8, WebKit and SpiderMonkey uses powi fast path if exponent is integer
    // This speculative optimization leads to loose precisions like 10 ** 208 != 1e208
    // or/and 10 ** -5 != 1e-5 anymore. For avoid this behaviour we are forcing exponent
    // to fractional form and compensate this afterwards.
    if (isFinite(y) && Math.abs(y) >= 2 && Math.trunc(y) == y) {
      if (y < 0) {
        return Math.pow(x, y + 0.5) / Math.pow(x, 0.5);
      } else {
        return Math.pow(x, y - 0.5) * Math.pow(x, 0.5);
      }
    }
  }
  return Math.pow(x, y);
}

// see: https://git.musl-libc.org/cgit/musl/tree/src/math/scalbn.c
/** Equivalent of `x * (2 ** n)` */
export function scalbn(x: f64, n: i32): f64 {
  const
    Ox1p1023 = 8.98846567431158e+307,    // 0x1p1023
    Ox1p_969 = 2.00416836000897278e-292; // 0x1p-1022 * 0x1p53

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
    // make sure final n < -53 to avoid double
    // rounding in the subnormal range
    y *= Ox1p_969;
    n += 1022 - 53;
    if (n < -1022) {
      y *= Ox1p_969;
      n += 1022 - 53;
      if (n < -1022) n = -1022;
    }
  }
  if (!ASC_TARGET) { // ASC_TARGET == JS
    return y * i64_as_f64(i64_new(0, 0x3FF + n << 20));
  } else {
    // @ts-ignore
    return y * reinterpret<f64>(u64(0x3FF + n) << 52);
  }
}
