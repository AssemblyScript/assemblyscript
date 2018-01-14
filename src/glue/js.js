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

// Use Binaryen's heap instead of std heap
globalScope["allocate_memory"] = function allocate_memory(size) {
  if (!size) return 0; // should be safe in our case
  return binaryen._malloc(size);
};
globalScope["free_memory"] = function free_memory(ptr) {
  if (ptr) binaryen._free(ptr);
};
globalScope["move_memory"] = function move_memory(dest, src, n) {
  return binaryen._memmove(dest, src, n);
};
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
  var ptr = allocate_memory(bufferSize);
  var len = this.write(ptr, bufferSize);
  var ret = new Uint8Array(len);
  ret.set(binaryen.HEAPU8.subarray(ptr, ptr + len));
  free_memory(ptr);
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
