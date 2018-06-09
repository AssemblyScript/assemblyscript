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
assert(proto.TYPES.U32);
assert(proto.TYPES.I32);
assert(proto.TYPES.F32);
assert(proto.TYPES.STRING);
assert(proto.TYPES.U64);

assert(typeof proto.getArray === "function");

// test arr_u32
assert.deepEqual(asmModule.getArray(asmModule.arr_u32, asmModule.TYPES.U32), [10, 20, 30]);
assert.deepEqual(asmModule.getArray(asmModule.arr_u32, asmModule.TYPES.U32, true), [10, 20, 30]);
assert(asmModule.getArray(asmModule.arr_u32, asmModule.TYPES.U32, true) instanceof Uint32Array);

// test arr_i32
assert.deepEqual(asmModule.getArray(asmModule.arr_i32, asmModule.TYPES.I32), [-10, 20, -30]);
assert.deepEqual(asmModule.getArray(asmModule.arr_i32, asmModule.TYPES.I32, true), [-10, 20, -30]);
assert(asmModule.getArray(asmModule.arr_i32, asmModule.TYPES.I32, true) instanceof Int32Array);

// test arr_string
assert.deepEqual(asmModule.getArray(asmModule.arr_string, asmModule.TYPES.STRING), ["hello", "world"]);

// test arr_f32
assert.deepEqual(asmModule.getArray(asmModule.arr_f32, asmModule.TYPES.F32),
  [ 10.100000381469727, -20.200000762939453, 30.299999237060547 ]);
assert.deepEqual(asmModule.getArray(asmModule.arr_f32, asmModule.TYPES.F32, true),
  [ 10.100000381469727, -20.200000762939453, 30.299999237060547 ]);
assert(asmModule.getArray(asmModule.arr_f32, asmModule.TYPES.F32, true) instanceof Float32Array);

// test arr_u64
assert.deepEqual(asmModule.getArray(asmModule.arr_u64, asmModule.TYPES.U64), [4294967296 + 10, 4294967296 + 20, 4294967296 + 30]);
