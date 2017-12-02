export function loopWhile(n: i32): void {
  while (n) {
    n = n - 1;
  }
}

export function loopWhileInWhile(n: i32): void {
  while (n) {
    n = n - 1;
    while (n) {
      n = n - 1;
    }
  }
}
