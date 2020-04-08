var which: string = "";

class A {
  a<T>(a: T): void { // virtual
    which = "A";
  }
}

class B extends A {
  a<T>(a: T): void { // virtual + overload
    which = "B";
  }
}

// Should call the overload
var a: A = new B();
a.a<i32>(1);
assert(which == "B");

class C extends B {
  a<T>(a: T): void { // overload
    super.a(a);
    assert(which == "B");
    which = "C";
  }
}

// Should call non-virtual super
var c = new C();
c.a<i32>(1);
assert(which == "C");

class D extends B {
  // inherits B's
}

// Should call inherited overload
a = new D();
a.a<i32>(1);
assert(which == "B");

class E extends D {
  // inherits B's
}

// Should still call inherited overload
a = new E();
a.a<i32>(1);
assert(which == "B");

class F extends E {
  a<T>(a: T): void { // overload
    which = "F";
  }
}

// Should no longer call inherited overload
a = new F();
a.a<i32>(1);
assert(which == "F");

interface IA {
  foo(): void;
}

class IB implements IA {
  foo(): void {
    which = "IB";
  }
}

var ia: IA = new IB();
ia.foo();
assert(which == "IB");
