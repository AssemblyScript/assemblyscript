function increment(x: i32): i32 {
  assert(x !== 1234);
  return x + 1;
}

for (let i = 0; i < 10; i = increment(i)) {
  let i = 1234;
}

export function init(): void {
  let not_unassigned: i32;
  for (; ; not_unassigned) {
    not_unassigned = 0;
  }
}
