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

var ptr = memory.data(1);
assert(ptr + 16 == (ptr = memory.data(1, 16)));
assert(ptr + 8 == (ptr = memory.data(1, 8)));
assert(ptr + 4 == (ptr = memory.data(1, 4)));
assert(ptr + 2 == (ptr = memory.data(1, 2)));
assert(ptr + 1 == (ptr = memory.data(1, 1)));
assert(ptr + 1 == memory.data(1, 16));

// Should be static and properly aligned per generic instance

function testGeneric<T>(): usize {
  const ptr = memory.data(1, 1 << alignof<T>());
  return ptr;
}

ptr = memory.data(1);
assert(ptr + 16 == (ptr = testGeneric<v128>()));
assert(ptr + 8 == (ptr = testGeneric<i64>()));
assert(ptr + 4 == (ptr = testGeneric<i32>()));
assert(ptr + 2 == (ptr = testGeneric<i16>()));
assert(ptr + 1 == (ptr = testGeneric<i8>()));
assert(ptr + 1 == memory.data(1, 16));

// Should work with arrays of values

ptr = memory.data<u8>([1, 2, 3]);
assert(load<u8>(ptr) == 1);
assert(load<u8>(ptr, 1) == 2);
assert(load<u8>(ptr, 2) == 3);

ptr = memory.data<f32>([1.5, 2.5, 3.5]);
assert(load<f32>(ptr) == 1.5);
assert(load<f32>(ptr, 4) == 2.5);
assert(load<f32>(ptr, 8) == 3.5);

// Should be properly aligned when using arrays of values

ptr = memory.data(1);
assert(ptr + 16 == (ptr = memory.data<u8>([1], 16)));
assert(ptr + 8 == (ptr = memory.data<u8>([1], 8)));
assert(ptr + 4 == (ptr = memory.data<u8>([1], 4)));
assert(ptr + 2 == (ptr = memory.data<u8>([1], 2)));
assert(ptr + 1 == (ptr = memory.data<u8>([1], 1)));
assert(ptr + 1 == memory.data<u8>([1], 16));
