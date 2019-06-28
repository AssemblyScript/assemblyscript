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

{
  let arr = new Int32Array(3);
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
}

{
  let af64 = new Float64Array(8);
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
}

{
  let clampedArr = new Uint8ClampedArray(3);
  clampedArr[0] = -32;
  clampedArr[1] = 2;
  clampedArr[2] = 256;

  assert(clampedArr[0] == 0);
  assert(clampedArr[1] == 2);
  assert(clampedArr[2] == 255);
}

{
  let arr8 = new Int8Array(5);
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

  let sub8 = arr8.subarray(1, 4);
  sub8.fill(0);
  assert(sub8.length == 3);
  assert(sub8.byteOffset == 1);
  assert(sub8.byteLength == 3);
  assert(isInt8ArrayEqual(sub8, <i8[]>[0, 0, 0]));
  assert(isInt8ArrayEqual(arr8, <i8[]>[1, 0, 0, 0, 2]));
}

{
  let arr32 = new Int32Array(5);
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

  let sub32 = arr32.subarray(1, 4);
  sub32.fill(0);
  assert(sub32.length == 3);
  assert(sub32.byteOffset == 1 * sizeof<i32>());
  assert(sub32.byteLength == 3 * sizeof<i32>());
  assert(isInt32ArrayEqual(sub32, <i32[]>[0, 0, 0]));
  assert(isInt32ArrayEqual(arr32, <i32[]>[1, 0, 0, 0, 2]));
}

import { BLOCK_MAXSIZE } from "rt/common";

// FIXME: this does not work / failing assertion on insertBlock(addMemory)
{
  // const MAX_F64LENGTH = (BLOCK_MAXSIZE >> alignof<f64>()) >> 1;
  // new Float64Array(MAX_F64LENGTH + 200);
}

{
  let multisubarr = new Int8Array(6);
  multisubarr[0] = 1;
  multisubarr[1] = 2;
  multisubarr[2] = 3;
  multisubarr[3] = 4;
  multisubarr[4] = 5;
  multisubarr[5] = 6;

  let multisubarr1 = multisubarr.subarray(1, 6);
  assert(multisubarr1[0] === 2);
  assert(multisubarr1.length === 5);
  assert(multisubarr1.byteOffset === 1);
  assert(multisubarr1.byteLength === 5);

  let multisubarr2 = multisubarr1.subarray(1, 5);
  assert(multisubarr2[0] === 3);
  assert(multisubarr2.length === 4);
  assert(multisubarr2.byteOffset === 2);
  assert(multisubarr2.byteLength === 4);

  let multisubarr3 = multisubarr2.subarray(1, 4);
  assert(multisubarr3[0] === 4);
  assert(multisubarr3.length === 3);
  assert(multisubarr3.byteOffset === 3);
  assert(multisubarr3.byteLength === 3);
}

// Reduce test suite:

// The reduce test is designed to test a simple sum reduction. In each test it instantiates the
// tested typedarray, and sets the values manually. Then it calls `TypedArray.prototype.reduce` with a
// single sum arrow function reduction. For each reduction, it verifies the `self` parameter is the
// instantiated array, the index is the correct index, and it increments the testIndex variable.
// Finally, it asserts the value is 6.

// TODO: When function closure support is added, remove the function comments to fully verify the
// tests work.

function testReduce<ArrayType extends TypedArray<T>, T extends number>(): void {
  var array: ArrayType = instantiate<ArrayType>(3);
  array[0] = <T>1;
  array[1] = <T>2;
  array[2] = <T>3;
  var result = array.reduce<T>((acc: T, val: T): T => <T>(acc + val), <T>0);
  assert(result == <T>6);
}

testReduce<Int8Array, i8>();
testReduce<Uint8Array, u8>();
testReduce<Uint8ClampedArray, u8>();
testReduce<Int16Array, i16>();
testReduce<Uint16Array, u16>();
testReduce<Int32Array, i32>();
testReduce<Uint32Array, u32>();
testReduce<Int64Array, i64>();
testReduce<Uint64Array, u64>();
testReduce<Float32Array, f32>();
testReduce<Float64Array, f64>();

function testReduceRight<ArrayType extends TypedArray<T>, T extends number>(): void {
  var array: ArrayType = instantiate<ArrayType>(3);
  array[0] = <T>1;
  array[1] = <T>2;
  array[2] = <T>3;
  var result = array.reduceRight<T>((acc: T, val: T): T => <T>(acc + val), <T>0);
  assert(result == <T>6);
}

testReduceRight<Int8Array, i8>();
testReduceRight<Uint8Array, u8>();
testReduceRight<Uint8ClampedArray, u8>();
testReduceRight<Int16Array, i16>();
testReduceRight<Uint16Array, u16>();
testReduceRight<Int32Array, i32>();
testReduceRight<Uint32Array, u32>();
testReduceRight<Int64Array, i64>();
testReduceRight<Uint64Array, u64>();
testReduceRight<Float32Array, f32>();
testReduceRight<Float64Array, f64>();

function testArrayMap<ArrayType extends TypedArray<T>, T extends number>(): void {
  var source: ArrayType = instantiate<ArrayType>(3);
  source[0] = <T>1;
  source[1] = <T>2;
  source[2] = <T>3;
  var result = source.map((value: T): T => <T>(value * value));
  assert(result[0] == <T>1);
  assert(result[1] == <T>4);
  assert(result[2] == <T>9);
}

testArrayMap<Int8Array, i8>();
testArrayMap<Uint8Array, u8>();
testArrayMap<Uint8ClampedArray, u8>();
testArrayMap<Int16Array, i16>();
testArrayMap<Uint16Array, u16>();
testArrayMap<Int32Array, i32>();
testArrayMap<Uint32Array, u32>();
testArrayMap<Int64Array, i64>();
testArrayMap<Uint64Array, u64>();
testArrayMap<Float32Array, f32>();
testArrayMap<Float64Array, f64>();

function testArraySome<ArrayType extends TypedArray<T>, T extends number>(): void {
  var source: ArrayType = instantiate<ArrayType>(3);
  source[0] = <T>2;
  source[1] = <T>4;
  source[2] = <T>6;
  var result: bool = source.some((value: T): bool => value == <T>2);
  assert(result);
  var failResult = source.some((value: T): bool => value == <T>0);
  assert(!failResult);
}

testArraySome<Int8Array, i8>();
testArraySome<Uint8Array, u8>();
testArraySome<Uint8ClampedArray, u8>();
testArraySome<Int16Array, i16>();
testArraySome<Uint16Array, u16>();
testArraySome<Int32Array, i32>();
testArraySome<Uint32Array, u32>();
testArraySome<Int64Array, i64>();
testArraySome<Uint64Array, u64>();
testArraySome<Float32Array, f32>();
testArraySome<Float64Array, f64>();

function testArrayFindIndex<ArrayType extends TypedArray<T>, T extends number>(): void {
  var source: ArrayType = instantiate<ArrayType>(3);
  source[0] = <T>1;
  source[1] = <T>2;
  source[2] = <T>3;
  var result = source.findIndex((value: T): bool => value == <T>2);
  assert(result == 1);
  var failResult = source.findIndex((value: T): bool => value == <T>4);
  assert(failResult == -1);
}

testArrayFindIndex<Int8Array, i8>();
testArrayFindIndex<Uint8Array, u8>();
testArrayFindIndex<Uint8ClampedArray, u8>();
testArrayFindIndex<Int16Array, i16>();
testArrayFindIndex<Uint16Array, u16>();
testArrayFindIndex<Int32Array, i32>();
testArrayFindIndex<Uint32Array, u32>();
testArrayFindIndex<Int64Array, i64>();
testArrayFindIndex<Uint64Array, u64>();
testArrayFindIndex<Float32Array, f32>();
testArrayFindIndex<Float64Array, f64>();

function testArrayEvery<ArrayType extends TypedArray<T>, T extends number>(): void {
  var source: ArrayType = instantiate<ArrayType>(3);
  source[0] = <T>2;
  source[1] = <T>4;
  source[2] = <T>6;
  var result = source.every((value: T): bool => value % <T>2 == <T>0);
  assert(result);
  var failResult = source.every((value: T): bool => value == <T>2);
  assert(!failResult);
}

testArrayEvery<Int8Array, i8>();
testArrayEvery<Uint8Array, u8>();
testArrayEvery<Uint8ClampedArray, u8>();
testArrayEvery<Int16Array, i16>();
testArrayEvery<Uint16Array, u16>();
testArrayEvery<Int32Array, i32>();
testArrayEvery<Uint32Array, u32>();
testArrayEvery<Int64Array, i64>();
testArrayEvery<Uint64Array, u64>();
testArrayEvery<Float32Array, f32>();
testArrayEvery<Float64Array, f64>();

var forEachCallCount = 0;
var forEachSelf: usize;
const forEachValues: i32[] = [10, 12, 14];
function testArrayForEach<TArray extends TypedArray<T>, T extends number>(): void {
  forEachCallCount = 0;
  var array = instantiate<TArray>(3);
  forEachSelf = changetype<usize>(array);
  array[0] = <T>forEachValues[0];
  array[1] = <T>forEachValues[1];
  array[2] = <T>forEachValues[2];
  array.forEach((value: T, index: i32, self: TArray): void => {
    var matchedValue = forEachValues[index];
    assert(value == <T>matchedValue);
    assert(index == forEachCallCount);
    assert(forEachSelf == changetype<usize>(self));
    forEachCallCount++;
  });
  assert(forEachCallCount == 3);
}

testArrayForEach<Int8Array, i8>();
testArrayForEach<Uint8Array, u8>();
testArrayForEach<Uint8ClampedArray, u8>();
testArrayForEach<Int16Array, i16>();
testArrayForEach<Uint16Array, u16>();
testArrayForEach<Int32Array, i32>();
testArrayForEach<Uint32Array, u32>();
testArrayForEach<Int64Array, i64>();
testArrayForEach<Uint64Array, u64>();
testArrayForEach<Float32Array, f32>();
testArrayForEach<Float64Array, f64>();

const testArrayReverseValues: i32[] = [1, 2, 3, 4, 5, 6, 7, 8, 9];
function testArrayReverse<TArray extends TypedArray<T>, T extends number>(): void {
  var values = testArrayReverseValues;
  var length = values.length;
  var array = instantiate<TArray>(length);
  var arrayWithOffset = instantiate<TArray>(length);
  for (let i = 0; i < length; i++) {
    array[i] = <T>values[i];
    arrayWithOffset[i] = <T>values[i];
  }

  array.reverse();

  for (let i = 0; i < length; i++) {
    assert(array[i] == <T>values[length - 1 - i]);
  }

  var reversedSlice = arrayWithOffset.subarray(4, 8).reverse();

  assert(reversedSlice[0] == <T>8);
  assert(reversedSlice[1] == <T>7);
  assert(reversedSlice[2] == <T>6);
  assert(reversedSlice[3] == <T>5);
}

testArrayReverse<Int8Array, i8>();
testArrayReverse<Uint8Array, u8>();
testArrayReverse<Uint8ClampedArray, u8>();
testArrayReverse<Int16Array, i16>();
testArrayReverse<Uint16Array, u16>();
testArrayReverse<Int32Array, i32>();
testArrayReverse<Uint32Array, u32>();
testArrayReverse<Int64Array, i64>();
testArrayReverse<Uint64Array, u64>();
testArrayReverse<Float32Array, f32>();
testArrayReverse<Float64Array, f64>();

const testArrayIndexOfAndLastIndexOfValues: i32[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
function testArrayIndexOfAndLastIndexOf<TArray extends TypedArray<T>, T extends number>(): void {
  var values = testArrayIndexOfAndLastIndexOfValues;
  var length = values.length;
  var array  = instantiate<TArray>(length);

  for (let i = 0; i < length; i++) {
    array[i] = <T>values[i];
  }

  assert(array.indexOf(<T>0)  ==  0);
  assert(array.indexOf(<T>11) == -1);
  assert(array.indexOf(<T>-1) == -1);
  assert(array.indexOf(<T>3)  ==  3);
  assert(array.indexOf(<T>3, 2) ==  3);
  assert(array.indexOf(<T>3, 3) ==  3);
  assert(array.indexOf(<T>3, 4) == -1);
  assert(array.indexOf(<T>1, 10) == -1);
  assert(array.indexOf(<T>1, -100) == 1);

  assert(array.lastIndexOf(<T>0)  ==  0);
  assert(array.lastIndexOf(<T>11) == -1);
  assert(array.lastIndexOf(<T>-1) == -1);
  assert(array.lastIndexOf(<T>3)  ==  3);
  assert(array.lastIndexOf(<T>3, 4) ==  3);
  assert(array.lastIndexOf(<T>3, 3) ==  3);
  assert(array.lastIndexOf(<T>3, 2) == -1);
  assert(array.lastIndexOf(<T>1, 100) == 1);
  assert(array.lastIndexOf(<T>1, -10) == 1);
  assert(array.lastIndexOf(<T>1, -11) == -1);

  var sliced = array.subarray(4, 9);

  assert(sliced.indexOf(<T>3)  == -1);
  assert(sliced.indexOf(<T>4)  ==  4 - 4);
  assert(sliced.indexOf(<T>5)  ==  5 - 4);
  assert(sliced.indexOf(<T>9)  == -1);
  assert(sliced.indexOf(<T>10) == -1);
  assert(sliced.indexOf(<T>11) == -1);
  assert(sliced.indexOf(<T>5, 1) == 5 - 4);
  assert(sliced.indexOf(<T>5, 2) == -1);
}

testArrayIndexOfAndLastIndexOf<Int8Array, i8>();
testArrayIndexOfAndLastIndexOf<Uint8Array, u8>();
testArrayIndexOfAndLastIndexOf<Uint8ClampedArray, u8>();
testArrayIndexOfAndLastIndexOf<Int16Array, i16>();
testArrayIndexOfAndLastIndexOf<Uint16Array, u16>();
testArrayIndexOfAndLastIndexOf<Int32Array, i32>();
testArrayIndexOfAndLastIndexOf<Uint32Array, u32>();
testArrayIndexOfAndLastIndexOf<Int64Array, i64>();
testArrayIndexOfAndLastIndexOf<Uint64Array, u64>();
testArrayIndexOfAndLastIndexOf<Float32Array, f32>();
testArrayIndexOfAndLastIndexOf<Float64Array, f64>();

const testArrayWrapValues: i32[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
function testArrayWrap<TArray extends TypedArray<T>, T extends number>(): void {
  var values = testArrayWrapValues;
  var length = values.length;
  var array = instantiate<TArray>(length);

  for (let i = 0; i < length; i++) {
    array[i] = <T>values[i];
  }
  var buffer = array.buffer.slice(array.byteOffset, array.byteOffset + array.byteLength);
  var result: TArray;
  if (array instanceof Int8Array) {
    result = Int8Array.wrap(buffer);
  } else if (array instanceof Uint8Array) {
    result = Uint8Array.wrap(buffer);
  } else if (array instanceof Uint8ClampedArray) {
    result = Uint8ClampedArray.wrap(buffer);
  } else if (array instanceof Int16Array) {
    result = Int16Array.wrap(buffer);
  } else if (array instanceof Uint16Array) {
    result = Uint16Array.wrap(buffer);
  } else if (array instanceof Int32Array) {
    result = Int32Array.wrap(buffer);
  } else if (array instanceof Uint32Array) {
    result = Uint32Array.wrap(buffer);
  } else if (array instanceof Int64Array) {
    result = Int64Array.wrap(buffer);
  } else if (array instanceof Uint64Array) {
    result = Uint64Array.wrap(buffer);
  } else if (array instanceof Float32Array) {
    result = Float32Array.wrap(buffer);
  } else if (array instanceof Float64Array) {
    result = Float64Array.wrap(buffer);
  }
  for (let i = 0; i < length; i++) {
    assert(array[i] == result[i]);
  }
}

testArrayWrap<Int8Array, i8>();
testArrayWrap<Uint8Array, u8>();
testArrayWrap<Uint8ClampedArray, u8>();
testArrayWrap<Int16Array, i16>();
testArrayWrap<Uint16Array, u16>();
testArrayWrap<Int32Array, i32>();
testArrayWrap<Uint32Array, u32>();
testArrayWrap<Int64Array, i64>();
testArrayWrap<Uint64Array, u64>();
testArrayWrap<Float32Array, f32>();
testArrayWrap<Float64Array, f64>();
