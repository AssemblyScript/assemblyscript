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

// forEach
var set = new Set<i32>();
for (let k: i32 = 0; k < 10; ++k) {
  set.add(k);
}
set.add(124);
set.delete(124);
assert(set.size == 10);
var i: i32 = 0;
set.forEach((value1: i32, value2: i32, aset: Set<i32>): void => {
  assert(value1 == value2);
  assert(i == value1);
  i++;
});
assert(i == 10);

i = 0;
set.forEach((value1: i32, value2: i32, aset: Set<i32>): void => {
  aset.add(11);
  i++;
});
assert(set.size == 11);
assert(11 == i);

i = 0;
set.forEach((value1: i32, value2: i32, aset: Set<i32>): void => {
  if (value1 == 11) {
    for (let index = 0; index < 100; index++) {
      aset.add(index + 20);
    }
  }
  i++;
});
assert(set.size == 111);
assert(set.size == i);

i = 0;
set.forEach((value1: i32, value2: i32, aset: Set<i32>): void => {
  aset.delete(value1);
  i++;
});
assert(set.size == 0);
assert(i == 111);

i = 0;
set.forEach((value1: i32, value2: i32, aset: Set<i32>): void => {
  i++;
});
