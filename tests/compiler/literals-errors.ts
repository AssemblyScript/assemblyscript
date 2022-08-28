// Signed underflow
-9223372036854775809;
-0x8000000000000001;
-0o1000000000000000000001;

// should emit a warnings
<f64>-0;
f32(-0);

ERROR("EOF");
