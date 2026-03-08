function testNumeric<T extends number>(): void {
  let arr = new FixedArray<T>(128);
  assert(arr.length == 0);
  assert(arr.capacity == 128);

  // push
  for (let i: T = 0; i < 100; ++i) {
    arr.push(i);
  }
  assert(arr.length == 100);

  // index access
  for (let i = 0; i < 100; ++i) {
    assert(arr[i] == <T>i);
  }

  // set via operator
  arr[0] = <T>42;
  assert(arr[0] == <T>42);
  arr[0] = <T>0;
  assert(arr[0] == <T>0);

  // pop
  let val = arr.pop();
  assert(val == <T>99);
  assert(arr.length == 99);

  // indexOf
  assert(arr.indexOf(<T>0) == 0);
  assert(arr.indexOf(<T>50) == 50);
  assert(arr.indexOf(<T>99) == -1); // was popped

  // includes
  assert(arr.includes(<T>0));
  assert(arr.includes(<T>50));
  assert(!arr.includes(<T>99));

  // swapDelete
  arr.swapDelete(0);
  assert(arr.length == 98);
  assert(arr[0] == <T>98); // last element swapped to index 0
  assert(!arr.includes(<T>0)); // was swap-deleted (assuming no dup)

  // fill
  arr.length = 10;
  arr.fill(<T>7, 0, 5);
  for (let i = 0; i < 5; ++i) {
    assert(arr[i] == <T>7);
  }

  // clear
  arr.clear();
  assert(arr.length == 0);

  // push after clear
  arr.push(<T>42);
  assert(arr.length == 1);
  assert(arr[0] == <T>42);
}

// set length
function testLength(): void {
  let arr = new FixedArray<i32>(64);
  arr.length = 32;
  assert(arr.length == 32);
  arr.length = 0;
  assert(arr.length == 0);
}

// push to capacity
function testCapacity(): void {
  let arr = new FixedArray<i32>(4);
  arr.push(1);
  arr.push(2);
  arr.push(3);
  arr.push(4);
  assert(arr.length == 4);
  assert(arr.capacity == 4);
}

testNumeric<i32>();
testNumeric<u32>();
testNumeric<i64>();
testNumeric<u64>();
testNumeric<f32>();
testNumeric<f64>();
testLength();
testCapacity();
