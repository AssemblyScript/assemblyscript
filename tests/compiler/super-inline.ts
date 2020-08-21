class Foo {
  @inline
  a(): i32 { return 1; }
}

class Bar extends Foo {
  a(): i32 { return super.a(); } // no AS228
}

var foo = new Foo();
foo.a(); // AS228

var bar = new Bar();
bar.a();
