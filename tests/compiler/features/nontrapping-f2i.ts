// f32->i32
assert(<i32>f32.MAX_VALUE == i32.MAX_VALUE);
assert(<i32>-f32.MAX_VALUE == i32.MIN_VALUE);
assert(<i32>f32.NaN == 0);

// f32->i64
assert(<i64>f32.MAX_VALUE == i64.MAX_VALUE);
assert(<i64>-f32.MAX_VALUE == i64.MIN_VALUE);
assert(<i64>f32.NaN == 0);

// f32->u32
assert(<u32>f32.MAX_VALUE == u32.MAX_VALUE);
assert(<u32>-f32.MAX_VALUE == u32.MIN_VALUE);
assert(<u32>f32.NaN == 0);

// f32->u64
assert(<u64>f32.MAX_VALUE == u64.MAX_VALUE);
assert(<u64>-f32.MAX_VALUE == u64.MIN_VALUE);
assert(<u64>f32.NaN == 0);

// f64->i32
assert(<i32>f64.MAX_VALUE == i32.MAX_VALUE);
assert(<i32>-f64.MAX_VALUE == i32.MIN_VALUE);
assert(<i32>f64.NaN == 0);

// f64->i64
assert(<i64>f64.MAX_VALUE == i64.MAX_VALUE);
assert(<i64>-f64.MAX_VALUE == i64.MIN_VALUE);
assert(<i64>f64.NaN == 0);

// f64->u32
assert(<u32>f64.MAX_VALUE == u32.MAX_VALUE);
assert(<u32>-f64.MAX_VALUE == u32.MIN_VALUE);
assert(<u32>f64.NaN == 0);

// f64->u64
assert(<u64>f64.MAX_VALUE == u64.MAX_VALUE);
assert(<u64>-f64.MAX_VALUE == u64.MIN_VALUE);
assert(<u64>f64.NaN == 0);
