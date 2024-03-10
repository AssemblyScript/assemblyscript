function increment(x: i32): i32 {
  assert(x !== 1234);
  return x + 1;
}

for (let i = 0; i < 10; i = increment(i)) {
  let i = 1234;
}