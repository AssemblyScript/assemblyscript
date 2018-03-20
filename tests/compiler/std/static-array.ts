import "allocator/arena"; // needed just because std/Array#[]= calls __grow conditionally

const i: i32[] = [1, 2];
const I: i64[] = [3, 4];
const f: f32[] = [1.5, 2.5];
const F: f64[] = [1.25, 2.25];

assert(i.length == 2);
assert(i[0] == 1);
assert(i[1] == 2);
i[0] = 2;
assert(i[0] == 2);

assert(I.length == 2);
assert(I[0] == 3);
assert(I[1] == 4);
I[0] = 4;
assert(I[0] == 4);

assert(f.length == 2);
assert(f[0] == 1.5);
assert(f[1] == 2.5);
f[0] = 2.5;
assert(f[0] == 2.5);

assert(F.length == 2);
assert(F[0] == 1.25);
assert(F[1] == 2.25);
F[0] = 2.25;
assert(F[0] == 2.25);
