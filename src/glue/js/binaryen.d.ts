/** @module glue/js *//***/

/// <reference path="../binaryen.d.ts" />

declare namespace binaryen {
  class Module {
    constructor();
    emitStackIR(optimize?: boolean): string;
    emitAsmjs(): string;
  }
  function wrapModule(ptr: number): Module;
}

/** Stores an 8-bit value to Binaryen memory. */
declare function store<T extends u8>(ptr: usize, value: T): void;
/** Loads an 8-bit value from Binaryen memory. */
declare function load<T extends u8>(ptr: usize): T;
