
// Should produce warnings

// always false
(!(1.0 == NaN));
(!(NaN == F32.NaN));
(!(F64.NaN == 1.0));

// always true
(1.0 != NaN);
(NaN != F32.NaN);
(f64.NaN != 1.0);

// always true
(+.0 == -.0);
(-.0 != -.0);
(-.0 == +.0);
(f32(+.0) == f32(-.0));
(f32(-.0) != f32(-.0));
(f32(-.0) == f32(+.0));
