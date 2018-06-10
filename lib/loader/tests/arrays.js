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

// test arr_u8
assert.deepEqual(asmModule.getArray(asmModule.arr_u8, asmModule.U8), [1, 2, 3]);
assert.deepEqual(asmModule.getArray(asmModule.arr_u8, asmModule.U8, true), [1, 2, 3]);
assert(asmModule.getArray(asmModule.arr_u8, asmModule.U8, true) instanceof Uint8Array);

// test arr_i8
assert.deepEqual(asmModule.getArray(asmModule.arr_i8, asmModule.I8), [ -1, 2, -3 ]);
assert.deepEqual(asmModule.getArray(asmModule.arr_i8, asmModule.I8, true), [ -1, 2, -3 ]);
assert(asmModule.getArray(asmModule.arr_i8, asmModule.I8, true) instanceof Int8Array);

// test arr_i16
assert.deepEqual(asmModule.getArray(asmModule.arr_i16, asmModule.I16), [-1, 2, -3]);
assert.deepEqual(asmModule.getArray(asmModule.arr_i16, asmModule.I16, true), [-1, 2, -3]);
assert(asmModule.getArray(asmModule.arr_i16, asmModule.I16, true) instanceof Int16Array);

// test arr_u16
assert.deepEqual(asmModule.getArray(asmModule.arr_u16, asmModule.U16), [1, 2, 3]);
assert.deepEqual(asmModule.getArray(asmModule.arr_u16, asmModule.U16, true), [1, 2, 3]);
assert(asmModule.getArray(asmModule.arr_u16, asmModule.U16, true) instanceof Uint16Array);

// test arr_u32
assert.deepEqual(asmModule.getArray(asmModule.arr_u32, asmModule.U32), [10, 20, 30]);
assert.deepEqual(asmModule.getArray(asmModule.arr_u32, asmModule.U32, true), [10, 20, 30]);
assert(asmModule.getArray(asmModule.arr_u32, asmModule.U32, true) instanceof Uint32Array);

// test arr_i32
assert.deepEqual(asmModule.getArray(asmModule.arr_i32, asmModule.I32), [-10, 20, -30]);
assert.deepEqual(asmModule.getArray(asmModule.arr_i32, asmModule.I32, true), [-10, 20, -30]);
assert(asmModule.getArray(asmModule.arr_i32, asmModule.I32, true) instanceof Int32Array);


// test arr_f32
assert.deepEqual(asmModule.getArray(asmModule.arr_f32, asmModule.F32),
  [ 10.100000381469727, -20.200000762939453, 30.299999237060547 ]);
assert.deepEqual(asmModule.getArray(asmModule.arr_f32, asmModule.F32, true),
  [ 10.100000381469727, -20.200000762939453, 30.299999237060547 ]);
assert(asmModule.getArray(asmModule.arr_f32, asmModule.F32, true) instanceof Float32Array);

// test arr_f64
assert.deepEqual(asmModule.getArray(asmModule.arr_f64, asmModule.F64), [ 10.1, -20.20, 30.30 ]);
assert.deepEqual(asmModule.getArray(asmModule.arr_f64, asmModule.F64, true), [ 10.1, -20.20, 30.30 ]);
assert(asmModule.getArray(asmModule.arr_f64, asmModule.F64, true) instanceof Float64Array);

// test arr_string
assert.deepEqual(asmModule.getArray(asmModule.arr_string, String), ["hello", "world"]);

// test arr_bool
assert.deepEqual(asmModule.getArray(asmModule.arr_bool, Boolean), [true, true, false]);
