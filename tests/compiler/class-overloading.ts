var itWorks = false;

class Foo {
  a<T>(a: T): void { // called
    assert(false);
  }
}

class Bar extends Foo {
  a<T>(a: T): void { // what becomes called
    itWorks = true;
  }
}

class Baz extends Bar {
  a<T>(a: T): void { // not virtual
    assert(false);
  }
}

new Baz();
var foo: Foo = new Bar();
foo.a<i32>(1);
assert(itWorks);
