var b: bool;

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
isNaN<f32>(1.25);
isFinite<f32>(1.25);

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
isNaN<f64>(1.25);
isFinite<f64>(1.25);

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

current_memory();
grow_memory(1);

s = current_memory();
s = grow_memory(1);

// other

select<i32>(10, 20, true);
select<i64>(100, 200, false);
select<f32>(1.25, 2.5, true);
select<f64>(12.5, 25.0, false);

i = select<i32>(10, 20, true);
I = select<i64>(100, 200, false);
f = select<f32>(1.25, 2.5, true);
F = select<f64>(12.5, 25.0, false);

if (0) unreachable();

// AS specific

sizeof<u8>();
sizeof<u16>();
sizeof<u32>();
sizeof<u64>();
sizeof<usize>();
sizeof<bool>();
sizeof<i8>();
sizeof<i16>();
sizeof<i32>();
sizeof<i64>();
sizeof<isize>();
sizeof<f32>();
sizeof<f64>();

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

assert(f32.MIN_VALUE == -3.40282347e+38);
assert(f32.MAX_VALUE == 3.40282347e+38);
assert(f32.MIN_SAFE_INTEGER == -16777215);
assert(f32.MAX_SAFE_INTEGER == 16777215);
assert(f32.EPSILON == 1.19209290e-07);
assert(f64.MIN_VALUE == -1.7976931348623157e+308);
assert(f64.MAX_VALUE == 1.7976931348623157e+308);
assert(f64.MIN_SAFE_INTEGER == -9007199254740991);
assert(f64.MAX_SAFE_INTEGER == 9007199254740991);
assert(f64.EPSILON == 2.2204460492503131e-16);
