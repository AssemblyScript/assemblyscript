class A {
  v: A | null = null;
}
class B {
  v: B | null = null;
}

export function foo(a: A, b: B): void {}