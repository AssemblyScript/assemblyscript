import assert from "assert";

export function preInstantiate(imports, exports) {
  const env = imports.env ||= {};
  env["console.log"] = function() { /* stub */ };
  env["performance.timeOrigin"] = 42;
  // env.mutableGlobal = new WebAssembly.Global({ value: "i32", mutable: true}, 42);
}

// run only once on debug build
var ran = false;

export async function postInstantiate(instance) {
  if (ran) {
    console.log("  skipped");
    return;
  }
  ran = true;
  const exports = await import(new URL("esm.debug.js", import.meta.url));

  assert.strictEqual(exports.plainGlobal.value, 1);

  assert.strictEqual(exports.plainMutableGlobal.value, 2);
  exports.plainMutableGlobal.value = 3;
  assert.strictEqual(exports.plainMutableGlobal.value, 3);

  assert.strictEqual(exports.stringGlobal.value, "a");

  assert.strictEqual(exports.mutableStringGlobal.value, "b");
  exports.mutableStringGlobal.value = "c";
  assert.strictEqual(exports.mutableStringGlobal.value, "c");

  assert.strictEqual(exports.Enum.ONE, 1);
  assert.strictEqual(exports.Enum[1], "ONE");
  assert.strictEqual(exports.Enum.TWO, 2);
  assert.strictEqual(exports.Enum[2], "TWO");

  assert.strictEqual(exports.getMaxUnsigned32(), 4294967295);
  assert.strictEqual(exports.getMaxUnsigned64(), 18446744073709551615n);

  assert.strictEqual(exports.plainFunction(1, 2), 3);

  {
    let ab1 = new Uint8Array([1, 2, 3]).buffer;
    let ab2 = new Uint8Array([4, 5, 6]).buffer;
    let ab3 = exports.bufferFunction(ab1, ab2);
    assert.deepStrictEqual(new Uint8Array(ab3), new Uint8Array([1, 2, 3, 4, 5, 6]));
  }

  assert.strictEqual(exports.stringFunction("a", "b"), "ab");

  {
    let i16 = new Int16Array([1,2,3]);
    let f32 = new Float32Array([4,5,6]);
    let u64 = exports.typedarrayFunction(i16, f32);
    assert.deepStrictEqual(u64, new BigUint64Array([1n, 2n, 3n, 4n, 5n, 6n]));
  }

  assert.deepStrictEqual(exports.staticarrayFunction([1, 2, 3], [4, 5, 6]), [1, 2, 3, 4, 5, 6]);

  assert.deepStrictEqual(exports.staticarrayU16(Uint16Array.of(1, 2, 3)), [1, 2, 3]);

  assert.deepStrictEqual(exports.staticarrayI64(BigInt64Array.of(1n, 2n, 3n)), [1n, 2n, 3n]);

  assert.deepStrictEqual(exports.arrayFunction([1, 2, 3], [4, 5, 6]), [1, 2, 3, 4, 5, 6]);

  {
    let obj = exports.objectFunction({ a: 1, b: 2 }, { a: 3, b: 4 });
    assert.strictEqual(obj.a, 4);
    assert.strictEqual(obj.b, 6);
  }

  {
    let ref = exports.newInternref();
    assert.strictEqual(+exports.internrefFunction(ref, ref), +ref);
  }
}
