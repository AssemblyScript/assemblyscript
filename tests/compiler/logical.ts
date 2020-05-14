0 && unreachable();
0.0 && unreachable();
1 || unreachable();
1.0 || unreachable();

1 && 2 || unreachable();
1.0 && 2.0 || unreachable();

var i: i32;

i = 1 && 2;
assert(i == 2);

i = 0 || 1;
assert(i == 1);

var I: i64;

I = 1 && 2;
assert(I == 2);

I = 0 || 1;
assert(I == 1);

var f: f32;

f = 1.0 && 2.0;
assert(f == 2.0);

f = 0.0 || 1.0;
assert(f == 1.0);

var F: f64;

F = 1.0 && 2.0;
assert(F == 2.0);

F = 0.0 || 1.0;
assert(F == 1.0);

// NaN is considered falseish

f = NaN as f32 || 1.0 as f32;
assert(f == 1.0);

f = 1.0 as f32 || NaN as f32;
assert(f == 1.0);

F = NaN || 1.0;
assert(F == 1.0);

F = 1.0 || NaN;
assert(F == 1.0);

f = 1.0 as f32 && NaN as f32;
assert(isNaN(f));

f = NaN as f32 && 1.0 as f32;
assert(isNaN(f));

F = 1.0 && NaN;
assert(isNaN(F));

F = NaN && 1.0;
assert(isNaN(F));

// Test shortcutting to bool on contextual bool
// see: https://github.com/AssemblyScript/assemblyscript/pull/993

function testShortcutAnd(a: i64, b: i32): bool {
  return a && b;
}
function testShortcutOr(a: i64, b: i32): bool {
  return a || b;
}
assert(testShortcutAnd(1, 1));
assert(testShortcutOr(0, 1));

// Test non-bools on contextual bool
// see: https://github.com/AssemblyScript/assemblyscript/issues/1136

class Obj {}

function testContextualBoolAnd(someObj: Obj, someInt: i32): bool {
  return someObj && someInt;
}
assert(testContextualBoolAnd(new Obj(), 1));

function testContextualBoolOr(someObj: Obj, someInt: i32): bool {
  return someObj || someInt;
}
assert(testContextualBoolOr(new Obj(), 0));
