export function loopDo(n: i32): void {
  do {
    n = n - 1;
  } while (n);
}

export function loopDoInDo(n: i32): void {
  do {
    n = n - 1;
    do {
      n = n - 1;
    } while (n);
  } while (n);
}
