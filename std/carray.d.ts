/// <reference path="../assembly.d.ts" />

/** A C-compatible array class. */
declare class CArray<T> {
  [key: number]: T;

  /** Constructs a new C-Array of the specified capacity. */
  constructor(capacity: usize);

  /** Disposes this instance and the memory associated with it. */
  dispose(): void;
}
