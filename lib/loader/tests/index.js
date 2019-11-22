var fs = require("fs");
var assert = require("assert");
var inspect = require("util").inspect;

var loader = require("..");
var buffer = fs.readFileSync(__dirname + "/build/untouched.wasm");
var module = loader.instantiateSync(buffer, {});

console.log(inspect(module, true, 100, true));

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

/*
{
  let arrU8Arr = new Uint8Array([0, 1, 2]);
  let refU8Arr = module.__retain(module.__allocUint8Array(arrU8Arr));
  assert(module.__instanceof(refU8Arr, module.UINT8ARRAY_ID));
  assert.deepEqual(module.__getUint8Array(refU8Arr), arrU8Arr);
  module.__release(refU8Arr);
  try { module.__release(refU8Arr); assert(false); } catch (e) {};

  let arrU16Arr = new Uint16Array([0, 0x7FFF, 0xFFFF]);
  let refU16Arr = module.__retain(module.__allocUint16Array(arrU16Arr));
  assert(module.__instanceof(refU16Arr, module.UINT16ARRAY_ID));
  assert.deepEqual(module.__getUint16Array(refU16Arr), arrU16Arr);
  module.__release(refU16Arr);
  try { module.__release(refU16Arr); assert(false); } catch (e) {};

  let arrI16Arr = new Int16Array([0, -1, -2]);
  let refI16Arr = module.__retain(module.__allocInt16Array(arrI16Arr));
  assert(module.__instanceof(refI16Arr, module.INT16ARRAY_ID));
  assert.deepEqual(module.__getInt16Array(refI16Arr), arrI16Arr);
  module.__release(refI16Arr);
  try { module.__release(refI16Arr); assert(false); } catch (e) {};
}
*/

// should be able to distinguish between signed and unsigned
{
  let arr = new Uint8Array([0, 255, 127]);
  let ref = module.__retain(module.__allocArray(module.UINT8ARRAY_ID, arr));
  assert(module.__instanceof(ref, module.UINT8ARRAY_ID));
  assert.deepEqual(module.__getUint8Array(ref), arr);
  module.__release(ref);
  try { module.__release(ref); assert(false); } catch (e) {};
}

// should be able to distinguish between signed and unsigned
{
  let arr = new Int16Array([0, 0xFFFF, -0x00FF]);
  let ref = module.__retain(module.__allocArray(module.INT16ARRAY_ID, arr));
  assert(module.__instanceof(ref, module.INT16ARRAY_ID));
  assert.deepEqual(module.__getInt16Array(ref), arr);
  module.__release(ref);
  try { module.__release(ref); assert(false); } catch (e) {};
}

// should be able to distinguish between signed and unsigned
{
  let arr = [1, -1 >>> 0, 0x80000000];
  let ref = module.__retain(module.__allocArray(module.UINT32ARRAY_ID, arr));
  assert(module.__instanceof(ref, module.UINT32ARRAY_ID));
  assert.deepEqual(module.__getUint32Array(ref), new Uint32Array(arr));
  assert.deepEqual(module.__getArray(ref), arr);
  module.__release(ref);
  try { module.__release(ref); assert(false); } catch (e) {};
}

// should be able to distinguish between integer and float
{
  let arr = [0.0, 1.5, 2.5];
  let ref = module.__retain(module.__allocArray(module.FLOAT32ARRAY_ID, arr));
  assert(module.__instanceof(ref, module.FLOAT32ARRAY_ID));
  assert.deepEqual(module.__getFloat32Array(ref), new Float32Array(arr));
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

// should be able to mutate an array in place using getArrayView
{
  let ptr = module.__retain(module.__allocArray(module.FLOAT32ARRAY_ID, [ 1, 2, 3]));
  let view = module.__getArrayView(ptr);
  assert.deepEqual(view, new Float32Array([1, 2, 3]));
  module.modifyFloat32Array(ptr, 0, 4);
  assert.deepEqual(view, new Float32Array([4, 2, 3]));
  module.__release(ptr);
}

// should be able to mutate an array in place using getFloat32Array
{
  let ptr = module.newFloat32Array(3); // returns are pre-retained
  let view = module.__getFloat32Array(ptr);
  assert.deepEqual(view, new Float32Array([0, 0, 0]));
  module.modifyFloat32Array(ptr, 0, 3);
  module.modifyFloat32Array(ptr, 1, 2);
  module.modifyFloat32Array(ptr, 2, 1);
  assert.deepEqual(view, new Float32Array([3, 2, 1]));
  module.__release(ptr);
}

// should be able to instantiate from a buffer
(async () => {
  const module = await loader.instantiate(fs.readFileSync(__dirname + "/build/untouched.wasm"), {});
  assert(module.memory);
})();

// should be able to instantiate from a wasm module
(async () => {
  const wasmModule = new WebAssembly.Module(fs.readFileSync(__dirname + "/build/untouched.wasm"));
  const module = await loader.instantiate(wasmModule, {});
  assert(module.memory);
})();

// should be able to instantiate from a promise yielding a buffer
(async () => {
  const module = await loader.instantiate(fs.promises.readFile(__dirname + "/build/untouched.wasm"), {});
  assert(module.memory);
})();

// should be able to mimic instantiateStreaming under node (for now)
(async () => {
  const module = await loader.instantiateStreaming(fs.promises.readFile(__dirname + "/build/untouched.wasm"), {});
  assert(module.memory);
})();
