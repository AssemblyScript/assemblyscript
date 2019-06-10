/**
 * JavaScript glue code.
 * @module glue/js
 * @preferred
 *//***/

/// <reference path="./node.d.ts" />

import "./binaryen"; // must be first so portable can pick up the memory implementation
import "../../../std/portable/index";
import "./float";
import "./i64";

import { Module } from "../../module";

Module.prototype.toText = function(this: Module) {
  // NOTE: Conversion to StackIR can yield conversion artifacts like sequences
  // of unreachable statements not actually emitted by the compiler. Optimizing
  // StackIR removes these again, but may also suppress useless code emitted by
  // the compiler that's then no longer visible in tests. Both not ideal.
  return binaryen.wrapModule(this.ref).emitStackIR(/* optimize-stack-ir */ true);
};

Module.prototype.toAsmjs = function(this: Module) {
  return binaryen.wrapModule(this.ref).emitAsmjs();
};
