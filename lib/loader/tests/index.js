var fs = require("fs");
var assert = require("assert");
var inspect = require("util").inspect;

var loader = require("..");
var buffer = fs.readFileSync(__dirname + "/build/untouched.wasm");
var module = loader.instantiateBuffer(buffer, {});

console.log(inspect(module, true, 100, true));

// should inherit the usual utility
var proto = Object.getPrototypeOf(module);
assert(proto.I8 instanceof Int8Array);
assert(proto.U8 instanceof Uint8Array);
assert(proto.I16 instanceof Int16Array);
assert(proto.U16 instanceof Uint16Array);
assert(proto.I32 instanceof Int32Array);
assert(proto.U32 instanceof Uint32Array);
assert(proto.F32 instanceof Float32Array);
assert(proto.F64 instanceof Float64Array);
assert(typeof proto.newString === "function");
assert(typeof proto.getString === "function");

// should export memory
assert(module.memory instanceof WebAssembly.Memory);

// should be able to get an exported string
assert.strictEqual(module.getString(module.COLOR), "red");

// should be able to allocate and work with a new string
var str = "Hello world!𤭢";
var ptr = module.newString(str);
assert.strictEqual(module.getString(ptr), str);
assert.strictEqual(module.strlen(ptr), str.length);
