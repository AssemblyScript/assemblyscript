/** @module glue/js *//***/

/// <reference path="../binaryen.d.ts" />

declare namespace binaryen {
  class Module {
    constructor(ref: number);
    runPasses(passes: string[]): void;
    emitText(): string;
    emitStackIR(optimize?: boolean): string;
    emitAsmjs(): string;
  }
}
