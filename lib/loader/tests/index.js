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

// should be able to allocate a typed array and sum up its values
var arr = [1, 2, 3, 4, 5, 0x7fffffff];
ptr = module.newArray(new Int32Array(arr));
assert.strictEqual(module.sum(ptr), arr.reduce((a, b) => a + b, 0) | 0);

// should be able to get a view on an internal typed array
assert.deepEqual(module.getArray(Int32Array, ptr), arr);

// should be able to free and reuse the space of an internal typed array
module.freeArray(ptr);
var ptr2 = module.newArray(new Int32Array(arr));
assert.strictEqual(ptr, ptr2);

// should be able to just call a function with variable arguments
assert.strictEqual(module.varadd(), 3);
assert.strictEqual(module.varadd(2, 3), 5);
assert.strictEqual(module.varadd(2), 4);

// should be able to get a function from the table and just call it with variable arguments
var fn = module.getFunction(module.varadd_ptr);
assert.strictEqual(fn(), 3);
assert.strictEqual(fn(2, 3), 5);
assert.strictEqual(fn(2), 4);

// should be able to create a new function and call it from WASM
ptr = module.newFunction(module.varadd);
assert.strictEqual(module.calladd(ptr, 2, 3), 5);

// should be able to use a class
var car = new module.Car(5);
assert.strictEqual(car.numDoors, 5);
assert.strictEqual(car.isDoorsOpen, 0);
car.openDoors();
assert.strictEqual(car.isDoorsOpen, 1);
car.closeDoors();
assert.strictEqual(car.isDoorsOpen, 0);

// should be able to use trace
module.dotrace(42);