var itWorks = false;

abstract class AbstractFoo {
  abstract a<T>(a: T): void;
}

class Foo extends AbstractFoo{
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

const afoo: AbstractFoo = new Bar();
afoo.a<i32>(1);
assert(itWorks);
