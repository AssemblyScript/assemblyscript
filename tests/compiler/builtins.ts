let b: bool;

// integer builtins

let i: i32;

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

let I: i64;

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

// floating point builtins

let f: f32;

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

let F: f64;

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

// load and store builtins

i = load<i32>(8); store<i32>(8, i);
store<i32>(8, load<i32>(8));
I = load<i64>(8); store<i64>(8, I);
store<i64>(8, load<i64>(8));
f = load<f32>(8); store<f32>(8, f);
store<f32>(8, load<f32>(8));
F = load<f64>(8); store<f64>(8, F);
store<f64>(8, load<f64>(8));

// reinterpretation builtins

reinterpret<f32,i32>(1.25);
reinterpret<i32,f32>(25);
reinterpret<f64,i64>(1.25);
reinterpret<i64,f64>(25);

i = reinterpret<f32,i32>(1.25);
f = reinterpret<i32,f32>(25);
I = reinterpret<f64,i64>(1.25);
F = reinterpret<i64,f64>(25);

// host builtins

let s: usize;

current_memory();
grow_memory(1);

s = current_memory();
s = grow_memory(1);

// other builtins

select<i32>(10, 20, true);
select<i64>(100, 200, false);
select<f32>(1.25, 2.5, true);
select<f64>(12.5, 25.0, false);

i = select<i32>(10, 20, true);
I = select<i64>(100, 200, false);
f = select<f32>(1.25, 2.5, true);
F = select<f64>(12.5, 25.0, false);

if (0) unreachable();

// AS specific builtins

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
