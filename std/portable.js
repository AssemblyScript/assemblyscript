/** @module std/portable *//***/

var globalScope = typeof window !== "undefined" && window || typeof global !== "undefined" && global || self;

globalScope.ASC_TARGET = 0;

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
  globalScope["bool"] = function bool(value) { return !!value; }
, {
  "MIN_VALUE": { value: 0, writable: false },
  "MAX_VALUE": { value: 1, writable: false }
});

Object.defineProperties(
  globalScope["f32"] = function f32(value) { return Math.fround(value); }
, {
  "MIN_VALUE": { value: Math.fround(-3.40282347e+38), writable: false },
  "MAX_VALUE": { value: Math.fround(3.40282347e+38), writable: false },
  "MIN_POSITIVE_VALUE": { value: Math.fround(1.175494351e-38), writable: false },
  "MIN_SAFE_INTEGER": { value: -16777215, writable: false },
  "MAX_SAFE_INTEGER": { value: 16777215, writable: false },
  "EPSILON": { value: Math.fround(1.19209290e-07), writable: false }
});

Object.defineProperties(
  globalScope["f64"] = function f64(value) { return +value; }
, {
  "MIN_VALUE": { value: -1.7976931348623157e+308, writable: false },
  "MAX_VALUE": { value: 1.7976931348623157e+308, writable: false },
  "MIN_POSITIVE_VALUE": { value: 2.2250738585072014e-308 , writable: false },
  "MIN_SAFE_INTEGER": { value: -9007199254740991, writable: false },
  "MAX_SAFE_INTEGER": { value: 9007199254740991, writable: false },
  "EPSILON": { value: 2.2204460492503131e-16, writable: false }
});

globalScope["clz"] = Math.clz32;

globalScope["ctz"] = function ctz(value) {
  var c = Math.clz32(value & -value);
  return value ? 31 - c : c;
};

globalScope["popcnt"] = function popcnt(value) {
  value -= value >>> 1 & 0x55555555;
  value = (value & 0x33333333) + (value >>> 2 & 0x33333333);
  return (((value + (value >>> 4)) & 0x0F0F0F0F) * 0x01010101) >>> 24;
};

globalScope["rotl"] = function rotl(value, shift) {
  shift &= 31;
  return (value << shift) | (value >>> (32 - shift));
};

globalScope["rotr"] = function rotr(value, shift) {
  shift &= 31;
  return (value >>> shift) | (value << (32 - shift));
};

globalScope["abs"] = Math.abs;

globalScope["max"] = Math.max;

globalScope["min"] = Math.min;

globalScope["ceil"] = Math.ceil;

globalScope["floor"] = Math.floor;

// Adopt code from https://github.com/rfk/wasm-polyfill
globalScope["nearest"] = function nearest(value) {
  if (Math.abs(value - Math.trunc(value)) === 0.5) {
    return 2.0 * Math.round(value * 0.5);
  }
  return Math.round(value);
};

globalScope["select"] = function select(ifTrue, ifFalse, condition) {
  return condition ? ifTrue : ifFalse;
};

globalScope["sqrt"] = Math.sqrt;

globalScope["trunc"] = Math.trunc;

globalScope["copysign"] = function copysign(x, y) {
  return Math.abs(x) * Math.sign(y);
};

globalScope["bswap"] = function bswap(value) {
  var a = value >> 8 & 0x00FF00FF;
  var b = (value & 0x00FF00FF) << 8;
  value = a | b;
  a = value >> 16 & 0x0000FFFF;
  b = (value & 0x0000FFFF) << 16;
  return a | b;
};

globalScope["bswap16"] = function bswap16(value) {
  return ((value << 8) & 0xFF00) | ((value >> 8) & 0x00FF) | (value & 0xFFFF0000);
};

function UnreachableError() {
  if (Error.captureStackTrace) {
    Error.captureStackTrace(this, UnreachableError);
  } else {
    this.stack = this.name + ": " + this.message + "\n" + new Error().stack;
  }
}
UnreachableError.prototype = Object.create(Error.prototype);
UnreachableError.prototype.name = "UnreachableError";
UnreachableError.prototype.message = "unreachable";

globalScope["unreachable"] = function unreachable() {
  throw new UnreachableError();
};

function AssertionError(message) {
  this.message = message || "assertion failed";
  if (Error.captureStackTrace) {
    Error.captureStackTrace(this, AssertionError);
  } else {
    this.stack = this.name + ": " + this.message + "\n" + new Error().stack;
  }
}
AssertionError.prototype = Object.create(Error.prototype);
AssertionError.prototype.name = "AssertionError";

globalScope["assert"] = function assert(isTrueish, message) {
  if (isTrueish) return isTrueish;
  throw new AssertionError(message);
};

globalScope["changetype"] = function changetype(value) {
  return value;
};

globalScope["parseI32"] = function parseI32(str, radix) {
  return parseInt(str, undefined) | 0;
};

String["fromCharCodes"] = function fromCharCodes(arr) {
  return String.fromCharCode.apply(String, arr);
};

String["fromCodePoints"] = function fromCodePoints(arr) {
  return String.fromCodePoint.apply(String, arr);
};

globalScope["isInteger"] = Number.isInteger;

globalScope["isFloat"] = function isFloat(arg) {
  return typeof arg === "number";
};

globalScope["isReference"] = function isClass(arg) {
  return typeof arg === "object" || typeof arg === "string";
};

globalScope["isString"] = function isString(arg) {
  return typeof arg === "string" || arg instanceof String;
};

globalScope["isArray"] = Array.isArray;

globalScope["unchecked"] = function(expr) {
  return expr;
};

globalScope["fmod"] = function fmod(x, y) {
  return x % y;
};

globalScope["fmodf"] = function fmodf(x, y) {
  return Math.fround(x % y);
};

require("./portable/math")(globalScope);
require("./portable/memory")(globalScope);
