//
// Lookup data for exp2f
//

// @ts-ignore: decorator
@inline const EXP2F_TABLE_BITS = 5;

// @ts-ignore: decorator
@lazy @inline const EXP2F_DATA_TAB = memory.data<u64>([
  // exp2f_data_tab[i] = uint(2^(i/N)) - (i << 52-BITS)
  // used for computing 2^(k/N) for an int |k| < 150 N as
  // double(tab[k%N] + (k << 52-BITS))
  0x3FF0000000000000, 0x3FEFD9B0D3158574, 0x3FEFB5586CF9890F, 0x3FEF9301D0125B51,
  0x3FEF72B83C7D517B, 0x3FEF54873168B9AA, 0x3FEF387A6E756238, 0x3FEF1E9DF51FDEE1,
  0x3FEF06FE0A31B715, 0x3FEEF1A7373AA9CB, 0x3FEEDEA64C123422, 0x3FEECE086061892D,
  0x3FEEBFDAD5362A27, 0x3FEEB42B569D4F82, 0x3FEEAB07DD485429, 0x3FEEA47EB03A5585,
  0x3FEEA09E667F3BCD, 0x3FEE9F75E8EC5F74, 0x3FEEA11473EB0187, 0x3FEEA589994CCE13,
  0x3FEEACE5422AA0DB, 0x3FEEB737B0CDC5E5, 0x3FEEC49182A3F090, 0x3FEED503B23E255D,
  0x3FEEE89F995AD3AD, 0x3FEEFF76F2FB5E47, 0x3FEF199BDD85529C, 0x3FEF3720DCEF9069,
  0x3FEF5818DCFBA487, 0x3FEF7C97337B9B5F, 0x3FEFA4AFA2A490DA, 0x3FEFD0765B6E4540
]);

// ULP error: 0.502 (nearest rounding.)
// Relative error: 1.69 * 2^-34 in [-1/64, 1/64] (before rounding.)
// Wrong count: 168353 (all nearest rounding wrong results with fma.)
// @ts-ignore: decorator
@inline
export function exp2f_lut(x: f32): f32 {
  const
    N      = 1 << EXP2F_TABLE_BITS,
    N_MASK = N - 1,
    shift  = reinterpret<f64>(0x4338000000000000) / N, // 0x1.8p+52
    Ox127f = reinterpret<f32>(0x7F000000);

  const
    C0 = reinterpret<f64>(0x3FAC6AF84B912394), // 0x1.c6af84b912394p-5
    C1 = reinterpret<f64>(0x3FCEBFCE50FAC4F3), // 0x1.ebfce50fac4f3p-3
    C2 = reinterpret<f64>(0x3FE62E42FF0C52D6); // 0x1.62e42ff0c52d6p-1

  var xd = <f64>x;
  var ix = reinterpret<u32>(x);
  var ux = ix >> 20 & 0x7FF;
  if (ux >= 0x430) {
    // |x| >= 128 or x is nan.
    if (ix == 0xFF800000) return 0; // x == -Inf    -> 0
    if (ux >= 0x7F8) return x + x;  // x == Inf/NaN -> Inf/NaN
    if (x > 0) return x * Ox127f;   // x >     0    -> HugeVal (Owerflow)
    if (x <= -150) return 0;        // x <= -150    -> 0 (Underflow)
  }

  // x = k/N + r with r in [-1/(2N), 1/(2N)] and int k.
  var kd = xd + shift;
  var ki = reinterpret<u64>(kd);
  var r  = xd - (kd - shift);
  var t: u64, y: f64, s: f64;

  // exp2(x) = 2^(k/N) * 2^r ~= s * (C0*r^3 + C1*r^2 + C2*r + 1)
  t  = load<u64>(EXP2F_DATA_TAB + ((<usize>ki & N_MASK) << alignof<u64>()));
  t += ki << (52 - EXP2F_TABLE_BITS);
  s  = reinterpret<f64>(t);
  y  = C2 * r + 1;
  y += (C0 * r + C1) * (r  * r);
  y *= s;

  return <f32>y;
}

// ULP error: 0.502 (nearest rounding.)
// Relative error: 1.69 * 2^-34 in [-ln2/64, ln2/64] (before rounding.)
// Wrong count: 170635 (all nearest rounding wrong results with fma.)
// @ts-ignore: decorator
@inline
export function expf_lut(x: f32): f32 {
  const
    N        = 1 << EXP2F_TABLE_BITS,
    N_MASK   = N - 1,
    shift    = reinterpret<f64>(0x4338000000000000),        // 0x1.8p+52
    InvLn2N  = reinterpret<f64>(0x3FF71547652B82FE) * N,    // 0x1.71547652b82fep+0
    Ox1p127f = reinterpret<f32>(0x7F000000);

  const
    C0 = reinterpret<f64>(0x3FAC6AF84B912394) / N / N / N, // 0x1.c6af84b912394p-5
    C1 = reinterpret<f64>(0x3FCEBFCE50FAC4F3) / N / N,     // 0x1.ebfce50fac4f3p-3
    C2 = reinterpret<f64>(0x3FE62E42FF0C52D6) / N;         // 0x1.62e42ff0c52d6p-1

  var xd = <f64>x;
  var ix = reinterpret<u32>(x);
  var ux = ix >> 20 & 0x7FF;
  if (ux >= 0x42B) {
    // |x| >= 88 or x is nan.
    if (ix == 0xFF800000) return 0;                            // x == -Inf    -> 0
    if (ux >= 0x7F8) return x + x;                             // x == Inf/NaN -> Inf/NaN
    if (x > reinterpret<f32>(0x42B17217)) return x * Ox1p127f; // x > log(0x1p128)  ~=  88.72 -> HugeVal (Owerflow)
    if (x < reinterpret<f32>(0xC2CFF1B4)) return 0;            // x < log(0x1p-150) ~= -103.97 -> 0 (Underflow)
  }

  // x*N/Ln2 = k + r with r in [-1/2, 1/2] and int k.
  var z = InvLn2N * xd;

  // Round and convert z to int, the result is in [-150*N, 128*N] and
  // ideally ties-to-even rule is used, otherwise the magnitude of r
  // can be bigger which gives larger approximation error.
  var kd = <f64>(z + shift);
  var ki = reinterpret<u64>(kd);
  var r  = z - (kd - shift);
  var s: f64, y: f64, t: u64;

  // exp(x) = 2^(k/N) * 2^(r/N) ~= s * (C0*r^3 + C1*r^2 + C2*r + 1)
  t  = load<u64>(EXP2F_DATA_TAB + ((<usize>ki & N_MASK) << alignof<u64>()));
  t += ki << (52 - EXP2F_TABLE_BITS);
  s  = reinterpret<f64>(t);
  z  = C0 * r + C1;
  y  = C2 * r + 1;
  y += z * (r * r);
  y *= s;

  return <f32>y;
}

//
// Lookup data for log2f
//

// @ts-ignore: decorator
@inline const LOG2F_TABLE_BITS = 4;

// @ts-ignore: decorator
@lazy @inline const LOG2F_DATA_TAB = memory.data<f64>([
  reinterpret<f64>(0x3FF661EC79F8F3BE), reinterpret<f64>(0xBFDEFEC65B963019), // 0x1.661ec79f8f3bep+0, -0x1.efec65b963019p-2,
  reinterpret<f64>(0x3FF571ED4AAF883D), reinterpret<f64>(0xBFDB0B6832D4FCA4), // 0x1.571ed4aaf883dp+0, -0x1.b0b6832d4fca4p-2,
  reinterpret<f64>(0x3FF49539F0F010B0), reinterpret<f64>(0xBFD7418B0A1FB77B), // 0x1.49539f0f010bp+0 , -0x1.7418b0a1fb77bp-2,
  reinterpret<f64>(0x3FF3C995B0B80385), reinterpret<f64>(0xBFD39DE91A6DCF7B), // 0x1.3c995b0b80385p+0, -0x1.39de91a6dcf7bp-2,
  reinterpret<f64>(0x3FF30D190C8864A5), reinterpret<f64>(0xBFD01D9BF3F2B631), // 0x1.30d190c8864a5p+0, -0x1.01d9bf3f2b631p-2,
  reinterpret<f64>(0x3FF25E227B0B8EA0), reinterpret<f64>(0xBFC97C1D1B3B7AF0), // 0x1.25e227b0b8eap+0 , -0x1.97c1d1b3b7afp-3 ,
  reinterpret<f64>(0x3FF1BB4A4A1A343F), reinterpret<f64>(0xBFC2F9E393AF3C9F), // 0x1.1bb4a4a1a343fp+0, -0x1.2f9e393af3c9fp-3,
  reinterpret<f64>(0x3FF12358F08AE5BA), reinterpret<f64>(0xBFB960CBBF788D5C), // 0x1.12358f08ae5bap+0, -0x1.960cbbf788d5cp-4,
  reinterpret<f64>(0x3FF0953F419900A7), reinterpret<f64>(0xBFAA6F9DB6475FCE), // 0x1.0953f419900a7p+0, -0x1.a6f9db6475fcep-5,
  reinterpret<f64>(0x3FF0000000000000), 0,                                    // 0x1p+0,                0x0,
  reinterpret<f64>(0x3FEE608CFD9A47AC), reinterpret<f64>(0x3FB338CA9F24F53D), // 0x1.e608cfd9a47acp-1,  0x1.338ca9f24f53dp-4,
  reinterpret<f64>(0x3FECA4B31F026AA0), reinterpret<f64>(0x3FC476A9543891BA), // 0x1.ca4b31f026aap-1 ,  0x1.476a9543891bap-3,
  reinterpret<f64>(0x3FEB2036576AFCE6), reinterpret<f64>(0x3FCE840B4AC4E4D2), // 0x1.b2036576afce6p-1,  0x1.e840b4ac4e4d2p-3,
  reinterpret<f64>(0x3FE9C2D163A1AA2D), reinterpret<f64>(0x3FD40645F0C6651C), // 0x1.9c2d163a1aa2dp-1,  0x1.40645f0c6651cp-2,
  reinterpret<f64>(0x3FE886E6037841ED), reinterpret<f64>(0x3FD88E9C2C1B9FF8), // 0x1.886e6037841edp-1,  0x1.88e9c2c1b9ff8p-2,
  reinterpret<f64>(0x3FE767DCF5534862), reinterpret<f64>(0x3FDCE0A44EB17BCC)  // 0x1.767dcf5534862p-1,  0x1.ce0a44eb17bccp-2
]);

// ULP error: 0.752 (nearest rounding.)
// Relative error: 1.9 * 2^-26 (before rounding.)
// @ts-ignore: decorator
@inline
export function log2f_lut(x: f32): f32 {
  const
    N_MASK  = (1 << LOG2F_TABLE_BITS) - 1,
    Ox1p23f = reinterpret<f32>(0x4B000000); // 0x1p23f

  const
    A0 = reinterpret<f64>(0xBFD712B6F70A7E4D), // -0x1.712b6f70a7e4dp-2
    A1 = reinterpret<f64>(0x3FDECABF496832E0), //  0x1.ecabf496832ep-2
    A2 = reinterpret<f64>(0xBFE715479FFAE3DE), // -0x1.715479ffae3dep-1
    A3 = reinterpret<f64>(0x3FF715475F35C8B8); //  0x1.715475f35c8b8p0

  var ux = reinterpret<u32>(x);
  // Fix sign of zero with downward rounding when x==1.
  // if (WANT_ROUNDING && predict_false(ix == 0x3f800000)) return 0;
  if (ux - 0x00800000 >= 0x7F800000 - 0x00800000) {
    // x < 0x1p-126 or inf or nan.
    if (ux * 2 == 0) return -Infinity;
    if (ux == 0x7F800000) return x; // log2(inf) == inf.
    if ((ux >> 31) || ux * 2 >= 0xFF000000) return (x - x) / (x - x);
    // x is subnormal, normalize it.
    ux = reinterpret<u32>(x * Ox1p23f);
    ux -= 23 << 23;
  }
  // x = 2^k z; where z is in range [OFF,2*OFF] and exact.
  // The range is split into N subintervals.
  // The ith subinterval contains z and c is near its center.
  var tmp  = ux - 0x3F330000;
  var i    = (tmp >> (23 - LOG2F_TABLE_BITS)) & N_MASK;
  var top  = tmp & 0xFF800000;
  var iz   = ux - top;
  var k    = <i32>tmp >> 23;

  var invc = load<f64>(LOG2F_DATA_TAB + (i << (1 + alignof<f64>())), 0 << alignof<f64>());
  var logc = load<f64>(LOG2F_DATA_TAB + (i << (1 + alignof<f64>())), 1 << alignof<f64>());
  var z    = <f64>reinterpret<f32>(iz);

  // log2(x) = log1p(z/c-1)/ln2 + log2(c) + k
  var r  = z * invc - 1;
  var y0 = logc + <f64>k;

  // Pipelined polynomial evaluation to approximate log1p(r)/ln2.
  var y  = A1 * r + A2;
  var p  = A3 * r + y0;
  var r2 = r * r;
  y += A0 * r2;
  y  = y * r2 + p;

  return <f32>y;
}

//
// Lookup data for logf. See: https://git.musl-libc.org/cgit/musl/tree/src/math/logf.c
//

// @ts-ignore: decorator
@inline const LOGF_TABLE_BITS = 4;

// @ts-ignore: decorator
@lazy @inline const LOGF_DATA_TAB = memory.data<f64>([
  reinterpret<f64>(0x3FF661EC79F8F3BE), reinterpret<f64>(0xBFD57BF7808CAADE), // 0x1.661ec79f8f3bep+0, -0x1.57bf7808caadep-2,
  reinterpret<f64>(0x3FF571ED4AAF883D), reinterpret<f64>(0xBFD2BEF0A7C06DDB), // 0x1.571ed4aaf883dp+0, -0x1.2bef0a7c06ddbp-2,
  reinterpret<f64>(0x3FF49539F0F010B0), reinterpret<f64>(0xBFD01EAE7F513A67), // 0x1.49539f0f010bp+0 , -0x1.01eae7f513a67p-2,
  reinterpret<f64>(0x3FF3C995B0B80385), reinterpret<f64>(0xBFCB31D8A68224E9), // 0x1.3c995b0b80385p+0, -0x1.b31d8a68224e9p-3,
  reinterpret<f64>(0x3FF30D190C8864A5), reinterpret<f64>(0xBFC6574F0AC07758), // 0x1.30d190c8864a5p+0, -0x1.6574f0ac07758p-3,
  reinterpret<f64>(0x3FF25E227B0B8EA0), reinterpret<f64>(0xBFC1AA2BC79C8100), // 0x1.25e227b0b8eap+0 , -0x1.1aa2bc79c81p-3  ,
  reinterpret<f64>(0x3FF1BB4A4A1A343F), reinterpret<f64>(0xBFBA4E76CE8C0E5E), // 0x1.1bb4a4a1a343fp+0, -0x1.a4e76ce8c0e5ep-4,
  reinterpret<f64>(0x3FF12358F08AE5BA), reinterpret<f64>(0xBFB1973C5A611CCC), // 0x1.12358f08ae5bap+0, -0x1.1973c5a611cccp-4,
  reinterpret<f64>(0x3FF0953F419900A7), reinterpret<f64>(0xBFA252F438E10C1E), // 0x1.0953f419900a7p+0, -0x1.252f438e10c1ep-5,
  reinterpret<f64>(0x3FF0000000000000), 0,                                    // 0x1p+0,                0,
  reinterpret<f64>(0x3FEE608CFD9A47AC), reinterpret<f64>(0x3FAAA5AA5DF25984), // 0x1.e608cfd9a47acp-1,  0x1.aa5aa5df25984p-5,
  reinterpret<f64>(0x3FECA4B31F026AA0), reinterpret<f64>(0x3FBC5E53AA362EB4), // 0x1.ca4b31f026aap-1 ,  0x1.c5e53aa362eb4p-4,
  reinterpret<f64>(0x3FEB2036576AFCE6), reinterpret<f64>(0x3FC526E57720DB08), // 0x1.b2036576afce6p-1,  0x1.526e57720db08p-3,
  reinterpret<f64>(0x3FE9C2D163A1AA2D), reinterpret<f64>(0x3FCBC2860D224770), // 0x1.9c2d163a1aa2dp-1,  0x1.bc2860d22477p-3 ,
  reinterpret<f64>(0x3FE886E6037841ED), reinterpret<f64>(0x3FD1058BC8A07EE1), // 0x1.886e6037841edp-1,  0x1.1058bc8a07ee1p-2,
  reinterpret<f64>(0x3FE767DCF5534862), reinterpret<f64>(0x3FD4043057B6EE09)  // 0x1.767dcf5534862p-1,  0x1.4043057b6ee09p-2
]);

// ULP error: 0.818 (nearest rounding.)
// Relative error: 1.957 * 2^-26 (before rounding.)
// @ts-ignore: decorator
@inline
export function logf_lut(x: f32): f32 {
  const
    N_MASK  = (1 << LOGF_TABLE_BITS) - 1,
    Ox1p23f = reinterpret<f32>(0x4B000000); // 0x1p23f

  const
    Ln2 = reinterpret<f64>(0x3FE62E42FEFA39EF), // 0x1.62e42fefa39efp-1;
    A0  = reinterpret<f64>(0xBFD00EA348B88334), // -0x1.00ea348b88334p-2
    A1  = reinterpret<f64>(0x3FD5575B0BE00B6A), //  0x1.5575b0be00b6ap-2
    A2  = reinterpret<f64>(0xBFDFFFFEF20A4123); // -0x1.ffffef20a4123p-2

  var ux = reinterpret<u32>(x);
  // Fix sign of zero with downward rounding when x==1.
  // if (WANT_ROUNDING && ux == 0x3f800000) return 0;
  if (ux - 0x00800000 >= 0x7F800000 - 0x00800000) {
    // x < 0x1p-126 or inf or nan.
    if ((ux << 1) == 0) return -Infinity;
    if (ux == 0x7F800000) return x; // log(inf) == inf.
    if ((ux >> 31) || (ux << 1) >= 0xFF000000) return (x - x) / (x - x);
    // x is subnormal, normalize it.
    ux = reinterpret<u32>(x * Ox1p23f);
    ux -= 23 << 23;
  }
  // x = 2^k z; where z is in range [OFF,2*OFF] and exact.
  // The range is split into N subintervals.
  // The ith subinterval contains z and c is near its center.
  var tmp = ux - 0x3F330000;
  var i   = (tmp >> (23 - LOGF_TABLE_BITS)) & N_MASK;
  var k   = <i32>tmp >> 23;
  var iz  = ux - (tmp & 0x1FF << 23);

  var invc = load<f64>(LOGF_DATA_TAB + (i << (1 + alignof<f64>())), 0 << alignof<f64>());
  var logc = load<f64>(LOGF_DATA_TAB + (i << (1 + alignof<f64>())), 1 << alignof<f64>());

  var z = <f64>reinterpret<f32>(iz);

  // log(x) = log1p(z/c-1) + log(c) + k*Ln2
  var r = z * invc - 1;
  var y0 = logc + <f64>k * Ln2;

  // Pipelined polynomial evaluation to approximate log1p(r).
  var r2 = r * r;
  var y  = A1 * r + A2;
  y += A0 * r2;
  y = y * r2 + (y0 + r);

  return <f32>y;
}

//
// Lookup data for powf. See: https://git.musl-libc.org/cgit/musl/tree/src/math/powf.c
//

// @ts-ignore: decorator
@inline
function zeroinfnanf(ux: u32): bool {
  return (ux << 1) - 1 >= (<u32>0x7f800000 << 1) - 1;
}

// Returns 0 if not int, 1 if odd int, 2 if even int. The argument is
// the bit representation of a non-zero finite floating-point value.
// @ts-ignore: decorator
@inline
function checkintf(iy: u32): i32 {
  var e = iy >> 23 & 0xFF;
  if (e < 0x7F     ) return 0;
  if (e > 0x7F + 23) return 2;
  e = 1 << (0x7F + 23 - e);
  if (iy & (e - 1)) return 0;
  if (iy &  e     ) return 1;
  return 2;
}

// Subnormal input is normalized so ix has negative biased exponent.
// Output is multiplied by N (POWF_SCALE) if TOINT_INTRINICS is set.
// @ts-ignore: decorator
@inline
function log2f_inline(ux: u32): f64 {
  const N_MASK = (1 << LOG2F_TABLE_BITS) - 1;

  const
    A0 = reinterpret<f64>(0x3FD27616C9496E0B), //  0x1.27616c9496e0bp-2
    A1 = reinterpret<f64>(0xBFD71969A075C67A), // -0x1.71969a075c67ap-2
    A2 = reinterpret<f64>(0x3FDEC70A6CA7BADD), //  0x1.ec70a6ca7baddp-2
    A3 = reinterpret<f64>(0xBFE7154748BEF6C8), // -0x1.7154748bef6c8p-1
    A4 = reinterpret<f64>(0x3FF71547652AB82B); //  0x1.71547652ab82bp+0

  // x = 2^k z; where z is in range [OFF,2*OFF] and exact.
  // The range is split into N subintervals.
  // The ith subinterval contains z and c is near its center.
  var tmp  = ux - 0x3F330000;
  var i    = <usize>((tmp >> (23 - LOG2F_TABLE_BITS)) & N_MASK);
  var top  = tmp & 0xFF800000;
  var uz   = ux - top;
  var k    = <i32>(<i32>top >> 23);

  var invc = load<f64>(LOG2F_DATA_TAB + (i << (1 + alignof<f64>())), 0 << alignof<f64>());
  var logc = load<f64>(LOG2F_DATA_TAB + (i << (1 + alignof<f64>())), 1 << alignof<f64>());
  var z    = <f64>reinterpret<f32>(uz);

  // log2(x) = log1p(z/c-1)/ln2 + log2(c) + k
  var r  = z * invc - 1;
  var y0 = logc + <f64>k;

  // Pipelined polynomial evaluation to approximate log1p(r)/ln2.
  var y = A0 * r + A1;
  var p = A2 * r + A3;
  var q = A4 * r + y0;

  r *= r;
  q += p * r;
  y  = y * (r * r) + q;

  return y;
}

// The output of log2 and thus the input of exp2 is either scaled by N
// (in case of fast toint intrinsics) or not.  The unscaled xd must be
// in [-1021,1023], sign_bias sets the sign of the result.
// @ts-ignore: decorator
@inline
function exp2f_inline(xd: f64, signBias: u32): f32 {
  const
    N      = 1 << EXP2F_TABLE_BITS,
    N_MASK = N - 1,
    shift  = reinterpret<f64>(0x4338000000000000) / N; // 0x1.8p+52

  const
    C0 = reinterpret<f64>(0x3FAC6AF84B912394), // 0x1.c6af84b912394p-5
    C1 = reinterpret<f64>(0x3FCEBFCE50FAC4F3), // 0x1.ebfce50fac4f3p-3
    C2 = reinterpret<f64>(0x3FE62E42FF0C52D6); // 0x1.62e42ff0c52d6p-1

  // x = k/N + r with r in [-1/(2N), 1/(2N)]
  var kd = <f64>(xd + shift);
  var ki = reinterpret<u64>(kd);
  var r  = xd - (kd - shift);
  var t: u64, z: f64, y: f64, s: f64;

  // exp2(x) = 2^(k/N) * 2^r ~= s * (C0*r^3 + C1*r^2 + C2*r + 1)
  t  = load<u64>(EXP2F_DATA_TAB + ((<usize>ki & N_MASK) << alignof<u64>()));
  t += (ki + signBias) << (52 - EXP2F_TABLE_BITS);
  s  = reinterpret<f64>(t);
  z  = C0 * r + C1;
  y  = C2 * r + 1;
  y += z * (r * r);
  y *= s;
  return <f32>y;
}

// @ts-ignore: decorator
@inline
function xflowf(sign: u32, y: f32): f32 {
  return select<f32>(-y, y, sign) * y;
}

// @ts-ignore: decorator
@inline
function oflowf(sign: u32): f32 {
  return xflowf(sign, reinterpret<f32>(0x70000000)); // 0x1p97f
}

// @ts-ignore: decorator
@inline
function uflowf(sign: u32): f32 {
  return xflowf(sign, reinterpret<f32>(0x10000000)); // 0x1p-95f
}

// @ts-ignore: decorator
@inline
export function powf_lut(x: f32, y: f32): f32 {
  const
    Ox1p23f     = reinterpret<f32>(0x4B000000), // 0x1p23f
    UPPER_LIMIT = reinterpret<f64>(0x405FFFFFFFD1D571), // 0x1.fffffffd1d571p+6
    LOWER_LIMIT = -150.0,
    SIGN_BIAS   = 1 << (EXP2F_TABLE_BITS + 11);

  var signBias: u32 = 0;
  var ix = reinterpret<u32>(x);
  var iy = reinterpret<u32>(y);
  var ny = 0;

  if (i32(ix - 0x00800000 >= 0x7f800000 - 0x00800000) | (ny = i32(zeroinfnanf(iy)))) {
    // Either (x < 0x1p-126 or inf or nan) or (y is 0 or inf or nan).
    if (ny) {
      if ((iy << 1) == 0) return 1.0;
      if (ix == 0x3F800000) return NaN; // original: 1.0
      if ((ix << 1) > (<u32>0x7F800000 << 1) || (iy << 1) > (<u32>0x7F800000 << 1)) return x + y;
      if ((ix << 1) == (0x3F800000 << 1)) return NaN; // original: 1.0
      if (((ix << 1) < (0x3F800000 << 1)) == !(iy >> 31)) return 0; // |x| < 1 && y==inf or |x| > 1 && y==-inf.
      return y * y;
    }
    if (zeroinfnanf(ix)) {
      let x2 = x * x;
      if ((ix >> 31) && checkintf(iy) == 1) x2 = -x2;
      return iy >> 31 ? 1 / x2 : x2;
    }
    // x and y are non-zero finite.
    if (ix >> 31) {
      // Finite x < 0.
      let yint = checkintf(iy);
      if (yint == 0) return (x - x) / (x - x);
      if (yint == 1) signBias = SIGN_BIAS;
      ix &= 0x7FFFFFFF;
    }
    if (ix < 0x00800000) {
      // Normalize subnormal x so exponent becomes negative.
      ix = reinterpret<u32>(x * Ox1p23f);
      ix &= 0x7FFFFFFF;
      ix -= 23 << 23;
    }
  }
  var logx = log2f_inline(ix);
  var ylogx = y * logx; // cannot overflow, y is single prec.
  if ((reinterpret<u64>(ylogx) >> 47 & 0xFFFF) >= 0x80BF) { // reinterpret<u64>(126.0) >> 47
    // |y * log(x)| >= 126
    if (ylogx  > UPPER_LIMIT) return oflowf(signBias); // overflow
    if (ylogx <= LOWER_LIMIT) return uflowf(signBias); // underflow
  }
  return exp2f_inline(ylogx, signBias);
}

//
// Lookup data for exp. See: https://git.musl-libc.org/cgit/musl/tree/src/math/exp.c
//

// @ts-ignore: decorator
@inline const EXP_TABLE_BITS = 7;

// @ts-ignore: decorator
@lazy @inline const EXP_DATA_TAB = memory.data<u64>([
  0x0000000000000000, 0x3FF0000000000000,
  0x3C9B3B4F1A88BF6E, 0x3FEFF63DA9FB3335,
  0xBC7160139CD8DC5D, 0x3FEFEC9A3E778061,
  0xBC905E7A108766D1, 0x3FEFE315E86E7F85,
  0x3C8CD2523567F613, 0x3FEFD9B0D3158574,
  0xBC8BCE8023F98EFA, 0x3FEFD06B29DDF6DE,
  0x3C60F74E61E6C861, 0x3FEFC74518759BC8,
  0x3C90A3E45B33D399, 0x3FEFBE3ECAC6F383,
  0x3C979AA65D837B6D, 0x3FEFB5586CF9890F,
  0x3C8EB51A92FDEFFC, 0x3FEFAC922B7247F7,
  0x3C3EBE3D702F9CD1, 0x3FEFA3EC32D3D1A2,
  0xBC6A033489906E0B, 0x3FEF9B66AFFED31B,
  0xBC9556522A2FBD0E, 0x3FEF9301D0125B51,
  0xBC5080EF8C4EEA55, 0x3FEF8ABDC06C31CC,
  0xBC91C923B9D5F416, 0x3FEF829AAEA92DE0,
  0x3C80D3E3E95C55AF, 0x3FEF7A98C8A58E51,
  0xBC801B15EAA59348, 0x3FEF72B83C7D517B,
  0xBC8F1FF055DE323D, 0x3FEF6AF9388C8DEA,
  0x3C8B898C3F1353BF, 0x3FEF635BEB6FCB75,
  0xBC96D99C7611EB26, 0x3FEF5BE084045CD4,
  0x3C9AECF73E3A2F60, 0x3FEF54873168B9AA,
  0xBC8FE782CB86389D, 0x3FEF4D5022FCD91D,
  0x3C8A6F4144A6C38D, 0x3FEF463B88628CD6,
  0x3C807A05B0E4047D, 0x3FEF3F49917DDC96,
  0x3C968EFDE3A8A894, 0x3FEF387A6E756238,
  0x3C875E18F274487D, 0x3FEF31CE4FB2A63F,
  0x3C80472B981FE7F2, 0x3FEF2B4565E27CDD,
  0xBC96B87B3F71085E, 0x3FEF24DFE1F56381,
  0x3C82F7E16D09AB31, 0x3FEF1E9DF51FDEE1,
  0xBC3D219B1A6FBFFA, 0x3FEF187FD0DAD990,
  0x3C8B3782720C0AB4, 0x3FEF1285A6E4030B,
  0x3C6E149289CECB8F, 0x3FEF0CAFA93E2F56,
  0x3C834D754DB0ABB6, 0x3FEF06FE0A31B715,
  0x3C864201E2AC744C, 0x3FEF0170FC4CD831,
  0x3C8FDD395DD3F84A, 0x3FEEFC08B26416FF,
  0xBC86A3803B8E5B04, 0x3FEEF6C55F929FF1,
  0xBC924AEDCC4B5068, 0x3FEEF1A7373AA9CB,
  0xBC9907F81B512D8E, 0x3FEEECAE6D05D866,
  0xBC71D1E83E9436D2, 0x3FEEE7DB34E59FF7,
  0xBC991919B3CE1B15, 0x3FEEE32DC313A8E5,
  0x3C859F48A72A4C6D, 0x3FEEDEA64C123422,
  0xBC9312607A28698A, 0x3FEEDA4504AC801C,
  0xBC58A78F4817895B, 0x3FEED60A21F72E2A,
  0xBC7C2C9B67499A1B, 0x3FEED1F5D950A897,
  0x3C4363ED60C2AC11, 0x3FEECE086061892D,
  0x3C9666093B0664EF, 0x3FEECA41ED1D0057,
  0x3C6ECCE1DAA10379, 0x3FEEC6A2B5C13CD0,
  0x3C93FF8E3F0F1230, 0x3FEEC32AF0D7D3DE,
  0x3C7690CEBB7AAFB0, 0x3FEEBFDAD5362A27,
  0x3C931DBDEB54E077, 0x3FEEBCB299FDDD0D,
  0xBC8F94340071A38E, 0x3FEEB9B2769D2CA7,
  0xBC87DECCDC93A349, 0x3FEEB6DAA2CF6642,
  0xBC78DEC6BD0F385F, 0x3FEEB42B569D4F82,
  0xBC861246EC7B5CF6, 0x3FEEB1A4CA5D920F,
  0x3C93350518FDD78E, 0x3FEEAF4736B527DA,
  0x3C7B98B72F8A9B05, 0x3FEEAD12D497C7FD,
  0x3C9063E1E21C5409, 0x3FEEAB07DD485429,
  0x3C34C7855019C6EA, 0x3FEEA9268A5946B7,
  0x3C9432E62B64C035, 0x3FEEA76F15AD2148,
  0xBC8CE44A6199769F, 0x3FEEA5E1B976DC09,
  0xBC8C33C53BEF4DA8, 0x3FEEA47EB03A5585,
  0xBC845378892BE9AE, 0x3FEEA34634CCC320,
  0xBC93CEDD78565858, 0x3FEEA23882552225,
  0x3C5710AA807E1964, 0x3FEEA155D44CA973,
  0xBC93B3EFBF5E2228, 0x3FEEA09E667F3BCD,
  0xBC6A12AD8734B982, 0x3FEEA012750BDABF,
  0xBC6367EFB86DA9EE, 0x3FEE9FB23C651A2F,
  0xBC80DC3D54E08851, 0x3FEE9F7DF9519484,
  0xBC781F647E5A3ECF, 0x3FEE9F75E8EC5F74,
  0xBC86EE4AC08B7DB0, 0x3FEE9F9A48A58174,
  0xBC8619321E55E68A, 0x3FEE9FEB564267C9,
  0x3C909CCB5E09D4D3, 0x3FEEA0694FDE5D3F,
  0xBC7B32DCB94DA51D, 0x3FEEA11473EB0187,
  0x3C94ECFD5467C06B, 0x3FEEA1ED0130C132,
  0x3C65EBE1ABD66C55, 0x3FEEA2F336CF4E62,
  0xBC88A1C52FB3CF42, 0x3FEEA427543E1A12,
  0xBC9369B6F13B3734, 0x3FEEA589994CCE13,
  0xBC805E843A19FF1E, 0x3FEEA71A4623C7AD,
  0xBC94D450D872576E, 0x3FEEA8D99B4492ED,
  0x3C90AD675B0E8A00, 0x3FEEAAC7D98A6699,
  0x3C8DB72FC1F0EAB4, 0x3FEEACE5422AA0DB,
  0xBC65B6609CC5E7FF, 0x3FEEAF3216B5448C,
  0x3C7BF68359F35F44, 0x3FEEB1AE99157736,
  0xBC93091FA71E3D83, 0x3FEEB45B0B91FFC6,
  0xBC5DA9B88B6C1E29, 0x3FEEB737B0CDC5E5,
  0xBC6C23F97C90B959, 0x3FEEBA44CBC8520F,
  0xBC92434322F4F9AA, 0x3FEEBD829FDE4E50,
  0xBC85CA6CD7668E4B, 0x3FEEC0F170CA07BA,
  0x3C71AFFC2B91CE27, 0x3FEEC49182A3F090,
  0x3C6DD235E10A73BB, 0x3FEEC86319E32323,
  0xBC87C50422622263, 0x3FEECC667B5DE565,
  0x3C8B1C86E3E231D5, 0x3FEED09BEC4A2D33,
  0xBC91BBD1D3BCBB15, 0x3FEED503B23E255D,
  0x3C90CC319CEE31D2, 0x3FEED99E1330B358,
  0x3C8469846E735AB3, 0x3FEEDE6B5579FDBF,
  0xBC82DFCD978E9DB4, 0x3FEEE36BBFD3F37A,
  0x3C8C1A7792CB3387, 0x3FEEE89F995AD3AD,
  0xBC907B8F4AD1D9FA, 0x3FEEEE07298DB666,
  0xBC55C3D956DCAEBA, 0x3FEEF3A2B84F15FB,
  0xBC90A40E3DA6F640, 0x3FEEF9728DE5593A,
  0xBC68D6F438AD9334, 0x3FEEFF76F2FB5E47,
  0xBC91EEE26B588A35, 0x3FEF05B030A1064A,
  0x3C74FFD70A5FDDCD, 0x3FEF0C1E904BC1D2,
  0xBC91BDFBFA9298AC, 0x3FEF12C25BD71E09,
  0x3C736EAE30AF0CB3, 0x3FEF199BDD85529C,
  0x3C8EE3325C9FFD94, 0x3FEF20AB5FFFD07A,
  0x3C84E08FD10959AC, 0x3FEF27F12E57D14B,
  0x3C63CDAF384E1A67, 0x3FEF2F6D9406E7B5,
  0x3C676B2C6C921968, 0x3FEF3720DCEF9069,
  0xBC808A1883CCB5D2, 0x3FEF3F0B555DC3FA,
  0xBC8FAD5D3FFFFA6F, 0x3FEF472D4A07897C,
  0xBC900DAE3875A949, 0x3FEF4F87080D89F2,
  0x3C74A385A63D07A7, 0x3FEF5818DCFBA487,
  0xBC82919E2040220F, 0x3FEF60E316C98398,
  0x3C8E5A50D5C192AC, 0x3FEF69E603DB3285,
  0x3C843A59AC016B4B, 0x3FEF7321F301B460,
  0xBC82D52107B43E1F, 0x3FEF7C97337B9B5F,
  0xBC892AB93B470DC9, 0x3FEF864614F5A129,
  0x3C74B604603A88D3, 0x3FEF902EE78B3FF6,
  0x3C83C5EC519D7271, 0x3FEF9A51FBC74C83,
  0xBC8FF7128FD391F0, 0x3FEFA4AFA2A490DA,
  0xBC8DAE98E223747D, 0x3FEFAF482D8E67F1,
  0x3C8EC3BC41AA2008, 0x3FEFBA1BEE615A27,
  0x3C842B94C3A9EB32, 0x3FEFC52B376BBA97,
  0x3C8A64A931D185EE, 0x3FEFD0765B6E4540,
  0xBC8E37BAE43BE3ED, 0x3FEFDBFDAD9CBE14,
  0x3C77893B4D91CD9D, 0x3FEFE7C1819E90D8,
  0x3C5305C14160CC89, 0x3FEFF3C22B8F71F1
]);

// Handle cases that may overflow or underflow when computing the result that
// is scale*(1+TMP) without intermediate rounding. The bit representation of
// scale is in SBITS, however it has a computed exponent that may have
// overflown into the sign bit so that needs to be adjusted before using it as
// a double.  (int32_t)KI is the k used in the argument reduction and exponent
// adjustment of scale, positive k here means the result may overflow and
// negative k means the result may underflow.
// @ts-ignore: decorator
@inline
function specialcase(tmp: f64, sbits: u64, ki: u64): f64 {
  const
    Ox1p_1022 = reinterpret<f64>(0x0010000000000000), // 0x1p-1022
    Ox1p1009  = reinterpret<f64>(0x7F00000000000000); // 0x1p1009

  var scale: f64;
  if (!(ki & 0x80000000)) {
    // k > 0, the exponent of scale might have overflowed by <= 460.
    sbits -= u64(1009) << 52;
    scale = reinterpret<f64>(sbits);
    return Ox1p1009 * (scale + scale * tmp); // 0x1p1009
  }
  // k < 0, need special care in the subnormal range.
  sbits += u64(1022) << 52;
  // Note: sbits is signed scale.
  scale = reinterpret<f64>(sbits);
  var y = scale + scale * tmp;
  if (abs(y) < 1.0) {
    // Round y to the right precision before scaling it into the subnormal
    // range to avoid double rounding that can cause 0.5+E/2 ulp error where
    // E is the worst-case ulp error outside the subnormal range.  So this
    // is only useful if the goal is better than 1 ulp worst-case error.
    let one = copysign(1.0, y);
    let lo = scale - y + scale * tmp;
    let hi = one + y;
    lo = one - hi + y + lo;
    y  = (hi + lo) - one;
    // Fix the sign of 0.
    if (y == 0.0) y = reinterpret<f64>(sbits & 0x8000000000000000);
  }
  return y * Ox1p_1022;
}

// @ts-ignore: decorator
@inline
export function exp_lut(x: f64): f64 {
  const
    N      = 1 << EXP_TABLE_BITS,
    N_MASK = N - 1;

  const
    InvLn2N   = reinterpret<f64>(0x3FF71547652B82FE) * N, // 0x1.71547652b82fep0
    NegLn2hiN = reinterpret<f64>(0xBF762E42FEFA0000),     // -0x1.62e42fefa0000p-8
    NegLn2loN = reinterpret<f64>(0xBD0CF79ABC9E3B3A),     // -0x1.cf79abc9e3b3ap-47
    shift     = reinterpret<f64>(0x4338000000000000);     // 0x1.8p52;

  const
    C2 = reinterpret<f64>(0x3FDFFFFFFFFFFDBD), // __exp_data.poly[0] (0x1.ffffffffffdbdp-2)
    C3 = reinterpret<f64>(0x3FC555555555543C), // __exp_data.poly[1] (0x1.555555555543cp-3)
    C4 = reinterpret<f64>(0x3FA55555CF172B91), // __exp_data.poly[2] (0x1.55555cf172b91p-5)
    C5 = reinterpret<f64>(0x3F81111167A4D017); // __exp_data.poly[3] (0x1.1111167a4d017p-7)

  var ux = reinterpret<u64>(x);
  var abstop = <u32>(ux >> 52 & 0x7FF);
  if (abstop - 0x3C9 >= 0x03F) {
    if (abstop - 0x3C9 >= 0x80000000) return 1;
    if (abstop >= 0x409) {
      if (ux == 0xFFF0000000000000) return 0;
      if (abstop >= 0x7FF) return 1.0 + x;
      return select<f64>(0, Infinity, ux >> 63);
    }
    // Large x is special cased below.
    abstop = 0;
  }

  // exp(x) = 2^(k/N) * exp(r), with exp(r) in [2^(-1/2N),2^(1/2N)]
  // x = ln2/N*k + r, with int k and r in [-ln2/2N, ln2/2N]
  var z = InvLn2N * x;
  // #if TOINT_INTRINSICS
  // 	kd = roundtoint(z);
  // 	ki = converttoint(z);
  // #elif EXP_USE_TOINT_NARROW
  // 	// z - kd is in [-0.5-2^-16, 0.5] in all rounding modes.
  // var kd = z + shift;
  // var ki = reinterpret<u64>(kd) >> 16;
  // var kd = <f64><i32>ki;
  // #else
  // z - kd is in [-1, 1] in non-nearest rounding modes.
  var kd = z + shift;
  var ki = reinterpret<u64>(kd);
  kd -= shift;
  // #endif
  var r = x + kd * NegLn2hiN + kd * NegLn2loN;
  // 2^(k/N) ~= scale * (1 + tail).
  var idx = <usize>((ki & N_MASK) << 1);
  var top = ki << (52 - EXP_TABLE_BITS);

  var tail = reinterpret<f64>(load<u64>(EXP_DATA_TAB + (idx << alignof<u64>()))); // T[idx]
  // This is only a valid scale when -1023*N < k < 1024*N
  var sbits = load<u64>(EXP_DATA_TAB + (idx << alignof<u64>()), 1 << alignof<u64>()) + top; // T[idx + 1]
  // exp(x) = 2^(k/N) * exp(r) ~= scale + scale * (tail + exp(r) - 1).
  // Evaluation is optimized assuming superscalar pipelined execution.
  var r2 = r * r;
  // Without fma the worst case error is 0.25/N ulp larger.
  // Worst case error is less than 0.5+1.11/N+(abs poly error * 2^53) ulp.
  var tmp = tail + r + r2 * (C2 + r * C3) + r2 * r2 * (C4 + r * C5);
  if (abstop == 0) return specialcase(tmp, sbits, ki);
  var scale = reinterpret<f64>(sbits);
  // Note: tmp == 0 or |tmp| > 2^-200 and scale > 2^-739, so there
  // is no spurious underflow here even without fma.
  return scale + scale * tmp;
}

//
// Lookup data for exp2. See: https://git.musl-libc.org/cgit/musl/tree/src/math/exp2.c
//

// Handle cases that may overflow or underflow when computing the result that
// is scale*(1+TMP) without intermediate rounding.  The bit representation of
// scale is in SBITS, however it has a computed exponent that may have
// overflown into the sign bit so that needs to be adjusted before using it as
// a double.  (int32_t)KI is the k used in the argument reduction and exponent
// adjustment of scale, positive k here means the result may overflow and
// negative k means the result may underflow.
// @ts-ignore: decorator
@inline
function specialcase2(tmp: f64, sbits: u64, ki: u64): f64 {
  const Ox1p_1022 = reinterpret<f64>(0x10000000000000); // 0x1p-1022
  var scale: f64;
  if ((ki & 0x80000000) == 0) {
    // k > 0, the exponent of scale might have overflowed by 1
    sbits -= u64(1) << 52;
    scale = reinterpret<f64>(sbits);
    return 2 * (scale * tmp + scale);
  }
  // k < 0, need special care in the subnormal range
  sbits += u64(1022) << 52;
  scale = reinterpret<f64>(sbits);
  var y = scale * tmp + scale;
  if (y < 1.0) {
    // Round y to the right precision before scaling it into the subnormal
    // range to avoid double rounding that can cause 0.5+E/2 ulp error where
    // E is the worst-case ulp error outside the subnormal range. So this
    // is only useful if the goal is better than 1 ulp worst-case error.
    let hi: f64, lo: f64;
    lo = scale - y + scale * tmp;
    hi = 1.0 + y;
    lo = 1.0 - hi + y + lo;
    y = (hi + lo) - 1.0;
  }
  return y * Ox1p_1022;
}

// @ts-ignore: decorator
@inline
export function exp2_lut(x: f64): f64 {
  const
    N      = 1 << EXP_TABLE_BITS,
    N_MASK = N - 1,
    shift  = reinterpret<f64>(0x4338000000000000) / N; // 0x1.8p52

  const
    C1 = reinterpret<f64>(0x3FE62E42FEFA39EF), // 0x1.62e42fefa39efp-1
    C2 = reinterpret<f64>(0x3FCEBFBDFF82C424), // 0x1.ebfbdff82c424p-3
    C3 = reinterpret<f64>(0x3FAC6B08D70CF4B5), // 0x1.c6b08d70cf4b5p-5
    C4 = reinterpret<f64>(0x3F83B2ABD24650CC), // 0x1.3b2abd24650ccp-7
    C5 = reinterpret<f64>(0x3F55D7E09B4E3A84); // 0x1.5d7e09b4e3a84p-10

  var ux = reinterpret<u64>(x);
  var abstop = <u32>(ux >> 52 & 0x7ff);
  if (abstop - 0x3C9 >= 0x03F) {
    if (abstop - 0x3C9 >= 0x80000000) return 1.0;
    if (abstop >= 0x409) {
      if (ux == 0xFFF0000000000000) return 0;
      if (abstop >= 0x7FF) return 1.0 + x;
      if (!(ux >> 63)) return Infinity;
      else if (ux >= 0xC090CC0000000000) return 0;
    }
    if ((ux << 1) > 0x811A000000000000) abstop = 0; // Large x is special cased below.
  }

  // exp2(x) = 2^(k/N) * 2^r, with 2^r in [2^(-1/2N),2^(1/2N)].
  // x = k/N + r, with int k and r in [-1/2N, 1/2N]
  var kd = x + shift;
  var ki = reinterpret<u64>(kd);
  kd -= shift; // k/N for int k
  var r = x - kd;
  // 2^(k/N) ~= scale * (1 + tail)
  var idx = <usize>((ki & N_MASK) << 1);
  var top = ki << (52 - EXP_TABLE_BITS);

  var tail = reinterpret<f64>(load<u64>(EXP_DATA_TAB + (idx << alignof<u64>()), 0 << alignof<u64>())); // T[idx])
  // This is only a valid scale when -1023*N < k < 1024*N
  var sbits = load<u64>(EXP_DATA_TAB + (idx << alignof<u64>()), 1 << alignof<u64>()) + top; // T[idx + 1]
  // exp2(x) = 2^(k/N) * 2^r ~= scale + scale * (tail + 2^r - 1).
  // Evaluation is optimized assuming superscalar pipelined execution
  var r2 = r * r;
  // Without fma the worst case error is 0.5/N ulp larger.
  // Worst case error is less than 0.5+0.86/N+(abs poly error * 2^53) ulp.
  var tmp = tail + r * C1 + r2 * (C2 + r * C3) + r2 * r2 * (C4 + r * C5);
  if (abstop == 0) return specialcase2(tmp, sbits, ki);
  var scale = reinterpret<f64>(sbits);
  // Note: tmp == 0 or |tmp| > 2^-65 and scale > 2^-928, so there
  // is no spurious underflow here even without fma.
  return scale * tmp + scale;
}

//
// Lookup data for log2. See: https://git.musl-libc.org/cgit/musl/tree/src/math/log2.c
//

// @ts-ignore: decorator
@inline const LOG2_TABLE_BITS = 6;

/* Algorithm:

  x = 2^k z
  log2(x) = k + log2(c) + log2(z/c)
  log2(z/c) = poly(z/c - 1)

where z is in [1.6p-1; 1.6p0] which is split into N subintervals and z falls
into the ith one, then table entries are computed as

  tab[i].invc = 1/c
  tab[i].logc = (double)log2(c)
  tab2[i].chi = (double)c
  tab2[i].clo = (double)(c - (double)c)

where c is near the center of the subinterval and is chosen by trying +-2^29
floating point invc candidates around 1/center and selecting one for which

  1) the rounding error in 0x1.8p10 + logc is 0,
  2) the rounding error in z - chi - clo is < 0x1p-64 and
  3) the rounding error in (double)log2(c) is minimized (< 0x1p-68).

Note: 1) ensures that k + logc can be computed without rounding error, 2)
ensures that z/c - 1 can be computed as (z - chi - clo)*invc with close to a
single rounding error when there is no fast fma for z*invc - 1, 3) ensures
that logc + poly(z/c - 1) has small error, however near x == 1 when
|log2(x)| < 0x1p-4, this is not enough so that is special cased. */

// @ts-ignore: decorator
@lazy @inline const LOG2_DATA_TAB1 = memory.data<f64>([
  //            invc                  ,                logc
  reinterpret<f64>(0x3FF724286BB1ACF8), reinterpret<f64>(0xBFE1095FEECDB000),
  reinterpret<f64>(0x3FF6E1F766D2CCA1), reinterpret<f64>(0xBFE08494BD76D000),
  reinterpret<f64>(0x3FF6A13D0E30D48A), reinterpret<f64>(0xBFE00143AEE8F800),
  reinterpret<f64>(0x3FF661EC32D06C85), reinterpret<f64>(0xBFDEFEC5360B4000),
  reinterpret<f64>(0x3FF623FA951198F8), reinterpret<f64>(0xBFDDFDD91AB7E000),
  reinterpret<f64>(0x3FF5E75BA4CF026C), reinterpret<f64>(0xBFDCFFAE0CC79000),
  reinterpret<f64>(0x3FF5AC055A214FB8), reinterpret<f64>(0xBFDC043811FDA000),
  reinterpret<f64>(0x3FF571ED0F166E1E), reinterpret<f64>(0xBFDB0B67323AE000),
  reinterpret<f64>(0x3FF53909590BF835), reinterpret<f64>(0xBFDA152F5A2DB000),
  reinterpret<f64>(0x3FF5014FED61ADDD), reinterpret<f64>(0xBFD9217F5AF86000),
  reinterpret<f64>(0x3FF4CAB88E487BD0), reinterpret<f64>(0xBFD8304DB0719000),
  reinterpret<f64>(0x3FF49539B4334FEE), reinterpret<f64>(0xBFD74189F9A9E000),
  reinterpret<f64>(0x3FF460CBDFAFD569), reinterpret<f64>(0xBFD6552BB5199000),
  reinterpret<f64>(0x3FF42D664EE4B953), reinterpret<f64>(0xBFD56B23A29B1000),
  reinterpret<f64>(0x3FF3FB01111DD8A6), reinterpret<f64>(0xBFD483650F5FA000),
  reinterpret<f64>(0x3FF3C995B70C5836), reinterpret<f64>(0xBFD39DE937F6A000),
  reinterpret<f64>(0x3FF3991C4AB6FD4A), reinterpret<f64>(0xBFD2BAA1538D6000),
  reinterpret<f64>(0x3FF3698E0CE099B5), reinterpret<f64>(0xBFD1D98340CA4000),
  reinterpret<f64>(0x3FF33AE48213E7B2), reinterpret<f64>(0xBFD0FA853A40E000),
  reinterpret<f64>(0x3FF30D191985BDB1), reinterpret<f64>(0xBFD01D9C32E73000),
  reinterpret<f64>(0x3FF2E025CAB271D7), reinterpret<f64>(0xBFCE857DA2FA6000),
  reinterpret<f64>(0x3FF2B404CF13CD82), reinterpret<f64>(0xBFCCD3C8633D8000),
  reinterpret<f64>(0x3FF288B02C7CCB50), reinterpret<f64>(0xBFCB26034C14A000),
  reinterpret<f64>(0x3FF25E2263944DE5), reinterpret<f64>(0xBFC97C1C2F4FE000),
  reinterpret<f64>(0x3FF234563D8615B1), reinterpret<f64>(0xBFC7D6023F800000),
  reinterpret<f64>(0x3FF20B46E33EAF38), reinterpret<f64>(0xBFC633A71A05E000),
  reinterpret<f64>(0x3FF1E2EEFDCDA3DD), reinterpret<f64>(0xBFC494F5E9570000),
  reinterpret<f64>(0x3FF1BB4A580B3930), reinterpret<f64>(0xBFC2F9E424E0A000),
  reinterpret<f64>(0x3FF19453847F2200), reinterpret<f64>(0xBFC162595AFDC000),
  reinterpret<f64>(0x3FF16E06C0D5D73C), reinterpret<f64>(0xBFBF9C9A75BD8000),
  reinterpret<f64>(0x3FF1485F47B7E4C2), reinterpret<f64>(0xBFBC7B575BF9C000),
  reinterpret<f64>(0x3FF12358AD0085D1), reinterpret<f64>(0xBFB960C60FF48000),
  reinterpret<f64>(0x3FF0FEF00F532227), reinterpret<f64>(0xBFB64CE247B60000),
  reinterpret<f64>(0x3FF0DB2077D03A8F), reinterpret<f64>(0xBFB33F78B2014000),
  reinterpret<f64>(0x3FF0B7E6D65980D9), reinterpret<f64>(0xBFB0387D1A42C000),
  reinterpret<f64>(0x3FF0953EFE7B408D), reinterpret<f64>(0xBFAA6F9208B50000),
  reinterpret<f64>(0x3FF07325CAC53B83), reinterpret<f64>(0xBFA47A954F770000),
  reinterpret<f64>(0x3FF05197E40D1B5C), reinterpret<f64>(0xBF9D23A8C50C0000),
  reinterpret<f64>(0x3FF03091C1208EA2), reinterpret<f64>(0xBF916A2629780000),
  reinterpret<f64>(0x3FF0101025B37E21), reinterpret<f64>(0xBF7720F8D8E80000),
  reinterpret<f64>(0x3FEFC07EF9CAA76B), reinterpret<f64>(0x3F86FE53B1500000),
  reinterpret<f64>(0x3FEF4465D3F6F184), reinterpret<f64>(0x3FA11CCCE10F8000),
  reinterpret<f64>(0x3FEECC079F84107F), reinterpret<f64>(0x3FAC4DFC8C8B8000),
  reinterpret<f64>(0x3FEE573A99975AE8), reinterpret<f64>(0x3FB3AA321E574000),
  reinterpret<f64>(0x3FEDE5D6F0BD3DE6), reinterpret<f64>(0x3FB918A0D08B8000),
  reinterpret<f64>(0x3FED77B681FF38B3), reinterpret<f64>(0x3FBE72E9DA044000),
  reinterpret<f64>(0x3FED0CB5724DE943), reinterpret<f64>(0x3FC1DCD2507F6000),
  reinterpret<f64>(0x3FECA4B2DC0E7563), reinterpret<f64>(0x3FC476AB03DEA000),
  reinterpret<f64>(0x3FEC3F8EE8D6CB51), reinterpret<f64>(0x3FC7074377E22000),
  reinterpret<f64>(0x3FEBDD2B4F020C4C), reinterpret<f64>(0x3FC98EDE8BA94000),
  reinterpret<f64>(0x3FEB7D6C006015CA), reinterpret<f64>(0x3FCC0DB86AD2E000),
  reinterpret<f64>(0x3FEB20366E2E338F), reinterpret<f64>(0x3FCE840AAFCEE000),
  reinterpret<f64>(0x3FEAC57026295039), reinterpret<f64>(0x3FD0790AB4678000),
  reinterpret<f64>(0x3FEA6D01BC2731DD), reinterpret<f64>(0x3FD1AC056801C000),
  reinterpret<f64>(0x3FEA16D3BC3FF18B), reinterpret<f64>(0x3FD2DB11D4FEE000),
  reinterpret<f64>(0x3FE9C2D14967FEAD), reinterpret<f64>(0x3FD406464EC58000),
  reinterpret<f64>(0x3FE970E4F47C9902), reinterpret<f64>(0x3FD52DBE093AF000),
  reinterpret<f64>(0x3FE920FB3982BCF2), reinterpret<f64>(0x3FD651902050D000),
  reinterpret<f64>(0x3FE8D30187F759F1), reinterpret<f64>(0x3FD771D2CDEAF000),
  reinterpret<f64>(0x3FE886E5EBB9F66D), reinterpret<f64>(0x3FD88E9C857D9000),
  reinterpret<f64>(0x3FE83C97B658B994), reinterpret<f64>(0x3FD9A80155E16000),
  reinterpret<f64>(0x3FE7F405FFC61022), reinterpret<f64>(0x3FDABE186ED3D000),
  reinterpret<f64>(0x3FE7AD22181415CA), reinterpret<f64>(0x3FDBD0F2AEA0E000),
  reinterpret<f64>(0x3FE767DCF99EFF8C), reinterpret<f64>(0x3FDCE0A43DBF4000)
]);

// @ts-ignore: decorator
@lazy @inline const LOG2_DATA_TAB2 = memory.data<f64>([
  //              chi                 ,                 clo
  reinterpret<f64>(0x3FE6200012B90A8E), reinterpret<f64>(0x3C8904AB0644B605),
  reinterpret<f64>(0x3FE66000045734A6), reinterpret<f64>(0x3C61FF9BEA62F7A9),
  reinterpret<f64>(0x3FE69FFFC325F2C5), reinterpret<f64>(0x3C827ECFCB3C90BA),
  reinterpret<f64>(0x3FE6E00038B95A04), reinterpret<f64>(0x3C88FF8856739326),
  reinterpret<f64>(0x3FE71FFFE09994E3), reinterpret<f64>(0x3C8AFD40275F82B1),
  reinterpret<f64>(0x3FE7600015590E10), reinterpret<f64>(0xBC72FD75B4238341),
  reinterpret<f64>(0x3FE7A00012655BD5), reinterpret<f64>(0x3C7808E67C242B76),
  reinterpret<f64>(0x3FE7E0003259E9A6), reinterpret<f64>(0xBC6208E426F622B7),
  reinterpret<f64>(0x3FE81FFFEDB4B2D2), reinterpret<f64>(0xBC8402461EA5C92F),
  reinterpret<f64>(0x3FE860002DFAFCC3), reinterpret<f64>(0x3C6DF7F4A2F29A1F),
  reinterpret<f64>(0x3FE89FFFF78C6B50), reinterpret<f64>(0xBC8E0453094995FD),
  reinterpret<f64>(0x3FE8E00039671566), reinterpret<f64>(0xBC8A04F3BEC77B45),
  reinterpret<f64>(0x3FE91FFFE2BF1745), reinterpret<f64>(0xBC77FA34400E203C),
  reinterpret<f64>(0x3FE95FFFCC5C9FD1), reinterpret<f64>(0xBC76FF8005A0695D),
  reinterpret<f64>(0x3FE9A0003BBA4767), reinterpret<f64>(0x3C70F8C4C4EC7E03),
  reinterpret<f64>(0x3FE9DFFFE7B92DA5), reinterpret<f64>(0x3C8E7FD9478C4602),
  reinterpret<f64>(0x3FEA1FFFD72EFDAF), reinterpret<f64>(0xBC6A0C554DCDAE7E),
  reinterpret<f64>(0x3FEA5FFFDE04FF95), reinterpret<f64>(0x3C867DA98CE9B26B),
  reinterpret<f64>(0x3FEA9FFFCA5E8D2B), reinterpret<f64>(0xBC8284C9B54C13DE),
  reinterpret<f64>(0x3FEADFFFDDAD03EA), reinterpret<f64>(0x3C5812C8EA602E3C),
  reinterpret<f64>(0x3FEB1FFFF10D3D4D), reinterpret<f64>(0xBC8EFADDAD27789C),
  reinterpret<f64>(0x3FEB5FFFCE21165A), reinterpret<f64>(0x3C53CB1719C61237),
  reinterpret<f64>(0x3FEB9FFFD950E674), reinterpret<f64>(0x3C73F7D94194CE00),
  reinterpret<f64>(0x3FEBE000139CA8AF), reinterpret<f64>(0x3C750AC4215D9BC0),
  reinterpret<f64>(0x3FEC20005B46DF99), reinterpret<f64>(0x3C6BEEA653E9C1C9),
  reinterpret<f64>(0x3FEC600040B9F7AE), reinterpret<f64>(0xBC7C079F274A70D6),
  reinterpret<f64>(0x3FECA0006255FD8A), reinterpret<f64>(0xBC7A0B4076E84C1F),
  reinterpret<f64>(0x3FECDFFFD94C095D), reinterpret<f64>(0x3C88F933F99AB5D7),
  reinterpret<f64>(0x3FED1FFFF975D6CF), reinterpret<f64>(0xBC582C08665FE1BE),
  reinterpret<f64>(0x3FED5FFFA2561C93), reinterpret<f64>(0xBC7B04289BD295F3),
  reinterpret<f64>(0x3FED9FFF9D228B0C), reinterpret<f64>(0x3C870251340FA236),
  reinterpret<f64>(0x3FEDE00065BC7E16), reinterpret<f64>(0xBC75011E16A4D80C),
  reinterpret<f64>(0x3FEE200002F64791), reinterpret<f64>(0x3C89802F09EF62E0),
  reinterpret<f64>(0x3FEE600057D7A6D8), reinterpret<f64>(0xBC7E0B75580CF7FA),
  reinterpret<f64>(0x3FEEA00027EDC00C), reinterpret<f64>(0xBC8C848309459811),
  reinterpret<f64>(0x3FEEE0006CF5CB7C), reinterpret<f64>(0xBC8F8027951576F4),
  reinterpret<f64>(0x3FEF2000782B7DCC), reinterpret<f64>(0xBC8F81D97274538F),
  reinterpret<f64>(0x3FEF6000260C450A), reinterpret<f64>(0xBC4071002727FFDC),
  reinterpret<f64>(0x3FEF9FFFE88CD533), reinterpret<f64>(0xBC581BDCE1FDA8B0),
  reinterpret<f64>(0x3FEFDFFFD50F8689), reinterpret<f64>(0x3C87F91ACB918E6E),
  reinterpret<f64>(0x3FF0200004292367), reinterpret<f64>(0x3C9B7FF365324681),
  reinterpret<f64>(0x3FF05FFFE3E3D668), reinterpret<f64>(0x3C86FA08DDAE957B),
  reinterpret<f64>(0x3FF0A0000A85A757), reinterpret<f64>(0xBC57E2DE80D3FB91),
  reinterpret<f64>(0x3FF0E0001A5F3FCC), reinterpret<f64>(0xBC91823305C5F014),
  reinterpret<f64>(0x3FF11FFFF8AFBAF5), reinterpret<f64>(0xBC8BFABB6680BAC2),
  reinterpret<f64>(0x3FF15FFFE54D91AD), reinterpret<f64>(0xBC9D7F121737E7EF),
  reinterpret<f64>(0x3FF1A00011AC36E1), reinterpret<f64>(0x3C9C000A0516F5FF),
  reinterpret<f64>(0x3FF1E00019C84248), reinterpret<f64>(0xBC9082FBE4DA5DA0),
  reinterpret<f64>(0x3FF220000FFE5E6E), reinterpret<f64>(0xBC88FDD04C9CFB43),
  reinterpret<f64>(0x3FF26000269FD891), reinterpret<f64>(0x3C8CFE2A7994D182),
  reinterpret<f64>(0x3FF2A00029A6E6DA), reinterpret<f64>(0xBC700273715E8BC5),
  reinterpret<f64>(0x3FF2DFFFE0293E39), reinterpret<f64>(0x3C9B7C39DAB2A6F9),
  reinterpret<f64>(0x3FF31FFFF7DCF082), reinterpret<f64>(0x3C7DF1336EDC5254),
  reinterpret<f64>(0x3FF35FFFF05A8B60), reinterpret<f64>(0xBC9E03564CCD31EB),
  reinterpret<f64>(0x3FF3A0002E0EAECC), reinterpret<f64>(0x3C75F0E74BD3A477),
  reinterpret<f64>(0x3FF3E000043BB236), reinterpret<f64>(0x3C9C7DCB149D8833),
  reinterpret<f64>(0x3FF4200002D187FF), reinterpret<f64>(0x3C7E08AFCF2D3D28),
  reinterpret<f64>(0x3FF460000D387CB1), reinterpret<f64>(0x3C820837856599A6),
  reinterpret<f64>(0x3FF4A00004569F89), reinterpret<f64>(0xBC89FA5C904FBCD2),
  reinterpret<f64>(0x3FF4E000043543F3), reinterpret<f64>(0xBC781125ED175329),
  reinterpret<f64>(0x3FF51FFFCC027F0F), reinterpret<f64>(0x3C9883D8847754DC),
  reinterpret<f64>(0x3FF55FFFFD87B36F), reinterpret<f64>(0xBC8709E731D02807),
  reinterpret<f64>(0x3FF59FFFF21DF7BA), reinterpret<f64>(0x3C87F79F68727B02),
  reinterpret<f64>(0x3FF5DFFFEBFC3481), reinterpret<f64>(0xBC9180902E30E93E)
]);

// @ts-ignore: decorator
@inline
export function log2_lut(x: f64): f64 {
  const N_MASK = (1 << LOG2_TABLE_BITS) - 1;

  const
    LO: u64 = 0x3FEEA4AF00000000, // reinterpret<u64>(1.0 - 0x1.5b51p-5)
    HI: u64 = 0x3FF0B55900000000; // reinterpret<u64>(1.0 + 0x1.6ab2p-5)

  const
    InvLn2hi = reinterpret<f64>(0x3FF7154765200000), // 0x1.7154765200000p+0
    InvLn2lo = reinterpret<f64>(0x3DE705FC2EEFA200), // 0x1.705fc2eefa200p-33
    Ox1p52   = reinterpret<f64>(0x4330000000000000); // 0x1p52

  const
    B0 = reinterpret<f64>(0xBFE71547652B82FE), // -0x1.71547652b82fep-1
    B1 = reinterpret<f64>(0x3FDEC709DC3A03F7), //  0x1.ec709dc3a03f7p-2
    B2 = reinterpret<f64>(0xBFD71547652B7C3F), // -0x1.71547652b7c3fp-2
    B3 = reinterpret<f64>(0x3FD2776C50F05BE4), //  0x1.2776c50f05be4p-2
    B4 = reinterpret<f64>(0xBFCEC709DD768FE5), // -0x1.ec709dd768fe5p-3
    B5 = reinterpret<f64>(0x3FCA61761EC4E736), //  0x1.a61761ec4e736p-3
    B6 = reinterpret<f64>(0xBFC7153FBC64A79B), // -0x1.7153fbc64a79bp-3
    B7 = reinterpret<f64>(0x3FC484D154F01B4A), //  0x1.484d154f01b4ap-3
    B8 = reinterpret<f64>(0xBFC289E4A72C383C), // -0x1.289e4a72c383cp-3
    B9 = reinterpret<f64>(0x3FC0B32F285AEE66); //  0x1.0b32f285aee66p-3

  const
    A0 = reinterpret<f64>(0xBFE71547652B8339), // -0x1.71547652b8339p-1
    A1 = reinterpret<f64>(0x3FDEC709DC3A04BE), //  0x1.ec709dc3a04bep-2
    A2 = reinterpret<f64>(0xBFD7154764702FFB), // -0x1.7154764702ffbp-2
    A3 = reinterpret<f64>(0x3FD2776C50034C48), //  0x1.2776c50034c48p-2
    A4 = reinterpret<f64>(0xBFCEC7B328EA92BC), // -0x1.ec7b328ea92bcp-3
    A5 = reinterpret<f64>(0x3FCA6225E117F92E); //  0x1.a6225e117f92ep-3

  var ix = reinterpret<u64>(x);
  if (ix - LO < HI - LO) {
    let r = x - 1.0;
    // #if __FP_FAST_FMA
    //     hi = r * InvLn2hi;
    //     lo = r * InvLn2lo + __builtin_fma(r, InvLn2hi, -hi);
    // #else
    let rhi = reinterpret<f64>(reinterpret<u64>(r) & 0xFFFFFFFF00000000);
    let rlo = r - rhi;
    let hi  = rhi * InvLn2hi;
    let lo  = rlo * InvLn2hi + r * InvLn2lo;
    // #endif
    let r2 = r * r; // rounding error: 0x1p-62
    let r4 = r2 * r2;
    // Worst-case error is less than 0.54 ULP (0.55 ULP without fma)
    let p = r2 * (B0 + r * B1);
    let y = hi + p;
    lo += hi - y + p;
    lo += r4 * (B2 + r * B3 + r2 * (B4 + r * B5) +
          r4 * (B6 + r * B7 + r2 * (B8 + r * B9)));
    return y + lo;
  }
  var top = <u32>(ix >> 48);
  if (top - 0x0010 >= 0x7ff0 - 0x0010) {
    // x < 0x1p-1022 or inf or nan.
    if ((ix << 1) == 0) return -1.0 / (x * x);
    if (ix == 0x7FF0000000000000) return x; // log(inf) == inf
    if ((top & 0x8000) || (top & 0x7FF0) == 0x7FF0) return (x - x) / (x - x);
    // x is subnormal, normalize it.
    ix = reinterpret<u64>(x * Ox1p52);
    ix -= u64(52) << 52;
  }

  // x = 2^k z; where z is in range [OFF,2*OFF) and exact.
  // The range is split into N subintervals.
  // The ith subinterval contains z and c is near its center.
  var tmp  = ix - 0x3FE6000000000000;
  var i    = <usize>((tmp >> (52 - LOG2_TABLE_BITS)) & N_MASK);
  var k    = <i64>tmp >> 52;
  var iz   = ix - (tmp & 0xFFF0000000000000);

  var invc = load<f64>(LOG2_DATA_TAB1  + (i << (1 + alignof<f64>())), 0 << alignof<f64>()); // T[i].invc;
  var logc = load<f64>(LOG2_DATA_TAB1  + (i << (1 + alignof<f64>())), 1 << alignof<f64>()); // T[i].logc;
  var z    = reinterpret<f64>(iz);
  var kd   = <f64>k;

  // log2(x) = log2(z/c) + log2(c) + k.
  // r ~= z/c - 1, |r| < 1/(2*N).
  // #if __FP_FAST_FMA
  // 	// rounding error: 0x1p-55/N.
  // 	r = __builtin_fma(z, invc, -1.0);
  // 	t1 = r * InvLn2hi;
  // 	t2 = r * InvLn2lo + __builtin_fma(r, InvLn2hi, -t1);
  // #else
  // rounding error: 0x1p-55/N + 0x1p-65.
  var chi = load<f64>(LOG2_DATA_TAB2 + (i << (1 + alignof<f64>())), 0 << alignof<f64>()); // T[i].chi;
  var clo = load<f64>(LOG2_DATA_TAB2 + (i << (1 + alignof<f64>())), 1 << alignof<f64>()); // T[i].clo;

  var r   = (z - chi - clo) * invc;
  var rhi = reinterpret<f64>(reinterpret<u64>(r) & 0xFFFFFFFF00000000);
  var rlo = r - rhi;
  var t1  = rhi * InvLn2hi;
  var t2  = rlo * InvLn2hi + r * InvLn2lo;
  // #endif

  // hi + lo = r/ln2 + log2(c) + k
  var t3 = kd + logc;
  var hi = t3 + t1;
  var lo = t3 - hi + t1 + t2;

  // log2(r+1) = r/ln2 + r^2*poly(r)
  // Evaluation is optimized assuming superscalar pipelined execution
  var r2 = r * r; // rounding error: 0x1p-54/N^2
  // Worst-case error if |y| > 0x1p-4: 0.547 ULP (0.550 ULP without fma).
  // ~ 0.5 + 2/N/ln2 + abs-poly-error*0x1p56 ULP (+ 0.003 ULP without fma).
  var p = A0 + r * A1 + r2 * (A2 + r * A3) + (r2 * r2) * (A4 + r * A5);
  return lo + r2 * p + hi;
}

//
// Lookup data for log. See: https://git.musl-libc.org/cgit/musl/tree/src/math/log.c
//

// @ts-ignore: decorator
@inline const LOG_TABLE_BITS = 7;

/* Algorithm:

  x = 2^k z
  log(x) = k ln2 + log(c) + log(z/c)
  log(z/c) = poly(z/c - 1)

where z is in [1.6p-1; 1.6p0] which is split into N subintervals and z falls
into the ith one, then table entries are computed as

  tab[i].invc = 1/c
  tab[i].logc = (double)log(c)
  tab2[i].chi = (double)c
  tab2[i].clo = (double)(c - (double)c)

where c is near the center of the subinterval and is chosen by trying +-2^29
floating point invc candidates around 1/center and selecting one for which

  1) the rounding error in 0x1.8p9 + logc is 0,
  2) the rounding error in z - chi - clo is < 0x1p-66 and
  3) the rounding error in (double)log(c) is minimized (< 0x1p-66).

Note: 1) ensures that k*ln2hi + logc can be computed without rounding error,
2) ensures that z/c - 1 can be computed as (z - chi - clo)*invc with close to
a single rounding error when there is no fast fma for z*invc - 1, 3) ensures
that logc + poly(z/c - 1) has small error, however near x == 1 when
|log(x)| < 0x1p-4, this is not enough so that is special cased.*/

// @ts-ignore: decorator
@lazy @inline const LOG_DATA_TAB1 = memory.data<f64>([
  //              invc                ,                 logc
  reinterpret<f64>(0x3FF734F0C3E0DE9F), reinterpret<f64>(0xBFD7CC7F79E69000),
  reinterpret<f64>(0x3FF713786A2CE91F), reinterpret<f64>(0xBFD76FEEC20D0000),
  reinterpret<f64>(0x3FF6F26008FAB5A0), reinterpret<f64>(0xBFD713E31351E000),
  reinterpret<f64>(0x3FF6D1A61F138C7D), reinterpret<f64>(0xBFD6B85B38287800),
  reinterpret<f64>(0x3FF6B1490BC5B4D1), reinterpret<f64>(0xBFD65D5590807800),
  reinterpret<f64>(0x3FF69147332F0CBA), reinterpret<f64>(0xBFD602D076180000),
  reinterpret<f64>(0x3FF6719F18224223), reinterpret<f64>(0xBFD5A8CA86909000),
  reinterpret<f64>(0x3FF6524F99A51ED9), reinterpret<f64>(0xBFD54F4356035000),
  reinterpret<f64>(0x3FF63356AA8F24C4), reinterpret<f64>(0xBFD4F637C36B4000),
  reinterpret<f64>(0x3FF614B36B9DDC14), reinterpret<f64>(0xBFD49DA7FDA85000),
  reinterpret<f64>(0x3FF5F66452C65C4C), reinterpret<f64>(0xBFD445923989A800),
  reinterpret<f64>(0x3FF5D867B5912C4F), reinterpret<f64>(0xBFD3EDF439B0B800),
  reinterpret<f64>(0x3FF5BABCCB5B90DE), reinterpret<f64>(0xBFD396CE448F7000),
  reinterpret<f64>(0x3FF59D61F2D91A78), reinterpret<f64>(0xBFD3401E17BDA000),
  reinterpret<f64>(0x3FF5805612465687), reinterpret<f64>(0xBFD2E9E2EF468000),
  reinterpret<f64>(0x3FF56397CEE76BD3), reinterpret<f64>(0xBFD2941B3830E000),
  reinterpret<f64>(0x3FF54725E2A77F93), reinterpret<f64>(0xBFD23EC58CDA8800),
  reinterpret<f64>(0x3FF52AFF42064583), reinterpret<f64>(0xBFD1E9E129279000),
  reinterpret<f64>(0x3FF50F22DBB2BDDF), reinterpret<f64>(0xBFD1956D2B48F800),
  reinterpret<f64>(0x3FF4F38F4734DED7), reinterpret<f64>(0xBFD141679AB9F800),
  reinterpret<f64>(0x3FF4D843CFDE2840), reinterpret<f64>(0xBFD0EDD094EF9800),
  reinterpret<f64>(0x3FF4BD3EC078A3C8), reinterpret<f64>(0xBFD09AA518DB1000),
  reinterpret<f64>(0x3FF4A27FC3E0258A), reinterpret<f64>(0xBFD047E65263B800),
  reinterpret<f64>(0x3FF4880524D48434), reinterpret<f64>(0xBFCFEB224586F000),
  reinterpret<f64>(0x3FF46DCE1B192D0B), reinterpret<f64>(0xBFCF474A7517B000),
  reinterpret<f64>(0x3FF453D9D3391854), reinterpret<f64>(0xBFCEA4443D103000),
  reinterpret<f64>(0x3FF43A2744B4845A), reinterpret<f64>(0xBFCE020D44E9B000),
  reinterpret<f64>(0x3FF420B54115F8FB), reinterpret<f64>(0xBFCD60A22977F000),
  reinterpret<f64>(0x3FF40782DA3EF4B1), reinterpret<f64>(0xBFCCC00104959000),
  reinterpret<f64>(0x3FF3EE8F5D57FE8F), reinterpret<f64>(0xBFCC202956891000),
  reinterpret<f64>(0x3FF3D5D9A00B4CE9), reinterpret<f64>(0xBFCB81178D811000),
  reinterpret<f64>(0x3FF3BD60C010C12B), reinterpret<f64>(0xBFCAE2C9CCD3D000),
  reinterpret<f64>(0x3FF3A5242B75DAB8), reinterpret<f64>(0xBFCA45402E129000),
  reinterpret<f64>(0x3FF38D22CD9FD002), reinterpret<f64>(0xBFC9A877681DF000),
  reinterpret<f64>(0x3FF3755BC5847A1C), reinterpret<f64>(0xBFC90C6D69483000),
  reinterpret<f64>(0x3FF35DCE49AD36E2), reinterpret<f64>(0xBFC87120A645C000),
  reinterpret<f64>(0x3FF34679984DD440), reinterpret<f64>(0xBFC7D68FB4143000),
  reinterpret<f64>(0x3FF32F5CCEFFCB24), reinterpret<f64>(0xBFC73CB83C627000),
  reinterpret<f64>(0x3FF3187775A10D49), reinterpret<f64>(0xBFC6A39A9B376000),
  reinterpret<f64>(0x3FF301C8373E3990), reinterpret<f64>(0xBFC60B3154B7A000),
  reinterpret<f64>(0x3FF2EB4EBB95F841), reinterpret<f64>(0xBFC5737D76243000),
  reinterpret<f64>(0x3FF2D50A0219A9D1), reinterpret<f64>(0xBFC4DC7B8FC23000),
  reinterpret<f64>(0x3FF2BEF9A8B7FD2A), reinterpret<f64>(0xBFC4462C51D20000),
  reinterpret<f64>(0x3FF2A91C7A0C1BAB), reinterpret<f64>(0xBFC3B08ABC830000),
  reinterpret<f64>(0x3FF293726014B530), reinterpret<f64>(0xBFC31B996B490000),
  reinterpret<f64>(0x3FF27DFA5757A1F5), reinterpret<f64>(0xBFC2875490A44000),
  reinterpret<f64>(0x3FF268B39B1D3BBF), reinterpret<f64>(0xBFC1F3B9F879A000),
  reinterpret<f64>(0x3FF2539D838FF5BD), reinterpret<f64>(0xBFC160C8252CA000),
  reinterpret<f64>(0x3FF23EB7AAC9083B), reinterpret<f64>(0xBFC0CE7F57F72000),
  reinterpret<f64>(0x3FF22A012BA940B6), reinterpret<f64>(0xBFC03CDC49FEA000),
  reinterpret<f64>(0x3FF2157996CC4132), reinterpret<f64>(0xBFBF57BDBC4B8000),
  reinterpret<f64>(0x3FF201201DD2FC9B), reinterpret<f64>(0xBFBE370896404000),
  reinterpret<f64>(0x3FF1ECF4494D480B), reinterpret<f64>(0xBFBD17983EF94000),
  reinterpret<f64>(0x3FF1D8F5528F6569), reinterpret<f64>(0xBFBBF9674ED8A000),
  reinterpret<f64>(0x3FF1C52311577E7C), reinterpret<f64>(0xBFBADC79202F6000),
  reinterpret<f64>(0x3FF1B17C74CB26E9), reinterpret<f64>(0xBFB9C0C3E7288000),
  reinterpret<f64>(0x3FF19E010C2C1AB6), reinterpret<f64>(0xBFB8A646B372C000),
  reinterpret<f64>(0x3FF18AB07BB670BD), reinterpret<f64>(0xBFB78D01B3AC0000),
  reinterpret<f64>(0x3FF1778A25EFBCB6), reinterpret<f64>(0xBFB674F145380000),
  reinterpret<f64>(0x3FF1648D354C31DA), reinterpret<f64>(0xBFB55E0E6D878000),
  reinterpret<f64>(0x3FF151B990275FDD), reinterpret<f64>(0xBFB4485CDEA1E000),
  reinterpret<f64>(0x3FF13F0EA432D24C), reinterpret<f64>(0xBFB333D94D6AA000),
  reinterpret<f64>(0x3FF12C8B7210F9DA), reinterpret<f64>(0xBFB22079F8C56000),
  reinterpret<f64>(0x3FF11A3028ECB531), reinterpret<f64>(0xBFB10E4698622000),
  reinterpret<f64>(0x3FF107FBDA8434AF), reinterpret<f64>(0xBFAFFA6C6AD20000),
  reinterpret<f64>(0x3FF0F5EE0F4E6BB3), reinterpret<f64>(0xBFADDA8D4A774000),
  reinterpret<f64>(0x3FF0E4065D2A9FCE), reinterpret<f64>(0xBFABBCECE4850000),
  reinterpret<f64>(0x3FF0D244632CA521), reinterpret<f64>(0xBFA9A1894012C000),
  reinterpret<f64>(0x3FF0C0A77CE2981A), reinterpret<f64>(0xBFA788583302C000),
  reinterpret<f64>(0x3FF0AF2F83C636D1), reinterpret<f64>(0xBFA5715E67D68000),
  reinterpret<f64>(0x3FF09DDB98A01339), reinterpret<f64>(0xBFA35C8A49658000),
  reinterpret<f64>(0x3FF08CABAF52E7DF), reinterpret<f64>(0xBFA149E364154000),
  reinterpret<f64>(0x3FF07B9F2F4E28FB), reinterpret<f64>(0xBF9E72C082EB8000),
  reinterpret<f64>(0x3FF06AB58C358F19), reinterpret<f64>(0xBF9A55F152528000),
  reinterpret<f64>(0x3FF059EEA5ECF92C), reinterpret<f64>(0xBF963D62CF818000),
  reinterpret<f64>(0x3FF04949CDD12C90), reinterpret<f64>(0xBF9228FB8CAA0000),
  reinterpret<f64>(0x3FF038C6C6F0ADA9), reinterpret<f64>(0xBF8C317B20F90000),
  reinterpret<f64>(0x3FF02865137932A9), reinterpret<f64>(0xBF8419355DAA0000),
  reinterpret<f64>(0x3FF0182427EA7348), reinterpret<f64>(0xBF781203C2EC0000),
  reinterpret<f64>(0x3FF008040614B195), reinterpret<f64>(0xBF60040979240000),
  reinterpret<f64>(0x3FEFE01FF726FA1A), reinterpret<f64>(0x3F6FEFF384900000),
  reinterpret<f64>(0x3FEFA11CC261EA74), reinterpret<f64>(0x3F87DC41353D0000),
  reinterpret<f64>(0x3FEF6310B081992E), reinterpret<f64>(0x3F93CEA3C4C28000),
  reinterpret<f64>(0x3FEF25F63CEEADCD), reinterpret<f64>(0x3F9B9FC114890000),
  reinterpret<f64>(0x3FEEE9C8039113E7), reinterpret<f64>(0x3FA1B0D8CE110000),
  reinterpret<f64>(0x3FEEAE8078CBB1AB), reinterpret<f64>(0x3FA58A5BD001C000),
  reinterpret<f64>(0x3FEE741AA29D0C9B), reinterpret<f64>(0x3FA95C8340D88000),
  reinterpret<f64>(0x3FEE3A91830A99B5), reinterpret<f64>(0x3FAD276AEF578000),
  reinterpret<f64>(0x3FEE01E009609A56), reinterpret<f64>(0x3FB07598E598C000),
  reinterpret<f64>(0x3FEDCA01E577BB98), reinterpret<f64>(0x3FB253F5E30D2000),
  reinterpret<f64>(0x3FED92F20B7C9103), reinterpret<f64>(0x3FB42EDD8B380000),
  reinterpret<f64>(0x3FED5CAC66FB5CCE), reinterpret<f64>(0x3FB606598757C000),
  reinterpret<f64>(0x3FED272CAA5EDE9D), reinterpret<f64>(0x3FB7DA76356A0000),
  reinterpret<f64>(0x3FECF26E3E6B2CCD), reinterpret<f64>(0x3FB9AB434E1C6000),
  reinterpret<f64>(0x3FECBE6DA2A77902), reinterpret<f64>(0x3FBB78C7BB0D6000),
  reinterpret<f64>(0x3FEC8B266D37086D), reinterpret<f64>(0x3FBD431332E72000),
  reinterpret<f64>(0x3FEC5894BD5D5804), reinterpret<f64>(0x3FBF0A3171DE6000),
  reinterpret<f64>(0x3FEC26B533BB9F8C), reinterpret<f64>(0x3FC067152B914000),
  reinterpret<f64>(0x3FEBF583EEECE73F), reinterpret<f64>(0x3FC147858292B000),
  reinterpret<f64>(0x3FEBC4FD75DB96C1), reinterpret<f64>(0x3FC2266ECDCA3000),
  reinterpret<f64>(0x3FEB951E0C864A28), reinterpret<f64>(0x3FC303D7A6C55000),
  reinterpret<f64>(0x3FEB65E2C5EF3E2C), reinterpret<f64>(0x3FC3DFC33C331000),
  reinterpret<f64>(0x3FEB374867C9888B), reinterpret<f64>(0x3FC4BA366B7A8000),
  reinterpret<f64>(0x3FEB094B211D304A), reinterpret<f64>(0x3FC5933928D1F000),
  reinterpret<f64>(0x3FEADBE885F2EF7E), reinterpret<f64>(0x3FC66ACD2418F000),
  reinterpret<f64>(0x3FEAAF1D31603DA2), reinterpret<f64>(0x3FC740F8EC669000),
  reinterpret<f64>(0x3FEA82E63FD358A7), reinterpret<f64>(0x3FC815C0F51AF000),
  reinterpret<f64>(0x3FEA5740EF09738B), reinterpret<f64>(0x3FC8E92954F68000),
  reinterpret<f64>(0x3FEA2C2A90AB4B27), reinterpret<f64>(0x3FC9BB3602F84000),
  reinterpret<f64>(0x3FEA01A01393F2D1), reinterpret<f64>(0x3FCA8BED1C2C0000),
  reinterpret<f64>(0x3FE9D79F24DB3C1B), reinterpret<f64>(0x3FCB5B515C01D000),
  reinterpret<f64>(0x3FE9AE2505C7B190), reinterpret<f64>(0x3FCC2967CCBCC000),
  reinterpret<f64>(0x3FE9852EF297CE2F), reinterpret<f64>(0x3FCCF635D5486000),
  reinterpret<f64>(0x3FE95CBAEEA44B75), reinterpret<f64>(0x3FCDC1BD3446C000),
  reinterpret<f64>(0x3FE934C69DE74838), reinterpret<f64>(0x3FCE8C01B8CFE000),
  reinterpret<f64>(0x3FE90D4F2F6752E6), reinterpret<f64>(0x3FCF5509C0179000),
  reinterpret<f64>(0x3FE8E6528EFFD79D), reinterpret<f64>(0x3FD00E6C121FB800),
  reinterpret<f64>(0x3FE8BFCE9FCC007C), reinterpret<f64>(0x3FD071B80E93D000),
  reinterpret<f64>(0x3FE899C0DABEC30E), reinterpret<f64>(0x3FD0D46B9E867000),
  reinterpret<f64>(0x3FE87427AA2317FB), reinterpret<f64>(0x3FD13687334BD000),
  reinterpret<f64>(0x3FE84F00ACB39A08), reinterpret<f64>(0x3FD1980D67234800),
  reinterpret<f64>(0x3FE82A49E8653E55), reinterpret<f64>(0x3FD1F8FFE0CC8000),
  reinterpret<f64>(0x3FE8060195F40260), reinterpret<f64>(0x3FD2595FD7636800),
  reinterpret<f64>(0x3FE7E22563E0A329), reinterpret<f64>(0x3FD2B9300914A800),
  reinterpret<f64>(0x3FE7BEB377DCB5AD), reinterpret<f64>(0x3FD3187210436000),
  reinterpret<f64>(0x3FE79BAA679725C2), reinterpret<f64>(0x3FD377266DEC1800),
  reinterpret<f64>(0x3FE77907F2170657), reinterpret<f64>(0x3FD3D54FFBAF3000),
  reinterpret<f64>(0x3FE756CADBD6130C), reinterpret<f64>(0x3FD432EEE32FE000)
]);

// @ts-ignore: decorator
@lazy @inline const LOG_DATA_TAB2 = memory.data<f64>([
  //               chi                ,                  clo
  reinterpret<f64>(0x3FE61000014FB66B), reinterpret<f64>(0x3C7E026C91425B3C),
  reinterpret<f64>(0x3FE63000034DB495), reinterpret<f64>(0x3C8DBFEA48005D41),
  reinterpret<f64>(0x3FE650000D94D478), reinterpret<f64>(0x3C8E7FA786D6A5B7),
  reinterpret<f64>(0x3FE67000074E6FAD), reinterpret<f64>(0x3C61FCEA6B54254C),
  reinterpret<f64>(0x3FE68FFFFEDF0FAE), reinterpret<f64>(0xBC7C7E274C590EFD),
  reinterpret<f64>(0x3FE6B0000763C5BC), reinterpret<f64>(0xBC8AC16848DCDA01),
  reinterpret<f64>(0x3FE6D0001E5CC1F6), reinterpret<f64>(0x3C833F1C9D499311),
  reinterpret<f64>(0x3FE6EFFFEB05F63E), reinterpret<f64>(0xBC7E80041AE22D53),
  reinterpret<f64>(0x3FE710000E869780), reinterpret<f64>(0x3C7BFF6671097952),
  reinterpret<f64>(0x3FE72FFFFC67E912), reinterpret<f64>(0x3C8C00E226BD8724),
  reinterpret<f64>(0x3FE74FFFDF81116A), reinterpret<f64>(0xBC6E02916EF101D2),
  reinterpret<f64>(0x3FE770000F679C90), reinterpret<f64>(0xBC67FC71CD549C74),
  reinterpret<f64>(0x3FE78FFFFA7EC835), reinterpret<f64>(0x3C81BEC19EF50483),
  reinterpret<f64>(0x3FE7AFFFFE20C2E6), reinterpret<f64>(0xBC707E1729CC6465),
  reinterpret<f64>(0x3FE7CFFFED3FC900), reinterpret<f64>(0xBC808072087B8B1C),
  reinterpret<f64>(0x3FE7EFFFE9261A76), reinterpret<f64>(0x3C8DC0286D9DF9AE),
  reinterpret<f64>(0x3FE81000049CA3E8), reinterpret<f64>(0x3C897FD251E54C33),
  reinterpret<f64>(0x3FE8300017932C8F), reinterpret<f64>(0xBC8AFEE9B630F381),
  reinterpret<f64>(0x3FE850000633739C), reinterpret<f64>(0x3C89BFBF6B6535BC),
  reinterpret<f64>(0x3FE87000204289C6), reinterpret<f64>(0xBC8BBF65F3117B75),
  reinterpret<f64>(0x3FE88FFFEBF57904), reinterpret<f64>(0xBC89006EA23DCB57),
  reinterpret<f64>(0x3FE8B00022BC04DF), reinterpret<f64>(0xBC7D00DF38E04B0A),
  reinterpret<f64>(0x3FE8CFFFE50C1B8A), reinterpret<f64>(0xBC88007146FF9F05),
  reinterpret<f64>(0x3FE8EFFFFC918E43), reinterpret<f64>(0x3C83817BD07A7038),
  reinterpret<f64>(0x3FE910001EFA5FC7), reinterpret<f64>(0x3C893E9176DFB403),
  reinterpret<f64>(0x3FE9300013467BB9), reinterpret<f64>(0x3C7F804E4B980276),
  reinterpret<f64>(0x3FE94FFFE6EE076F), reinterpret<f64>(0xBC8F7EF0D9FF622E),
  reinterpret<f64>(0x3FE96FFFDE3C12D1), reinterpret<f64>(0xBC7082AA962638BA),
  reinterpret<f64>(0x3FE98FFFF4458A0D), reinterpret<f64>(0xBC87801B9164A8EF),
  reinterpret<f64>(0x3FE9AFFFDD982E3E), reinterpret<f64>(0xBC8740E08A5A9337),
  reinterpret<f64>(0x3FE9CFFFED49FB66), reinterpret<f64>(0x3C3FCE08C19BE000),
  reinterpret<f64>(0x3FE9F00020F19C51), reinterpret<f64>(0xBC8A3FAA27885B0A),
  reinterpret<f64>(0x3FEA10001145B006), reinterpret<f64>(0x3C74FF489958DA56),
  reinterpret<f64>(0x3FEA300007BBF6FA), reinterpret<f64>(0x3C8CBEAB8A2B6D18),
  reinterpret<f64>(0x3FEA500010971D79), reinterpret<f64>(0x3C88FECADD787930),
  reinterpret<f64>(0x3FEA70001DF52E48), reinterpret<f64>(0xBC8F41763DD8ABDB),
  reinterpret<f64>(0x3FEA90001C593352), reinterpret<f64>(0xBC8EBF0284C27612),
  reinterpret<f64>(0x3FEAB0002A4F3E4B), reinterpret<f64>(0xBC69FD043CFF3F5F),
  reinterpret<f64>(0x3FEACFFFD7AE1ED1), reinterpret<f64>(0xBC823EE7129070B4),
  reinterpret<f64>(0x3FEAEFFFEE510478), reinterpret<f64>(0x3C6A063EE00EDEA3),
  reinterpret<f64>(0x3FEB0FFFDB650D5B), reinterpret<f64>(0x3C5A06C8381F0AB9),
  reinterpret<f64>(0x3FEB2FFFFEAACA57), reinterpret<f64>(0xBC79011E74233C1D),
  reinterpret<f64>(0x3FEB4FFFD995BADC), reinterpret<f64>(0xBC79FF1068862A9F),
  reinterpret<f64>(0x3FEB7000249E659C), reinterpret<f64>(0x3C8AFF45D0864F3E),
  reinterpret<f64>(0x3FEB8FFFF9871640), reinterpret<f64>(0x3C7CFE7796C2C3F9),
  reinterpret<f64>(0x3FEBAFFFD204CB4F), reinterpret<f64>(0xBC63FF27EEF22BC4),
  reinterpret<f64>(0x3FEBCFFFD2415C45), reinterpret<f64>(0xBC6CFFB7EE3BEA21),
  reinterpret<f64>(0x3FEBEFFFF86309DF), reinterpret<f64>(0xBC814103972E0B5C),
  reinterpret<f64>(0x3FEC0FFFE1B57653), reinterpret<f64>(0x3C8BC16494B76A19),
  reinterpret<f64>(0x3FEC2FFFF1FA57E3), reinterpret<f64>(0xBC64FEEF8D30C6ED),
  reinterpret<f64>(0x3FEC4FFFDCBFE424), reinterpret<f64>(0xBC843F68BCEC4775),
  reinterpret<f64>(0x3FEC6FFFED54B9F7), reinterpret<f64>(0x3C847EA3F053E0EC),
  reinterpret<f64>(0x3FEC8FFFEB998FD5), reinterpret<f64>(0x3C7383068DF992F1),
  reinterpret<f64>(0x3FECB0002125219A), reinterpret<f64>(0xBC68FD8E64180E04),
  reinterpret<f64>(0x3FECCFFFDD94469C), reinterpret<f64>(0x3C8E7EBE1CC7EA72),
  reinterpret<f64>(0x3FECEFFFEAFDC476), reinterpret<f64>(0x3C8EBE39AD9F88FE),
  reinterpret<f64>(0x3FED1000169AF82B), reinterpret<f64>(0x3C757D91A8B95A71),
  reinterpret<f64>(0x3FED30000D0FF71D), reinterpret<f64>(0x3C89C1906970C7DA),
  reinterpret<f64>(0x3FED4FFFEA790FC4), reinterpret<f64>(0xBC580E37C558FE0C),
  reinterpret<f64>(0x3FED70002EDC87E5), reinterpret<f64>(0xBC7F80D64DC10F44),
  reinterpret<f64>(0x3FED900021DC82AA), reinterpret<f64>(0xBC747C8F94FD5C5C),
  reinterpret<f64>(0x3FEDAFFFD86B0283), reinterpret<f64>(0x3C8C7F1DC521617E),
  reinterpret<f64>(0x3FEDD000296C4739), reinterpret<f64>(0x3C88019EB2FFB153),
  reinterpret<f64>(0x3FEDEFFFE54490F5), reinterpret<f64>(0x3C6E00D2C652CC89),
  reinterpret<f64>(0x3FEE0FFFCDABF694), reinterpret<f64>(0xBC7F8340202D69D2),
  reinterpret<f64>(0x3FEE2FFFDB52C8DD), reinterpret<f64>(0x3C7B00C1CA1B0864),
  reinterpret<f64>(0x3FEE4FFFF24216EF), reinterpret<f64>(0x3C72FFA8B094AB51),
  reinterpret<f64>(0x3FEE6FFFE88A5E11), reinterpret<f64>(0xBC57F673B1EFBE59),
  reinterpret<f64>(0x3FEE9000119EFF0D), reinterpret<f64>(0xBC84808D5E0BC801),
  reinterpret<f64>(0x3FEEAFFFDFA51744), reinterpret<f64>(0x3C780006D54320B5),
  reinterpret<f64>(0x3FEED0001A127FA1), reinterpret<f64>(0xBC5002F860565C92),
  reinterpret<f64>(0x3FEEF00007BABCC4), reinterpret<f64>(0xBC8540445D35E611),
  reinterpret<f64>(0x3FEF0FFFF57A8D02), reinterpret<f64>(0xBC4FFB3139EF9105),
  reinterpret<f64>(0x3FEF30001EE58AC7), reinterpret<f64>(0x3C8A81ACF2731155),
  reinterpret<f64>(0x3FEF4FFFF5823494), reinterpret<f64>(0x3C8A3F41D4D7C743),
  reinterpret<f64>(0x3FEF6FFFFCA94C6B), reinterpret<f64>(0xBC6202F41C987875),
  reinterpret<f64>(0x3FEF8FFFE1F9C441), reinterpret<f64>(0x3C777DD1F477E74B),
  reinterpret<f64>(0x3FEFAFFFD2E0E37E), reinterpret<f64>(0xBC6F01199A7CA331),
  reinterpret<f64>(0x3FEFD0001C77E49E), reinterpret<f64>(0x3C7181EE4BCEACB1),
  reinterpret<f64>(0x3FEFEFFFF7E0C331), reinterpret<f64>(0xBC6E05370170875A),
  reinterpret<f64>(0x3FF00FFFF465606E), reinterpret<f64>(0xBC8A7EAD491C0ADA),
  reinterpret<f64>(0x3FF02FFFF3867A58), reinterpret<f64>(0xBC977F69C3FCB2E0),
  reinterpret<f64>(0x3FF04FFFFDFC0D17), reinterpret<f64>(0x3C97BFFE34CB945B),
  reinterpret<f64>(0x3FF0700003CD4D82), reinterpret<f64>(0x3C820083C0E456CB),
  reinterpret<f64>(0x3FF08FFFF9F2CBE8), reinterpret<f64>(0xBC6DFFDFBE37751A),
  reinterpret<f64>(0x3FF0B000010CDA65), reinterpret<f64>(0xBC913F7FAEE626EB),
  reinterpret<f64>(0x3FF0D00001A4D338), reinterpret<f64>(0x3C807DFA79489FF7),
  reinterpret<f64>(0x3FF0EFFFFADAFDFD), reinterpret<f64>(0xBC77040570D66BC0),
  reinterpret<f64>(0x3FF110000BBAFD96), reinterpret<f64>(0x3C8E80D4846D0B62),
  reinterpret<f64>(0x3FF12FFFFAE5F45D), reinterpret<f64>(0x3C9DBFFA64FD36EF),
  reinterpret<f64>(0x3FF150000DD59AD9), reinterpret<f64>(0x3C9A0077701250AE),
  reinterpret<f64>(0x3FF170000F21559A), reinterpret<f64>(0x3C8DFDF9E2E3DEEE),
  reinterpret<f64>(0x3FF18FFFFC275426), reinterpret<f64>(0x3C910030DC3B7273),
  reinterpret<f64>(0x3FF1B000123D3C59), reinterpret<f64>(0x3C997F7980030188),
  reinterpret<f64>(0x3FF1CFFFF8299EB7), reinterpret<f64>(0xBC65F932AB9F8C67),
  reinterpret<f64>(0x3FF1EFFFF48AD400), reinterpret<f64>(0x3C937FBF9DA75BEB),
  reinterpret<f64>(0x3FF210000C8B86A4), reinterpret<f64>(0x3C9F806B91FD5B22),
  reinterpret<f64>(0x3FF2300003854303), reinterpret<f64>(0x3C93FFC2EB9FBF33),
  reinterpret<f64>(0x3FF24FFFFFBCF684), reinterpret<f64>(0x3C7601E77E2E2E72),
  reinterpret<f64>(0x3FF26FFFF52921D9), reinterpret<f64>(0x3C7FFCBB767F0C61),
  reinterpret<f64>(0x3FF2900014933A3C), reinterpret<f64>(0xBC7202CA3C02412B),
  reinterpret<f64>(0x3FF2B00014556313), reinterpret<f64>(0xBC92808233F21F02),
  reinterpret<f64>(0x3FF2CFFFEBFE523B), reinterpret<f64>(0xBC88FF7E384FDCF2),
  reinterpret<f64>(0x3FF2F0000BB8AD96), reinterpret<f64>(0xBC85FF51503041C5),
  reinterpret<f64>(0x3FF30FFFFB7AE2AF), reinterpret<f64>(0xBC810071885E289D),
  reinterpret<f64>(0x3FF32FFFFEAC5F7F), reinterpret<f64>(0xBC91FF5D3FB7B715),
  reinterpret<f64>(0x3FF350000CA66756), reinterpret<f64>(0x3C957F82228B82BD),
  reinterpret<f64>(0x3FF3700011FBF721), reinterpret<f64>(0x3C8000BAC40DD5CC),
  reinterpret<f64>(0x3FF38FFFF9592FB9), reinterpret<f64>(0xBC943F9D2DB2A751),
  reinterpret<f64>(0x3FF3B00004DDD242), reinterpret<f64>(0x3C857F6B707638E1),
  reinterpret<f64>(0x3FF3CFFFF5B2C957), reinterpret<f64>(0x3C7A023A10BF1231),
  reinterpret<f64>(0x3FF3EFFFEAB0B418), reinterpret<f64>(0x3C987F6D66B152B0),
  reinterpret<f64>(0x3FF410001532AFF4), reinterpret<f64>(0x3C67F8375F198524),
  reinterpret<f64>(0x3FF4300017478B29), reinterpret<f64>(0x3C8301E672DC5143),
  reinterpret<f64>(0x3FF44FFFE795B463), reinterpret<f64>(0x3C89FF69B8B2895A),
  reinterpret<f64>(0x3FF46FFFE80475E0), reinterpret<f64>(0xBC95C0B19BC2F254),
  reinterpret<f64>(0x3FF48FFFEF6FC1E7), reinterpret<f64>(0x3C9B4009F23A2A72),
  reinterpret<f64>(0x3FF4AFFFE5BEA704), reinterpret<f64>(0xBC94FFB7BF0D7D45),
  reinterpret<f64>(0x3FF4D000171027DE), reinterpret<f64>(0xBC99C06471DC6A3D),
  reinterpret<f64>(0x3FF4F0000FF03EE2), reinterpret<f64>(0x3C977F890B85531C),
  reinterpret<f64>(0x3FF5100012DC4BD1), reinterpret<f64>(0x3C6004657166A436),
  reinterpret<f64>(0x3FF530001605277A), reinterpret<f64>(0xBC96BFCECE233209),
  reinterpret<f64>(0x3FF54FFFECDB704C), reinterpret<f64>(0xBC8902720505A1D7),
  reinterpret<f64>(0x3FF56FFFEF5F54A9), reinterpret<f64>(0x3C9BBFE60EC96412),
  reinterpret<f64>(0x3FF5900017E61012), reinterpret<f64>(0x3C887EC581AFEF90),
  reinterpret<f64>(0x3FF5B00003C93E92), reinterpret<f64>(0xBC9F41080ABF0CC0),
  reinterpret<f64>(0x3FF5D0001D4919BC), reinterpret<f64>(0xBC98812AFB254729),
  reinterpret<f64>(0x3FF5EFFFE7B87A89), reinterpret<f64>(0xBC947EB780ED6904)
]);

// @ts-ignore: decorator
@inline
export function log_lut(x: f64): f64 {
  const N_MASK = (1 << LOG_TABLE_BITS) - 1;

  const
    B0  = reinterpret<f64>(0xBFE0000000000000), // -0x1p-1
    B1  = reinterpret<f64>(0x3FD5555555555577), //  0x1.5555555555577p-2
    B2  = reinterpret<f64>(0xBFCFFFFFFFFFFDCB), // -0x1.ffffffffffdcbp-3
    B3  = reinterpret<f64>(0x3FC999999995DD0C), //  0x1.999999995dd0cp-3
    B4  = reinterpret<f64>(0xBFC55555556745A7), // -0x1.55555556745a7p-3
    B5  = reinterpret<f64>(0x3FC24924A344DE30), //  0x1.24924a344de3p-3
    B6  = reinterpret<f64>(0xBFBFFFFFA4423D65), // -0x1.fffffa4423d65p-4
    B7  = reinterpret<f64>(0x3FBC7184282AD6CA), //  0x1.c7184282ad6cap-4
    B8  = reinterpret<f64>(0xBFB999EB43B068FF), // -0x1.999eb43b068ffp-4
    B9  = reinterpret<f64>(0x3FB78182F7AFD085), //  0x1.78182f7afd085p-4
    B10 = reinterpret<f64>(0xBFB5521375D145CD); // -0x1.5521375d145cdp-4

  const
    A0 = reinterpret<f64>(0xBFE0000000000001),  // -0x1.0000000000001p-1
    A1 = reinterpret<f64>(0x3FD555555551305B),  //  0x1.555555551305bp-2
    A2 = reinterpret<f64>(0xBFCFFFFFFFEB4590),  // -0x1.fffffffeb459p-3
    A3 = reinterpret<f64>(0x3FC999B324F10111),  //  0x1.999b324f10111p-3
    A4 = reinterpret<f64>(0xBFC55575E506C89F);  // -0x1.55575e506c89fp-3

  const
    LO: u64 = 0x3FEE000000000000,
    HI: u64 = 0x3FF1090000000000;

  const
    Ln2hi  = reinterpret<f64>(0x3FE62E42FEFA3800), // 0x1.62e42fefa3800p-1
    Ln2lo  = reinterpret<f64>(0x3D2EF35793C76730), // 0x1.ef35793c76730p-45
    Ox1p27 = reinterpret<f64>(0x41A0000000000000), // 0x1p27
    Ox1p52 = reinterpret<f64>(0x4330000000000000); // 0x1p52

  var ix = reinterpret<u64>(x);
  if (ix - LO < HI - LO) {
    let r  = x - 1.0;
    let r2 = r * r;
    let r3 = r2 * r;
    let y =
      r3 * (B1 + r * B2 + r2 * B3 +
      r3 * (B4 + r * B5 + r2 * B6 +
      r3 * (B7 + r * B8 + r2 * B9 + r3 * B10)));
    // Worst-case error is around 0.507 ULP
    let w   = r * Ox1p27;
    let rhi = r + w - w;
    let rlo = r - rhi;
    w = rhi * rhi * B0; // B[0] == -0.5
    let hi = r + w;
    let lo = r - hi + w;
    lo += B0 * rlo * (rhi + r);
    return y + lo + hi;
  }
  var top = u32(ix >> 48);
  if (top - 0x0010 >= 0x7FF0 - 0x0010) {
    // x < 0x1p-1022 or inf or nan
    if ((ix << 1) == 0) return -1.0 / (x * x);
    if (ix == reinterpret<u64>(Infinity)) return x; // log(inf) == inf
    if ((top & 0x8000) || (top & 0x7FF0) == 0x7FF0) return (x - x) / (x - x);
    // x is subnormal, normalize it
    ix = reinterpret<u64>(x * Ox1p52);
    ix -= u64(52) << 52;
  }

  // x = 2^k z; where z is in range [OFF,2*OFF) and exact.
  // The range is split into N subintervals.
  // The ith subinterval contains z and c is near its center.
  var tmp  = ix - 0x3FE6000000000000;
  var i    = <usize>((tmp >> (52 - LOG_TABLE_BITS)) & N_MASK);
  var k    = <i64>tmp >> 52;
  var iz   = ix - (tmp & (u64(0xFFF) << 52));

  var invc = load<f64>(LOG_DATA_TAB1 + (i << (1 + alignof<f64>())), 0 << alignof<f64>()); // T[i].invc;
  var logc = load<f64>(LOG_DATA_TAB1 + (i << (1 + alignof<f64>())), 1 << alignof<f64>()); // T[i].logc;
  var z    = reinterpret<f64>(iz);

  // log(x) = log1p(z/c-1) + log(c) + k*Ln2.
  // r ~= z/c - 1, |r| < 1/(2*N)
  // #if __FP_FAST_FMA
  // 	// rounding error: 0x1p-55/N
  // 	r = __builtin_fma(z, invc, -1.0);
  // #else
  // rounding error: 0x1p-55/N + 0x1p-66
  const chi = load<f64>(LOG_DATA_TAB2 + (i << (1 + alignof<f64>())), 0 << alignof<f64>()); // T2[i].chi
  const clo = load<f64>(LOG_DATA_TAB2 + (i << (1 + alignof<f64>())), 1 << alignof<f64>()); // T2[i].clo
  var r = (z - chi - clo) * invc;
  // #endif
  var kd = <f64>k;

  // hi + lo = r + log(c) + k*Ln2
  var w  = kd * Ln2hi + logc;
  var hi = w + r;
  var lo = w - hi + r + kd * Ln2lo;

  // log(x) = lo + (log1p(r) - r) + hi
  var r2 = r * r; // rounding error: 0x1p-54/N^2
  // Worst case error if |y| > 0x1p-5:
  // 0.5 + 4.13/N + abs-poly-error*2^57 ULP (+ 0.002 ULP without fma)
  // Worst case error if |y| > 0x1p-4:
  // 0.5 + 2.06/N + abs-poly-error*2^56 ULP (+ 0.001 ULP without fma).
  return lo + r2 * A0 + r * r2 * (A1 + r * A2 + r2 * (A3 + r * A4)) + hi;
}

//
// Lookup data for pow. See: https://git.musl-libc.org/cgit/musl/tree/src/math/pow.c
//

// @ts-ignore: decorator
@inline const POW_LOG_TABLE_BITS = 7;

/* Algorithm:

  x = 2^k z
  log(x) = k ln2 + log(c) + log(z/c)
  log(z/c) = poly(z/c - 1)

where z is in [0x1.69555p-1; 0x1.69555p0] which is split into N subintervals
and z falls into the ith one, then table entries are computed as

  tab[i].invc = 1/c
  tab[i].logc = round(0x1p43*log(c))/0x1p43
  tab[i].logctail = (double)(log(c) - logc)

where c is chosen near the center of the subinterval such that 1/c has only a
few precision bits so z/c - 1 is exactly representible as double:

  1/c = center < 1 ? round(N/center)/N : round(2*N/center)/N/2

Note: |z/c - 1| < 1/N for the chosen c, |log(c) - logc - logctail| < 0x1p-97,
the last few bits of logc are rounded away so k*ln2hi + logc has no rounding
error and the interval for z is selected such that near x == 1, where log(x)
is tiny, large cancellation error is avoided in logc + poly(z/c - 1). */

// @ts-ignore: decorator
@lazy @inline const POW_LOG_DATA_TAB = memory.data<f64>([
  //             invc                 ,pad,               logc                 ,               logctail
  reinterpret<f64>(0x3FF6A00000000000), 0, reinterpret<f64>(0xBFD62C82F2B9C800), reinterpret<f64>(0x3CFAB42428375680),
  reinterpret<f64>(0x3FF6800000000000), 0, reinterpret<f64>(0xBFD5D1BDBF580800), reinterpret<f64>(0xBD1CA508D8E0F720),
  reinterpret<f64>(0x3FF6600000000000), 0, reinterpret<f64>(0xBFD5767717455800), reinterpret<f64>(0xBD2362A4D5B6506D),
  reinterpret<f64>(0x3FF6400000000000), 0, reinterpret<f64>(0xBFD51AAD872DF800), reinterpret<f64>(0xBCE684E49EB067D5),
  reinterpret<f64>(0x3FF6200000000000), 0, reinterpret<f64>(0xBFD4BE5F95777800), reinterpret<f64>(0xBD041B6993293EE0),
  reinterpret<f64>(0x3FF6000000000000), 0, reinterpret<f64>(0xBFD4618BC21C6000), reinterpret<f64>(0x3D13D82F484C84CC),
  reinterpret<f64>(0x3FF5E00000000000), 0, reinterpret<f64>(0xBFD404308686A800), reinterpret<f64>(0x3CDC42F3ED820B3A),
  reinterpret<f64>(0x3FF5C00000000000), 0, reinterpret<f64>(0xBFD3A64C55694800), reinterpret<f64>(0x3D20B1C686519460),
  reinterpret<f64>(0x3FF5A00000000000), 0, reinterpret<f64>(0xBFD347DD9A988000), reinterpret<f64>(0x3D25594DD4C58092),
  reinterpret<f64>(0x3FF5800000000000), 0, reinterpret<f64>(0xBFD2E8E2BAE12000), reinterpret<f64>(0x3D267B1E99B72BD8),
  reinterpret<f64>(0x3FF5600000000000), 0, reinterpret<f64>(0xBFD2895A13DE8800), reinterpret<f64>(0x3D15CA14B6CFB03F),
  reinterpret<f64>(0x3FF5600000000000), 0, reinterpret<f64>(0xBFD2895A13DE8800), reinterpret<f64>(0x3D15CA14B6CFB03F),
  reinterpret<f64>(0x3FF5400000000000), 0, reinterpret<f64>(0xBFD22941FBCF7800), reinterpret<f64>(0xBD165A242853DA76),
  reinterpret<f64>(0x3FF5200000000000), 0, reinterpret<f64>(0xBFD1C898C1699800), reinterpret<f64>(0xBD1FAFBC68E75404),
  reinterpret<f64>(0x3FF5000000000000), 0, reinterpret<f64>(0xBFD1675CABABA800), reinterpret<f64>(0x3D1F1FC63382A8F0),
  reinterpret<f64>(0x3FF4E00000000000), 0, reinterpret<f64>(0xBFD1058BF9AE4800), reinterpret<f64>(0xBD26A8C4FD055A66),
  reinterpret<f64>(0x3FF4C00000000000), 0, reinterpret<f64>(0xBFD0A324E2739000), reinterpret<f64>(0xBD0C6BEE7EF4030E),
  reinterpret<f64>(0x3FF4A00000000000), 0, reinterpret<f64>(0xBFD0402594B4D000), reinterpret<f64>(0xBCF036B89EF42D7F),
  reinterpret<f64>(0x3FF4A00000000000), 0, reinterpret<f64>(0xBFD0402594B4D000), reinterpret<f64>(0xBCF036B89EF42D7F),
  reinterpret<f64>(0x3FF4800000000000), 0, reinterpret<f64>(0xBFCFB9186D5E4000), reinterpret<f64>(0x3D0D572AAB993C87),
  reinterpret<f64>(0x3FF4600000000000), 0, reinterpret<f64>(0xBFCEF0ADCBDC6000), reinterpret<f64>(0x3D2B26B79C86AF24),
  reinterpret<f64>(0x3FF4400000000000), 0, reinterpret<f64>(0xBFCE27076E2AF000), reinterpret<f64>(0xBD172F4F543FFF10),
  reinterpret<f64>(0x3FF4200000000000), 0, reinterpret<f64>(0xBFCD5C216B4FC000), reinterpret<f64>(0x3D21BA91BBCA681B),
  reinterpret<f64>(0x3FF4000000000000), 0, reinterpret<f64>(0xBFCC8FF7C79AA000), reinterpret<f64>(0x3D27794F689F8434),
  reinterpret<f64>(0x3FF4000000000000), 0, reinterpret<f64>(0xBFCC8FF7C79AA000), reinterpret<f64>(0x3D27794F689F8434),
  reinterpret<f64>(0x3FF3E00000000000), 0, reinterpret<f64>(0xBFCBC286742D9000), reinterpret<f64>(0x3D194EB0318BB78F),
  reinterpret<f64>(0x3FF3C00000000000), 0, reinterpret<f64>(0xBFCAF3C94E80C000), reinterpret<f64>(0x3CBA4E633FCD9066),
  reinterpret<f64>(0x3FF3A00000000000), 0, reinterpret<f64>(0xBFCA23BC1FE2B000), reinterpret<f64>(0xBD258C64DC46C1EA),
  reinterpret<f64>(0x3FF3A00000000000), 0, reinterpret<f64>(0xBFCA23BC1FE2B000), reinterpret<f64>(0xBD258C64DC46C1EA),
  reinterpret<f64>(0x3FF3800000000000), 0, reinterpret<f64>(0xBFC9525A9CF45000), reinterpret<f64>(0xBD2AD1D904C1D4E3),
  reinterpret<f64>(0x3FF3600000000000), 0, reinterpret<f64>(0xBFC87FA06520D000), reinterpret<f64>(0x3D2BBDBF7FDBFA09),
  reinterpret<f64>(0x3FF3400000000000), 0, reinterpret<f64>(0xBFC7AB890210E000), reinterpret<f64>(0x3D2BDB9072534A58),
  reinterpret<f64>(0x3FF3400000000000), 0, reinterpret<f64>(0xBFC7AB890210E000), reinterpret<f64>(0x3D2BDB9072534A58),
  reinterpret<f64>(0x3FF3200000000000), 0, reinterpret<f64>(0xBFC6D60FE719D000), reinterpret<f64>(0xBD10E46AA3B2E266),
  reinterpret<f64>(0x3FF3000000000000), 0, reinterpret<f64>(0xBFC5FF3070A79000), reinterpret<f64>(0xBD1E9E439F105039),
  reinterpret<f64>(0x3FF3000000000000), 0, reinterpret<f64>(0xBFC5FF3070A79000), reinterpret<f64>(0xBD1E9E439F105039),
  reinterpret<f64>(0x3FF2E00000000000), 0, reinterpret<f64>(0xBFC526E5E3A1B000), reinterpret<f64>(0xBD20DE8B90075B8F),
  reinterpret<f64>(0x3FF2C00000000000), 0, reinterpret<f64>(0xBFC44D2B6CCB8000), reinterpret<f64>(0x3D170CC16135783C),
  reinterpret<f64>(0x3FF2C00000000000), 0, reinterpret<f64>(0xBFC44D2B6CCB8000), reinterpret<f64>(0x3D170CC16135783C),
  reinterpret<f64>(0x3FF2A00000000000), 0, reinterpret<f64>(0xBFC371FC201E9000), reinterpret<f64>(0x3CF178864D27543A),
  reinterpret<f64>(0x3FF2800000000000), 0, reinterpret<f64>(0xBFC29552F81FF000), reinterpret<f64>(0xBD248D301771C408),
  reinterpret<f64>(0x3FF2600000000000), 0, reinterpret<f64>(0xBFC1B72AD52F6000), reinterpret<f64>(0xBD2E80A41811A396),
  reinterpret<f64>(0x3FF2600000000000), 0, reinterpret<f64>(0xBFC1B72AD52F6000), reinterpret<f64>(0xBD2E80A41811A396),
  reinterpret<f64>(0x3FF2400000000000), 0, reinterpret<f64>(0xBFC0D77E7CD09000), reinterpret<f64>(0x3D0A699688E85BF4),
  reinterpret<f64>(0x3FF2400000000000), 0, reinterpret<f64>(0xBFC0D77E7CD09000), reinterpret<f64>(0x3D0A699688E85BF4),
  reinterpret<f64>(0x3FF2200000000000), 0, reinterpret<f64>(0xBFBFEC9131DBE000), reinterpret<f64>(0xBD2575545CA333F2),
  reinterpret<f64>(0x3FF2000000000000), 0, reinterpret<f64>(0xBFBE27076E2B0000), reinterpret<f64>(0x3D2A342C2AF0003C),
  reinterpret<f64>(0x3FF2000000000000), 0, reinterpret<f64>(0xBFBE27076E2B0000), reinterpret<f64>(0x3D2A342C2AF0003C),
  reinterpret<f64>(0x3FF1E00000000000), 0, reinterpret<f64>(0xBFBC5E548F5BC000), reinterpret<f64>(0xBD1D0C57585FBE06),
  reinterpret<f64>(0x3FF1C00000000000), 0, reinterpret<f64>(0xBFBA926D3A4AE000), reinterpret<f64>(0x3D253935E85BAAC8),
  reinterpret<f64>(0x3FF1C00000000000), 0, reinterpret<f64>(0xBFBA926D3A4AE000), reinterpret<f64>(0x3D253935E85BAAC8),
  reinterpret<f64>(0x3FF1A00000000000), 0, reinterpret<f64>(0xBFB8C345D631A000), reinterpret<f64>(0x3D137C294D2F5668),
  reinterpret<f64>(0x3FF1A00000000000), 0, reinterpret<f64>(0xBFB8C345D631A000), reinterpret<f64>(0x3D137C294D2F5668),
  reinterpret<f64>(0x3FF1800000000000), 0, reinterpret<f64>(0xBFB6F0D28AE56000), reinterpret<f64>(0xBD269737C93373DA),
  reinterpret<f64>(0x3FF1600000000000), 0, reinterpret<f64>(0xBFB51B073F062000), reinterpret<f64>(0x3D1F025B61C65E57),
  reinterpret<f64>(0x3FF1600000000000), 0, reinterpret<f64>(0xBFB51B073F062000), reinterpret<f64>(0x3D1F025B61C65E57),
  reinterpret<f64>(0x3FF1400000000000), 0, reinterpret<f64>(0xBFB341D7961BE000), reinterpret<f64>(0x3D2C5EDACCF913DF),
  reinterpret<f64>(0x3FF1400000000000), 0, reinterpret<f64>(0xBFB341D7961BE000), reinterpret<f64>(0x3D2C5EDACCF913DF),
  reinterpret<f64>(0x3FF1200000000000), 0, reinterpret<f64>(0xBFB16536EEA38000), reinterpret<f64>(0x3D147C5E768FA309),
  reinterpret<f64>(0x3FF1000000000000), 0, reinterpret<f64>(0xBFAF0A30C0118000), reinterpret<f64>(0x3D2D599E83368E91),
  reinterpret<f64>(0x3FF1000000000000), 0, reinterpret<f64>(0xBFAF0A30C0118000), reinterpret<f64>(0x3D2D599E83368E91),
  reinterpret<f64>(0x3FF0E00000000000), 0, reinterpret<f64>(0xBFAB42DD71198000), reinterpret<f64>(0x3D1C827AE5D6704C),
  reinterpret<f64>(0x3FF0E00000000000), 0, reinterpret<f64>(0xBFAB42DD71198000), reinterpret<f64>(0x3D1C827AE5D6704C),
  reinterpret<f64>(0x3FF0C00000000000), 0, reinterpret<f64>(0xBFA77458F632C000), reinterpret<f64>(0xBD2CFC4634F2A1EE),
  reinterpret<f64>(0x3FF0C00000000000), 0, reinterpret<f64>(0xBFA77458F632C000), reinterpret<f64>(0xBD2CFC4634F2A1EE),
  reinterpret<f64>(0x3FF0A00000000000), 0, reinterpret<f64>(0xBFA39E87B9FEC000), reinterpret<f64>(0x3CF502B7F526FEAA),
  reinterpret<f64>(0x3FF0A00000000000), 0, reinterpret<f64>(0xBFA39E87B9FEC000), reinterpret<f64>(0x3CF502B7F526FEAA),
  reinterpret<f64>(0x3FF0800000000000), 0, reinterpret<f64>(0xBF9F829B0E780000), reinterpret<f64>(0xBD2980267C7E09E4),
  reinterpret<f64>(0x3FF0800000000000), 0, reinterpret<f64>(0xBF9F829B0E780000), reinterpret<f64>(0xBD2980267C7E09E4),
  reinterpret<f64>(0x3FF0600000000000), 0, reinterpret<f64>(0xBF97B91B07D58000), reinterpret<f64>(0xBD288D5493FAA639),
  reinterpret<f64>(0x3FF0400000000000), 0, reinterpret<f64>(0xBF8FC0A8B0FC0000), reinterpret<f64>(0xBCDF1E7CF6D3A69C),
  reinterpret<f64>(0x3FF0400000000000), 0, reinterpret<f64>(0xBF8FC0A8B0FC0000), reinterpret<f64>(0xBCDF1E7CF6D3A69C),
  reinterpret<f64>(0x3FF0200000000000), 0, reinterpret<f64>(0xBF7FE02A6B100000), reinterpret<f64>(0xBD19E23F0DDA40E4),
  reinterpret<f64>(0x3FF0200000000000), 0, reinterpret<f64>(0xBF7FE02A6B100000), reinterpret<f64>(0xBD19E23F0DDA40E4),
  reinterpret<f64>(0x3FF0000000000000), 0, 0, 0,
  reinterpret<f64>(0x3FF0000000000000), 0, 0, 0,
  reinterpret<f64>(0x3FEFC00000000000), 0, reinterpret<f64>(0x3F80101575890000), reinterpret<f64>(0xBD10C76B999D2BE8),
  reinterpret<f64>(0x3FEF800000000000), 0, reinterpret<f64>(0x3F90205658938000), reinterpret<f64>(0xBD23DC5B06E2F7D2),
  reinterpret<f64>(0x3FEF400000000000), 0, reinterpret<f64>(0x3F98492528C90000), reinterpret<f64>(0xBD2AA0BA325A0C34),
  reinterpret<f64>(0x3FEF000000000000), 0, reinterpret<f64>(0x3FA0415D89E74000), reinterpret<f64>(0x3D0111C05CF1D753),
  reinterpret<f64>(0x3FEEC00000000000), 0, reinterpret<f64>(0x3FA466AED42E0000), reinterpret<f64>(0xBD2C167375BDFD28),
  reinterpret<f64>(0x3FEE800000000000), 0, reinterpret<f64>(0x3FA894AA149FC000), reinterpret<f64>(0xBD197995D05A267D),
  reinterpret<f64>(0x3FEE400000000000), 0, reinterpret<f64>(0x3FACCB73CDDDC000), reinterpret<f64>(0xBD1A68F247D82807),
  reinterpret<f64>(0x3FEE200000000000), 0, reinterpret<f64>(0x3FAEEA31C006C000), reinterpret<f64>(0xBD0E113E4FC93B7B),
  reinterpret<f64>(0x3FEDE00000000000), 0, reinterpret<f64>(0x3FB1973BD1466000), reinterpret<f64>(0xBD25325D560D9E9B),
  reinterpret<f64>(0x3FEDA00000000000), 0, reinterpret<f64>(0x3FB3BDF5A7D1E000), reinterpret<f64>(0x3D2CC85EA5DB4ED7),
  reinterpret<f64>(0x3FED600000000000), 0, reinterpret<f64>(0x3FB5E95A4D97A000), reinterpret<f64>(0xBD2C69063C5D1D1E),
  reinterpret<f64>(0x3FED400000000000), 0, reinterpret<f64>(0x3FB700D30AEAC000), reinterpret<f64>(0x3CEC1E8DA99DED32),
  reinterpret<f64>(0x3FED000000000000), 0, reinterpret<f64>(0x3FB9335E5D594000), reinterpret<f64>(0x3D23115C3ABD47DA),
  reinterpret<f64>(0x3FECC00000000000), 0, reinterpret<f64>(0x3FBB6AC88DAD6000), reinterpret<f64>(0xBD1390802BF768E5),
  reinterpret<f64>(0x3FECA00000000000), 0, reinterpret<f64>(0x3FBC885801BC4000), reinterpret<f64>(0x3D2646D1C65AACD3),
  reinterpret<f64>(0x3FEC600000000000), 0, reinterpret<f64>(0x3FBEC739830A2000), reinterpret<f64>(0xBD2DC068AFE645E0),
  reinterpret<f64>(0x3FEC400000000000), 0, reinterpret<f64>(0x3FBFE89139DBE000), reinterpret<f64>(0xBD2534D64FA10AFD),
  reinterpret<f64>(0x3FEC000000000000), 0, reinterpret<f64>(0x3FC1178E8227E000), reinterpret<f64>(0x3D21EF78CE2D07F2),
  reinterpret<f64>(0x3FEBE00000000000), 0, reinterpret<f64>(0x3FC1AA2B7E23F000), reinterpret<f64>(0x3D2CA78E44389934),
  reinterpret<f64>(0x3FEBA00000000000), 0, reinterpret<f64>(0x3FC2D1610C868000), reinterpret<f64>(0x3D039D6CCB81B4A1),
  reinterpret<f64>(0x3FEB800000000000), 0, reinterpret<f64>(0x3FC365FCB0159000), reinterpret<f64>(0x3CC62FA8234B7289),
  reinterpret<f64>(0x3FEB400000000000), 0, reinterpret<f64>(0x3FC4913D8333B000), reinterpret<f64>(0x3D25837954FDB678),
  reinterpret<f64>(0x3FEB200000000000), 0, reinterpret<f64>(0x3FC527E5E4A1B000), reinterpret<f64>(0x3D2633E8E5697DC7),
  reinterpret<f64>(0x3FEAE00000000000), 0, reinterpret<f64>(0x3FC6574EBE8C1000), reinterpret<f64>(0x3D19CF8B2C3C2E78),
  reinterpret<f64>(0x3FEAC00000000000), 0, reinterpret<f64>(0x3FC6F0128B757000), reinterpret<f64>(0xBD25118DE59C21E1),
  reinterpret<f64>(0x3FEAA00000000000), 0, reinterpret<f64>(0x3FC7898D85445000), reinterpret<f64>(0xBD1C661070914305),
  reinterpret<f64>(0x3FEA600000000000), 0, reinterpret<f64>(0x3FC8BEAFEB390000), reinterpret<f64>(0xBD073D54AAE92CD1),
  reinterpret<f64>(0x3FEA400000000000), 0, reinterpret<f64>(0x3FC95A5ADCF70000), reinterpret<f64>(0x3D07F22858A0FF6F),
  reinterpret<f64>(0x3FEA000000000000), 0, reinterpret<f64>(0x3FCA93ED3C8AE000), reinterpret<f64>(0xBD28724350562169),
  reinterpret<f64>(0x3FE9E00000000000), 0, reinterpret<f64>(0x3FCB31D8575BD000), reinterpret<f64>(0xBD0C358D4EACE1AA),
  reinterpret<f64>(0x3FE9C00000000000), 0, reinterpret<f64>(0x3FCBD087383BE000), reinterpret<f64>(0xBD2D4BC4595412B6),
  reinterpret<f64>(0x3FE9A00000000000), 0, reinterpret<f64>(0x3FCC6FFBC6F01000), reinterpret<f64>(0xBCF1EC72C5962BD2),
  reinterpret<f64>(0x3FE9600000000000), 0, reinterpret<f64>(0x3FCDB13DB0D49000), reinterpret<f64>(0xBD2AFF2AF715B035),
  reinterpret<f64>(0x3FE9400000000000), 0, reinterpret<f64>(0x3FCE530EFFE71000), reinterpret<f64>(0x3CC212276041F430),
  reinterpret<f64>(0x3FE9200000000000), 0, reinterpret<f64>(0x3FCEF5ADE4DD0000), reinterpret<f64>(0xBCCA211565BB8E11),
  reinterpret<f64>(0x3FE9000000000000), 0, reinterpret<f64>(0x3FCF991C6CB3B000), reinterpret<f64>(0x3D1BCBECCA0CDF30),
  reinterpret<f64>(0x3FE8C00000000000), 0, reinterpret<f64>(0x3FD07138604D5800), reinterpret<f64>(0x3CF89CDB16ED4E91),
  reinterpret<f64>(0x3FE8A00000000000), 0, reinterpret<f64>(0x3FD0C42D67616000), reinterpret<f64>(0x3D27188B163CEAE9),
  reinterpret<f64>(0x3FE8800000000000), 0, reinterpret<f64>(0x3FD1178E8227E800), reinterpret<f64>(0xBD2C210E63A5F01C),
  reinterpret<f64>(0x3FE8600000000000), 0, reinterpret<f64>(0x3FD16B5CCBACF800), reinterpret<f64>(0x3D2B9ACDF7A51681),
  reinterpret<f64>(0x3FE8400000000000), 0, reinterpret<f64>(0x3FD1BF99635A6800), reinterpret<f64>(0x3D2CA6ED5147BDB7),
  reinterpret<f64>(0x3FE8200000000000), 0, reinterpret<f64>(0x3FD214456D0EB800), reinterpret<f64>(0x3D0A87DEBA46BAEA),
  reinterpret<f64>(0x3FE7E00000000000), 0, reinterpret<f64>(0x3FD2BEF07CDC9000), reinterpret<f64>(0x3D2A9CFA4A5004F4),
  reinterpret<f64>(0x3FE7C00000000000), 0, reinterpret<f64>(0x3FD314F1E1D36000), reinterpret<f64>(0xBD28E27AD3213CB8),
  reinterpret<f64>(0x3FE7A00000000000), 0, reinterpret<f64>(0x3FD36B6776BE1000), reinterpret<f64>(0x3D116ECDB0F177C8),
  reinterpret<f64>(0x3FE7800000000000), 0, reinterpret<f64>(0x3FD3C25277333000), reinterpret<f64>(0x3D183B54B606BD5C),
  reinterpret<f64>(0x3FE7600000000000), 0, reinterpret<f64>(0x3FD419B423D5E800), reinterpret<f64>(0x3D08E436EC90E09D),
  reinterpret<f64>(0x3FE7400000000000), 0, reinterpret<f64>(0x3FD4718DC271C800), reinterpret<f64>(0xBD2F27CE0967D675),
  reinterpret<f64>(0x3FE7200000000000), 0, reinterpret<f64>(0x3FD4C9E09E173000), reinterpret<f64>(0xBD2E20891B0AD8A4),
  reinterpret<f64>(0x3FE7000000000000), 0, reinterpret<f64>(0x3FD522AE0738A000), reinterpret<f64>(0x3D2EBE708164C759),
  reinterpret<f64>(0x3FE6E00000000000), 0, reinterpret<f64>(0x3FD57BF753C8D000), reinterpret<f64>(0x3D1FADEDEE5D40EF),
  reinterpret<f64>(0x3FE6C00000000000), 0, reinterpret<f64>(0x3FD5D5BDDF596000), reinterpret<f64>(0xBD0A0B2A08A465DC)
]);

// Returns 0 if not int, 1 if odd int, 2 if even int. The argument is
// the bit representation of a non-zero finite floating-point value.
// @ts-ignore: decorator
@inline
function checkint(iy: u64): i32 {
  var e = iy >> 52 & 0x7FF;
  if (e < 0x3FF     ) return 0;
  if (e > 0x3FF + 52) return 2;
  e = u64(1) << (0x3FF + 52 - e);
  if (iy & (e - 1)) return 0;
  if (iy &  e     ) return 1;
  return 2;
}

// @ts-ignore: decorator
@inline
function xflow(sign: u32, y: f64): f64 {
  return select(-y, y, sign) * y;
}

// @ts-ignore: decorator
@inline
function uflow(sign: u32): f64 {
  return xflow(sign, reinterpret<f64>(0x1000000000000000)); // 0x1p-767
}

// @ts-ignore: decorator
@inline
function oflow(sign: u32): f64 {
  return xflow(sign, reinterpret<f64>(0x7000000000000000)); // 0x1p769
}

// Returns 1 if input is the bit representation of 0, infinity or nan.
// @ts-ignore: decorator
@inline
function zeroinfnan(u: u64): bool {
  return (u << 1) - 1 >= 0xFFE0000000000000 - 1;
}

// @ts-ignore: decorator
@lazy var log_tail: f64 = 0;

// Compute y+TAIL = log(x) where the rounded result is y and TAIL has about
// additional 15 bits precision. IX is the bit representation of x, but
// normalized in the subnormal range using the sign bit for the exponent.
// @ts-ignore: decorator
@inline
function log_inline(ix: u64): f64 {
  const N = 1 << POW_LOG_TABLE_BITS;
  const N_MASK = N - 1;

  const
    Ln2hi = reinterpret<f64>(0x3FE62E42FEFA3800),
    Ln2lo = reinterpret<f64>(0x3D2EF35793C76730);

  const
    A0 = reinterpret<f64>(0xBFE0000000000000),
    A1 = reinterpret<f64>(0xBFE5555555555560),
    A2 = reinterpret<f64>(0x3FE0000000000006),
    A3 = reinterpret<f64>(0x3FE999999959554E),
    A4 = reinterpret<f64>(0xBFE555555529A47A),
    A5 = reinterpret<f64>(0xBFF2495B9B4845E9),
    A6 = reinterpret<f64>(0x3FF0002B8B263FC3);

  // x = 2^k z; where z is in range [OFF,2*OFF) and exact.
  // The range is split into N subintervals.
  // The ith subinterval contains z and c is near its center.
  var tmp = ix - 0x3fE6955500000000;
  var i   = <usize>((tmp >> (52 - POW_LOG_TABLE_BITS)) & N_MASK);
  var k   = <i64>tmp >> 52;
  var iz  = ix - (tmp & u64(0xFFF) << 52);
  var z   = reinterpret<f64>(iz);
  var kd  = <f64>k;

  // log(x) = k*Ln2 + log(c) + log1p(z/c-1).
  var invc     = load<f64>(POW_LOG_DATA_TAB + (i << (2 + alignof<f64>())), 0 << alignof<f64>()); // tab[i].invc
  var logc     = load<f64>(POW_LOG_DATA_TAB + (i << (2 + alignof<f64>())), 2 << alignof<f64>()); // tab[i].logc
  var logctail = load<f64>(POW_LOG_DATA_TAB + (i << (2 + alignof<f64>())), 3 << alignof<f64>()); // tab[i].logctail

  // Note: 1/c is j/N or j/N/2 where j is an integer in [N,2N) and
  // |z/c - 1| < 1/N, so r = z/c - 1 is exactly representible.
  // Split z such that rhi, rlo and rhi*rhi are exact and |rlo| <= |r|.
  var zhi = reinterpret<f64>((iz + u64(0x80000000)) & 0xFFFFFFFF00000000);
  var zlo = z - zhi;
  var rhi = zhi * invc - 1.0;
  var rlo = zlo * invc;
  var r   = rhi + rlo;

  // k * Ln2 + log(c) + r.
  var t1  = kd * Ln2hi + logc;
  var t2  = t1 + r;
  var lo1 = kd * Ln2lo + logctail;
  var lo2 = t1 - t2 + r;

  // Evaluation is optimized assuming superscalar pipelined execution.
  var ar  = A0 * r; // A[0] = -0.5
  var ar2 = r * ar;
  var ar3 = r * ar2;
  // k * Ln2 + log(c) + r + A[0] * r * r.
  var arhi  = A0  * rhi;
  var arhi2 = rhi * arhi;
  var hi    = t2  + arhi2;
  var lo3   = rlo * (ar + arhi);
  var lo4   = t2 - hi + arhi2;

  // p = log1p(r) - r - A[0] * r * r.
  var p  = ar3 * (A1 + r * A2 + ar2 * (A3 + r * A4 + ar2 * (A5 + r * A6)));
  var lo = lo1 + lo2 + lo3 + lo4 + p;
  var y  = hi + lo;
  log_tail = hi - y + lo;

  return y;
}

// @ts-ignore: decorator
@inline const SIGN_BIAS = 0x800 << EXP_TABLE_BITS;

// Computes sign*exp(x+xtail) where |xtail| < 2^-8/N and |xtail| <= |x|.
// The sign_bias argument is SIGN_BIAS or 0 and sets the sign to -1 or 1.
// @ts-ignore: decorator
@inline
function exp_inline(x: f64, xtail: f64, sign_bias: u32): f64 {
  const N      = 1 << EXP_TABLE_BITS;
  const N_MASK = N - 1;

  const
    InvLn2N   = reinterpret<f64>(0x3FF71547652B82FE) * N, // 0x1.71547652b82fep0
    NegLn2hiN = reinterpret<f64>(0xBF762E42FEFA0000),     // -0x1.62e42fefa0000p-8
    NegLn2loN = reinterpret<f64>(0xBD0CF79ABC9E3B3A),     // -0x1.cf79abc9e3b3ap-47
    shift     = reinterpret<f64>(0x4338000000000000);     // 0x1.8p52

  const
    C2 = reinterpret<f64>(0x3FDFFFFFFFFFFDBD), // __exp_data.poly[0] (0x1.ffffffffffdbdp-2)
    C3 = reinterpret<f64>(0x3FC555555555543C), // __exp_data.poly[1] (0x1.555555555543cp-3)
    C4 = reinterpret<f64>(0x3FA55555CF172B91), // __exp_data.poly[2] (0x1.55555cf172b91p-5)
    C5 = reinterpret<f64>(0x3F81111167A4D017); // __exp_data.poly[3] (0x1.1111167a4d017p-7)

  var abstop: u32;
  var ki: u64, top: u64, sbits: u64;
  var idx: usize;
  // double_t for better performance on targets with FLT_EVAL_METHOD==2.
  var kd: f64, z: f64, r: f64, r2: f64, scale: f64, tail: f64, tmp: f64;

  var ux = reinterpret<u64>(x);
  abstop = <u32>(ux >> 52) & 0x7FF;
  if (abstop - 0x3C9 >= 0x03F) {
    if (abstop - 0x3C9 >= 0x80000000) {
      // Avoid spurious underflow for tiny x.
      // Note: 0 is common input.
      return select(-1.0, 1.0, sign_bias);
    }
    if (abstop >= 0x409) { // top12(1024.0)
      // Note: inf and nan are already handled.
      return ux >> 63 ? uflow(sign_bias) : oflow(sign_bias);
    }
    // Large x is special cased below.
    abstop = 0;
  }

  // exp(x) = 2^(k/N) * exp(r), with exp(r) in [2^(-1/2N),2^(1/2N)].
  // x = ln2/N*k + r, with int k and r in [-ln2/2N, ln2/2N].
  z = InvLn2N * x;

  // #if TOINT_INTRINSICS
  //   kd = roundtoint(z);
  //   ki = converttoint(z);
  // #elif EXP_USE_TOINT_NARROW
  //   // z - kd is in [-0.5-2^-16, 0.5] in all rounding modes.
  //   kd = eval_as_double(z + shift);
  //   ki = asuint64(kd) >> 16;
  //   kd = (double_t)(int32_t)ki;
  // #else
  // z - kd is in [-1, 1] in non-nearest rounding modes
  kd  = z + shift;
  ki  = reinterpret<u64>(kd);
  kd -= shift;
  // #endif
  r = x + kd * NegLn2hiN + kd * NegLn2loN;
  // The code assumes 2^-200 < |xtail| < 2^-8/N
  r += xtail;
  // 2^(k/N) ~= scale * (1 + tail)
  idx = <usize>((ki & N_MASK) << 1);
  top = (ki + sign_bias) << (52 - EXP_TABLE_BITS);

  tail = reinterpret<f64>(load<u64>(EXP_DATA_TAB + (idx << alignof<u64>())));
  // This is only a valid scale when -1023*N < k < 1024*N
  sbits = load<u64>(EXP_DATA_TAB + (idx << alignof<u64>()), 1 << alignof<u64>()) + top;
  // exp(x) = 2^(k/N) * exp(r) ~= scale + scale * (tail + exp(r) - 1).
  // Evaluation is optimized assuming superscalar pipelined execution.
  r2 = r * r;
  // Without fma the worst case error is 0.25/N ulp larger.
  // Worst case error is less than 0.5+1.11/N+(abs poly error * 2^53) ulp
  tmp = tail + r + r2 * (C2 + r * C3) + r2 * r2 * (C4 + r * C5);
  if (abstop == 0) return specialcase(tmp, sbits, ki);
  scale = reinterpret<f64>(sbits);
  // Note: tmp == 0 or |tmp| > 2^-200 and scale > 2^-739, so there
  // is no spurious underflow here even without fma.
  return scale + scale * tmp;
}

// @ts-ignore: decorator
@inline
export function pow_lut(x: f64, y: f64): f64 {
  const Ox1p52 = reinterpret<f64>(0x4330000000000000); // 0x1p52

  var sign_bias: u32 = 0;
  var ix = reinterpret<u64>(x);
  var iy = reinterpret<u64>(y);
  var topx = ix >> 52;
  var topy = iy >> 52;

  if (topx - 0x001 >= 0x7FF - 0x001 || (topy & 0x7FF) - 0x3BE >= 0x43e - 0x3BE) {
    // Note: if |y| > 1075 * ln2 * 2^53 ~= 0x1.749p62 then pow(x,y) = inf/0
    // and if |y| < 2^-54 / 1075 ~= 0x1.e7b6p-65 then pow(x,y) = +-1.
    // Special cases: (x < 0x1p-126 or inf or nan) or
    // (|y| < 0x1p-65 or |y| >= 0x1p63 or nan).
    if (zeroinfnan(iy)) {
      if ((iy << 1) == 0) return 1.0;
      if (ix == 0x3FF0000000000000) return NaN; // original: 1.0
      if ((ix << 1) > 0xFFE0000000000000 || (iy << 1) > 0xFFE0000000000000) return x + y;
      if ((ix << 1) == 0x7FE0000000000000) return NaN; // original: 1.0
      if (((ix << 1) < 0x7FE0000000000000) == !(iy >> 63)) return 0; // |x|<1 && y==inf or |x|>1 && y==-inf.
      return y * y;
    }
    if (zeroinfnan(ix)) {
      let x2 = x * x;
      if (i32(ix >> 63) && checkint(iy) == 1) x2 = -x2;
      return iy >> 63 ? 1 / x2 : x2;
    }
    // Here x and y are non-zero finite
    if (ix >> 63) {
      // Finite x < 0
      let yint = checkint(iy);
      if (yint == 0) return (x - x) / (x - x);
      if (yint == 1) sign_bias = SIGN_BIAS;
      ix   &= 0x7FFFFFFFFFFFFFFF;
      topx &= 0x7FF;
    }
    if ((topy & 0x7FF) - 0x3BE >= 0x43E - 0x3BE) {
      // Note: sign_bias == 0 here because y is not odd.
      if (ix == 0x3FF0000000000000) return 1;
      if ((topy & 0x7FF) < 0x3BE)   return 1; // |y| < 2^-65, x^y ~= 1 + y*log(x).
      return (ix > 0x3FF0000000000000) == (topy < 0x800) ? Infinity : 0;
    }
    if (topx == 0) {
      // Normalize subnormal x so exponent becomes negative.
      ix = reinterpret<u64>(x * Ox1p52);
      ix &= 0x7FFFFFFFFFFFFFFF;
      ix -= u64(52) << 52;
    }
  }

  var hi = log_inline(ix);
  var lo = log_tail;
  var ehi: f64, elo: f64;
  // #if __FP_FAST_FMA
  //   ehi = y * hi;
  //   elo = y * lo + __builtin_fma(y, hi, -ehi);
  // #else
  var yhi = reinterpret<f64>(iy & 0xFFFFFFFFF8000000);
  var ylo = y - yhi;
  var lhi = reinterpret<f64>(reinterpret<u64>(hi) & 0xFFFFFFFFF8000000);
  var llo = hi - lhi + lo;
  ehi = yhi * lhi;
  elo = ylo * lhi + y * llo; // |elo| < |ehi| * 2^-25.
  // #endif
  return exp_inline(ehi, elo, sign_bias);
}
