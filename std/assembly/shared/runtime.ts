// This file is shared with the compiler and must remain portable

/** Runtime types. */
export enum Runtime {
  /** Simple bump allocator without GC. */
  Stub = 0,
  /** Stop the world semi-automatic GC. */
  Minimal = 1,
  /** incremental GC. */
  Incremental = 2,
}
