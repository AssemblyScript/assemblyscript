// This file is shared with the compiler and must remain portable

/** Compilation target. */
export enum Target {
  /** Portable. */
  Js = 0,
  /** WebAssembly with 32-bit pointers. */
  Wasm32 = 1,
  /** WebAssembly with 64-bit pointers. Experimental and not supported by any runtime yet. */
  Wasm64 = 2,
}
