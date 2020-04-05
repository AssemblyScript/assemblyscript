var itWorks = false;

class Foo {
  a<T>(a: T): void { // virtual, called
    assert(false);
  }
}

class Bar extends Foo {
  a<T>(a: T): void { // virtual, what becomes called
    itWorks = true;
  }
}

class Baz extends Bar {
  a<T>(a: T): void { // not virtual
    super.a(a); // calls non-virtual Bar#a<i32>
  }
}

var baz: Baz = new Baz();
baz.a<i32>(1);

var foo: Foo = new Bar();
foo.a<i32>(1);
assert(itWorks);
