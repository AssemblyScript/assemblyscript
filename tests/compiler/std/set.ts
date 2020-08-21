function testNumeric<K extends number>(): void {
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

  // values 
  let vals = set.values();
  let valSet = new Set<K>(); 
  for (let index = 0; index < vals.length; ++index) {
    assert(set.has(vals[index]));
    valSet.add(vals[index]);
  }
  assert(valSet.size == set.size);

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

testNumeric<i8>();
testNumeric<u8>();
testNumeric<i16>();
testNumeric<u16>();
testNumeric<i32>();
testNumeric<u32>();
testNumeric<i64>();
testNumeric<u64>();
testNumeric<f32>();
testNumeric<f64>();
