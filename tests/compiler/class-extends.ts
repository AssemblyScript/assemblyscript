class A {
  a: i32 = 0;
}

class B extends A {
  b: i16 = 1;
}

export function test(b: B): void {
  b.a;
  b.b;
  b.a = 2;
  b.b = 3;
}
