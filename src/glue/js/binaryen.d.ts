/** @module glue/js *//***/

/// <reference path="../binaryen.d.ts" />

declare namespace binaryen {
  class Module {
    constructor(ref: number);
    emitText(): string;
    emitAsmjs(): string;
  }
}
