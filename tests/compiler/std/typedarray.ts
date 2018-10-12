assert(Int8Array.BYTES_PER_ELEMENT == 1);
assert(Uint8Array.BYTES_PER_ELEMENT == 1);
assert(Uint8ClampedArray.BYTES_PER_ELEMENT == 1);
assert(Int16Array.BYTES_PER_ELEMENT == 2);
assert(Uint16Array.BYTES_PER_ELEMENT == 2);
assert(Int32Array.BYTES_PER_ELEMENT == 4);
assert(Uint32Array.BYTES_PER_ELEMENT == 4);
assert(Int64Array.BYTES_PER_ELEMENT == 8);
assert(Uint64Array.BYTES_PER_ELEMENT == 8);
assert(Float32Array.BYTES_PER_ELEMENT == 4);
assert(Float64Array.BYTES_PER_ELEMENT == 8);


function isInt8ArrayEqual(a: Int8Array, b: Array<i8>): bool {
  if (a.length != b.length) return false;
  for (let i = 0, len = a.length; i < len; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

function isInt32ArrayEqual(a: Int32Array, b: Array<i32>): bool {
  if (a.length != b.length) return false;
  for (let i = 0, len = a.length; i < len; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

import "allocator/arena";

function testInstantiate(len: i32): void {

  var i8a = new Int8Array(len);
  assert(i8a.byteOffset == 0);
  assert(i8a.byteLength == len * Int8Array.BYTES_PER_ELEMENT);
  assert(i8a.length == len);

  var u8a = new Uint8Array(len);
  assert(u8a.byteOffset == 0);
  assert(u8a.byteLength == len * Uint8Array.BYTES_PER_ELEMENT);
  assert(u8a.length == len);

  var c8a = new Uint8ClampedArray(len);
  assert(c8a.byteOffset == 0);
  assert(c8a.byteLength == len * Uint8Array.BYTES_PER_ELEMENT);
  assert(c8a.length == len);

  var i16a = new Int16Array(len);
  assert(i16a.byteOffset == 0);
  assert(i16a.byteLength == len * Int16Array.BYTES_PER_ELEMENT);
  assert(i16a.length == len);

  var u16a = new Uint16Array(len);
  assert(u16a.byteOffset == 0);
  assert(u16a.byteLength == len * Uint16Array.BYTES_PER_ELEMENT);
  assert(u16a.length == len);

  var i32a = new Int32Array(len);
  assert(i32a.byteOffset == 0);
  assert(i32a.byteLength == len * Int32Array.BYTES_PER_ELEMENT);
  assert(i32a.length == len);

  var u32a = new Uint32Array(len);
  assert(u32a.byteOffset == 0);
  assert(u32a.byteLength == len * Uint32Array.BYTES_PER_ELEMENT);
  assert(u32a.length == len);

  var i64a = new Int64Array(len);
  assert(i64a.byteOffset == 0);
  assert(i64a.byteLength == len * Int64Array.BYTES_PER_ELEMENT);
  assert(i64a.length == len);

  var u64a = new Uint64Array(len);
  assert(u64a.byteOffset == 0);
  assert(u64a.byteLength == len * Uint64Array.BYTES_PER_ELEMENT);
  assert(u64a.length == len);

  var f32a = new Float32Array(len);
  assert(f32a.byteOffset == 0);
  assert(f32a.byteLength == len * Float32Array.BYTES_PER_ELEMENT);
  assert(f32a.length == len);

  var f64a = new Float64Array(len);
  assert(f64a.byteOffset == 0);
  assert(f64a.byteLength == len * Float64Array.BYTES_PER_ELEMENT);
  assert(f64a.length == len);
}

testInstantiate(0);
testInstantiate(5);

var arr = new Int32Array(3);
arr[0] = 1;
arr[1] = 2;
arr[2] = 3;
assert(arr.length == 3);
assert(arr.byteOffset == 0);
assert(arr.byteLength == 3 * sizeof<i32>());
assert(arr[0] == 1);
assert(arr[1] == 2);
assert(arr[2] == 3);

arr = arr.subarray(1, 2);
assert(arr.length == 1);
assert(arr.byteOffset == 1 * sizeof<i32>());
assert(arr.byteLength == 2 * sizeof<i32>());
assert(arr[0] == 2);

var af64 = new Float64Array(8);
af64[0] = 1;
af64[1] = 2;

af64[2] = 7;
af64[3] = 6;
af64[4] = 5;
af64[5] = 4;

af64[6] = 3;
af64[7] = 8;
af64 = af64.subarray(2, 6);
assert(af64.length == 4);
af64.sort();
assert(af64[0] == 4 && af64[1] == 5 && af64[2] == 6 && af64[3] == 7);

var clampedArr = new Uint8ClampedArray(3);
clampedArr[0] = -32;
clampedArr[1] = 2;
clampedArr[2] = 256;

assert(clampedArr[0] == 0);
assert(clampedArr[1] == 2);
assert(clampedArr[2] == 255);

var arr8 = new Int8Array(5);
arr8[0] = 1;
arr8[1] = 2;
arr8[2] = 3;
arr8[3] = 4;
arr8[4] = 5;

arr8.fill(1, 1, 3);
assert(isInt8ArrayEqual(arr8, <i8[]>[1, 1, 1, 4, 5]));

arr8.fill(0);
assert(isInt8ArrayEqual(arr8, <i8[]>[0, 0, 0, 0, 0]));

arr8.fill(1, 0, -3);
assert(isInt8ArrayEqual(arr8, <i8[]>[1, 1, 0, 0, 0]));

arr8.fill(2, -2);
assert(isInt8ArrayEqual(arr8, <i8[]>[1, 1, 0, 2, 2]));

arr8.fill(0, 1, 0);
assert(isInt8ArrayEqual(arr8, <i8[]>[1, 1, 0, 2, 2]));

var sub8 = arr8.subarray(1, 4);
sub8.fill(0);
assert(sub8.length == 3);
assert(isInt8ArrayEqual(sub8, <i8[]>[0, 0, 0]));
assert(isInt8ArrayEqual(arr8, <i8[]>[1, 0, 0, 0, 2]));

var arr32 = new Int32Array(5);
arr32[0] = 1;
arr32[1] = 2;
arr32[2] = 3;
arr32[3] = 4;
arr32[4] = 5;

arr32.fill(1, 1, 3);
assert(isInt32ArrayEqual(arr32, <i32[]>[1, 1, 1, 4, 5]));

arr32.fill(0);
assert(isInt32ArrayEqual(arr32, <i32[]>[0, 0, 0, 0, 0]));

arr32.fill(1, 0, -3);
assert(isInt32ArrayEqual(arr32, <i32[]>[1, 1, 0, 0, 0]));

arr32.fill(2, -2);
assert(isInt32ArrayEqual(arr32, <i32[]>[1, 1, 0, 2, 2]));

arr32.fill(0, 1, 0);
assert(isInt32ArrayEqual(arr32, <i32[]>[1, 1, 0, 2, 2]));

var sub32 = arr32.subarray(1, 4);
sub32.fill(0);
assert(sub32.length == 3);
assert(isInt32ArrayEqual(sub32, <i32[]>[0, 0, 0]));
assert(isInt32ArrayEqual(arr32, <i32[]>[1, 0, 0, 0, 2]));

import { MAX_BLENGTH } from "internal/arraybuffer";

const MAX_F64LENGTH = <u32>MAX_BLENGTH >> alignof<f64>();
new Float64Array(MAX_F64LENGTH); // 1GB
// new Float64Array(MAX_F64 + 1); // throws
