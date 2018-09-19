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
assert(typeof module.memory.free === "function");

// should be able to get an exported string
assert.strictEqual(module.getString(module.COLOR), "red");

// should be able to allocate and work with a new string
var str = "Hello world!𤭢";
var ptr = module.newString(str);
assert.strictEqual(module.getString(ptr), str);
assert.strictEqual(module.strlen(ptr), str.length);

// should be able to free and reuse the space of an internal string
module.freeString(ptr);
var ptr2 = module.newString(str);
assert.strictEqual(ptr, ptr2);

// should be able to allocate a typed array and sum up its values
var arr = [1, 2, 3, 4, 5, 0x7fffffff];
ptr = module.newArray(new Int32Array(arr));
assert.strictEqual(module.sum(ptr), arr.reduce((a, b) => a + b, 0) | 0);

// should be able to get a view on an internal typed array
assert.deepEqual(module.getArray(Int32Array, ptr), arr);

// should be able to free and reuse the space of an internal typed array
module.freeArray(ptr);
ptr2 = module.newArray(new Int32Array(arr));
assert.strictEqual(ptr, ptr2);

// should be able to get a function and call it
var func = module.getFunction(module.getCallback0(), 0);
assert.strictEqual(func(), 42);
func = module.getFunction(module.getCallback1(), 1);
assert.strictEqual(func(4), 42 + 4);
func = module.getFunction(module.getCallback2(), 2);
assert.strictEqual(func(4, 6), 4 + 6);
func = module.getFunction(module.getCallback3(), 3);
assert.strictEqual(func(4, 1, 3), 4 + 1 + 3);
func = module.getFunction(module.getCallback4(), 4);
assert.strictEqual(func(100, 200, 300, 400), 100 + 200 + 300 + 400);

// should be able to get a function and call it without checking the number of arguments
func = module.getFunction(module.getCallback0());
assert.strictEqual(func(), 42);
func = module.getFunction(module.getCallback2());
assert.strictEqual(func(1, 2), 1 + 2);

// should throw if the number of arguments is not correct
try {
    func = module.getFunction(module.getCallback4(), 0);
    assert.strictEqual(0, 1);
} catch (e) {
}