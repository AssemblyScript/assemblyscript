const fs = require("fs");
const path = require("path");
const assert = require("assert");
const inspect = require("util").inspect;

const loader = require("..");
const buffer = fs.readFileSync(path.join(__dirname, "build", "untouched.arrays.wasm"));
const asmModule = loader.instantiateBuffer(buffer, {});

console.log(inspect(module, true, 100, true));

// should inherit the usual utility
const proto = Object.getPrototypeOf(asmModule);

assert(typeof proto.getArray === "function");

// test arr_u32
assert.deepEqual(asmModule.getArray(asmModule.arr_u32, asmModule.U32), [10, 20, 30]);
assert.deepEqual(asmModule.getArray(asmModule.arr_u32, asmModule.U32, true), [10, 20, 30]);
assert(asmModule.getArray(asmModule.arr_u32, asmModule.U32, true) instanceof Uint32Array);

// test arr_i32
assert.deepEqual(asmModule.getArray(asmModule.arr_i32, asmModule.I32), [-10, 20, -30]);
assert.deepEqual(asmModule.getArray(asmModule.arr_i32, asmModule.I32, true), [-10, 20, -30]);
assert(asmModule.getArray(asmModule.arr_i32, asmModule.I32, true) instanceof Int32Array);

// test arr_string
assert.deepEqual(asmModule.getArray(asmModule.arr_string, String), ["hello", "world"]);

// test arr_f32
assert.deepEqual(asmModule.getArray(asmModule.arr_f32, asmModule.F32),
  [ 10.100000381469727, -20.200000762939453, 30.299999237060547 ]);
assert.deepEqual(asmModule.getArray(asmModule.arr_f32, asmModule.F32, true),
  [ 10.100000381469727, -20.200000762939453, 30.299999237060547 ]);
assert(asmModule.getArray(asmModule.arr_f32, asmModule.F32, true) instanceof Float32Array);

// test arr_u64
// assert.deepEqual(asmModule.getArray(asmModule.arr_u64, asmModule.TYPES.U64), [4294967296 + 10, 4294967296 + 20, 4294967296 + 30]);
