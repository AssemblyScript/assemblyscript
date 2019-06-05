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
assert(typeof module.memory.copy === "function");

// should be able to get an exported string
assert.strictEqual(module.__getString(module.COLOR), "red");

// should be able to allocate and work with a new string
{
  let str = "Hello world!𤭢";
  let ref = module.__retain(module.__allocString(str));
  assert.strictEqual(module.__getString(ref), str);
  assert.strictEqual(module.strlen(ref), str.length);
  module.__release(ref);
}

// should be able to allocate a typed array
{
  var arr = [1, 2, 3, 4, 5, 0x80000000 | 0];
  let ref = module.__retain(module.__allocArray(module.INT32ARRAY_ID, arr));
  assert(module.__instanceof(ref, module.INT32ARRAY_ID));

  // should be able to get the values of an array
  assert.deepEqual(module.__getArray(ref), arr);

  // should be able to get a view on an array
  assert.deepEqual(module.__getArrayView(ref), new Int32Array(arr));

  // should be able to sum up its values
  assert.strictEqual(module.sum(ref), arr.reduce((a, b) => (a + b) | 0, 0) | 0);

  // should be able to release no longer needed references
  module.__release(ref);
  try { module.__release(ref); assert(false); } catch (e) {};
}

// should be able to distinguish between signed and unsigned
{
  let arr = [1, -1 >>> 0, 0x80000000];
  let ref = module.__retain(module.__allocArray(module.UINT32ARRAY_ID, arr));
  assert(module.__instanceof(ref, module.UINT32ARRAY_ID));
  assert.deepEqual(module.__getArray(ref), arr);
  module.__release(ref);
  try { module.__release(ref); assert(false); } catch (e) {};
}

// should be able to distinguish between integer and float
{
  let arr = [0.0, 1.5, 2.5];
  let ref = module.__retain(module.__allocArray(module.FLOAT32ARRAY_ID, arr));
  assert(module.__instanceof(ref, module.FLOAT32ARRAY_ID));
  assert.deepEqual(module.__getArray(ref), arr);
  module.__release(ref);
  try { module.__release(ref); assert(false); } catch (e) {};
}

// should be able to work with normal arrays
{
  let arr = [1, 2, 3, 4, 5];
  let ref = module.__retain(module.__allocArray(module.ARRAYI32_ID, arr));
  assert(module.__instanceof(ref, module.ARRAYI32_ID));
  module.changeLength(ref, 3);
  assert.deepEqual(module.__getArray(ref), [1, 2, 3]);
  module.__release(ref);
  try { module.__release(ref); assert(false); } catch (e) {};
}

// should be able to correctly call a function with variable arguments
assert.strictEqual(module.varadd(), 3);
assert.strictEqual(module.varadd(2, 3), 5);
assert.strictEqual(module.varadd(2), 4);

// TBD: table is no more exported by default to allow more optimizations

// should be able to get a function from the table and just call it with variable arguments
// var fn = module.getFunction(module.varadd_ref);
// assert.strictEqual(fn(), 3);
// assert.strictEqual(fn(2, 3), 5);
// assert.strictEqual(fn(2), 4);

// should be able to create a new function and call it from WASM
// ref = module.newFunction(module.varadd);
// assert.strictEqual(module.calladd(ref, 2, 3), 5);

// should be able to use a class
var car = new module.Car(5);
assert.strictEqual(car.numDoors, 5);
assert.strictEqual(car.isDoorsOpen, 0);
car.openDoors();
assert.strictEqual(car.isDoorsOpen, 1);
car.closeDoors();
assert.strictEqual(car.isDoorsOpen, 0);
module.__release(car); // uses Car.prototype.valueOf to obtain `thisPtr`

// should be able to use trace
module.dotrace(42);
