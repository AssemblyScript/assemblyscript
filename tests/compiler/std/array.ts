import "allocator/arena";
import { Array } from "array";
import { COMPARATOR } from "internal/sort";

// Obtains the internal capacity of an array from its backing buffer.
function internalCapacity<T>(array: Array<T>): i32 {
  // the memory region used by the backing buffer might still be larger in that the ArrayBuffer
  // pre-allocates a power of 2 sized buffer itself and reuses it as long as it isn't exceeded.
  var buffer: ArrayBuffer = array.buffer_;
  return buffer.byteLength >> alignof<T>();
}

// Checks if two arrays are equal
function isArraysEqual<T>(a: Array<T>, b: Array<T>, len: i32 = 0): bool {
  if (!len) {
    len = a.length;
    if (len != b.length) return false;
    if (a === b) return true;
  }
  for (let i = 0; i < len; i++) {
    if (isFloat<T>()) {
      if (isNaN(a[i]) == isNaN(b[i])) continue;
    }
    if (a[i] != b[i]) return false;
  }
  return true;
}

var arr = new Array<i32>();

// Array.isArray ///////////////////////////////////////////////////////////////////////////////////

class P {}
var num = 1;
var Null: i32[] | null = null;
var str = "abc";
assert(Array.isArray(Null) == false);
assert(Array.isArray(arr) == true);
assert(Array.isArray(new P()) == false);
assert(Array.isArray(new Uint8Array(1)) == false);
assert(Array.isArray(num) == false);
assert(Array.isArray(str) == false);

// Array#fill //////////////////////////////////////////////////////////////////////////////////////

var arr8: u8[] = [1, 2, 3, 4, 5];

arr8.fill(1, 1, 3);
assert(isArraysEqual<u8>(arr8, <u8[]>[1, 1, 1, 4, 5]));

arr8.fill(0);
assert(isArraysEqual<u8>(arr8, <u8[]>[0, 0, 0, 0, 0]));

arr8.fill(1, 0, -3);
assert(isArraysEqual<u8>(arr8, <u8[]>[1, 1, 0, 0, 0]));

arr8.fill(2, -2);
assert(isArraysEqual<u8>(arr8, <u8[]>[1, 1, 0, 2, 2]));

arr8.fill(0, 1, 0);
assert(isArraysEqual<u8>(arr8, <u8[]>[1, 1, 0, 2, 2]));

var arr32: u32[] = [1, 2, 3, 4, 5];

arr32.fill(1, 1, 3);
assert(isArraysEqual<u32>(arr32, <u32[]>[1, 1, 1, 4, 5]));

arr32.fill(0);
assert(isArraysEqual<u32>(arr32, <u32[]>[0, 0, 0, 0, 0]));

arr32.fill(1, 0, -3);
assert(isArraysEqual<u32>(arr32, <u32[]>[1, 1, 0, 0, 0]));

arr32.fill(2, -2);
assert(isArraysEqual<u32>(arr32, <u32[]>[1, 1, 0, 2, 2]));

arr32.fill(0, 1, 0);
assert(isArraysEqual<u32>(arr32, <u32[]>[1, 1, 0, 2, 2]));

// Array#push/pop //////////////////////////////////////////////////////////////////////////////////

assert(arr.length == 0);
assert(internalCapacity<i32>(arr) == 0);

arr.push(42);

assert(arr[0] == 42);
assert(arr.length == 1);
assert(internalCapacity<i32>(arr) == 1);

var i = arr.pop();

assert(i == 42);
assert(arr.length == 0);
assert(internalCapacity<i32>(arr) == 1);

arr.push(43);

assert(arr.length == 1);
assert(internalCapacity<i32>(arr) == 1);
assert(arr[0] == 43);

arr.push(44);

assert(arr.length == 2);
assert(internalCapacity<i32>(arr) == 2);
assert(arr[0] == 43);
assert(arr[1] == 44);

arr.push(45);

assert(arr.length == 3);
assert(internalCapacity<i32>(arr) == 3);
assert(arr[0] == 43);
assert(arr[1] == 44);
assert(arr[2] == 45);

// Array#concat ///////////////////////////////////////////////////////////////////////////////////

var other = new Array<i32>();

var out = arr.concat(other);
assert(internalCapacity<i32>(arr) == 3);
assert(arr.length == 3);
assert(out.length == 3);

out.concat([]);
assert(internalCapacity<i32>(arr) == 3);

assert(out[0] == 43);
assert(out[1] == 44);
assert(out[2] == 45);

other.push(46);
other.push(47);

out = arr.concat(other);

assert(internalCapacity<i32>(arr) == 3);
assert(other.length == 2);
assert(out.length == 5);
assert(out[0] == 43);
assert(out[1] == 44);
assert(out[2] == 45);
assert(out[3] == 46);
assert(out[4] == 47);

out.pop();
assert(out.length == 4);

out = arr.concat(null);
assert(out.length == 3);
assert(out[2] == 45);

var source: i32[] = [];
assert(source.length == 0);
out = source.concat(arr);
assert(out.length == 3);
assert(source.length == 0);

// Array#copyWithin ////////////////////////////////////////////////////////////////////////////////

var cwArr: i32[];
cwArr = [1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(cwArr.copyWithin(0, 3), <i32[]>[4, 5, 3, 4, 5]));
cwArr = [1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(cwArr.copyWithin(1, 3), <i32[]>[1, 4, 5, 4, 5]));
cwArr = [1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(cwArr.copyWithin(1, 2), <i32[]>[1, 3, 4, 5, 5]));
cwArr = [1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(cwArr.copyWithin(2, 2), <i32[]>[1, 2, 3, 4, 5]));
cwArr = [1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(cwArr.copyWithin(0, 3, 4), <i32[]>[4, 2, 3, 4, 5]));
cwArr = [1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(cwArr.copyWithin(1, 3, 4), <i32[]>[1, 4, 3, 4, 5]));
cwArr = [1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(cwArr.copyWithin(1, 2, 4), <i32[]>[1, 3, 4, 4, 5]));
cwArr = [1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(cwArr.copyWithin(0, -2), <i32[]>[4, 5, 3, 4, 5]));
cwArr = [1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(cwArr.copyWithin(0, -2, -1), <i32[]>[4, 2, 3, 4, 5]));
cwArr = [1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(cwArr.copyWithin(-4, -3, -2), <i32[]>[1, 3, 3, 4, 5]));
cwArr = [1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(cwArr.copyWithin(-4, -3, -1), <i32[]>[1, 3, 4, 4, 5]));
cwArr = [1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(cwArr.copyWithin(-4, -3), <i32[]>[1, 3, 4, 5, 5]));

// Array#unshift ///////////////////////////////////////////////////////////////////////////////////

arr.unshift(42);

assert(arr.length == 4);
assert(internalCapacity<i32>(arr) == 4);
assert(arr[0] == 42);
assert(arr[1] == 43);
assert(arr[2] == 44);
assert(arr[3] == 45);

arr.unshift(41);

assert(arr.length == 5);
assert(internalCapacity<i32>(arr) == 5);
assert(arr[0] == 41);
assert(arr[1] == 42);
assert(arr[2] == 43);
assert(arr[3] == 44);
assert(arr[4] == 45);

// Array#shift /////////////////////////////////////////////////////////////////////////////////////

i = arr.shift();

assert(i == 41);
assert(arr.length == 4);
assert(internalCapacity<i32>(arr) == 5);
assert(arr[0] == 42);
assert(arr[1] == 43);
assert(arr[2] == 44);
assert(arr[3] == 45);

i = arr.pop();

assert(i == 45);
assert(arr.length == 3);
assert(internalCapacity<i32>(arr) == 5);
assert(arr[0] == 42);
assert(arr[1] == 43);
assert(arr[2] == 44);

// Array#reverse ///////////////////////////////////////////////////////////////////////////////////

arr.reverse();

assert(arr.length == 3);
assert(internalCapacity<i32>(arr) == 5);
assert(arr[0] == 44);
assert(arr[1] == 43);
assert(arr[2] == 42);

arr.push(43);
arr.push(44);

// Array#indexOf ///////////////////////////////////////////////////////////////////////////////////

i = arr.indexOf(44);

assert(i == 0);

i = arr.indexOf(42);

assert(i == 2);

i = arr.indexOf(45);

assert(i == - 1);

i = arr.indexOf(43, 100);

assert(i == - 1);

i = arr.indexOf(43, -100);

assert(i == 1);

i = arr.indexOf(43, -2);

assert(i == 3);

i = arr.indexOf(43, -4);

assert(i == 1);

i = arr.indexOf(43, 0);

assert(i == 1);

i = arr.indexOf(43, 1);

assert(i == 1);

i = arr.indexOf(43, 2);

assert(i == 3);

// Array#includes //////////////////////////////////////////////////////////////////////////////////

var includes = arr.includes(44);

assert(includes == true);

includes = arr.includes(42);

assert(includes == true);

includes = arr.includes(45);

assert(includes == false);

includes = arr.includes(43, 100);

assert(includes == false);

includes = arr.includes(43, -100);

assert(includes == true);

includes = arr.includes(43, -2);

assert(includes == true);

includes = arr.includes(43, -4);

assert(includes == true);

includes = arr.includes(43, 0);

assert(includes == true);

includes = arr.includes(43, 1);

assert(includes == true);

includes = arr.includes(43, 2);

assert(includes == true);

arr.splice(1, 1);

assert(arr.length == 4);
assert(internalCapacity<i32>(arr) == 5);
assert(arr[0] == 44);
assert(arr[1] == 42);

// Array#splice ////////////////////////////////////////////////////////////////////////////////////

var sarr: i32[] = [1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(sarr.splice(0), <i32[]>[1, 2, 3, 4, 5]));
assert(isArraysEqual<i32>(sarr, <i32[]>[]));

sarr = <i32[]>[1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(sarr.splice(2), <i32[]>[3, 4, 5]));
assert(isArraysEqual<i32>(sarr, <i32[]>[1, 2]));

sarr = <i32[]>[1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(sarr.splice(2, 2), <i32[]>[3, 4]));
assert(isArraysEqual<i32>(sarr, <i32[]>[1, 2, 5]));

sarr = <i32[]>[1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(sarr.splice(0, 1), <i32[]>[1]));
assert(isArraysEqual<i32>(sarr, <i32[]>[2, 3, 4, 5]));

sarr = <i32[]>[1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(sarr.splice(-1), <i32[]>[5]));
assert(isArraysEqual<i32>(sarr, <i32[]>[1, 2, 3, 4]));

sarr = <i32[]>[1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(sarr.splice(-2), <i32[]>[4, 5]));
assert(isArraysEqual<i32>(sarr, <i32[]>[1, 2, 3]));

sarr = <i32[]>[1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(sarr.splice(-2, 1), <i32[]>[4]));
assert(isArraysEqual<i32>(sarr, <i32[]>[1, 2, 3, 5]));

sarr = <i32[]>[1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(sarr.splice(-7, 1), <i32[]>[1]));
assert(isArraysEqual<i32>(sarr, <i32[]>[2, 3, 4, 5]));

sarr = <i32[]>[1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(sarr.splice(-2, -1), <i32[]>[]));
assert(isArraysEqual<i32>(sarr, <i32[]>[1, 2, 3, 4, 5]));

sarr = <i32[]>[1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(sarr.splice(1, -2), <i32[]>[]));
assert(isArraysEqual<i32>(sarr, <i32[]>[1, 2, 3, 4, 5]));

sarr = <i32[]>[1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(sarr.splice(4, 0), <i32[]>[]));
assert(isArraysEqual<i32>(sarr, <i32[]>[1, 2, 3, 4, 5]));

sarr = <i32[]>[1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(sarr.splice(7, 0), <i32[]>[]));
assert(isArraysEqual<i32>(sarr, <i32[]>[1, 2, 3, 4, 5]));

sarr = <i32[]>[1, 2, 3, 4, 5];
assert(isArraysEqual<i32>(sarr.splice(7, 5), <i32[]>[]));
assert(isArraysEqual<i32>(sarr, <i32[]>[1, 2, 3, 4, 5]));

// Array#findIndex /////////////////////////////////////////////////////////////////////////////////

arr[0] = 0;
arr[1] = 1;
arr[2] = 2;
arr[3] = 3;

i = arr.findIndex((value: i32, index: i32, array: Array<i32>): bool => value == 0);
assert(i == 0);

i = arr.findIndex((value: i32, index: i32, array: Array<i32>): bool => value == 1);
assert(i == 1);

i = arr.findIndex((value: i32, index: i32, array: Array<i32>): bool => value == 100);
assert(i == -1);

// Test side effect push
i = arr.findIndex((value: i32, index: i32, array: Array<i32>): bool => {
  array.push(100); // push side effect should not affect this method by spec
  return value == 100;
});
// array should be changed, but this method result should be calculated for old array length
assert(i == -1);
assert(arr.length == 8);
i = arr.findIndex((value: i32, index: i32, array: Array<i32>): bool => value == 100);
assert(i != -1);

arr.pop();
arr.pop();
arr.pop();
arr.pop();

// Test side effect pop
i = arr.findIndex((value: i32, index: i32, array: Array<i32>): bool => {
  array.pop(); // poped items shouldn't be looked up, and we shouldn't go out of bounds
  return value == 100;
});
// only 2 first items was looked up, since last 2 was removed by .pop()
assert(i == -1);
assert(arr.length == 2);

arr.push(2);
arr.push(3);

// Array#every /////////////////////////////////////////////////////////////////////////////////////

var every = arr.every((value: i32, index: i32, array: Array<i32>): bool => value >= 0);
assert(every == true);

every = arr.every((value: i32, index: i32, array: Array<i32>): bool => value <= 0);
assert(every == false);

// Test side effect push
every = arr.every((value: i32, index: i32, array: Array<i32>): bool => {
  array.push(100); // push side effect should not affect this method by spec
  return value < 10;
});
// array should be changed, but this method result should be calculated for old array length
assert(every == true);
assert(arr.length == 8);
every = arr.every((value: i32, index: i32, array: Array<i32>): bool => value < 10);
assert(every == false);

arr.pop();
arr.pop();
arr.pop();
arr.pop();

// Test side effect pop
every = arr.every((value: i32, index: i32, array: Array<i32>): bool => {
  array.pop(); //poped items shouldn't be looked up, and we shouldn't go out of bounds
  return value < 3;
});
// only 2 first items was looked up, since last 2 was removed by .pop()
assert(every == true);
assert(arr.length == 2);

arr.push(2);
arr.push(3);

// Array#some //////////////////////////////////////////////////////////////////////////////////////

var some = arr.some((value: i32, index: i32, array: Array<i32>): bool => value >= 3);
assert(some == true);

some = arr.some((value: i32, index: i32, array: Array<i32>): bool => value <= -1);
assert(some == false);

// Test side effect push
some = arr.some((value: i32, index: i32, array: Array<i32>): bool => {
  array.push(100); // push side effect should not affect this method by spec
  return value > 10;
});
// array should be changed, but this method result should be calculated for old array length
assert(some == false);
assert(arr.length == 8);
some = arr.some((value: i32, index: i32, array: Array<i32>): bool => value > 10);
assert(some == true);

arr.pop();
arr.pop();
arr.pop();
arr.pop();

// Test side effect pop
some = arr.some((value: i32, index: i32, array: Array<i32>): bool => {
  array.pop(); // poped items shouldn't be looked up, and we shouldn't go out of bounds
  return value > 3;
});
// only 2 first items was looked up, since last 2 was removed by .pop()
assert(some == false);
assert(arr.length == 2);

arr.push(2);
arr.push(3);

// Array#forEach ///////////////////////////////////////////////////////////////////////////////////

i = 0;
arr.forEach((value: i32, index: i32, array: Array<i32>): void => { i += value; });
assert(i == 6);

// Test side effect push
i = 0;
arr.forEach((value: i32, index: i32, array: Array<i32>): void => {
  array.push(100); //push side effect should not affect this method by spec
  i += value;
});
// array should be changed, but this method result should be calculated for old array length
assert(i == 6);
assert(arr.length == 8);
i = 0;
arr.forEach((value: i32, index: i32, array: Array<i32>): void => { i += value; });
assert(i == 406);

arr.pop();
arr.pop();
arr.pop();
arr.pop();

// Test side effect pop
i = 0;
arr.forEach((value: i32, index: i32, array: Array<i32>): void => {
  array.pop(); //poped items shouldn't be looked up, and we shouldn't go out of bounds
  i += value;
});
// only 2 first items was looked up, since last 2 was removed by .pop()
assert(i == 1);
assert(arr.length == 2);

arr.push(2);
arr.push(3);

// Test rehash action effec
arr.forEach((value: i32, index: i32, array: Array<i32>): void => {
  if (index == 0) {
    for (let i = 0; i < 4; i++) {
      array.pop();
    }
    for (let i = 0; i < 100; i++) {
      array.push(100 + i);
    }
    for (let i = 0; i < 100; i++) {
      array.pop();
    }
    for (let i = 0; i < 100; i++) {
      array.push(i + 200);
    }
  }
  if (index == 2) {
    assert(value == 202);
  }
});
assert(arr.length == 100)
for (let i = 0; i < 100; i++) {
  arr.pop();
}
arr.push(0);
arr.push(1);
arr.push(2);
arr.push(3);
// Array#map ///////////////////////////////////////////////////////////////////////////////////////

var newArr: f32[] = arr.map<f32>((value: i32, index: i32, array: Array<i32>): f32 => <f32>value);
assert(newArr.length == 4);
assert(newArr[0] == <f32>arr[0]);

// Test side effect push
i = 0;
arr.map<i32>((value: i32, index: i32, array: Array<i32>): i32 => {
  array.push(100); //push side effect should not affect this method by spec
  i += value;
  return value;
});
assert(i == 6);
assert(arr.length == 8);

i = 0;
arr.map<i32>((value: i32, index: i32, array: Array<i32>): i32 => {
  i += value;
  return value;
});
assert(i == 406);

arr.pop();
arr.pop();
arr.pop();
arr.pop();

// Test side effect pop
i = 0;
arr.map<i32>((value: i32, index: i32, array: Array<i32>): i32 => {
  array.pop(); //poped items shouldn't be looked up, and we shouldn't go out of bounds
  i += value;
  return value;
});
// only 2 first items was looked up, since last 2 was removed by .pop()
assert(i == 1);
assert(arr.length == 2);

arr.push(2);
arr.push(3);

// Array#filter ////////////////////////////////////////////////////////////////////////////////////

var filteredArr: i32[] = arr.filter((value: i32, index: i32, array: Array<i32>): bool => value >= 2);
assert(filteredArr.length == 2);

// Test side effect push
i = 0;
arr.filter((value: i32, index: i32, array: Array<i32>): bool => {
  array.push(100); //push side effect should not affect this method by spec
  i += value;
  return value >= 2;
});
assert(i == 6);
assert(arr.length == 8);

i = 0;
arr.filter((value: i32, index: i32, array: Array<i32>): bool => {
  i += value;
  return value >= 2;
});
assert(i == 406);

arr.pop();
arr.pop();
arr.pop();
arr.pop();

// Test side effect pop
i = 0;
arr.filter((value: i32, index: i32, array: Array<i32>): bool => {
  array.pop(); //poped items shouldn't be looked up, and we shouldn't go out of bounds
  i += value;
  return value >= 2;
});
// only 2 first items was looked up, since last 2 was removed by .pop()
assert(i == 1);
assert(arr.length == 2);

arr.push(2);
arr.push(3);

// Array#reduce ////////////////////////////////////////////////////////////////////////////////////

i = arr.reduce<i32>(((prev: i32, current: i32, index: i32, array: Array<i32>): i32 => prev + current), 0);
assert(i == 6);

// init value
i = arr.reduce<i32>(((prev: i32, current: i32, index: i32, array: Array<i32>): i32 => prev + current), 4);
assert(i == 10);

var boolVal = arr.reduce<bool>(((prev: bool, current: i32, index: i32, array: Array<i32>): bool => prev || current > 2), false);
assert(boolVal == true);

boolVal = arr.reduce<bool>(((prev: bool, current: i32, index: i32, array: Array<i32>): bool => prev || current > 100), false);
assert(boolVal == false);

// Test side effect push
i = arr.reduce<i32>(((prev: i32, current: i32, index: i32, array: Array<i32>): i32 => {
  array.push(1); // push side effect should not affect this method by spec
  return prev + current;
}), 0);
// array should be changed, but this method result should be calculated for old array length
assert(i == 6);
assert(arr.length == 8);
i = arr.reduce<i32>(((prev: i32, current: i32, index: i32, array: Array<i32>): i32 => prev + current), 0);
assert(i == 10);

arr.pop();
arr.pop();
arr.pop();
arr.pop();

// Test side effect pop
i = arr.reduce<i32>(((prev: i32, current: i32, index: i32, array: Array<i32>): i32 => {
  array.pop(); //poped items shouldn't be reduced, and we shouldn't go out of bounds
  return prev + current;
}), 0);
// only 2 first items was reduced, since last 2 was removed by .pop()
assert(i == 1);
assert(arr.length == 2);

arr.push(2);
arr.push(3);

// Array#reduceRight ///////////////////////////////////////////////////////////////////////////////

i = arr.reduceRight<i32>(((prev: i32, current: i32, index: i32, array: Array<i32>): i32 => prev + current), 0);
assert(i == 6);

// init value
i = arr.reduceRight<i32>(((prev: i32, current: i32, index: i32, array: Array<i32>): i32 => prev + current), 4);
assert(i == 10);

boolVal = arr.reduceRight<bool>(((prev: bool, current: i32, index: i32, array: Array<i32>): bool => prev || current > 2), false);
assert(boolVal == true);

boolVal = arr.reduceRight<bool>(((prev: bool, current: i32, index: i32, array: Array<i32>): bool => prev || current > 100), false);
assert(boolVal == false);

// Test side effect push
i = arr.reduceRight<i32>(((prev: i32, current: i32, index: i32, array: Array<i32>): i32 => {
  array.push(1); // push side effect should not affect this method by spec
  return prev + current;
}), 0);
// array should be changed, but this method result should be calculated for old array length
assert(i == 6);
assert(arr.length == 8);
i = arr.reduceRight<i32>(((prev: i32, current: i32, index: i32, array: Array<i32>): i32 => prev + current), 0);
assert(i == 10);

arr.pop();
arr.pop();
arr.pop();
arr.pop();

// Test side effect pop
i = arr.reduceRight<i32>(((prev: i32, current: i32, index: i32, array: Array<i32>): i32 => {
  array.pop(); // poped items should be reduced
  return prev + current;
}), 0);

assert(i == 6);
assert(arr.length == 0);

arr.push(0);
arr.push(1);
arr.push(2);
arr.push(3);

// Array#sort //////////////////////////////////////////////////////////////////////////////////////

// Checks if an array is properly sorted
function isSorted<T>(data: Array<T>, comparator: (a: T, b: T) => i32 = COMPARATOR<T>()): bool {
  for (let i: i32 = 1, len: i32 = data.length; i < len; i++) {
    if (comparator(data[i - 1], data[i]) > 0) return false;
  }
  return true;
}

function createReverseOrderedArray(size: i32): Array<i32> {
  var arr = new Array<i32>(size);
  for (let i = 0; i < arr.length; i++) {
    arr[i] = arr.length - 1 - i;
  }
  return arr;
}

NativeMath.seedRandom(reinterpret<u64>(JSMath.random()));

function createRandomOrderedArray(size: i32): Array<i32> {
  var arr = new Array<i32>(size);
  for (let i = 0; i < arr.length; i++) {
    arr[i] = <i32>(NativeMath.random() * arr.length);
  }
  return arr;
}

function createReverseOrderedNestedArray(size: i32): Array<Array<i32>> {
  var arr = new Array<Array<i32>>(size);
  for (let i: i32 = 0; i < arr.length; i++) {
    arr[i] = new Array<i32>(1);
    arr[i][0] = arr.length - 1 - i;
  }
  return arr;
}

class Proxy<T> {
  constructor(public x: T) {}
}

function createReverseOrderedElementsArray(size: i32): Proxy<i32>[] {
  var arr = new Array<Proxy<i32>>(size);
  for (let i: i32 = 0; i < arr.length; i++) {
    arr[i] = new Proxy<i32>(arr.length - 1 - i);
  }
  return arr;
}

const charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_-,.+/\\[]{}()<>*&$%^@#!?";

function createRandomString(len: i32): string {
  var result = "";

  for (let i = 0; i < len; i++) {
    result += charset.charAt(<i32>(NativeMath.floor(NativeMath.random() * charset.length)));
  }
  return result;
}

function createRandomStringArray(size: i32): string[] {
  var arr = new Array<string>(size);
  for (let i: i32 = 0; i < arr.length; i++) {
    arr[i] = createRandomString(<i32>(NativeMath.random() * 32));
  }
  return arr;
}

function assertSorted<T>(arr: Array<T>, comparator: (a: T, b: T) => i32 = COMPARATOR<T>()): void {
  assert(isSorted<T>(arr.sort(comparator), comparator));
}

function assertSortedDefault<T>(arr: Array<T>): void {
  assertSorted<T>(arr, COMPARATOR<T>());
}

// Tests for default comparator

var f32ArrayTyped: f32[] = [1.0, NaN, -Infinity, 1.00000001, 0.0, -1.0, -2.0, +Infinity];
f32ArrayTyped.sort();
assert(isArraysEqual<f32>(f32ArrayTyped, [-Infinity, -2.0, -1.0, 0.0, 1.0, 1.00000001, Infinity, NaN]));

var f64ArrayTyped: f64[] = [1.0, NaN, -Infinity, 1.000000000000001, 0.0, -1.0, -2.0, +Infinity];
f64ArrayTyped.sort();
assert(isArraysEqual<f64>(f64ArrayTyped, [-Infinity, -2.0, -1.0, 0.0, 1.0, 1.000000000000001, Infinity, NaN]));

var i32ArrayTyped: i32[] = [1, -2, -1, 0, 2];
i32ArrayTyped.sort();
assert(isArraysEqual<i32>(i32ArrayTyped, [-2, -1, 0, 1, 2]));

var u32ArrayTyped: u32[] = [1, 4294967295, 4294967294, 0, 2];
u32ArrayTyped.sort();
assert(isArraysEqual<u32>(u32ArrayTyped, [0, 1, 2, 4294967294, 4294967295]));

var reversed0: i32[] = [];
var reversed1: i32[] = [1];
var reversed2: i32[] = [2, 1];
var reversed4: i32[] = [3, 2, 1, 0];
var expected4: i32[] = [0, 1, 2, 3];

var reversed64    = createReverseOrderedArray(64);
var reversed128   = createReverseOrderedArray(128);
var reversed1024  = createReverseOrderedArray(1024);
var reversed10000 = createReverseOrderedArray(10000);

var randomized512 = createRandomOrderedArray(512);

// Test sorting with with default comparator

assertSortedDefault<i32>(reversed0);

assertSortedDefault<i32>(reversed1);
assert(isArraysEqual<i32>(reversed1, <i32[]>[1]));

assertSortedDefault<i32>(reversed2);
assert(isArraysEqual<i32>(reversed2, <i32[]>[1, 2]));

assertSortedDefault<i32>(reversed4);
assert(isArraysEqual<i32>(reversed4, expected4));

assertSortedDefault<i32>(reversed64);
assert(isArraysEqual<i32>(reversed64, expected4, 4));

assertSortedDefault<i32>(reversed128);
assert(isArraysEqual<i32>(reversed128, expected4, 4));

assertSortedDefault<i32>(reversed1024);
assert(isArraysEqual<i32>(reversed1024, expected4, 4));

assertSortedDefault<i32>(reversed10000);
assert(isArraysEqual<i32>(reversed10000, expected4, 4));

assertSortedDefault<i32>(randomized512);

// Test sorting with custom comparator

var randomized64  = createRandomOrderedArray(64);
var randomized257 = createRandomOrderedArray(257);

assertSorted<i32>(randomized64, (a: i32, b: i32): i32 => a - b);
assertSorted<i32>(randomized64, (a: i32, b: i32): i32 => b - a);

assertSorted<i32>(randomized257, (a: i32, b: i32): i32 => a - b);
assertSorted<i32>(randomized257, (a: i32, b: i32): i32 => b - a);

// Test sorting complex objects

var reversedNested512 = createReverseOrderedNestedArray(512);
assertSorted<i32[]>(reversedNested512, (a: i32[], b: i32[]): i32 => a[0] - b[0]);

// Test sorting reference elements
var reversedElements512 = createReverseOrderedElementsArray(512);
assertSorted<Proxy<i32>>(reversedElements512, (a: Proxy<i32>, b: Proxy<i32>): i32 => a.x - b.x);

// Test sorting strings

var randomStringsActual:   string[] = ["a", "b", "a", "ab", "ba", "", null];
var randomStringsExpected: string[] = ["", "a", "a", "ab", "b", "ba", null];

assertSorted<string>(randomStringsActual);
assert(isArraysEqual<string>(randomStringsActual, randomStringsExpected));

var randomStrings400 = createRandomStringArray(400);
assertSorted<string>(randomStrings400);

// Array#join //////////////////////////////////////////////////////////////////////////////////////

class Ref { constructor() {} }

assert((<bool[]>[true, false]).join() == "true,false");
assert((<i32[]>[1,-2,-3]).join("") == "1-2-3");
assert((<u32[]>[1, 2, 3]).join("-") == "1-2-3");
assert((<i32[]>[i32.MIN_VALUE, i32.MIN_VALUE]).join("__") == "-2147483648__-2147483648");
assert((<f64[]>[0.0, 1.0, -2.0, NaN, -Infinity, Infinity]).join(", ") == "0.0, 1.0, -2.0, NaN, -Infinity, Infinity");
assert((<string[]>["", "1", null]).join("") == "1");
var refArr: Ref[] = [new Ref(), null, new Ref()];
assert(refArr.join() == "[object Object],,[object Object]");

// Array#toString //////////////////////////////////////////////////////////////////////////////////

assert(reversed0.toString() == "");
assert(reversed1.toString() == "1");
assert(reversed2.toString() == "1,2");
assert(reversed4.toString() == "0,1,2,3");

assert((<i8[]>[1, -1, 0]).toString() == "1,-1,0");
assert((<u16[]>[1, 0xFFFF, 0]).toString() == "1,65535,0");
assert((<u64[]>[1, 0xFFFFFFFFFFFFFFFF, 0]).toString() == "1,18446744073709551615,0");
assert((<i64[]>[-1, -1234567890123456, 0, i64.MAX_VALUE]).toString() == "-1,-1234567890123456,0,9223372036854775807");
assert(randomStringsExpected.toString() == ",a,a,ab,b,ba,");
assert((<string[]>["1", "2", null, "4"]).toString() == "1,2,,4");

var subarr32: i32[][] = [[1,2], [3,4]];
assert(subarr32.toString() == "1,2,3,4");

var subarr8: u8[][] = [[1,2], [3,4]];
assert(subarr8.toString() == "1,2,3,4");

var subarrU32: u32[][][] = [[[1]]];
assert(subarrU32.toString() == "1");
