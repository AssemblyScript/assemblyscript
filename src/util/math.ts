/**
 * @fileoverview Various math utility.
 * @license Apache-2.0
 */

/** Tests if `x` is a power of two. */
export function isPowerOf2(x: i32): bool {
  return x != 0 && (x & (x - 1)) == 0;
}

export function accuratePow64(x: f64, y: f64): f64 {
  if (!ASC_TARGET) {
    // ASC_TARGET == JS
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
