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
assert(arr.byteLength == 1 * sizeof<i32>());
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
assert(af64.byteOffset == 2 * sizeof<f64>());
assert(af64.byteLength == 4 * sizeof<f64>());
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
assert(sub8.byteOffset == 1);
assert(sub8.byteLength == 3);
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
assert(sub32.byteOffset == 1 * sizeof<i32>());
assert(sub32.byteLength == 3 * sizeof<i32>());
assert(isInt32ArrayEqual(sub32, <i32[]>[0, 0, 0]));
assert(isInt32ArrayEqual(arr32, <i32[]>[1, 0, 0, 0, 2]));

import { MAX_BLENGTH } from "internal/arraybuffer";

const MAX_F64LENGTH = <u32>MAX_BLENGTH >> alignof<f64>();
new Float64Array(MAX_F64LENGTH); // 1GB
// new Float64Array(MAX_F64 + 1); // throws

var multisubarr = new Int8Array(6);
multisubarr[0] = 1;
multisubarr[1] = 2;
multisubarr[2] = 3;
multisubarr[3] = 4;
multisubarr[4] = 5;
multisubarr[5] = 6;

var multisubarr1 = multisubarr.subarray(1, 6);
assert(multisubarr1[0] === 2);
assert(multisubarr1.length === 5);
assert(multisubarr1.byteOffset === 1);
assert(multisubarr1.byteLength === 5);

var multisubarr2 = multisubarr1.subarray(1, 5);
assert(multisubarr2[0] === 3);
assert(multisubarr2.length === 4);
assert(multisubarr2.byteOffset === 2);
assert(multisubarr2.byteLength === 4);

var multisubarr3 = multisubarr2.subarray(1, 4);
assert(multisubarr3[0] === 4);
assert(multisubarr3.length === 3);
assert(multisubarr3.byteOffset === 3);
assert(multisubarr3.byteLength === 3);

/**
 * Reduce test suite:
 * Each function is designed to test a simple sum reduction. In each test it initialized the tested
 * typedarray, and sets the values manually. Then it calls `TypedArray.prototype.reduce` with a
 * single sum arrow function reduction. For each reduction, it verifies the `self` parameter is the
 * instantiated array, the index is the correct index, and it increments the testIndex variable.
 * Finally, it asserts the value is 6.
 *
 * TODO: When function closure support is added, remove the function comments to fully verify the
 * tests work.
 */
function reduceInt8ArrayTest(): void {
  var array: Int8Array = new Int8Array(3);
  array[0] = 1;
  array[1] = 2;
  array[2] = 3;
  // var testindex: i32 = 0;
  var result = array.reduce<i8>((acc: i8, val: i8, index: i32, self: Int8Array): i8 => {
    // assert(testindex == index);
    // assert(array == self);
    // ++testindex;
    return acc + val;
  }, 0);
  assert(result == 6);
}

function reduceUint8ArrayTest(): void {
  var array: Uint8Array = new Uint8Array(3);
  array[0] = 1;
  array[1] = 2;
  array[2] = 3;
  // var testindex: i32 = 0;
  var result = array.reduce<u8>((acc: u8, val: u8, index: i32, self: Uint8Array): u8 => {
    // assert(testindex == index);
    // assert(array == self);
    // ++testindex;
    return acc + val;
  }, 0);
  assert(result == 6);
}

function reduceUint8ClampedArrayTest(): void {
  var array: Uint8ClampedArray = new Uint8ClampedArray(3);
  array[0] = 1;
  array[1] = 2;
  array[2] = 3;
  // var testindex: i32 = 0;
  var result = array.reduce<u8>((acc: u8, val: u8, index: i32, self: Uint8ClampedArray): u8 => {
    // assert(testindex == index);
    // assert(array == self);
    // ++testindex;
    return acc + val;
  }, 0);
  assert(result == 6);
}

function reduceInt16ArrayTest(): void {
  var array: Int16Array = new Int16Array(3);
  array[0] = 1;
  array[1] = 2;
  array[2] = 3;
  // var testindex: i32 = 0;
  var result = array.reduce<i16>((acc: i16, val: i16, index: i32, self: Int16Array): i16 => {
    // assert(testindex == index);
    // assert(array == self);
    // ++testindex;
    return acc + val;
  }, 0);
  assert(result == 6);
}

function reduceUint16ArrayTest(): void {
  var array: Uint16Array = new Uint16Array(3);
  array[0] = 1;
  array[1] = 2;
  array[2] = 3;
  // var testindex: i32 = 0;
  var result = array.reduce<u16>((acc: u16, val: u16, index: i32, self: Uint16Array): u16 => {
    // assert(testindex == index);
    // assert(array == self);
    // ++testindex;
    return acc + val;
  }, 0);
  assert(result == 6);
}

function reduceInt32ArrayTest(): void {
  var array: Int32Array = new Int32Array(3);
  array[0] = 1;
  array[1] = 2;
  array[2] = 3;
  // var testindex: i32 = 0;
  var result = array.reduce<i32>((acc: i32, val: i32, index: i32, self: Int32Array): i32 => {
    // assert(testindex == index);
    // assert(array == self);
    // ++testindex;
    return acc + val;
  }, 0);
  assert(result == 6);
}

function reduceUint32ArrayTest(): void {
  var array: Uint32Array = new Uint32Array(3);
  array[0] = 1;
  array[1] = 2;
  array[2] = 3;
  // var testindex: i32 = 0;
  var result = array.reduce<u32>((acc: u32, val: u32, index: i32, self: Uint32Array): u32 => {
    // assert(testindex == index);
    // assert(array == self);
    // ++testindex;
    return acc + val;
  }, 0);
  assert(result == 6);
}

function reduceInt64ArrayTest(): void {
  var array: Int64Array = new Int64Array(3);
  array[0] = 1;
  array[1] = 2;
  array[2] = 3;
  // var testindex: i32 = 0;
  var result = array.reduce<i64>((acc: i64, val: i64, index: i32, self: Int64Array): i64 => {
    // assert(testindex == index);
    // assert(array == self);
    // ++testindex;
    return acc + val;
  }, 0);
  assert(result == 6);
}

function reduceUint64ArrayTest(): void {
  var array: Uint64Array = new Uint64Array(3);
  array[0] = 1;
  array[1] = 2;
  array[2] = 3;
  // var testindex: i32 = 0;
  var result = array.reduce<u64>((acc: u64, val: u64, index: i32, self: Uint64Array): u64 => {
    // assert(testindex == index);
    // assert(array == self);
    // ++testindex;
    return acc + val;
  }, 0);
  assert(result == 6);
}

function reduceFloat32ArrayTest(): void {
  var array: Float32Array = new Float32Array(3);
  array[0] = 1;
  array[1] = 2;
  array[2] = 3;
  // var testindex: i32 = 0;
  var result = array.reduce<f32>((acc: f32, val: f32, index: i32, self: Float32Array): f32 => {
    // assert(testindex == index);
    // assert(array == self);
    // ++testindex;
    return acc + val;
  }, 0);
  assert(result == 6);
}

function reduceFloat64ArrayTest(): void {
  var array: Float64Array = new Float64Array(3);
  array[0] = 1;
  array[1] = 2;
  array[2] = 3;
  // var testindex: i32 = 0;
  var result = array.reduce<f64>((acc: f64, val: f64, index: i32, self: Float64Array): f64 => {
    // assert(testindex == index);
    // assert(array == self);
    // ++testindex;
    return acc + val;
  }, 0);
  assert(result == 6);
}

reduceInt8ArrayTest();
reduceUint8ArrayTest();
reduceUint8ClampedArrayTest();
reduceInt16ArrayTest();
reduceUint16ArrayTest();
reduceInt32ArrayTest();
reduceUint32ArrayTest();
reduceInt64ArrayTest();
reduceUint64ArrayTest();
reduceFloat32ArrayTest();
reduceFloat64ArrayTest();