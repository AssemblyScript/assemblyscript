import "allocator/arena";

function test<K>(): void {
  var set = new Set<K>();

  // insert new
  for (let k: K = 0; k < 100; ++k) {
    assert(!set.has(k));
    set.add(k);
    assert(set.has(k));
  }
  assert(set.size == 100);

  // insert duplicate
  for (let k: K = 50; k < 100; ++k) {
    assert(set.has(k));
    set.add(k);
    assert(set.has(k));
  }
  assert(set.size == 100);

  // delete
  for (let k: K = 0; k < 50; ++k) {
    assert(set.has(k));
    set.delete(k);
    assert(!set.has(k));
  }
  assert(set.size == 50);

  // insert + delete
  for (let k: K = 0; k < 50; ++k) {
    assert(!set.has(k));
    set.add(k);
    assert(set.has(k));
    set.delete(k);
    assert(!set.has(k));
  }
  assert(set.size == 50);

  // clear
  set.clear();
  assert(set.size == 0);
}

test<i8>();
test<u8>();
test<i16>();
test<u16>();
test<i32>();
test<u32>();
test<i64>();
test<u64>();
test<f32>();
test<f64>();
