import fs from "fs";
import assert from "assert";
import { inspect } from "util";
import loader from "../index.js";
import { dirname } from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

test("default.wasm");
test("legacy.wasm");

testInstantiate("default.wasm");
testInstantiate("legacy.wasm");

function test(file) {
  var buffer = fs.readFileSync(__dirname + "/build/" + file);
  var result = loader.instantiateSync(buffer, {});
  const exports = result.exports;

  console.log(inspect(exports, true, 100, true));

  // should export memory
  assert(exports.memory instanceof WebAssembly.Memory);
  assert(typeof exports.memory.compare === "function");

  // should be able to get an exported string
  assert.strictEqual(exports.__getString(exports.COLOR), "red");

  // should be able to allocate and work with a new small string
  {
    let str = "Hello world!𤭢";
    let ref = exports.__newString(str);
    assert.strictEqual(exports.__getString(ref), str);
    assert.strictEqual(exports.strlen(ref), str.length);
  }

  // should be able to allocate and work with a new big string
  {
    let str = `
      ∀ ∁ ∂ ∃ ∄ ∅ ∆ ∇ ∈ ∉ ∊ ∋ ∌ ∍ ∎ ∏ ∐ ∑ − ∓ ∔ ∕ ∖ ∗ ∘ ∙ √ ∛
      ∜ ∝ ∞ ∟ ∠ ∡ ∢ ∣ ∤ ∥ ∦ ∧ ∨ ∩ ∪ ∫ ∬ ∭ ∮ ∯ ∰ ∱ ∲ ∳ ∴ ∵ ∶ ∷
      ∸ ∹ ∺ ∻ ∼ ∽ ∾ ∿ ≀ ≁ ≂ ≃ ≄ ≅ ≆ ≇ ≈ ≉ ≊ ≋ ≌ ≍ ≎ ≏ ≐ ≑ ≒ ≓
      ≔ ≕ ≖ ≗ ≘ ≙ ≚ ≛ ≜ ≝ ≞ ≟ ≠ ≡ ≢ ≣ ≤ ≥ ≦ ≧ ≨ ≩ ≪ ≫ ≬ ≭ ≮ ≯
      ≰ ≱ ≲ ≳ ≴ ≵ ≶ ≷ ≸ ≹ ≺ ≻ ≼ ≽ ≾ ≿
    `;
    let ref = exports.__newString(str);
    assert.strictEqual(exports.__getString(ref), str);
    assert.strictEqual(exports.strlen(ref), str.length);
  }

  // should be able to allocate a typed array
  {
    let arr = [1, 2, 3, 4, 5, 0x80000000 | 0];
    let ref = exports.__newArray(exports.INT32ARRAY_ID, arr);
    assert(exports.__instanceof(ref, exports.INT32ARRAY_ID));

    // should be able to get the values of an array
    assert.deepStrictEqual(exports.__getArray(ref), arr);

    // should be able to get a view on an array
    assert.deepStrictEqual(exports.__getArrayView(ref), new Int32Array(arr));

    // should be able to sum up its values
    assert.strictEqual(exports.sum(ref), arr.reduce((a, b) => (a + b) | 0, 0) | 0);
  }

  // should be able to allocate a typed array
  {
    let arr = [1, 2, 3, 4, 5, 0x80000000 | 0];
    let ref = exports.__newArray(exports.STATICARRAYI32_ID, arr);
    assert(exports.__instanceof(ref, exports.STATICARRAYI32_ID));

    // should be able to get the values of an array
    assert.deepStrictEqual(exports.__getArray(ref), arr);

    // should be able to get a view on an array
    assert.deepStrictEqual(exports.__getArrayView(ref), new Int32Array(arr));

    // should be able to sum up its values
    assert.strictEqual(exports.sumStatic(ref), arr.reduce((a, b) => (a + b) | 0, 0) | 0);
  }

  /*
  {
    let arrU8Arr = new Uint8Array([0, 1, 2]);
    let refU8Arr = module.__newUint8Array(arrU8Arr);
    assert(module.__instanceof(refU8Arr, module.UINT8ARRAY_ID));
    assert.deepStrictEqual(module.__getUint8Array(refU8Arr), arrU8Arr);

    let arrU16Arr = new Uint16Array([0, 0x7FFF, 0xFFFF]);
    let refU16Arr = module.__newUint16Array(arrU16Arr);
    assert(module.__instanceof(refU16Arr, module.UINT16ARRAY_ID));
    assert.deepStrictEqual(module.__getUint16Array(refU16Arr), arrU16Arr);

    let arrI16Arr = new Int16Array([0, -1, -2]);
    let refI16Arr = module.__newInt16Array(arrI16Arr);
    assert(module.__instanceof(refI16Arr, module.INT16ARRAY_ID));
    assert.deepStrictEqual(module.__getInt16Array(refI16Arr), arrI16Arr);
  }
  */

  // should be able to distinguish between signed and unsigned
  {
    let values = [0, 255, 127];
    let arr = new Uint8Array(values);
    let ref = exports.__newArray(exports.UINT8ARRAY_ID, arr);
    assert(exports.__instanceof(ref, exports.UINT8ARRAY_ID));
    assert.deepStrictEqual(exports.__getUint8Array(ref), arr);
    assert.deepStrictEqual(exports.__getUint8ArrayView(ref), arr);
    assert.deepStrictEqual(exports.__getArray(ref), values);
  }

  // should be able to distinguish between signed and unsigned for static array layout
  {
    let arr = [0, 255, 127];
    let ref = exports.__newArray(exports.STATICARRAYU8_ID, arr);
    assert(exports.__instanceof(ref, exports.STATICARRAYU8_ID));
    assert.deepStrictEqual(exports.__getArray(ref), arr);
  }

  // should be able to distinguish between signed and unsigned
  {
    let values = [0, 0xFFFF, -0x00FF];
    let arr = new Int16Array(values);
    let ref = exports.__newArray(exports.INT16ARRAY_ID, arr);
    assert(exports.__instanceof(ref, exports.INT16ARRAY_ID));
    assert.deepStrictEqual(exports.__getInt16Array(ref), arr);
    assert.deepStrictEqual(exports.__getInt16ArrayView(ref), arr);
    assert.deepStrictEqual(exports.__getArray(ref), [0, -1, -255]);
  }

  // should be able to distinguish between signed and unsigned for static array layout
  {
    let arr = [0, 0xFFFF, -0x00FF];
    let ref = exports.__newArray(exports.STATICARRAYI16_ID, arr);
    assert(exports.__instanceof(ref, exports.STATICARRAYI16_ID));
    assert.deepStrictEqual(exports.__getArray(ref), [0, -1, -255]);
  }

  // should be able to distinguish between signed and unsigned
  {
    let values = [1, -1 >>> 0, 0x80000000];
    let arr = new Uint32Array(values);
    let ref = exports.__newArray(exports.UINT32ARRAY_ID, arr);
    assert(exports.__instanceof(ref, exports.UINT32ARRAY_ID));
    assert.deepStrictEqual(exports.__getUint32Array(ref), arr);
    assert.deepStrictEqual(exports.__getUint32ArrayView(ref), arr);
    assert.deepStrictEqual(exports.__getArray(ref), values);
  }

  // should be able to distinguish between signed and unsigned with static array layout
  {
    let arr = [1, -1 >>> 0, 0x80000000];
    let ref = exports.__newArray(exports.STATICARRAYU32_ID, arr);
    assert(exports.__instanceof(ref, exports.STATICARRAYU32_ID));
    assert.deepStrictEqual(exports.__getArray(ref), arr);
  }

  // should be able to distinguish between integer and float
  {
    let values = [0.0, 1.5, 2.5];
    let arr = new Float32Array(values);
    let ref = exports.__newArray(exports.FLOAT32ARRAY_ID, arr);
    assert(exports.__instanceof(ref, exports.FLOAT32ARRAY_ID));
    assert.deepStrictEqual(exports.__getFloat32Array(ref), arr);
    assert.deepStrictEqual(exports.__getFloat32ArrayView(ref), arr);
    assert.deepStrictEqual(exports.__getArray(ref), values);
  }

  // should be able to distinguish between integer and float static arrays
  {
    let arr = [0.0, 1.5, 2.5];
    let ref = exports.__newArray(exports.STATICARRAYF32_ID, arr);
    assert(exports.__instanceof(ref, exports.STATICARRAYF32_ID));
    assert.deepStrictEqual(exports.__getArray(ref), arr);
  }

  // should be able to work with normal arrays
  {
    let arr = [1, 2, 3, 4, 5];
    let ref = exports.__newArray(exports.ARRAYI32_ID, arr);
    assert(exports.__instanceof(ref, exports.ARRAYI32_ID));
    exports.changeLength(ref, 3);
    assert.deepStrictEqual(exports.__getArray(ref), [1, 2, 3]);
  }

  // should be able to pin references externally
  {
    let ptr = exports.__newString("test");
    exports.__pin(ptr);
    try { exports.__pin(ptr); assert(false); } catch (e) { /* nop */ }
    exports.__unpin(ptr);
    try { exports.__unpin(ptr); assert(false); } catch (e) { /* nop */ }
  }

  // should be able to correctly call a function with variable arguments
  assert.strictEqual(exports.varadd(), 3);
  assert.strictEqual(exports.varadd(2, 3), 5);
  assert.strictEqual(exports.varadd(2), 4);

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
  var car = new exports.Car(5);
  assert.strictEqual(car.numDoors, 5);
  assert.strictEqual(car.isDoorsOpen, 0);
  car.openDoors();
  assert.strictEqual(car.isDoorsOpen, 1);
  car.closeDoors();
  assert.strictEqual(car.isDoorsOpen, 0);
  assert(typeof +car === "number"); // uses Car.prototype.valueOf to obtain `thisPtr`

  // should be able to use trace
  exports.dotrace(42);

  // should be able to mutate an array in place using getArrayView
  {
    let ptr = exports.__newArray(exports.FLOAT32ARRAY_ID, [1, 2, 3]);
    let view = exports.__getArrayView(ptr);
    assert.deepStrictEqual(view, new Float32Array([1, 2, 3]));
    exports.modifyFloat32Array(ptr, 0, 4);
    assert.deepStrictEqual(view, new Float32Array([4, 2, 3]));
  }

  // should be able to mutate an array in place using getFloat32Array
  {
    let ptr = exports.newFloat32Array(3);
    let view = exports.__getFloat32ArrayView(ptr);
    let arr = exports.__getFloat32Array(ptr);
    assert.deepStrictEqual(view, new Float32Array([0, 0, 0]));
    assert.deepStrictEqual(arr, new Float32Array([0, 0, 0]));
    exports.modifyFloat32Array(ptr, 0, 3);
    exports.modifyFloat32Array(ptr, 1, 2);
    exports.modifyFloat32Array(ptr, 2, 1);
    assert.deepStrictEqual(view, new Float32Array([3, 2, 1]));
    assert.deepStrictEqual(arr, new Float32Array([0, 0, 0]));
  }
}

function testInstantiate(file) {
  // should be able to instantiate from a buffer
  (async () => {
    const { exports, instance, module } = await loader.instantiate(fs.readFileSync(__dirname + "/build/" + file), {});
    assert(exports.memory);
    assert(instance && instance instanceof WebAssembly.Instance);
    assert(module   && module instanceof WebAssembly.Module);
  })();

  // should be able to instantiate from a wasm module
  (async () => {
    const wasmModule = new WebAssembly.Module(fs.readFileSync(__dirname + "/build/" + file));
    const { exports, instance, module } = await loader.instantiate(wasmModule, {});
    assert(exports.memory);
    assert(instance && instance instanceof WebAssembly.Instance);
    assert(module   && module instanceof WebAssembly.Module);
  })();

  // should be able to instantiate from a promise yielding a buffer
  (async () => {
    const { exports, instance, module } = await loader.instantiate(fs.promises.readFile(__dirname + "/build/" + file), {});
    assert(exports.memory);
    assert(instance && instance instanceof WebAssembly.Instance);
    assert(module   && module instanceof WebAssembly.Module);
  })();

  // should be able to mimic instantiateStreaming under node (for now)
  (async () => {
    const { exports, instance, module } = await loader.instantiateStreaming(fs.promises.readFile(__dirname + "/build/" + file), {});
    assert(exports.memory);
    assert(instance && instance instanceof WebAssembly.Instance);
    assert(module   && module instanceof WebAssembly.Module);
  })();
}
