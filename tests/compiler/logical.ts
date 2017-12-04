0 && unreachable();
0.0 && unreachable();
1 || unreachable();
1.0 || unreachable();

1 && 2 || unreachable();
1.0 && 2.0 || unreachable();

let i: i32;

i = 1 && 2;
if (i != 2)
  unreachable();

i = 0 || 1;
if (i != 1)
  unreachable();

let I: i64;

I = 1 && 2;
if (I != 2)
  unreachable();

I = 0 || 1;
if (I != 1)
  unreachable();

let f: f32;

f = 1.0 && 2.0;
if (f != 2.0)
  unreachable();

f = 0.0 || 1.0;
if (f != 1.0)
  unreachable();

let F: f64;

F = 1.0 && 2.0;
if (F != 2.0)
  unreachable();

F = 0.0 || 1.0;
if (F != 1.0)
  unreachable();
