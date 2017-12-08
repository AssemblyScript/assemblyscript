/// <reference path="../assembly.d.ts" />

/** A C-compatible string class. */
declare class CString {
  readonly [key: number]: u8;

  /** Constructs a new C-String from a standard string. */
  constructor(string: string);

  /** Disposes this instance and the memory associated with it. */
  dispose(): void;
}
