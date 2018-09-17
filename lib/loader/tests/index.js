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
assert(typeof proto.newTypedArray === "function");

// should export memory
assert(module.memory instanceof WebAssembly.Memory);
assert(typeof module.memory.free === "function");
assert(typeof module.memory.allocate === "function");

// should be able to get an exported string
assert.strictEqual(module.getString(module.COLOR), "red");

// should be able to allocate and work with a new string
var str = "Hello world!𤭢";
var ptr = module.newString(str);
assert.strictEqual(module.getString(ptr), str);
assert.strictEqual(module.strlen(ptr), str.length);

// should be able to allocate and work with typed arrays

// Int8Array
var int8Array = module.newTypedArray(2, Int8Array);
int8Array.view.set([-128, 127]);
assert(int8Array.view instanceof Int8Array);
module.processInt8Array(int8Array.ptr, int8Array.view.length);
assert.strictEqual(int8Array.view[0], -64);
assert.strictEqual(int8Array.view[1], 63);

// Uint8Array
var uint8Array = module.newTypedArray(2, Uint8Array);
uint8Array.view.set([0, 255]);
assert(uint8Array.view instanceof Uint8Array);
module.processUint8Array(uint8Array.ptr, uint8Array.view.length);
assert.strictEqual(uint8Array.view[0], 0);
assert.strictEqual(uint8Array.view[1], 127);

// Uint8ClampedArray
var uint8ClampedArray = module.newTypedArray(2, Uint8ClampedArray);
uint8ClampedArray.view.set([0, 255]);
assert(uint8ClampedArray.view instanceof Uint8ClampedArray);
module.processUint8ClampedArray(uint8ClampedArray.ptr, uint8ClampedArray.view.length);
assert.strictEqual(uint8ClampedArray.view[0], 0);
assert.strictEqual(uint8ClampedArray.view[1], 127);

// Int16Array
var int16Array = module.newTypedArray(2, Int16Array);
int16Array.view.set([-32768, 32767]);
assert(int16Array.view instanceof Int16Array);
module.processInt16Array(int16Array.ptr, int16Array.view.length);
assert.strictEqual(int16Array.view[0], -16384);
assert.strictEqual(int16Array.view[1], 16383);

// Uint16Array
var uint16Array = module.newTypedArray(2, Uint16Array);
uint16Array.view.set([0, 65535]);
assert(uint16Array.view instanceof Uint16Array);
module.processUint16Array(uint16Array.ptr, uint16Array.view.length);
assert.strictEqual(uint16Array.view[0], 0);
assert.strictEqual(uint16Array.view[1], 32767);

// Float32Array
var float32Array = module.newTypedArray(2, Float32Array);
float32Array.view.set([1.2e-38, 3.4e38]);
assert(float32Array.view instanceof Float32Array);
module.processFloat32Array(float32Array.ptr, float32Array.view.length);
// beware of floating point arithmetic... -> see f64 below
assert.strictEqual(float32Array.view[0], 5.999999890533535e-39);
assert.strictEqual(float32Array.view[1], 1.6999999760721821e+38);

// Int32Array
var int32Array = module.newTypedArray(2, Int32Array);
int32Array.view.set([-2147483648, 2147483647]);
assert(int32Array.view instanceof Int32Array);
module.processInt32Array(int32Array.ptr, int32Array.view.length);
assert.strictEqual(int32Array.view[0], -1073741824);
assert.strictEqual(int32Array.view[1], 1073741823);

// Uint32Array
var uint32Array = module.newTypedArray(2, Uint32Array);
uint32Array.view.set([0, 4294967295]);
assert(uint32Array.view instanceof Uint32Array);
module.processUint32Array(uint32Array.ptr, uint32Array.view.length);
assert.strictEqual(uint32Array.view[0], 0);
assert.strictEqual(uint32Array.view[1], 2147483647);

// Float64Array
var float64Array = module.newTypedArray(2, Float64Array);
float64Array.view.set([5.0e-324, 1.80e307]);
assert(float64Array.view instanceof Float64Array);
module.processFloat64Array(float64Array.ptr, float64Array.view.length);
// beware of floating point arithmetic... -> as expected much higher precision than f32
assert.strictEqual(float64Array.view[0], 0);
assert.strictEqual(float64Array.view[1], 9e+306);