import "allocator/arena";

// Default comparator
function createDefaultComparator<T>(): (a: T, b: T) => i32 {
  return (a: T, b: T): i32 => (
    <i32>(a > b) - <i32>(a < b)
  );
}

// Check is array sorted
function isSorted<T>(data: Array<T>, comparator: (a: T, b: T) => i32 = createDefaultComparator<T>()): bool {
  for (let i: i32 = 1, len: i32 = data.length; i < len; i++) {
    if (comparator(data[i - 1], data[i]) > 0) {
      return false;
    }
  }
  return true;
}

function createReverseOrderArray(size: i32): Array<i32> {
  var arr = new Array<i32>(size);
  for (let i: i32 = 0; i < <i32>(arr.length); i++) {
    arr[i] = <i32>arr.length - 1 - i;
  }
  return arr;
}

var arr = changetype<i32[]>(allocate_memory(sizeof<usize>() + 2 * sizeof<i32>()));

assert(arr.length == 0);
assert(arr.__capacity == 0);

arr.push(42);

assert(arr[0] == 42);
assert(arr.length == 1);
assert(arr.__capacity == 1);

var i = arr.pop();

assert(i == 42);
assert(arr.length == 0);
assert(arr.__capacity == 1);

arr.push(43);

assert(arr.length == 1);
assert(arr.__capacity == 1);
assert(arr[0] == 43);

arr.push(44);

assert(arr.length == 2);
assert(arr.__capacity == 2);
assert(arr[0] == 43);
assert(arr[1] == 44);

arr.push(45);

assert(arr.length == 3);
assert(arr.__capacity == 4);
assert(arr[0] == 43);
assert(arr[1] == 44);
assert(arr[2] == 45);

arr.unshift(42);

assert(arr.length == 4);
assert(arr.__capacity == 4);
assert(arr[0] == 42);
assert(arr[1] == 43);
assert(arr[2] == 44);
assert(arr[3] == 45);

arr.unshift(41);

assert(arr.length == 5);
assert(arr.__capacity == 8);
assert(arr[0] == 41);
assert(arr[1] == 42);
assert(arr[2] == 43);
assert(arr[3] == 44);
assert(arr[4] == 45);

i = arr.shift();

assert(i == 41);
assert(arr.length == 4);
assert(arr.__capacity == 8);
assert(arr[0] == 42);
assert(arr[1] == 43);
assert(arr[2] == 44);
assert(arr[3] == 45);

i = arr.pop();

assert(i == 45);
assert(arr.length == 3);
assert(arr.__capacity == 8);
assert(arr[0] == 42);
assert(arr[1] == 43);
assert(arr[2] == 44);

arr.reverse();

assert(arr.length == 3);
assert(arr.__capacity == 8);
assert(arr[0] == 44);
assert(arr[1] == 43);
assert(arr[2] == 42);

arr.push(43);
arr.push(44);

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
assert(arr.__capacity == 8);
assert(arr[0] == 44);
assert(arr[1] == 42);


arr[0] = 0;
arr[1] = 1;
arr[2] = 2;
arr[3] = 3;
/*=============================== findIndex ==========================*/
i = arr.findIndex((value: i32, index: i32, array: Array<i32>): bool => value == 0);
assert(i == 0);

i = arr.findIndex((value: i32, index: i32, array: Array<i32>): bool => value == 1);
assert(i == 1);

i = arr.findIndex((value: i32, index: i32, array: Array<i32>): bool => value == 100);
assert(i == -1);

// Test side effect push
i = arr.findIndex((value: i32, index: i32, array: Array<i32>): bool => {
  array.push(100); //push side effect should not affect this method by spec
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
  array.pop(); //poped items shouldn't be looked up, and we shouldn't go out of bounds
  return value == 100;
});
// only 2 first items was looked up, since last 2 was removed by .pop()
assert(i == -1);
assert(arr.length == 2);

arr.push(2);
arr.push(3);
/*=============================== every ==========================*/
var every = arr.every((value: i32, index: i32, array: Array<i32>): bool => value >= 0);
assert(every == true);

every = arr.every((value: i32, index: i32, array: Array<i32>): bool => value <= 0);
assert(every == false);

// Test side effect push
every = arr.every((value: i32, index: i32, array: Array<i32>): bool => {
  array.push(100); //push side effect should not affect this method by spec
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
/*=============================== some ==========================*/
var some = arr.some((value: i32, index: i32, array: Array<i32>): bool => value >= 3);
assert(some == true);

some = arr.some((value: i32, index: i32, array: Array<i32>): bool => value <= -1);
assert(some == false);

// Test side effect push
some = arr.some((value: i32, index: i32, array: Array<i32>): bool => {
  array.push(100); //push side effect should not affect this method by spec
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
  array.pop(); //poped items shouldn't be looked up, and we shouldn't go out of bounds
  return value > 3;
});
// only 2 first items was looked up, since last 2 was removed by .pop()
assert(some == false);
assert(arr.length == 2);

arr.push(2);
arr.push(3);
/*=============================== reduce ==========================*/

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
  array.push(1); //push side effect should not affect this method by spec
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

/*=============================== sort ==========================*/

var unsorted0: Array<i32> = [];
var unsorted1: Array<i32> = [1];
var unsorted2: Array<i32> = [2, 1];
var unsorted4: Array<i32> = [4, 1, 2, 3];

var unsorted64    = createReverseOrderArray(64);
var unsorted128   = createReverseOrderArray(128);
var unsorted1024  = createReverseOrderArray(1024);
var unsorted65536 = createReverseOrderArray(1 << 16);
/*
assert(isSorted<i32>(unsorted0.sort<i32>(createDefaultComparator<i32>()), createDefaultComparator<i32>()));
assert(isSorted<i32>(unsorted1.sort<i32>(createDefaultComparator<i32>()), createDefaultComparator<i32>()));
assert(isSorted<i32>(unsorted2.sort<i32>(createDefaultComparator<i32>()), createDefaultComparator<i32>()));
assert(isSorted<i32>(unsorted4.sort<i32>(createDefaultComparator<i32>()), createDefaultComparator<i32>()));

assert(isSorted<i32>(unsorted64.sort<i32>(createDefaultComparator<i32>()), createDefaultComparator<i32>()));
assert(isSorted<i32>(unsorted128.sort<i32>(createDefaultComparator<i32>()), createDefaultComparator<i32>()));
*/
var res = unsorted65536.sort<i32>(createDefaultComparator<i32>());
assert(res[0] == 0);
assert(res[1] == 1);
// assert(res[2] == 2);

// assert(isSorted<i32>(unsorted65536.sort<i32>(createDefaultComparator<i32>()), createDefaultComparator<i32>()));
