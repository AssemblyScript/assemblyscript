const globalScope: any = typeof window !== "undefined" && window || typeof global !== "undefined" && global || self;

globalScope["store"] = function store_u8(ptr: number, val: number) {
  binaryen.HEAPU8[ptr] = val;
};

globalScope["load"] = function load_u8(ptr: number) {
  return binaryen.HEAPU8[ptr];
};

globalScope["select"] = function select<T>(ifTrue: T, ifFalse: T, condition: bool): T {
  return condition ? ifTrue : ifFalse;
};

globalScope["assert"] = function(isTrue: bool): void {
  if (!isTrue) throw new Error("assertion failed");
};

let binaryen: any;
try {
  binaryen = require("binaryen");
} catch (e) {
  binaryen = globalScope["Binaryen"];
}
for (const key in binaryen)
  if (/^_(?:Binaryen|Relooper|malloc$|free$)/.test(key))
    globalScope[key] = binaryen[key];

import { Module } from "../module";

Module.prototype.toBinary = function(bufferSize = 1048576): Uint8Array {
  const ptr = _malloc(bufferSize);
  const len = this.write(ptr, bufferSize);
  const ret = new Uint8Array(len);
  ret.set(binaryen.HEAPU8.subarray(ptr, ptr + len));
  _free(ptr);
  return ret;
}

Module.prototype.toText = function(): string {
  let previousPrint: any = (<any>binaryen)["print"];
  let ret: string = "";
  binaryen["print"] = function(x: string): void { ret += x + "\n" };
  this.print();
  binaryen["print"] = previousPrint;
  return ret;
}
