abstract class Foo {
  abstract bar(): void;
  abstract get a(): i32;
  abstract set a(a: i32);
}

new Foo(); // TS2511: Cannot create an instance of an abstract class.

class Baz extends Foo {
  // TS2515: Non-abstract class 'Baz' does not implement inherited abstract member 'bar' from 'Foo'
  // TS2515: Non-abstract class 'Baz' does not implement inherited abstract member 'a' from 'Foo'
}

new Baz();

class Qux extends Foo {
  bar(): i32 {
    return 1;
  }
  get a(): i32 { return 0; }
  set a(a: i32) {}
}

// TODO: This does not check .bar overload
var qux = new Qux();
// But this does: var qux: Foo = new Qux();
qux.bar();

ERROR("EOF");
