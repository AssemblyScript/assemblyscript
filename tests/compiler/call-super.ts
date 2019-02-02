import "allocator/arena";

// both constructors present

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

// this constructor present

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

// super constructor present

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

// no constructor present

class G {
  a: i32 = 1;
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

// this constructor present with fallback allocation (`this` is not accessed)

class I {
  a: i32 = 1;
  constructor() {
  }
}

class J extends I {
  b: i32 = 2;
}

function test5(): void {
  var h = new J();
  assert(h.a == 1);
  assert(h.b == 2);
}

test5();
