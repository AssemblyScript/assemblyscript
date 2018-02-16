// Copy Binaryen exports to global scope

const binaryen = global.Binaryen || require("binaryen");

for (var key in binaryen)
  if (key.startsWith("_Binaryen") || key.startsWith("_Relooper"))
    global[key] = binaryen[key];

// Utilize Binaryen's heap

global.allocate_memory = function(size) {
  if (!size) return 0; // should be safe in our case
  return binaryen._malloc(size);
};

global.free_memory = function(ptr) {
  if (ptr) binaryen._free(ptr);
};

global.move_memory = function(dest, src, n) {
  return binaryen._memmove(dest, src, n);
};

global.store = function(ptr, val) {
  binaryen.HEAPU8[ptr] = val;
};

global.load = function(ptr) {
  return binaryen.HEAPU8[ptr];
};

// Implement module stubs

const Module = require("../../module").Module;

Module.prototype.toText = function toText() {
  var previousPrint = binaryen.print;
  var ret = "";
  binaryen.print = function(x) { ret += x + "\n" };
  _BinaryenModulePrint(this.ref);
  binaryen.print = previousPrint;
  return ret;
};

Module.prototype.toAsmjs = function toAsmjs() {
  var previousPrint = binaryen.print;
  var ret = "";
  binaryen.print = function(x) { ret += x + "\n" };
  _BinaryenModulePrintAsmjs(this.ref);
  binaryen.print = previousPrint;
  return ret;
};
