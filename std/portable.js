var globalScope = typeof window !== "undefined" && window || typeof global !== "undefined" && global || self;

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
