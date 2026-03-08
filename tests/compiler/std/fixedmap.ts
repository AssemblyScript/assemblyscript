function testNumeric<K extends number, V extends number>(): void {
  let map = new FixedMap<K,V>();

  // empty map
  assert(map.size == 0);
  assert(!map.has(<K>0));
  assert(!map.delete(<K>0));

  // insert new
  for (let k: K = 0; k < 100; ++k) {
    assert(!map.has(k));
    map.set(k, 10 + <V>k);
    assert(map.has(k));
    assert(map.get(k) == 10 + <V>k);
  }
  assert(map.size == 100);

  // insert duplicate (update)
  for (let k: K = 0; k < 100; ++k) {
    assert(map.has(k));
    assert(map.get(k) == 10 + <V>k);
    map.set(k, 20 + <V>k);
    assert(map.has(k));
    assert(map.get(k) == 20 + <V>k);
  }
  assert(map.size == 100);

  // keys and values
  let keys = map.keys();
  let vals = map.values();
  assert(keys.length == 100);
  assert(vals.length == 100);

  // delete half
  for (let k: K = 0; k < 50; ++k) {
    assert(map.has(k));
    assert(map.delete(k));
    assert(!map.has(k));
    assert(!map.delete(k));
  }
  assert(map.size == 50);

  // remaining half still accessible
  for (let k: K = 50; k < 100; ++k) {
    assert(map.has(k));
    assert(map.get(k) == 20 + <V>k);
  }

  // re-insert after delete (reuses tombstones)
  for (let k: K = 0; k < 50; ++k) {
    map.set(k, 30 + <V>k);
    assert(map.has(k));
    assert(map.get(k) == 30 + <V>k);
  }
  assert(map.size == 100);

  // clear
  map.clear();
  assert(map.size == 0);
  assert(!map.has(<K>0));

  // insert after clear
  map.set(<K>1, <V>2);
  assert(map.size == 1);
  assert(map.get(<K>1) == <V>2);
}

// operator access
function testOperators(): void {
  let map = new FixedMap<i32, i32>();
  map[1] = 10;
  map[2] = 20;
  assert(map[1] == 10);
  assert(map[2] == 20);
  map[1] = 30;
  assert(map[1] == 30);
  assert(map.size == 2);
}

// custom capacity
function testCapacity(): void {
  let map = new FixedMap<i32, i32>(4);
  for (let i = 0; i < 200; ++i) {
    map.set(i, i * 10);
  }
  assert(map.size == 200);
  for (let i = 0; i < 200; ++i) {
    assert(map.get(i) == i * 10);
  }
}

testNumeric<i32, i32>();
testNumeric<u32, u32>();
testNumeric<i64, i64>();
testNumeric<u64, u64>();
testNumeric<f32, f32>();
testNumeric<f64, f64>();
testOperators();
testCapacity();
