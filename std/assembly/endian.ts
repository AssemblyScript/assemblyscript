// Zero-overhead endian conversion utilities.
// Wasm is little-endian; protocols (Bitcoin, networking) often need big-endian.

export namespace Endian {

  /** Load a value from memory in big-endian byte order. */
  @inline export function loadBE<T>(ptr: usize, offset: usize = 0): T {
    return bswap<T>(load<T>(ptr + offset));
  }

  /** Store a value to memory in big-endian byte order. */
  @inline export function storeBE<T>(ptr: usize, value: T, offset: usize = 0): void {
    store<T>(ptr + offset, bswap<T>(value));
  }

  /** Load a value from memory in little-endian byte order (identity on wasm). */
  @inline export function loadLE<T>(ptr: usize, offset: usize = 0): T {
    return load<T>(ptr + offset);
  }

  /** Store a value to memory in little-endian byte order (identity on wasm). */
  @inline export function storeLE<T>(ptr: usize, value: T, offset: usize = 0): void {
    store<T>(ptr + offset, value);
  }

  /** Convert a value to big-endian byte order (bswap on wasm). */
  @inline export function toBE<T>(value: T): T {
    return bswap<T>(value);
  }

  /** Convert a value from big-endian byte order (bswap on wasm). */
  @inline export function fromBE<T>(value: T): T {
    return bswap<T>(value);
  }

  /** Convert a value to little-endian byte order (identity on wasm). */
  @inline export function toLE<T>(value: T): T {
    return value;
  }

  /** Convert a value from little-endian byte order (identity on wasm). */
  @inline export function fromLE<T>(value: T): T {
    return value;
  }
}
