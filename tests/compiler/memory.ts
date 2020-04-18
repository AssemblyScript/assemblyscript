// === memory.data ===

// Should be static

function test(): i32 {
  const ptr = memory.data(4);
  var value = load<i32>(ptr);
  store<i32>(ptr, value + 1);
  return value;
}

assert(test() == 0);
assert(test() == 1);
assert(test() == 2);

// Should be properly aligned

var ptr = memory.data(16, 16);
assert(ptr + 16 == (ptr = memory.data(1, 16)));
assert(ptr + 8 == (ptr = memory.data(1, 8)));
assert(ptr + 4 == (ptr = memory.data(1, 4)));
assert(ptr + 2 == (ptr = memory.data(1, 2)));
assert(ptr + 1 == (ptr = memory.data(1, 1)));

// Should be static and properly aligned per generic instance

function testGeneric<T>(): usize {
  const ptr = memory.data(1, 1 << alignof<T>());
  return ptr;
}

ptr = memory.data(16, 16);
assert(ptr + 16 == (ptr = testGeneric<v128>()));
assert(ptr + 8 == (ptr = testGeneric<i64>()));
assert(ptr + 4 == (ptr = testGeneric<i32>()));
assert(ptr + 2 == (ptr = testGeneric<i16>()));
assert(ptr + 1 == (ptr = testGeneric<i8>()));
