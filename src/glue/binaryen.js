const binaryen = global.Binaryen || (global.Binaryen = require("binaryen"));

module.exports = binaryen;

const { Module } = require("../module");

Module.prototype.toText = function() {
  // NOTE: Conversion to StackIR can yield conversion artifacts like sequences
  // of unreachable statements not actually emitted by the compiler. Optimizing
  // StackIR removes these again, but may also suppress useless code emitted by
  // the compiler that's then no longer visible in tests. Both not ideal.
  return binaryen.wrapModule(this.ref).emitStackIR(/* optimize-stack-ir */ true);
};

Module.prototype.toAsmjs = function() {
  return binaryen.wrapModule(this.ref).emitAsmjs();
};
