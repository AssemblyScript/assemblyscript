class Foo {
  static _bar: i32 = 0;

  static get bar(): i32 {
    return Foo._bar;
  }

  static set bar(bar: i32) {
    Foo._bar = bar;
  }
}

assert(Foo.bar == 0);
Foo.bar = 1;
assert(Foo.bar == 1);
assert((Foo.bar = 2) == 2);
