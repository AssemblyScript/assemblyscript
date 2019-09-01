// This file is shared with the compiler and must remain portable

/** Indicates specific features to activate. */
export const enum Feature {
  /** No additional features. */
  NONE = 0,
  /** Sign extension operations. */
  SIGN_EXTENSION = 1 << 0, // see: https://github.com/WebAssembly/sign-extension-ops
  /** Mutable global imports and exports. */
  MUTABLE_GLOBALS = 1 << 1, // see: https://github.com/WebAssembly/mutable-global
  /** Non-trapping float to integer operations. */
  NONTRAPPING_F2I = 1 << 2, // see: https://github.com/WebAssembly/nontrapping-float-to-int-conversions
  /** Bulk memory operations. */
  BULK_MEMORY = 1 << 3, // see: https://github.com/WebAssembly/bulk-memory-operations
  /** SIMD types and operations. */
  SIMD = 1 << 4, // see: https://github.com/WebAssembly/simd
  /** Threading and atomic operations. */
  THREADS = 1 << 5, // see: https://github.com/WebAssembly/threads
  /** Exception handling operations. */
  EXCEPTION_HANDLING = 1 << 6, // see: https://github.com/WebAssembly/exception-handling
  /** Tail call operations. */
  TAIL_CALLS = 1 << 7, // see: https://github.com/WebAssembly/tail-call
  /** Reference types. */
  REFERENCE_TYPES = 1 << 8 // see: https://github.com/WebAssembly/reference-types
}
