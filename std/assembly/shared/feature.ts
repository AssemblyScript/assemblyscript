// This file is shared with the compiler and must remain portable

/** Indicates specific features to activate. */
export const enum Feature {
  /** No additional features. */
  NONE = 0,
  /** Sign extension operations. */
  SIGN_EXTENSION = 1 << 0, // see: https://github.com/WebAssembly/sign-extension-ops
  /** Mutable global imports and exports. */
  MUTABLE_GLOBAL = 1 << 1, // see: https://github.com/WebAssembly/mutable-global
  /** Bulk memory operations. */
  BULK_MEMORY = 1 << 2, // see: https://github.com/WebAssembly/bulk-memory-operations
  /** SIMD types and operations. */
  SIMD = 1 << 3, // see: https://github.com/WebAssembly/simd
  /** Threading and atomic operations. */
  THREADS = 1 << 4 // see: https://github.com/WebAssembly/threads
}
