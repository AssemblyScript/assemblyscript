declare function log(v: i32): void;

export function wait(): void {
  // Atomic.wait<i64>(0, 1, 1000);
  Atomic.wait<i64>(8, 1, -1);
  log(1);
}

// export function wake(): void {
//   // Atomic.wake<i64>(0, 1);
//   Atomic.wake<i32>(8, 1);
//   log(2);
// }
