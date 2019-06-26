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

var i = 0;
function testForEach(): void {
  var set = new Set<i32>();
  for (let k: i32 = 0; k < 10; ++k) {
    set.add(k);
  }
  assert(set.size == 10);

  set.forEach((value1: i32, value2: i32): void => {
    assert(value1 == value2);
    i++;
  });
  assert(set.size == 10);
  assert(i == 10);

  i = 0;
  set.forEach((value1: i32, value2: i32, aset: Set<i32>): void => {
    aset.add(11);
    i++;
  });
  assert(set.size == 11);
  assert(i == 11);

  i = 0;
  set.forEach((value1: i32, value2: i32, aset: Set<i32>): void => {
    i++;
    if (value1 == 11) {
      for (let index = 1; index <= 100; index++) {
        aset.add(index + 20);
      }
    }
  });
  assert(set.size == 111);
  // assert(i == 111);

  i = 0;
  set.forEach((value1: i32, value2: i32, aset: Set<i32>): void => {
    if (value1 > 11) {
        aset.delete(value2);
    }
    i ++;
  });
  assert(set.size == 11);
  assert(i == 111);

  set.forEach((value1: i32, value2: i32, aset: Set<i32>): void => {
    if (value1 > 11) {
      aset.delete(value2);
    }
  });
  assert(set.size == 11);

  i = 0;
  set.forEach((value1: i32, value2: i32, aset: Set<i32>): void => {
    if (value1 == 11) {
      for (let index = 0; index < 100; index++) {
        aset.add(index + 20);
      }
    }
    if (value1 > 11) {
      aset.delete(value2);
    }
    i++;
  });
  assert(set.size == 11);
  assert(i == 111);

  set.forEach((value1: i32, value2: i32, aset: Set<i32>): void => {
    aset.delete(value1);
  });
  assert(set.size == 0);
}
testForEach();
