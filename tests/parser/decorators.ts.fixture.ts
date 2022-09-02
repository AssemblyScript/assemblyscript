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
class A {
  @operator("==")
  eq(a: A): A {
    return a;
  }
  @operator.binary("!=")
  ne(_: A): A {
    return new A();
  }
  @operator.prefix("!")
  not(): i32 {
    return 0;
  }
}
class B {
  @operator.prefix(1)
  not(): bool {
    return true;
  }
  @operator([1, 2, 3])
  ne(_: B): bool {
    return true;
  }
  @operator("==", "!=")
  many(_: B): bool {
    return true;
  }
  @operator()
  empty(_: B): bool {
    return true;
  }
  @operator
  none(_: B): bool {
    return true;
  }
}
class C {
  @operator("==")
  eq(a: C, _: C): bool {
    return true;
  }
  @operator("!=")
  ne(): bool {
    return true;
  }
  @operator("==")
  static eq1(a: C, b: C, c: C): bool {
    return true;
  }
  @operator("!=")
  static ne2(a: C): bool {
    return true;
  }
}
// ERROR 238: "Only 'bool' accepted for return type of relational operators" in decorators.ts(23,29+1)
// ERROR 238: "Only 'bool' accepted for return type of relational operators" in decorators.ts(24,36+1)
// ERROR 238: "Only 'bool' accepted for return type of relational operators" in decorators.ts(25,32+3)
// ERROR 1141: "String literal expected." in decorators.ts(30,20+1)
// ERROR 1141: "String literal expected." in decorators.ts(31,13+9)
// ERROR 2554: "Expected 1 arguments, but got 2." in decorators.ts(32,3+21)
// ERROR 2554: "Expected 1 arguments, but got 0." in decorators.ts(33,3+11)
// ERROR 2554: "Expected 1 arguments, but got 0." in decorators.ts(34,3+9)
// ERROR 2554: "Expected 1 arguments, but got 2." in decorators.ts(40,21+18)
// ERROR 2554: "Expected 1 arguments, but got 0." in decorators.ts(42,21+8)
// ERROR 2554: "Expected 2 arguments, but got 3." in decorators.ts(44,29+24)
// ERROR 2554: "Expected 2 arguments, but got 1." in decorators.ts(45,29+12)
