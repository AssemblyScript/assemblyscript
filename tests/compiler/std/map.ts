import "allocator/arena";

function test<K,V>(): void {
  var map = new Map<K,V>();

  // insert new
  for (let k: K = 0; k < 100; ++k) {
    assert(!map.has(k));
    map.set(k, 10 + <V>k);
    assert(map.has(k));
    assert(map.get(k) == 10 + <V>k);
  }
  assert(map.size == 100);

  // insert duplicate
  for (let k: K = 0; k < 100; ++k) {
    assert(map.has(k));
    assert(map.get(k) == 10 + <V>k);
    map.set(k, 20 + <V>k);
    assert(map.has(k));
    assert(map.get(k) == 20 + <V>k);
  }
  assert(map.size == 100);

  // delete
  for (let k: K = 0; k < 50; ++k) {
    assert(map.has(k));
    assert(map.get(k) == 20 + <V>k);
    map.delete(k);
    assert(!map.has(k));
  }
  assert(map.size == 50);

  // insert + delete
  for (let k: K = 0; k < 50; ++k) {
    assert(!map.has(k));
    map.set(k, 10 + <V>k);
    assert(map.has(k));
    map.delete(k);
    assert(!map.has(k));
  }
  assert(map.size == 50);

  // clear
  map.clear();
  assert(map.size == 0);
}

test<i8,i32>();
test<u8,i32>();
test<i16,i32>();
test<u16,i32>();
test<i32,i32>();
test<u32,i32>();
test<i64,i32>();
test<u64,i32>();
test<f32,i32>();
test<f64,i32>();
