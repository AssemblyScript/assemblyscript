/**
 * Various compiler utilities.
 * @module util
 * @preferred
 *//***/

export * from "./bitset";
export * from "./charcode";
export * from "./collections";
export * from "./path";
export * from "./text";
export * from "./binary";

/** Tests if `x` is a power of two. */
export function isPowerOf2(x: i32): bool {
  return x != 0 && (x & (x - 1)) == 0;
}
