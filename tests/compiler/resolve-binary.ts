// comparison
assert(
  (1 < 2).toString()
  ==
  "true"
);
assert(
  (1 > 2).toString()
  ==
  "false"
);
assert(
  (1 <= 2).toString()
  ==
  "true"
);
assert(
  (1 >= 2).toString()
  ==
  "false"
);
assert(
  (1 == 2).toString()
  ==
  "false"
);
assert(
  (1 != 2).toString()
  ==
  "true"
);

// assignment
var a: i32;
var f: f64;
assert(
  (a = 1).toString()
  ==
  "1"
);
assert(
  (a += 1).toString()
  ==
  "2"
);
assert(
  (a -= 1).toString()
  ==
  "1"
);
assert(
  (a *= 2).toString()
  ==
  "2"
);
f = 2;
assert(
  (f **= 2).toString()
  ==
  "4.0"
);
a = 4;
assert(
  (a /= 2).toString()
  ==
  "2"
);
assert(
  (a %= 3).toString()
  ==
  "2"
);
assert(
  (a <<= 1).toString()
  ==
  "4"
);
assert(
  (a >>= 1).toString()
  ==
  "2"
);
assert(
  (a >>>= 1).toString()
  ==
  "1"
);
assert(
  (a &= 3).toString()
  ==
  "1"
);
assert(
  (a |= 3).toString()
  ==
  "3"
);
assert(
  (a ^= 2).toString()
  ==
  "1"
);

// arithmetics
assert(
  (1 + 2).toString()
  ==
  "3"
);
assert(
  (1 - 2).toString()
  ==
  "-1"
);
assert(
  (1 * 2).toString()
  ==
  "2"
);
assert(
  (4 / 2).toString()
  ==
  "2"
);
assert(
  (3 % 2).toString()
  ==
  "1"
);

// pow i32 only
assert(
  (2 ** 2).toString()
  ==
  "4"
);

// pow mixed i32 and f64
assert(
  (2 ** 2.0).toString()
  ==
  "4.0"
);

// pow mixed f64 and i32
assert(
  (2.0 ** 2).toString()
  ==
  "4.0"
);

// shift
assert(
  (2 << 1).toString()
  ==
  "4"
);
assert(
  (2 >> 1).toString()
  ==
  "1"
);
assert(
  (-1 >>> 30).toString()
  ==
  "3"
);

// bitwise
assert(
  (3 & 1).toString()
  ==
  "1"
);
assert(
  (1 | 2).toString()
  ==
  "3"
);
assert(
  (1 ^ 3).toString()
  ==
  "2"
);

// logical
assert(
  (1 && 2).toString()
  ==
  "2"
);
assert(
  (0 && 2).toString()
  ==
  "0"
);
assert(
  (1 || 2).toString()
  ==
  "1"
);
assert(
  (0 || 2).toString()
  ==
  "2"
);

// overloads
class Foo {
  @operator("<")
  lt(other: Foo): bool {
    return (
      changetype<usize>(this) <
      changetype<usize>(other)
    );
  }
  @operator(">")
  gt(other: Foo): bool {
    return (
      changetype<usize>(this) >
      changetype<usize>(other)
    );
  }
  @operator("<=")
  le(other: Foo): bool {
    return (
      changetype<usize>(this) <=
      changetype<usize>(other)
    );
  }
  @operator(">=")
  ge(other: Foo): bool {
    return (
      changetype<usize>(this) >=
      changetype<usize>(other)
    );
  }
  @operator("==")
  eq(other: Foo): bool {
    return (
      changetype<usize>(this) ==
      changetype<usize>(other)
    );
  }
  @operator("!=")
  ne(other: Foo): bool {
    return (
      changetype<usize>(this) !=
      changetype<usize>(other)
    );
  }
  @operator("+")
  add(other: Foo): string {
    return "add";
  }
  @operator("-")
  static sub(a: Foo, b: Foo): string { // same for static
    return "sub";
  }
  @operator("*")
  mul(other: Foo): string {
    return "mul";
  }
  @operator("/")
  div(other: Foo): string {
    return "div";
  }
  @operator("%")
  rem(other: Foo): string {
    return "rem";
  }
  @operator("**")
  pow(other: Foo): string {
    return "pow";
  }
  self(): Foo {
    return this;
  }
}
var foo = new Foo();
assert(
  (foo < foo)
  ==
  false
);
assert(
  (foo > foo)
  ==
  false
);
assert(
  foo <= foo
  ==
  true
);
assert(
  foo >= foo
  ==
  true
);
assert(
  foo == foo
  ==
  true
);
assert(
  foo != foo
  ==
  false
);
assert(
  (foo + foo).toString()
  ==
  "add"
);
assert(
  (foo - foo).toString()
  ==
  "sub"
);
assert(
  (foo * foo).toString()
  ==
  "mul"
);
assert(
  (foo / foo).toString()
  ==
  "div"
);
assert(
  (foo % foo).toString()
  ==
  "rem"
);
assert(
  (foo ** foo).toString()
  ==
  "pow"
);

// overload with compatible compound assignment
class Bar {
  @operator("+")
  add(other: Bar): Bar {
    return other;
  }
  self(): Bar {
    return this;
  }
}
var bar = new Bar();
var bar2 = new Bar();
assert(
  (bar += bar2).self()
  ==
  bar2
);
assert(bar == bar2);

// overload with varying right type
class Baz {
  @operator("+")
  add(other: i32): i32 {
    return other;
  }
  @operator("-")
  sub(other: i32): Baz {
    return this;
  }
  @operator("*")
  static mul(left: Baz, right: i32): i32 {
    return right;
  }
  @operator("/")
  static div(left: Baz, right: i32): Baz {
    return left;
  }
}
var baz = new Baz();
assert(
  (baz + 42) == 42
);
assert(
  (baz - 42) == baz
);
assert(
  (baz * 42) == 42
);
assert(
  (baz / 42) == baz
);
