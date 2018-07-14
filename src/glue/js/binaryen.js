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

Module.prototype.toText = function() {
  return new binaryen.Module(this.ref).emitText();
};

Module.prototype.toAsmjs = function() {
  return new binaryen.Module(this.ref).emitAsmjs();
};
