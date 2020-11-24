/**
 * @fileoverview Binaryen glue code for JavaScript.
 * @license Apache-2.0
 */

const binaryen = global.binaryen || (global.binaryen = require("binaryen"));

module.exports = binaryen;

const { Module } = require("../module");

Module.prototype.toText = function toText(watFormat = true) {
  if (watFormat) {
    // NOTE: Conversion to StackIR can yield conversion artifacts like sequences
    // of unreachable statements not actually emitted by the compiler. Optimizing
    // StackIR removes these again, but may also suppress useless code emitted by
    // the compiler that's then no longer visible in tests. Both not ideal.
    return binaryen.wrapModule(this.ref).emitStackIR(/* optimize-stack-ir */ true);
  } else {
    return binaryen.wrapModule(this.ref).emitText();
  }
};

Module.prototype.toAsmjs = function toAsmjs() {
  return binaryen.wrapModule(this.ref).emitAsmjs();
};
