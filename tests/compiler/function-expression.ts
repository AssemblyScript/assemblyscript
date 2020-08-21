var f1 = function(a: i32): i32 {
  return a;
};
assert(f1(1) == 1);

var f2 = (a: i32): i32 => {
  return a;
};
assert(f2(2) == 2);

var f3 = function someName(): void {
};
f3();

var f4 = (): i32 => 1;
assert(f4() == 1);

function testOmitted(fn: (a: i32, b: i32) => i32): i32 {
  return fn(1, 2);
}
assert(testOmitted((a, b) => a + b) == 3);
assert(testOmitted(a => a) == 1);
assert(testOmitted(() => 42) == 42);

function testOmittedReturn1(): (a: i32, b: i32) => i32 {
  return (a, b) => a + b;
}
function testOmittedReturn2(): (a: i32, b: i32) => i32 {
  return a => a;
}
function testOmittedReturn3(): (a: i32, b: i32) => i32 {
  return () => 42;
}
assert(testOmittedReturn1()(1, 2) == 3);
assert(testOmittedReturn2()(1, 2) == 1);
assert(testOmittedReturn3()(1, 2) == 42);

function testNullable(b: boolean): (() => i32) | null {
  if (b) {
    return (): i32 => 1;
  } else {
    return null;
  }
}
assert(testNullable(false) == null);

// see: https://github.com/AssemblyScript/assemblyscript/issues/1289

var globalFunc: () => (x: i32) => i32;
function testGlobal(): void {
  globalFunc = (): (x:i32) => i32 => {
    let myFunc = (x: i32): i32 => {
      return 24 + x;
    };
    return myFunc;
  };
  assert(globalFunc()(1) == 25);
}
testGlobal();

function testLocal(): void {
  let localFunc = (): (x:i32) => i32 => {
    let myFunc = (x: i32): i32 => {
      return 24 + x;
    };
    return myFunc;
  };
  assert(localFunc()(1) == 25);
}
testLocal();

class FieldClass {
  constructor(public fieldFunc: () => (x: i32) => i32) {}
}
function testField(): void {
  let fieldInst = new FieldClass((): (x:i32) => i32 => {
    let myFunc = (x: i32): i32 => {
      return 24 + x;
    };
    return myFunc;
  });
  assert(fieldInst.fieldFunc()(1) == 25);
}
testField();
