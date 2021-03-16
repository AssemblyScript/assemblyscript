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
  REFERENCE_TYPES = 1 << 8, // see: https://github.com/WebAssembly/reference-types
  /** Multi value types. */
  MULTI_VALUE = 1 << 9, // see: https://github.com/WebAssembly/multi-value
  /** Garbage collection. */
  GC = 1 << 10, // see: https://github.com/WebAssembly/gc
  /** Memory64. */
  MEMORY64 = 1 << 11 // see: https://github.com/WebAssembly/memory64
}

/** Gets the name of the specified feature one would specify on the command line. */
export function featureToString(feature: Feature): string {
  switch (feature) {
    case Feature.SIGN_EXTENSION: return "sign-extension";
    case Feature.MUTABLE_GLOBALS: return "mutable-globals";
    case Feature.NONTRAPPING_F2I: return "nontrapping-f2i";
    case Feature.BULK_MEMORY: return "bulk-memory";
    case Feature.SIMD: return "simd";
    case Feature.THREADS: return "threads";
    case Feature.EXCEPTION_HANDLING: return "exception-handling";
    case Feature.TAIL_CALLS: return "tail-calls";
    case Feature.REFERENCE_TYPES: return "reference-types";
    case Feature.MULTI_VALUE: return "multi-value";
    case Feature.GC: return "gc";
    case Feature.MEMORY64: return "memory64";
  }
  assert(false);
  return "";
}
