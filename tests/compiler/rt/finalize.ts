class FinalizationRegistry {
  private map: Map<usize,string> = new Map();

  constructor(
    private fn: (value: string) => void
  ) {}

  register<U>(target: U, value: string): void {
    if (!isReference<U>()) throw new Error("not an object");
    this.map.set(changetype<usize>(target), value);
  }

  @unsafe finalize(ptr: usize): void {
    var map = this.map;
    if (map.has(ptr)) {
      let value = map.get(ptr);
      this.fn(value);
      map.delete(ptr);
    }
  }
}

var registry = new FinalizationRegistry(value => {
  trace("finalize: " + value);
});

@global function __finalize(ptr: usize): void {
  registry.finalize(ptr);
}

function testSimple(): void {
  var a = new Array<i32>(0);
  registry.register(a, "testSimple~a");
}

testSimple();

class Foo {
  bar: Bar;
}
class Bar {
  foo: Foo;
}

function testCyclic(): void {
  var foo = new Foo();
  var bar = new Bar();
  foo.bar = bar;
  bar.foo = foo;
  registry.register(foo, "testCyclic~foo");
  registry.register(bar, "testCyclic~bar");
}

testCyclic();
__collect();
