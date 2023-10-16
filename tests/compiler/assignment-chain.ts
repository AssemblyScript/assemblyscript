class A {
  x: i64 = 0;
  y: i64 = 0;
}

export function foo(a: A): void {
  a.x = a.y = 1;
}
