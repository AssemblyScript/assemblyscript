/** Indicates module capabilities. */
export const enum Capability {
  /** No specific capabilities. */
  NONE = 0,
  /** Uses WebAssembly with 64-bit pointers. */
  WASM64 = 1 << 0,
  /** Garbage collector is present (full runtime header). */
  GC = 1 << 1
}
