import "allocator/arena";

class A {
  a: i32 = 1;
  constructor() {
  }
}

class B extends A {
  b: i32 = 2;
  constructor() {
    super();
    assert(this.a == 1);
    assert(this.b == 2);
  }
}

function test(): void {
  var b = new B();
  assert(b.a == 1);
  assert(b.b == 2);
}

test();
