// This file is shared with the compiler and must remain portable

/** Indicates specific features to activate. */
export const enum Feature {
  /** No additional features. */
  None = 0,
  /** Sign extension operations. */
  SignExtension = 1 << 0, // see: https://github.com/WebAssembly/sign-extension-ops
  /** Mutable global imports and exports. */
  MutableGlobals = 1 << 1, // see: https://github.com/WebAssembly/mutable-global
  /** Non-trapping float to integer operations. */
  NontrappingF2I = 1 << 2, // see: https://github.com/WebAssembly/nontrapping-float-to-int-conversions
  /** Bulk memory operations. */
  BulkMemory = 1 << 3, // see: https://github.com/WebAssembly/bulk-memory-operations
  /** SIMD types and operations. */
  Simd = 1 << 4, // see: https://github.com/WebAssembly/simd
  /** Threading and atomic operations. */
  Threads = 1 << 5, // see: https://github.com/WebAssembly/threads
  /** Exception handling operations. */
  ExceptionHandling = 1 << 6, // see: https://github.com/WebAssembly/exception-handling
  /** Tail call operations. */
  TailCalls = 1 << 7, // see: https://github.com/WebAssembly/tail-call
  /** Reference types. */
  ReferenceTypes = 1 << 8, // see: https://github.com/WebAssembly/reference-types
  /** Multi value types. */
  MultiValue = 1 << 9, // see: https://github.com/WebAssembly/multi-value
  /** Garbage collection. */
  GC = 1 << 10, // see: https://github.com/WebAssembly/gc
  /** Memory64. */
  Memory64 = 1 << 11, // see: https://github.com/WebAssembly/memory64
  /** Relaxed SIMD. */
  RelaxedSimd = 1 << 12, // see: https://github.com/WebAssembly/relaxed-simd
  /** Extended const expressions. */
  ExtendedConst = 1 << 13, // see: https://github.com/WebAssembly/extended-const
  /** Reference typed strings. */
  Stringref = 1 << 14, // see: https://github.com/WebAssembly/stringref
  /** All features. */
  All = (1 << 15) - 1
}

/** Gets the name of the specified feature one would specify on the command line. */
export function featureToString(feature: Feature): string {
  switch (feature) {
    case Feature.SignExtension: return "sign-extension";
    case Feature.MutableGlobals: return "mutable-globals";
    case Feature.NontrappingF2I: return "nontrapping-f2i";
    case Feature.BulkMemory: return "bulk-memory";
    case Feature.Simd: return "simd";
    case Feature.Threads: return "threads";
    case Feature.ExceptionHandling: return "exception-handling";
    case Feature.TailCalls: return "tail-calls";
    case Feature.ReferenceTypes: return "reference-types";
    case Feature.MultiValue: return "multi-value";
    case Feature.GC: return "gc";
    case Feature.Memory64: return "memory64";
    case Feature.RelaxedSimd: return "relaxed-simd";
    case Feature.ExtendedConst: return "extended-const";
    case Feature.Stringref: return "stringref";
  }
  assert(false);
  return "";
}
