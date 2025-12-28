interface I {
  foo(): i32;
}

class Base {
  foo(): i32 {
    return 42;
  }
}

class C extends Base implements I {}

export function test(): void {
  let i: I = new C();
  assert(i.foo() == 42);
}

test();
