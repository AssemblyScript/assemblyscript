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

function AssertionError() {
  this.stack = new Error().stack;
}
AssertionError.prototype = new Error;
AssertionError.prototype.name = "AssertionError";
AssertionError.prototype.message = "assertion failed";

globalScope["assert"] = function assert(isTrue) { if (!isTrue) throw new AssertionError(); };
globalScope["changetype"] = function changetype(value) { return value; }
