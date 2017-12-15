var globalScope = typeof window !== "undefined" && window || typeof global !== "undefined" && global || self;

Object.defineProperties(
  globalScope["i8"] = function i8(value) { return value << 24 >> 24; }
, {
  "MIN_VALUE": { value: -128, writable: false },
  "MAX_VALUE": { value: 127, writable: false }
});
Object.defineProperties(
  globalScope["i16"] = function i16(value) { return value << 16 >> 16; }
, {
  "MIN_VALUE": { value: -32768, writable: false },
  "MAX_VALUE": { value: 32767, writable: false }
});
Object.defineProperties(
  globalScope["i32"] = globalScope["isize"] = function i32(value) { return value | 0; }
, {
  "MIN_VALUE": { value: -2147483648, writable: false },
  "MAX_VALUE": { value: 2147483647, writable: false }
});
Object.defineProperties(
  globalScope["u8"] = function u8(value) { return value & 0xff; }
, {
  "MIN_VALUE": { value: 0, writable: false },
  "MAX_VALUE": { value: 255, writable: false }
});
Object.defineProperties(
  globalScope["u16"] = function u16(value) { return value & 0xffff; }
, {
  "MIN_VALUE": { value: 0, writable: false },
  "MAX_VALUE": { value: 65535, writable: false }
});
Object.defineProperties(
  globalScope["u32"] = globalScope["usize"] = function u32(value) { return value >>> 0; }
, {
  "MIN_VALUE": { value: 0, writable: false },
  "MAX_VALUE": { value: 4294967295, writable: false }
});
Object.defineProperties(
  globalScope["bool"] = function bool(value) { return Boolean(value); }
, {
  "MIN_VALUE": { value: 0, writable: false },
  "MAX_VALUE": { value: 1, writable: false }
});
Object.defineProperties(
  globalScope["f32"] = function f32(value) { return Math.fround(value); }
, {
  "MIN_SAFE_INTEGER": { value: -16777215, writable: false },
  "MAX_SAFE_INTEGER": { value: 16777215, writable: false }
});
Object.defineProperties(
  globalScope["f64"] = function f64(value) { return +value; }
, {
  "MIN_SAFE_INTEGER": { value: -9007199254740991, writable: false },
  "MAX_SAFE_INTEGER": { value: 9007199254740991, writable: false }
});

globalScope["clz"] = Math.clz32;
globalScope["abs"] = Math.abs;
globalScope["max"] = Math.max;
globalScope["min"] = Math.min;
globalScope["ceil"] = Math.ceil;
globalScope["floor"] = Math.floor;
globalScope["select"] = function select(ifTrue, ifFalse, condition) { return condition ? ifTrue : ifFalse; };
globalScope["sqrt"] = Math.sqrt;
globalScope["trunc"] = Math.trunc;

function UnreachableError() {
  this.stack = new Error().stack;
}
UnreachableError.prototype = new Error;
UnreachableError.prototype.name = "UnreachableError";
UnreachableError.prototype.message = "unreachable";

globalScope["unreachable"] = function unreachable() { throw new UnreachableError(); };

function AssertionError(message) {
  this.message = message || "assertion failed";
  this.stack = new Error().stack;
}
AssertionError.prototype = new Error;
AssertionError.prototype.name = "AssertionError";

globalScope["assert"] = function assert(isTrue, message) { if (!isTrue) throw new AssertionError(message); };
globalScope["changetype"] = function changetype(value) { return value; }

String["fromCharCodes"] = function fromCharCodes(arr) { return String.fromCharCode.apply(String, arr); }
String["fromCodePoints"] = function fromCodePoints(arr) { return String.fromCodePoint.apply(String, arr); }
