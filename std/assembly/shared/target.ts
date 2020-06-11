// This file is shared with the compiler and must remain portable

/** Compilation target. */
export enum Target {
  /** WebAssembly with 32-bit pointers. */
  WASM32 = 0,
  /** WebAssembly with 64-bit pointers. Experimental and not supported by any runtime yet. */
  WASM64 = 1,
  /** Portable. */
  JS = 2
}
