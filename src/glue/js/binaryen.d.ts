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
