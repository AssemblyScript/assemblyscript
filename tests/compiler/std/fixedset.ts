function testNumeric<T extends number>(): void {
  let set = new FixedSet<T>();

  // empty set
  assert(set.size == 0);
  assert(!set.has(<T>0));
  assert(!set.delete(<T>0));

  // add
  for (let k: T = 0; k < 100; ++k) {
    assert(!set.has(k));
    set.add(k);
    assert(set.has(k));
  }
  assert(set.size == 100);

  // add duplicate
  for (let k: T = 0; k < 100; ++k) {
    set.add(k);
  }
  assert(set.size == 100);

  // values
  let vals = set.values();
  assert(vals.length == 100);

  // delete half
  for (let k: T = 0; k < 50; ++k) {
    assert(set.has(k));
    assert(set.delete(k));
    assert(!set.has(k));
    assert(!set.delete(k));
  }
  assert(set.size == 50);

  // remaining still accessible
  for (let k: T = 50; k < 100; ++k) {
    assert(set.has(k));
  }

  // re-add after delete
  for (let k: T = 0; k < 50; ++k) {
    set.add(k);
    assert(set.has(k));
  }
  assert(set.size == 100);

  // clear
  set.clear();
  assert(set.size == 0);
  assert(!set.has(<T>0));

  // add after clear
  set.add(<T>1);
  assert(set.size == 1);
  assert(set.has(<T>1));
}

// operator access
function testOperators(): void {
  let set = new FixedSet<i32>();
  set[1] = true;
  set[2] = true;
  assert(set[1]);
  assert(set[2]);
  assert(!set[3]);
  set[1] = false;
  assert(!set[1]);
  assert(set.size == 1);
}

// custom capacity
function testCapacity(): void {
  let set = new FixedSet<i32>(4);
  for (let i = 0; i < 200; ++i) {
    set.add(i);
  }
  assert(set.size == 200);
  for (let i = 0; i < 200; ++i) {
    assert(set.has(i));
  }
}

testNumeric<i32>();
testNumeric<u32>();
testNumeric<i64>();
testNumeric<u64>();
testNumeric<f32>();
testNumeric<f64>();
testOperators();
testCapacity();
