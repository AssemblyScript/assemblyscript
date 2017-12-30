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
