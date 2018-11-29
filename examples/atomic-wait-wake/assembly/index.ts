
export function wait(): void {
  Atomic.wait<i64>(0, 0, -1);
}
