class Foo {
  static bar: i32 = 42;
  static getBar(): i32 {
    return this.bar;
  }
}

assert(Foo.getBar() == 42);
