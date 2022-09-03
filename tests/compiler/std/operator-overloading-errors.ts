class A {
  b: string | null = "b";
  c: string = "c";
}

var a = new A;

a.b + a.c; // TS2322
a.c + a.b; // TS2322

class B {
  // Testing that the relational operators ирщгдв return bool type
  @operator("==") eq(b: B): B { return b; }
  @operator.binary("!=") ne(_: B): B { return new B; }
  @inline @operator.prefix("!") not(): i32 { return 0; }

  // Testing non-string or extra arguments in decorators
  @operator.prefix(1) not2(): bool { return true; }
  @operator([1, 2, 3]) ne2(_: B): bool { return true; }
  @operator("==", "!=") many(_: B): bool { return true; }
  @operator() empty(_: B): bool { return true; }
  @operator none(_: B): bool { return true; }

  // Error: extra argument for non-static operator
  @inline @operator(">=") ge(a: B, _: B): bool { return true; }
  // Error: none arguments for binary operator
  @operator("<=") le(): bool { return true; }
  // Error: extra argument for static operator
  @operator(">") static gt(a: B, b: B, c: B): bool { return true; }
  // Error: wrong argument count for static operator
  @operator("<") static lt(a: B): bool { return true; }

  // Error: indexed accessors with wrong args
  @operator("[]=") __set(index: i32): void {}
  @inline @operator("[]") __get(index: i32, foo: bool): i32 { return 0; }

  // Error: indexed set with non-void rturn type
  @operator("{}=") __uset(index: i32, val: i32): i32 { return 1; }
}

var b = new B;

b >= b;
b <= b;
b > b;
b < b;
b[0] = 1;
b[0];

ERROR("EOF");
