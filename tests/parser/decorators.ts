@global
@unmanaged
@final
@inline
@external("a", "b")
@custom
function a(): void {}

@operator("+")
function b(): void {}

@operator.binary("-")
function c(): void {}

@operator.prefix("~")
function d(): void {}

@operator.postfix("++")
function e(): void {}

// Checks relational operators return boolean type
class A {
  @operator("==") eq(a: A): A { return a; }
  @operator.binary("!=") ne(_: A): A { return new A; }
  @operator.prefix("!") not(): i32 { return 0; }
}

// Checks relational operators have proper string arguments
class B {
  @operator.prefix(1) not(): bool { return true; }
  @operator([1, 2, 3]) ne(_: B): bool { return true; }
  @operator("==", "!=") many(_: B): bool { return true; }
  @operator() empty(_: B): bool { return true; }
  @operator none(_: B): bool { return true; }
}

Checks relational operators have right arity
class C {
  // Error: extra argument for non-static operator
  @operator("==") eq(a: C, _: C): bool { return true; }
  // Error: none arguments for binary operator
  @operator("!=") ne(): bool { return true; }

  @operator("==") static eq1(a: C, b: C, c: C): bool { return true; }
  @operator("!=") static ne2(a: C): bool { return true; }
}
