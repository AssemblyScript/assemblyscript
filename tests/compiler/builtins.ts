let b: bool;

let i: i32;

clz<i32>(1);
ctz<i32>(1);
popcnt<i32>(1);
rotl<i32>(1, 1);
rotr<i32>(1, 1);

i = clz<i32>(1);
i = ctz<i32>(1);
i = popcnt<i32>(1);
i = rotl<i32>(1, 1);
i = rotr<i32>(1, 1);

let I: i64;

clz<i64>(1);
ctz<i64>(1);
popcnt<i64>(1);
rotl<i64>(1, 1);
rotr<i64>(1, 1);

I = clz<i64>(1);
I = ctz<i64>(1);
I = popcnt<i64>(1);
I = rotl<i64>(1, 1);
I = rotr<i64>(1, 1);

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
// reinterpret
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
// reinterpret
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
// reinterpret
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
// reinterpret
F = sqrt<f64>(1.25);
F = trunc<f64>(1.25);
b = isNaN<f64>(1.25);
b = isFinite<f64>(1.25);

let s: usize;

current_memory();
grow_memory(1);

s = current_memory();
s = grow_memory(1);
if (0) unreachable();

assert(true);

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

i = load<i32>(4);
store<i32>(4, i);
