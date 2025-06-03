function doSwitch(n: i32): i32 {
  switch (n) {
    case 1: return 1;
    case 0:
    default: return 0;
    case 2:
    case 3: return 23;
  }
}
assert(doSwitch(0) == 0);
assert(doSwitch(1) == 1);
assert(doSwitch(2) == 23);
assert(doSwitch(3) == 23);
assert(doSwitch(4) == 0);

function doSwitchDefaultFirst(n: i32): i32 {
  switch (n) {
    default: return 0;
    case 1: return 1;
    case 2:
    case 3: return 23;
  }
}
assert(doSwitchDefaultFirst(0) == 0);
assert(doSwitchDefaultFirst(1) == 1);
assert(doSwitchDefaultFirst(2) == 23);
assert(doSwitchDefaultFirst(3) == 23);
assert(doSwitchDefaultFirst(4) == 0);

function doSwitchDefaultOmitted(n: i32): i32 {
  switch (n) {
    case 1: return 1;
    case 2:
    case 3: return 23;
  }
  return 0;
}
assert(doSwitchDefaultOmitted(0) == 0);
assert(doSwitchDefaultOmitted(1) == 1);
assert(doSwitchDefaultOmitted(2) == 23);
assert(doSwitchDefaultOmitted(3) == 23);
assert(doSwitchDefaultOmitted(4) == 0);

function doSwitchBreakCase(n: i32): i32 {
  switch (n) {
    case 1: break;
    default: return 2;
  }
  return 1;
}
assert(doSwitchBreakCase(0) == 2);
assert(doSwitchBreakCase(1) == 1);
assert(doSwitchBreakCase(2) == 2);

function doSwitchBreakDefault(n: i32): i32 {
  switch (n) {
    case 1: return 1;
    default: break;
  }
  return 2;
}
assert(doSwitchBreakDefault(0) == 2);
assert(doSwitchBreakDefault(1) == 1);
assert(doSwitchBreakDefault(2) == 2);

function doSwitchFallThroughCase(n: i32): i32 {
  switch (n) {
    default: return 2;
    case 1:
  }
  return 1;
}
assert(doSwitchFallThroughCase(0) == 2);
assert(doSwitchFallThroughCase(1) == 1);
assert(doSwitchFallThroughCase(2) == 2);

function doSwitchFallThroughDefault(n: i32): i32 {
  switch (n) {
    case 1: return 1;
    default:
  }
  return 2;
}
assert(doSwitchFallThroughDefault(0) == 2);
assert(doSwitchFallThroughDefault(1) == 1);
assert(doSwitchFallThroughDefault(2) == 2);

function doSwitchEmpty(n: i32): i32 {
  switch (n) {} // (drop n)
  return 2;
}
assert(doSwitchEmpty(0) == 2);
assert(doSwitchEmpty(1) == 2);
assert(doSwitchEmpty(2) == 2);

function doSwitchString(s: string): i32 {
  switch (s) {
    case "one": return 1;
    case "two": return 2;
    case "three": return 3;
    default: return 4;
  }
}

// these will pass regardless of whether the comparison is done by value or reference
assert(doSwitchString("one") == 1);
assert(doSwitchString("two") == 2);
assert(doSwitchString("three") == 3);
assert(doSwitchString("four") == 4);

// these would fail if the comparison was done by reference
assert(doSwitchString("o" + "n" + "e") == 1);
assert(doSwitchString("t" + "w" + "o") == 2);
assert(doSwitchString("t" + "h" + "r" + "e" + "e") == 3);
assert(doSwitchString("f" + "o" + "u" + "r") == 4);

function doSwitchNullableString(s: string | null): i32 {
  switch (s) {
    case null: return 0;
    case "one": return 1;
    case "two": return 2;
    case "three": return 3;
    default: return 4;
  }
}

// these will pass regardless of whether the comparison is done by value or reference
assert(doSwitchNullableString(null) == 0);
assert(doSwitchNullableString("one") == 1);
assert(doSwitchNullableString("two") == 2);
assert(doSwitchNullableString("three") == 3);
assert(doSwitchNullableString("four") == 4);

// these would fail if the comparison was done by reference
assert(doSwitchNullableString("o" + "n" + "e") == 1);
assert(doSwitchNullableString("t" + "w" + "o") == 2);
assert(doSwitchNullableString("t" + "h" + "r" + "e" + "e") == 3);
assert(doSwitchNullableString("f" + "o" + "u" + "r") == 4);

function doSwitchBoolean(b: bool): i32 {
  switch (b) {
    case true: return 1;
    case false: return 2;
  }
  return 0;
}

assert(doSwitchBoolean(true) == 1);
assert(doSwitchBoolean(false) == 2);

function doSwitchUInt32(n: u32): i32 {
  switch (n) {
    case 1: return 1;
    case 2: return 2;
    case 3: return 3;
    default: return 0;
  }
}
assert(doSwitchUInt32(0) == 0);
assert(doSwitchUInt32(1) == 1);
assert(doSwitchUInt32(2) == 2);
assert(doSwitchUInt32(3) == 3);
assert(doSwitchUInt32(4) == 0);

enum Foo {
  A = 1,
  B = 2,
  C = 3,
  D = 4,
}

function doSwitchEnum(n: Foo): i32 {
  switch (n) {
    case Foo.A: return 1;
    case Foo.B: return 2;
    case Foo.C: return 3;
    default: return 0;
  }
}
assert(doSwitchEnum(Foo.A) == 1);
assert(doSwitchEnum(Foo.B) == 2);
assert(doSwitchEnum(Foo.C) == 3);
assert(doSwitchEnum(Foo.D) == 0);

function doSwitchUint8(n: u8): i32 {
  switch (n) {
    case 1: return 1;
    case 2: return 2;
    case 3: return 3;
    default: return 0;
  }
}
assert(doSwitchUint8(0) == 0);
assert(doSwitchUint8(1) == 1);
assert(doSwitchUint8(2) == 2);
assert(doSwitchUint8(3) == 3);
assert(doSwitchUint8(4) == 0);

function doSwitchFloat(n: f32): i32 {
  switch (n) {
    case 1.0: return 1;
    case 2.0: return 2;
    default: return 0;
  }
}
assert(doSwitchFloat(0.0) == 0);
assert(doSwitchFloat(1.0) == 1);
assert(doSwitchFloat(2.0) == 2);

function doSwitchInt64(n: i64): i32 {
  switch (n) {
    case (<i64>1): return 1;
    case (<i64>2): return 2;
    default: return 0;
  }
}
assert(doSwitchInt64(0) == 0);
assert(doSwitchInt64(1) == 1);
assert(doSwitchInt64(2) == 2);

function doSwitchUInt64(n: u64): i32 {
  const one: u64 = 1;
  const two: u64 = 2;
  switch (n) {
    case one: return 1;
    case two: return 2;
    default: return 0;
  }
}
assert(doSwitchUInt64(0) == 0);
assert(doSwitchUInt64(1) == 1);
assert(doSwitchUInt64(2) == 2);


// class members should switch like any other expression
class FooClass {
  value: i32;

  constructor(value: i32) {
    this.value = value;
  }
}

function doSwitchClassMember(foo: FooClass): i32 {
  switch (foo.value) {
    case 1: return 1;
    case 2: return 2;
    default: return 3;
  }
}
assert(doSwitchClassMember(new FooClass(1)) == 1);
assert(doSwitchClassMember(new FooClass(2)) == 2);
assert(doSwitchClassMember(new FooClass(3)) == 3);


// class instances switch using reference equality by default
const foo1 = new FooClass(1);
const foo2 = new FooClass(2);
function doSwitchClassInstance(foo: FooClass): i32 {
  switch (foo) {
    case foo1: return 1;
    case foo2: return 2;
    default: return 3;
  }
}
assert(doSwitchClassInstance(foo1) == 1);
assert(doSwitchClassInstance(foo2) == 2);
assert(doSwitchClassInstance(new FooClass(1)) == 3);

// class instances can switch using value equality with an operator overload
class BarClass {
  value: i32;

  constructor(value: i32) {
    this.value = value;
  }

  @operator("==") private static __eq(left: BarClass | null, right: BarClass | null): bool {
    if (changetype<usize>(left) == changetype<usize>(right)) return true;
    if (!left || !right) return false;
    return left.value == right.value;
  }
}

function doSwitchClassInstanceWithOverload(foo: BarClass | null): i32 {
  switch (foo) {
    case null: return 0;
    case new BarClass(1): return 1;
    case new BarClass(2): return 2;
    default: return 3;
  }
}
assert(doSwitchClassInstanceWithOverload(null) == 0);
assert(doSwitchClassInstanceWithOverload(new BarClass(1)) == 1);
assert(doSwitchClassInstanceWithOverload(new BarClass(2)) == 2);
assert(doSwitchClassInstanceWithOverload(new BarClass(3)) == 3);
