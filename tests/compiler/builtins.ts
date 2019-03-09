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
assert(isReference(changetype<string>(null)));
assert(!isReference(changetype<usize>(null)));
assert(isString("1"));
assert(!isString(1));
assert(isArray(changetype<i32[]>(null)));
assert(isArrayLike(changetype<i32[]>(null)));
assert(isArrayLike(changetype<string>(null)));
assert(isArrayLike(changetype<Uint8Array>(null)));
assert(!isArray(changetype<usize>(null)));
assert(isFunction(changetype<() => void>(null)));
assert(!isFunction(changetype<u32>(null)));
assert(isNullable(changetype<C | null>(null)));
assert(!isNullable(changetype<C>(null)));

// evaluation

assert(isDefined(b));
assert(!isDefined(c));
assert(isConstant(1));
assert(!isConstant(b));

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

i = clz<i32>(1);
i = ctz<i32>(1);
i = popcnt<i32>(1);
i = rotl<i32>(1, 1);
i = rotr<i32>(1, 1);
i = abs<i32>(-42); assert(i == 42);
i = max<i32>(1, 2); assert(i == 2);
i = min<i32>(1, 2); assert(i == 1);

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
I = min<i64>(1, 2); assert(i == 1);

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
f = max<f32>(1.25, 2.5);
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
F = max<f64>(1.25, 2.5);
F = min<f64>(1.25, 2.5);
F = nearest<f64>(1.25);
F = sqrt<f64>(1.25);
F = trunc<f64>(1.25);
b = isNaN<f64>(1.25);
b = isFinite<f64>(1.25);

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

var fn = function(a: i32, b: i32): void {};
call_indirect(fn, 1, 2);

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

// should be importable
import { isNaN as isItNaN } from "builtins";
isItNaN<f64>(1);
