// Global

@unsafe var g = 0; // not valid here

// Function

@unsafe function f1(): void {}
f1();

// Inline function

@unsafe @inline function f2(): void {}
f2();

// === Class members ===

class Foo {
  @unsafe constructor() {}
  @unsafe static foo: i32 = 0;
  @unsafe static bar(): void {}
  @unsafe foo: i32 = 0;
  @unsafe bar(): void {}
  @unsafe static get baz(): i32 { return 0; }
  @unsafe static set baz(i: i32) { }
  @unsafe get baz(): i32 { return 0; }
  @unsafe set baz(i: i32) { }
}

// Constructor

var foo = new Foo();

// Constructor via super

class Bar extends Foo {
  constructor() { super(); }
}

var bar = new Bar();

// Constructor via instantiate

var foo3 = instantiate<Foo>();

// Static method

Foo.bar();

// Instance method

foo.bar();

// Static field

var n1 = Foo.foo;
Foo.foo = 1;
Foo.foo++;
Foo.foo += 1;

// Instance field

var n2 = foo.foo;
foo.foo = 1;
foo.foo++;
foo.foo += 1;

// Static property

var n3 = Foo.baz;
Foo.baz = 1;
Foo.baz++;
Foo.baz += 1;

// Instance property

var n4 = foo.baz;
foo.baz = 1;
foo.baz++;
foo.baz += 1;

ERROR("EOF"); // mark end and ensure fail
