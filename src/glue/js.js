require("../../portable-assembly"); // not inherited from tsconfig by ts-node otherwise :(

// Copy Binaryen exports to global scope
var globalScope = typeof window !== "undefined" && window || typeof global !== "undefined" && global || self;
var binaryen;
try {
  binaryen = require("binaryen");
} catch (e) {
  binaryen = globalScope["Binaryen"];
}
for (var key in binaryen)
  if (/^_(?:Binaryen|Relooper)/.test(key))
    globalScope[key] = binaryen[key];

// Use Binaryen's heap
Object.defineProperties(globalScope['Heap'] = {
  allocate: binaryen._malloc,
  dispose: binaryen._free
}, {
  free: { get: function() { return binaryen.HEAPU8.length; } },
  used: { get: function() { return 0; } },
  size: { get: function() { return binaryen.HEAPU8.length; } }
});
globalScope["store"] = function store(ptr, val) {
  binaryen.HEAPU8[ptr] = val;
};
globalScope["load"] = function load_u8(ptr) {
  return binaryen.HEAPU8[ptr];
};

// Implement module stubs
var Module = require("../module").Module;
Module.prototype.toBinary = function toBinary(bufferSize) {
  if (!bufferSize) bufferSize = 1024 * 1024; // FIXME: see binaryen.js-post.js in Binaryen
  var ptr = _malloc(bufferSize);
  var len = this.write(ptr, bufferSize);
  var ret = new Uint8Array(len);
  ret.set(binaryen.HEAPU8.subarray(ptr, ptr + len));
  _free(ptr);
  return ret;
};
Module.prototype.toText = function toText() {
  var previousPrint = binaryen.print;
  var ret = "";
  binaryen.print = function print(x) { ret += x + "\n" };
  this.print();
  binaryen.print = previousPrint;
  return ret;
};
Module.prototype.toAsmjs = function toAsmjs() {
  var previousPrint = binaryen.print;
  var ret = "";
  binaryen.print = function print(x) { ret += x + "\n" };
  this.printAsmjs();
  binaryen.print = previousPrint;
  return ret;
};
