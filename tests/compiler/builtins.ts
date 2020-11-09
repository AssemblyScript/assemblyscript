var b: bool;
class C {}

// type checks

assert(isInteger<i32>());
assert(!isInteger<f32>());
assert(isFloat<f32>());
assert(!isFloat<i32>());
assert(isReference<string>());
assert(!isReference<usize>());
assert(isArray<i32[]>());
assert(!isArray<usize>());
assert(isArrayLike<i32[]>());
assert(isArrayLike<string>());
assert(isArrayLike<Uint8Array>());
assert(!isArrayLike<i32>());
assert(isFunction<() => void>());
assert(!isFunction<u32>());
assert(isNullable<C | null>());
assert(!isNullable<C>());

assert(isInteger(<i32>1));
assert(!isInteger(<f32>1));
assert(isFloat(<f32>1));
assert(!isFloat(<i32>1));
assert(isReference(changetype<string>(0)));
assert(!isReference(changetype<usize>(0)));
assert(isString(""));
assert(isString("abc"));
assert(!isString(1));
assert(isArray(changetype<i32[]>(0)));
assert(isArrayLike(changetype<i32[]>(0)));
assert(isArrayLike(changetype<string>(0)));
assert(isArrayLike(changetype<Uint8Array>(0)));
assert(!isArray(changetype<usize>(0)));
assert(isFunction(changetype<() => void>(0)));
assert(!isFunction(changetype<u32>(0)));
assert(isNullable(changetype<C | null>(0)));
assert(!isNullable(changetype<C>(0)));

// evaluation

assert(isDefined(b));
assert(!isDefined(c));
assert(isConstant(1));
assert(!isConstant(b));

// small integers
var l: i8;
l = add<i8>(1, 2); assert(l == 3);
l = sub<i8>(2, 1); assert(l == 1);
l = mul<i8>(1, 2); assert(l == 2);
l = div<i8>(6, 2); assert(l == 3);

var v: u8;
v = rotl<u8>(<u8>0b10001111, 3); assert(v == 0b01111100);
v = rotr<u8>(<u8>0b10101010, 1); assert(v == 0b01010101);

// integers

var i: i32;

clz<i32>(1);
ctz<i32>(1);
popcnt<i32>(1);
rotl<i32>(1, 1);
rotr<i32>(1, 1);
abs<i32>(-42);
max<i32>(1, 2);
min<i32>(1, 2);
add<i32>(1, 2);
sub<i32>(2, 1);
mul<i32>(1, 2);
div<i32>(6, 2);

i = clz<i32>(1);
i = ctz<i32>(1);
i = popcnt<i32>(1);
i = rotl<i32>(1, 1);
i = rotr<i32>(1, 1);
i = abs<i32>(-42); assert(i == 42);
i = max<i32>(1, 2); assert(i == 2);
i = min<i32>(1, 2); assert(i == 1);
i = add<i32>(1, 2); assert(i == 3);
i = sub<i32>(2, 1); assert(i == 1);
i = mul<i32>(2, 3); assert(i == 6);
i = div<i32>(6, 2); assert(i == 3);
var I: i64;

clz<i64>(1);
ctz<i64>(1);
popcnt<i64>(1);
rotl<i64>(1, 1);
rotr<i64>(1, 1);
abs<i64>(-42);

I = clz<i64>(1);
I = ctz<i64>(1);
I = popcnt<i64>(1);
I = rotl<i64>(1, 1);
I = rotr<i64>(1, 1);
I = abs<i64>(-42); assert(I == 42);
I = max<i64>(1, 2); assert(I == 2);
I = min<i64>(1, 2); assert(I == 1);
I = add<i64>(1, 2); assert(I == 3);
I = sub<i64>(2, 1); assert(I == 1);
I = mul<i64>(2, 3); assert(I == 6);
I = div<i64>(6, 2); assert(I == 3);

// floats

var f: f32;

<f32>NaN;
<f32>Infinity;
abs<f32>(1.25);
ceil<f32>(1.25);
copysign<f32>(1.25, 2.5);
floor<f32>(1.25);
max<f32>(1.25, 2.5);
min<f32>(1.25, 2.5);
nearest<f32>(1.25);
sqrt<f32>(1.25);
trunc<f32>(1.25);
assert(isNaN<f32>(1.25) == false);
assert(isNaN<f32>(NaN) == true);
assert(isFinite<f32>(1.25) == true);
assert(isFinite<f32>(Infinity) == false);
assert(isFinite<f32>(-Infinity) == false);
assert(isFinite<f32>(NaN) == false);

f = NaN;
f = Infinity;
f = abs<f32>(1.25);
f = ceil<f32>(1.25);
f = copysign<f32>(1.25, 2.5);
f = floor<f32>(1.25);
f = add<f32>(1.5, 2.5); assert(f == 4.0);
f = sub<f32>(2.5, 1.5); assert(f == 1.0);
f = mul<f32>(1.5, 2.0); assert(f == 3.0);
f = div<f32>(1.5, 0.5); assert(f == 3.0);
f = max<f32>(1.25, 2.5); assert(f == 2.5);
f = min<f32>(1.25, 2.5);
f = nearest<f32>(1.25);
f = sqrt<f32>(1.25);
f = trunc<f32>(1.25);
b = isNaN<f32>(1.25);
b = isFinite<f32>(1.25);

var F: f64;

<f64>NaN;
<f64>Infinity;
NaN;
Infinity;
abs<f64>(1.25);
ceil<f64>(1.25);
copysign<f64>(1.25, 2.5);
floor<f64>(1.25);
add<f64>(1.5, 2.5);
sub<f64>(2.5, 1.5);
mul<f64>(1.5, 2.0);
div<f64>(1.5, 0.5);
max<f64>(1.25, 2.5);
min<f64>(1.25, 2.5);
nearest<f64>(1.25);
sqrt<f64>(1.25);
trunc<f64>(1.25);
assert(isNaN<f64>(1.25) == false);
assert(isNaN<f64>(NaN) == true);
assert(isFinite<f64>(1.25) == true);
assert(isFinite<f64>(Infinity) == false);
assert(isFinite<f64>(-Infinity) == false);
assert(isFinite<f64>(NaN) == false);

F = NaN;
F = Infinity;
F = abs<f64>(1.25);
F = ceil<f64>(1.25);
F = copysign<f64>(1.25, 2.5);
F = floor<f64>(1.25);
F = add<f64>(1.5, 2.5); assert(F == 4.0);
F = sub<f64>(2.5, 1.5); assert(F == 1.0);
F = mul<f64>(1.5, 2.0); assert(F == 3.0);
F = div<f64>(1.5, 0.5); assert(F == 3.0);
F = max<f64>(1.25, 2.5);
F = min<f64>(1.25, 2.5);
F = nearest<f64>(1.25);
F = sqrt<f64>(1.25);
F = trunc<f64>(1.25);
b = isNaN<f64>(1.25);
b = isFinite<f64>(1.25);

// prefer right type if left is a numeric literal

F = min(0, 1.0);
f = max(0, f);
F = add(0, 1.5);
f = add(0, f);
F = sub(2, 1.0);
f = sub(2, f);
F = mul(2, 1.0);
f = mul(2, f);
F = div(2, 1.0);
f = div(2, f);

// load and store

i = load<i32>(8); store<i32>(8, i);
store<i32>(8, load<i32>(8));
I = load<i64>(8); store<i64>(8, I);
store<i64>(8, load<i64>(8));
f = load<f32>(8); store<f32>(8, f);
store<f32>(8, load<f32>(8));
F = load<f64>(8); store<f64>(8, F);
store<f64>(8, load<f64>(8));

const constantOffset: usize = 8;
i = load<i32>(0, constantOffset); store<i32>(0, i, constantOffset);
store<i32>(0, load<i32>(0, constantOffset), constantOffset);
I = load<i64>(0, constantOffset); store<i64>(0, I, constantOffset);
store<i64>(0, load<i64>(0, constantOffset), constantOffset);
f = load<f32>(0, constantOffset); store<f32>(0, f, constantOffset);
store<f32>(0, load<f32>(0, constantOffset), constantOffset);
F = load<f64>(0, constantOffset); store<f64>(0, F, constantOffset);
store<f64>(0, load<f64>(0, constantOffset), constantOffset);

// load and store smaller types

i = load<i8>(8);
i = load<i16>(8);
i = load<i32>(8);

i = load<u8>(8);
i = load<u16>(8);
i = load<u32>(8);

var u: u32;
u = load<u8>(8);
u = load<u16>(8);
u = load<u32>(8);

u = load<i8>(8);
u = load<i16>(8);
u = load<i32>(8);

I = load<i8>(8);
I = load<i16>(8);
I = load<i32>(8);
I = load<i64>(8);

var U: u64;
U = load<u8>(8);
U = load<u16>(8);
U = load<u32>(8);
U = load<u64>(8);

store<i8>(8, <i32>1);
store<i16>(8, <i32>1);
store<i32>(8, <i32>1);

store<i8>(8, <i64>1);
store<i16>(8, <i64>1);
store<i32>(8, <i64>1);
store<i64>(8, <i64>1);

store<i64>(8, <i32>1); // must extend

// reinterpretation

reinterpret<i32>(1.25);
reinterpret<f32>(25);
reinterpret<i64>(1.25);
reinterpret<f64>(25);

i = reinterpret<i32>(1.25);
f = reinterpret<f32>(25);
I = reinterpret<i64>(1.25);
F = reinterpret<f64>(25);

// host

var s: usize;

memory.size();
memory.grow(1); // also necessary for load/store tests below

s = memory.size();
s = memory.grow(1);

// other

select<i32>(10, 20, true);
select<i64>(100, 200, false);
select<f32>(1.25, 2.5, true);
select<f64>(12.5, 25.0, false);

i = select<i32>(10, 20, true);
I = select<i64>(100, 200, false);
f = select<f32>(1.25, 2.5, true);
F = select<f64>(12.5, 25.0, false);

if (!i) unreachable();

var fn = function(a: i32, b: i32): i32 { return a + b; };
assert(fn(1,2) == 3);
assert(5 == call_indirect(fn.index, 2, 3)); // ctxType i32
assert(fn.name == "");
assert(fn.length == 2);
assert(changetype<(a: i32, b: i32) => i32>(fn).length == 2);
assert(fn.toString() == "function() { [native code] }");

// AS specific

assert(sizeof<u8>() == 1);
assert(sizeof<u16>() == 2);
assert(sizeof<u32>() == 4);
assert(sizeof<u64>() == 8);
sizeof<usize>();
assert(sizeof<bool>() == 1);
assert(sizeof<i8>() == 1);
assert(sizeof<i16>() == 2);
assert(sizeof<i32>() == 4);
assert(sizeof<i64>() == 8);
sizeof<isize>();
assert(sizeof<f32>() == 4);
assert(sizeof<f64>() == 8);

assert(alignof<u8>() == 0);
assert(alignof<u16>() == 1);
assert(alignof<u32>() == 2);
assert(alignof<u64>() == 3);
assert(alignof<bool>() == 0);

class Foo<T> { a: T; b: T; }
assert(offsetof<Foo<i32>>("a") == 0);
assert(offsetof<Foo<i32>>("b") == 4);
assert(offsetof<Foo<i16>>("a") == 0);
assert(offsetof<Foo<i16>>("b") == 2);
class Bar extends Foo<i64> {}
assert(offsetof<Bar>("a") == 0);
assert(offsetof<Bar>("b") == 8);

assert(NaN != NaN);
assert(isNaN<f32>(NaN));
assert(isNaN<f64>(NaN));
assert(!isFinite<f32>(NaN));
assert(!isFinite<f32>(Infinity));
assert(!isFinite<f64>(NaN));
assert(!isFinite<f64>(Infinity));
assert(isFinite<f32>(0));
assert(isFinite<f64>(0));

// imported

export function test(): void {
  // cannot be interpreted
  // parseInt("01");
  // parseInt("1", 10);
  // parseFloat("1.0");
}

// limits

assert(i8.MIN_VALUE == <i8>0x80);
assert(i8.MAX_VALUE == 0x7f);
assert(i16.MIN_VALUE == <i16>0x8000);
assert(i16.MAX_VALUE == 0x7fff);
assert(i32.MIN_VALUE == <i32>0x80000000);
assert(i32.MAX_VALUE == 0x7fffffff);
assert(i64.MIN_VALUE == <i64>0x8000000000000000);
assert(i64.MAX_VALUE == 0x7fffffffffffffff);

assert(u8.MIN_VALUE == 0);
assert(u8.MAX_VALUE == 0xff);
assert(u16.MIN_VALUE == 0);
assert(u16.MAX_VALUE == 0xffff);
assert(u32.MIN_VALUE == 0);
assert(u32.MAX_VALUE == 0xffffffff);
assert(u64.MIN_VALUE == 0);
assert(u64.MAX_VALUE == 0xffffffffffffffff);
assert(bool.MIN_VALUE == 0); assert(bool.MIN_VALUE == false);
assert(bool.MAX_VALUE == 1); assert(bool.MAX_VALUE == true);

assert(f32.MIN_NORMAL_VALUE == 1.1754943508222875e-38);
assert(f32.MIN_VALUE == 1.401298464324817e-45);
assert(f32.MAX_VALUE == 3.40282347e+38);
assert(f32.MIN_SAFE_INTEGER == -16777215);
assert(f32.MAX_SAFE_INTEGER == 16777215);
assert(f32.EPSILON == 1.19209290e-07);

assert(f64.MIN_NORMAL_VALUE == 2.2250738585072014e-308);
assert(f64.MIN_VALUE == 5e-324);
assert(f64.MAX_VALUE == 1.7976931348623157e+308);
assert(f64.MIN_SAFE_INTEGER == -9007199254740991);
assert(f64.MAX_SAFE_INTEGER == 9007199254740991);
assert(f64.EPSILON == 2.2204460492503131e-16);

// inline-assembler

f32.abs(1.0);
f64.abs(1.0);

f32.ceil(1.0);
f64.ceil(1.0);

i32.clz(1);
i64.clz(1);

f32.copysign(1.0, 2.0);
f64.copysign(1.0, 2.0);

i32.ctz(1);
i64.ctz(1);

f32.floor(1.0);
f64.floor(1.0);

f32.nearest(1.0);
f64.nearest(1.0);

i32.popcnt(1);
i64.popcnt(1);

i32.add(1, 2);
i64.add(1, 2);
i32.sub(2, 1);
i64.sub(2, 1);
i32.mul(3, 1);
i64.mul(3, 1);
i32.div_s(4, 1);
i32.div_u(4, 1);
i64.div_s(5, 1);
i64.div_u(5, 1);

i32.load8_s(8);
i32.load8_u(8);
i32.load16_s(8);
i32.load16_u(8);
i32.load(8);
i64.load8_s(8);
i64.load8_u(8);
i64.load16_s(8);
i64.load16_u(8);
i64.load32_s(8);
i64.load32_u(8);
i64.load(8);
f32.load(8);
f64.load(8);

f32.add(1.0, 2.0);
f64.add(1.0, 2.0);
f32.sub(2.0, 1.0);
f64.sub(2.0, 1.0);
f32.mul(1.0, 2.0);
f64.mul(1.0, 2.0);
f32.div(1.5, 0.5);
f64.div(1.5, 0.5);

f32.max(1.0, 2.0);
f64.max(1.0, 2.0);

f32.min(1.0, 2.0);
f64.min(1.0, 2.0);

i32.reinterpret_f32(1.0);
i64.reinterpret_f64(1.0);
f32.reinterpret_i32(1);
f64.reinterpret_i64(1);

i32.rotl(1, 2);
i64.rotl(1, 2);

i32.rotr(1, 2);
i64.rotr(1, 2);

f32.sqrt(1.0);
f64.sqrt(1.0);

i32.store8(8, 1);
i32.store16(8, 1);
i32.store(8, 1);
i64.store8(8, 1);
i64.store16(8, 1);
i64.store32(8, 1);
i64.store(8, 1);
f32.store(8, 1.0);
f64.store(8, 1.0);

f32.trunc(1.0);
f64.trunc(1.0);

assert(Atomics.isLockFree(0) == false);
assert(Atomics.isLockFree(1) == true);
assert(Atomics.isLockFree(2) == true);
assert(Atomics.isLockFree(3) == false);
assert(Atomics.isLockFree(4) == true);
assert(Atomics.isLockFree(5) == false);
assert(Atomics.isLockFree(8) == false);

{
  let a = idof<() => void>();
  let b = idof<() => void>();
  let c = idof<(a: u32) => void>();
  let d = idof<(val: C) => C>();
  let e = idof<(val2: C) => C>();
  trace("signatures", 5, a, b, c, d, e);

  assert(a == b, "testing");
  assert(a != c);
  assert(c == idof<(b: u32) => void>());
  assert(d == e);
}

{
  assert(nameof<() => void>() == "Function");
  assert(nameof<(a: C) => i32>() == "Function");
  assert(nameof<C>() == "C");
  assert(nameof<string>() == "String");
  assert(nameof<bool>() == "bool");
  assert(nameof<i8>() == "i8");
  assert(nameof<u8>() == "u8");
  assert(nameof<i16>() == "i16");
  assert(nameof<u16>() == "u16");
  assert(nameof<i32>() == "i32");
  assert(nameof<u32>() == "u32");
  assert(nameof<f32>() == "f32");
  assert(nameof<i64>() == "i64");
  assert(nameof<u64>() == "u64");
  assert(nameof<f64>() == "f64");
  assert(nameof<isize>() == "isize");
  assert(nameof<usize>() == "usize");
  assert(nameof<void>() == "void");
  assert(nameof("some value") == "String");
  assert(nameof((): void => {}) == "Function");
}

assert(isVoid<void>());
assert(!isVoid<i8>());
assert(!isVoid<u8>());
assert(!isVoid<i16>());
assert(!isVoid<u16>());
assert(!isVoid<i32>());
assert(!isVoid<u32>());
assert(!isVoid<f32>());
assert(!isVoid<i64>());
assert(!isVoid<u64>());
assert(!isVoid<f64>());
assert(!isVoid<C>());
assert(!isVoid<string>());
// assert(!isVoid<v128>());

assert(lengthof<() => void>() == 0);
assert(lengthof<(a: i32) => void>() == 1);
assert(lengthof<(a: i32, b: C) => void>() == 2);
assert(lengthof<(a: i32, b: C, c: string) => void>() == 3);
assert(lengthof((a: i32, b: i32, c: i32, d: i32): void => {}) == 4);

assert(isInteger<ReturnType<() => i32>>());
assert(isInteger<returnof<() => i32>>());
assert(isManaged<returnof<() => C>>());
assert(isManaged<ReturnType<() => C>>());

// Issue #1537: Make sure temp. locals are not confused

function max3(a: i32, b: i32, c: i32): i32 {
  return max(a, max(b, c));
}
assert(max3(3, 2, 1) == 3);

function min3(a: i32, b: i32, c: i32): i32 {
  return min(a, min(b, c));
}
assert(min3(1, 2, 3) == 1);

function rotl3(a: i8, b: i8, c: i8): i32 {
  return rotl(a, rotl(b, c));
}
assert(rotl3(3, 2, 1) == 48);

function rotr3(a: i8, b: i8, c: i8): i32 {
  return rotr(a, rotr(b, c));
}
assert(rotr3(48, 8, 1) == 3);
