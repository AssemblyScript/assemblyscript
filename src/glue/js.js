require("../../portable-assembly");

var globalScope = typeof window !== "undefined" && window || typeof global !== "undefined" && global || self;

var binaryen;
try {
  binaryen = require("binaryen");
} catch (e) {
  binaryen = globalScope["Binaryen"];
}
for (var key in binaryen)
  if (/^_(?:Binaryen|Relooper|malloc$|free$)/.test(key))
    globalScope[key] = binaryen[key];

globalScope["store"] = function store(ptr, val) {
  binaryen.HEAPU8[ptr] = val;
};

globalScope["load"] = function load_u8(ptr) {
  return binaryen.HEAPU8[ptr];
};

var Module = require("../module").Module;

Module.prototype.toBinary = function toBinary(bufferSize) {
  if (!bufferSize) bufferSize = 1024 * 1024;
  var ptr = _malloc(bufferSize);
  var len = this.write(ptr, bufferSize);
  var ret = new Uint8Array(len);
  ret.set(binaryen.HEAPU8.subarray(ptr, ptr + len));
  _free(ptr);
  return ret;
}

Module.prototype.toText = function toText() {
  var previousPrint = binaryen.print;
  var ret = "";
  binaryen.print = function print(x) { ret += x + "\n" };
  this.print();
  binaryen.print = previousPrint;
  return ret;
}
