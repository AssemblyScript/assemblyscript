import "allocator/arena";

class A {
  a: i32 = 1;
  constructor() {
    assert(this.a == 1);
  }
}

class B extends A {
  // a: i32 = 3; // FIXME: currently duplicate identifier
  b: i32 = 2;
  constructor() {
    super();
    assert(this.a == 1);
    assert(this.b == 2);
  }
}

function test1(): void {
  var b = new B();
  assert(b.a == 1);
  assert(b.b == 2);
}

test1();

class C {
  a: i32 = 1;
}

class D extends C {
  b: i32 = 2;
  constructor() {
    super();
    assert(this.a == 1);
    assert(this.b == 2);
  }
}

function test2(): void {
  var d = new D();
  assert(d.a == 1);
  assert(d.b == 2);
}

test2();

class E {
  a: i32 = 1;
  constructor() {
    assert(this.a == 1);
  }
}

class F extends E {
  b: i32 = 2;
}

function test3(): void {
  var f = new F();
  assert(f.a == 1);
  assert(f.b == 2);
}

test3();

class G {
  a: i32 = 1;
  constructor() {
    // no access to this
  }
}

class H extends G {
  b: i32 = 2;
}

function test4(): void {
  var h = new H();
  assert(h.a == 1);
  assert(h.b == 2);
}

test4();
