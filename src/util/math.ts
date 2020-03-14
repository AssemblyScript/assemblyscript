/**
 * @fileoverview Various math utility.
 * @license Apache-2.0
 */

/** Tests if `x` is a power of two. */
export function isPowerOf2(x: i32): bool {
  return x != 0 && (x & (x - 1)) == 0;
}
