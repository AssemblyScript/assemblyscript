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
    // This speculative optimization leads to loose precisions like 10 ** -5 != 1e-5 anymore
    // and introduces inconsistencies between different engines and versions
    // For avoid this behavior we using bootstrap f64_pow function.
    return f64_pow(x, y);
  }
  return Math.pow(x, y);
}
