require("../../std/portable");

// Copy Binaryen exports to global scope
var globalScope = typeof window !== "undefined" && window || typeof global !== "undefined" && global || self;
var binaryen = globalScope["Binaryen"]; // allow overriding for testing purposes
if (!binaryen) {
  try {
    binaryen = require("binaryen");
  } catch (e) {
    binaryen = globalScope["Binaryen"];
  }
}
for (var key in binaryen)
  if (/^_(?:Binaryen|Relooper)/.test(key))
    globalScope[key] = binaryen[key];

// Use Binaryen's heap
Object.defineProperties(globalScope["Heap"] = {
  allocate: function allocate(size) {
    if (!size) return 0; // should be safe in our case
    return binaryen._malloc(size);
  },
  dispose: function dispose(ptr) {
    if (ptr) binaryen._free(ptr);
  },
  copy: function copy(dest, src, n) {
    return binaryen._memcpy(dest, src, n);
  }
}, {
  free: { get: function() { return binaryen.HEAPU8.length; } },
  used: { get: function() { return 0; } },
  size: { get: function() { return binaryen.HEAPU8.length; } }
});
globalScope["store"] = function store(ptr, val) {
  binaryen.HEAPU8[ptr] = val;
};
globalScope["load"] = function load(ptr) {
  return binaryen.HEAPU8[ptr];
};

// Implement module stubs
var Module = require("../module").Module;
Module.prototype.toBinary = function toBinary(bufferSize) {
  if (!bufferSize) bufferSize = 1024 * 1024; // FIXME: see binaryen.js-post.js in Binaryen
  var ptr = Heap.allocate(bufferSize);
  var len = this.write(ptr, bufferSize);
  var ret = new Uint8Array(len);
  ret.set(binaryen.HEAPU8.subarray(ptr, ptr + len));
  Heap.dispose(ptr);
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
