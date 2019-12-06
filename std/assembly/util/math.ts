/*
 * Copyright (c) 2018, Arm Limited.
 * SPDX-License-Identifier: MIT
 */

/** Lookup data for exp2f **/

// @ts-ignore: decorator
@lazy const EXP2F_TABLE_BITS = 5;
// @ts-ignore: decorator
@lazy const exp2f_data_tab: u64[] = [
  /**
   * exp2f_data_tab[i] = uint(2^(i/N)) - (i << 52-BITS)
   * used for computing 2^(k/N) for an int |k| < 150 N as
   * double(tab[k%N] + (k << 52-BITS))
   */
  0x3FF0000000000000, 0x3FEFD9B0D3158574, 0x3FEFB5586CF9890F, 0x3FEF9301D0125B51,
  0x3FEF72B83C7D517B, 0x3FEF54873168B9AA, 0x3FEF387A6E756238, 0x3FEF1E9DF51FDEE1,
  0x3FEF06FE0A31B715, 0x3FEEF1A7373AA9CB, 0x3FEEDEA64C123422, 0x3FEECE086061892D,
  0x3FEEBFDAD5362A27, 0x3FEEB42B569D4F82, 0x3FEEAB07DD485429, 0x3FEEA47EB03A5585,
  0x3FEEA09E667F3BCD, 0x3FEE9F75E8EC5F74, 0x3FEEA11473EB0187, 0x3FEEA589994CCE13,
  0x3FEEACE5422AA0DB, 0x3FEEB737B0CDC5E5, 0x3FEEC49182A3F090, 0x3FEED503B23E255D,
  0x3FEEE89F995AD3AD, 0x3FEEFF76F2FB5E47, 0x3FEF199BDD85529C, 0x3FEF3720DCEF9069,
  0x3FEF5818DCFBA487, 0x3FEF7C97337B9B5F, 0x3FEFA4AFA2A490DA, 0x3FEFD0765B6E4540
];

/**
 * ULP error: 0.502 (nearest rounding.)
 * Relative error: 1.69 * 2^-34 in [-1/64, 1/64] (before rounding.)
 * Wrong count: 168353 (all nearest rounding wrong results with fma.)
 */
export function exp2f_lut(x: f32): f32 {
  const N      = 1 << EXP2F_TABLE_BITS;
  const N_MASK = N - 1;
  const shift  = reinterpret<f64>(0x4338000000000000) / N; // 0x1.8p+52

  const C0 = reinterpret<f64>(0x3FAC6AF84B912394); // 0x1.c6af84b912394p-5
  const C1 = reinterpret<f64>(0x3FCEBFCE50FAC4F3); // 0x1.ebfce50fac4f3p-3
  const C2 = reinterpret<f64>(0x3FE62E42FF0C52D6); // 0x1.62e42ff0c52d6p-1

  var xd = <f64>x;
  var ix = reinterpret<u32>(x);
  var ux = ix >> 20 & 0x7FF;
  if (ux >= 0x430) {
    // |x| >= 128 or x is nan.
    if (ix == 0xFF800000) return 0; // x == -Inf    -> 0
    if (ux >= 0x7F8) return x + x;  // x == Inf/NaN -> Inf/NaN
    if (x > 0) return Infinity;     // x >     0    -> Inf (Owerflow)
    if (x <= -150) return 0;        // x <= -150    -> 0 (Underflow)
  }

  // x = k/N + r with r in [-1/(2N), 1/(2N)] and int k.
  var kd = xd + shift;
  var ki = reinterpret<u64>(kd);
  var r  = xd - (kd - shift);
  var t: u64, y: f64, s: f64;

  // @ts-ignore: cast
  const tab = exp2f_data_tab.dataStart as usize;

  // exp2(x) = 2^(k/N) * 2^r ~= s * (C0*r^3 + C1*r^2 + C2*r + 1)
  t  = load<u64>(tab + ((<usize>ki & N_MASK) << alignof<u64>()));
  t += ki << (52 - EXP2F_TABLE_BITS);
  s  = reinterpret<f64>(t);
  y  = C2 * r + 1;
  y += (C0 * r + C1) * (r  * r);
  y *= s;

  return <f32>y;
}

/*
ULP error: 0.502 (nearest rounding.)
Relative error: 1.69 * 2^-34 in [-ln2/64, ln2/64] (before rounding.)
Wrong count: 170635 (all nearest rounding wrong results with fma.)
*/
export function expf_lut(x: f32): f32 {
  const N       = 1 << EXP2F_TABLE_BITS;
  const N_MASK  = N - 1;
  const shift   = reinterpret<f64>(0x4338000000000000);        // 0x1.8p+52
  const InvLn2N = reinterpret<f64>(0x3FF71547652B82FE) * N;    // 0x1.71547652b82fep+0

  const C0 = reinterpret<f64>(0x3FAC6AF84B912394) / N / N / N; // 0x1.c6af84b912394p-5
  const C1 = reinterpret<f64>(0x3FCEBFCE50FAC4F3) / N / N;     // 0x1.ebfce50fac4f3p-3
  const C2 = reinterpret<f64>(0x3FE62E42FF0C52D6) / N;         // 0x1.62e42ff0c52d6p-1

  var xd = <f64>x;
  var ix = reinterpret<u32>(x);
  var ux = ix >> 20 & 0x7FF;
  if (ux >= 0x42B) {
    // |x| >= 88 or x is nan.
    if (ix == 0xFF800000) return 0;                        // x == -Inf    -> 0
    if (ux >= 0x7F8) return x + x;                         // x == Inf/NaN -> Inf/NaN
    if (x > reinterpret<f32>(0x42B17217)) return Infinity; // x > log(0x1p128)  ~=  88.72 -> Inf (Owerflow)
    if (x < reinterpret<f32>(0xC2CFF1B4)) return 0;        // x < log(0x1p-150) ~= -103.97 -> 0 (Underflow)
  }

  // x*N/Ln2 = k + r with r in [-1/2, 1/2] and int k.
  var z = InvLn2N * xd;

  /* Round and convert z to int, the result is in [-150*N, 128*N] and
     ideally ties-to-even rule is used, otherwise the magnitude of r
     can be bigger which gives larger approximation error.  */
  var kd = <f64>(z + shift);
  var ki = reinterpret<u64>(kd);
  var r  = z - (kd - shift);
  var s: f64, y: f64, t: u64;

  // @ts-ignore: cast
  const tab = exp2f_data_tab.dataStart as usize;

  // exp(x) = 2^(k/N) * 2^(r/N) ~= s * (C0*r^3 + C1*r^2 + C2*r + 1)
  t  = load<u64>(tab + ((<usize>ki & N_MASK) << alignof<u64>()));
  t += ki << (52 - EXP2F_TABLE_BITS);
  s  = reinterpret<f64>(t);
  z  = C0 * r + C1;
  y  = C2 * r + 1;
  y += z * (r * r);
  y *= s;

  return <f32>y;
}

/** Lookup data for log2f **/

// @ts-ignore: decorator
@lazy const LOG2F_TABLE_BITS = 4;
// @ts-ignore: decorator
@lazy const log2f_data_tab: f64[] = [
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
];

/*
ULP error: 0.752 (nearest rounding.)
Relative error: 1.9 * 2^-26 (before rounding.)
*/
export function log2f_lut(x: f32): f32 {
  const Ox1p23f = reinterpret<f32>(0x4B000000); // 0x1p23f;
  const N_MASK  = (1 << LOG2F_TABLE_BITS) - 1;

  const A0 = reinterpret<f64>(0xBFD712B6F70A7E4D); // -0x1.712b6f70a7e4dp-2
  const A1 = reinterpret<f64>(0x3FDECABF496832E0); //  0x1.ecabf496832ep-2
  const A2 = reinterpret<f64>(0xBFE715479FFAE3DE); // -0x1.715479ffae3dep-1
  const A3 = reinterpret<f64>(0x3FF715475F35C8B8); //  0x1.715475f35c8b8p0

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
  /* x = 2^k z; where z is in range [OFF,2*OFF] and exact.
     The range is split into N subintervals.
     The ith subinterval contains z and c is near its center.  */
  var tmp  = ux - 0x3F330000;
  var i    = (tmp >> (23 - LOG2F_TABLE_BITS)) & N_MASK;
  var top  = tmp & 0xFF800000;
  var iz   = ux - top;
  var k    = <i32>tmp >> 23;

  // @ts-ignore: cast
  var tab = log2f_data_tab.dataStart as usize;

  var invc = load<f64>(tab + (i << (1 + alignof<f64>())), 0 << alignof<f64>());
  var logc = load<f64>(tab + (i << (1 + alignof<f64>())), 1 << alignof<f64>());
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

/* Lookup data for logf. See: https://git.musl-libc.org/cgit/musl/tree/src/math/logf.c */

// @ts-ignore: decorator
@lazy const LOGF_TABLE_BITS = 4;
// @ts-ignore: decorator
@lazy const logf_data_tab: f64[] = [
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
];

/*
ULP error: 0.818 (nearest rounding.)
Relative error: 1.957 * 2^-26 (before rounding.)
*/
export function logf_lut(x: f32): f32 {
  const Ox1p23f = reinterpret<f32>(0x4B000000); // 0x1p23f;
  const N_MASK  = (1 << LOGF_TABLE_BITS) - 1;

  const Ln2 = reinterpret<f64>(0x3FE62E42FEFA39EF); // 0x1.62e42fefa39efp-1;
  const A0  = reinterpret<f64>(0xBFD00EA348B88334); // -0x1.00ea348b88334p-2
  const A1  = reinterpret<f64>(0x3FD5575B0BE00B6A); //  0x1.5575b0be00b6ap-2
  const A2  = reinterpret<f64>(0xBFDFFFFEF20A4123); // -0x1.ffffef20a4123p-2

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
  /* x = 2^k z; where z is in range [OFF,2*OFF] and exact.
     The range is split into N subintervals.
     The ith subinterval contains z and c is near its center.  */
  var tmp = ux - 0x3F330000;
  var i   = (tmp >> (23 - LOGF_TABLE_BITS)) & N_MASK;
  var k   = <i32>tmp >> 23;
  var iz  = ux - (tmp & 0x1FF << 23);
  // @ts-ignore: cast
  var tab = logf_data_tab.dataStart as usize;

  var invc = load<f64>(tab + (i << (1 + alignof<f64>())), 0 << alignof<f64>());
  var logc = load<f64>(tab + (i << (1 + alignof<f64>())), 1 << alignof<f64>());

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

/* Lookup data for powf. See: https://git.musl-libc.org/cgit/musl/tree/src/math/powf.c */

// @ts-ignore: decorator
@inline function zeroinfnanf(ux: u32): bool {
  return (ux << 1) - 1 >= (<u32>0x7f800000 << 1) - 1;
}

/* Returns 0 if not int, 1 if odd int, 2 if even int. The argument is
   the bit representation of a non-zero finite floating-point value. */
// @ts-ignore: decorator
@inline function checkintf(iy: u32): i32 {
  var e = iy >> 23 & 0xFF;
  if (e < 0x7F     ) return 0;
  if (e > 0x7F + 23) return 2;
  e = 1 << (0x7F + 23 - e);
  if (iy & (e - 1)) return 0;
  if (iy &  e     ) return 1;
  return 2;
}

/* Subnormal input is normalized so ix has negative biased exponent.
   Output is multiplied by N (POWF_SCALE) if TOINT_INTRINICS is set. */
// @ts-ignore: decorator
@inline function log2f_inline(ux: u32): f64 {
  const A0 = reinterpret<f64>(0x3FD27616C9496E0B); //  0x1.27616c9496e0bp-2
  const A1 = reinterpret<f64>(0xBFD71969A075C67A); // -0x1.71969a075c67ap-2
  const A2 = reinterpret<f64>(0x3FDEC70A6CA7BADD); //  0x1.ec70a6ca7baddp-2
  const A3 = reinterpret<f64>(0xBFE7154748BEF6C8); // -0x1.7154748bef6c8p-1
  const A4 = reinterpret<f64>(0x3FF71547652AB82B); //  0x1.71547652ab82bp+0
  const N_MASK = (1 << LOG2F_TABLE_BITS) - 1;

  /* x = 2^k z; where z is in range [OFF,2*OFF] and exact.
    The range is split into N subintervals.
    The ith subinterval contains z and c is near its center.  */
  var tmp  = ux - 0x3F330000;
  var i    = <usize>((tmp >> (23 - LOG2F_TABLE_BITS)) & N_MASK);
  var top  = tmp & 0xFF800000;
  var uz   = ux - top;
  var k    = <i32>(<i32>top >> 23);

  // @ts-ignore: cast
  const tab = log2f_data_tab.dataStart as usize;

  var invc = load<f64>(tab + (i << (1 + alignof<f64>())), 0 << alignof<f64>());
  var logc = load<f64>(tab + (i << (1 + alignof<f64>())), 1 << alignof<f64>());
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

/* The output of log2 and thus the input of exp2 is either scaled by N
   (in case of fast toint intrinsics) or not.  The unscaled xd must be
   in [-1021,1023], sign_bias sets the sign of the result.  */
// @ts-ignore: decorator
@inline function exp2f_inline(xd: f64, signBias: u32): f32 {
  const N      = 1 << EXP2F_TABLE_BITS;
  const N_MASK = N - 1;
  const shift  = reinterpret<f64>(0x4338000000000000) / N; // 0x1.8p+52

  const C0 = reinterpret<f64>(0x3FAC6AF84B912394); // 0x1.c6af84b912394p-5
  const C1 = reinterpret<f64>(0x3FCEBFCE50FAC4F3); // 0x1.ebfce50fac4f3p-3
  const C2 = reinterpret<f64>(0x3FE62E42FF0C52D6); // 0x1.62e42ff0c52d6p-1

  // x = k/N + r with r in [-1/(2N), 1/(2N)]
  var kd = <f64>(xd + shift);
  var ki = reinterpret<u64>(kd);
  var r  = xd - (kd - shift);
  var t: u64, z: f64, y: f64, s: f64;

  // exp2(x) = 2^(k/N) * 2^r ~= s * (C0*r^3 + C1*r^2 + C2*r + 1)
  // @ts-ignore: cast
  const tab = exp2f_data_tab.dataStart as usize;

  // exp2(x) = 2^(k/N) * 2^r ~= s * (C0*r^3 + C1*r^2 + C2*r + 1)
  t  = load<u64>(tab + ((<usize>ki & N_MASK) << alignof<u64>()));
  t += (ki + signBias) << (52 - EXP2F_TABLE_BITS);
  s  = reinterpret<f64>(t);
  z  = C0 * r + C1;
  y  = C2 * r + 1;
  y += z * (r * r);
  y *= s;
  return <f32>y;
}

// @ts-ignore: decorator
@inline function xflowf(sign: u32, y: f32): f32 {
  return select<f32>(-y, y, sign) * y;
}

// @ts-ignore: decorator
@inline function oflowf(sign: u32): f32 {
  return xflowf(sign, reinterpret<f32>(0x70000000)); // 0x1p97f
}

// @ts-ignore: decorator
@inline function uflowf(sign: u32): f32 {
  return xflowf(sign, reinterpret<f32>(0x10000000)); // 0x1p-95f
}

export function powf_lut(x: f32, y: f32): f32 {
  const Ox1p23f     = reinterpret<f32>(0x4B000000); // 0x1p23f
  const UPPER_LIMIT = reinterpret<f64>(0x405FFFFFFFD1D571); // 0x1.fffffffd1d571p+6
  const LOWER_LIMIT = -150.0;
  const SIGN_BIAS   = 1 << (EXP2F_TABLE_BITS + 11);

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

/* Lookup data for exp. See: https://git.musl-libc.org/cgit/musl/tree/src/math/exp.c */

// @ts-ignore: decorator
@lazy const EXP_TABLE_BITS = 7;
@lazy const EXP_POLY_ORDER = 5;
@lazy const EXP_USE_TOINT_NARROW = 0;
@lazy const EXP2_POLY_ORDER = 5;

// @ts-ignore: decorator
@lazy const exp_data_tab: u64[] = [
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
];

/* Handle cases that may overflow or underflow when computing the result that
   is scale*(1+TMP) without intermediate rounding. The bit representation of
   scale is in SBITS, however it has a computed exponent that may have
   overflown into the sign bit so that needs to be adjusted before using it as
   a double.  (int32_t)KI is the k used in the argument reduction and exponent
   adjustment of scale, positive k here means the result may overflow and
   negative k means the result may underflow. */
// @ts-ignore: decorator
@inline function specialcase(tmp: f64, sbits: u64, ki: u64): f64 {
  const Ox1p_1022 = reinterpret<f64>(0x0010000000000000); // 0x1p-1022
  const Ox1p1009  = reinterpret<f64>(0x7F00000000000000); // 0x1p1009

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
    /* Round y to the right precision before scaling it into the subnormal
      range to avoid double rounding that can cause 0.5+E/2 ulp error where
      E is the worst-case ulp error outside the subnormal range.  So this
      is only useful if the goal is better than 1 ulp worst-case error.  */
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

export function exp_lut(x: f64): f64 {
  const N      = 1 << EXP_TABLE_BITS;
  const N_MASK = N - 1;

  const InvLn2N   = reinterpret<f64>(0x3FF71547652B82FE) * N; // 0x1.71547652b82fep0
  const NegLn2hiN = reinterpret<f64>(0xBF762E42FEFA0000);     // -0x1.62e42fefa0000p-8
  const NegLn2loN = reinterpret<f64>(0xBD0CF79ABC9E3B3A);     // -0x1.cf79abc9e3b3ap-47
  const shift     = reinterpret<f64>(0x4338000000000000);     // 0x1.8p52;

  const C2 = reinterpret<f64>(0x3FDFFFFFFFFFFDBD); // __exp_data.poly[0] (0x1.ffffffffffdbdp-2)
  const C3 = reinterpret<f64>(0x3FC555555555543C); // __exp_data.poly[1] (0x1.555555555543cp-3)
  const C4 = reinterpret<f64>(0x3FA55555CF172B91); // __exp_data.poly[2] (0x1.55555cf172b91p-5)
  const C5 = reinterpret<f64>(0x3F81111167A4D017); // __exp_data.poly[3] (0x1.1111167a4d017p-7)

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
// 	/* z - kd is in [-0.5-2^-16, 0.5] in all rounding modes.  */
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

  // @ts-ignore: cast
  const tab = exp_data_tab.dataStart as usize;

  var tail = reinterpret<f64>(load<u64>(tab + (idx << alignof<u64>()))); // T[idx]
  // This is only a valid scale when -1023*N < k < 1024*N
  var sbits = load<u64>(tab + (idx << alignof<u64>()), 1 << alignof<u64>()) + top; // T[idx + 1]
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

/* Lookup data for pow. See: https://git.musl-libc.org/cgit/musl/tree/src/math/pow.c */

// @ts-ignore: decorator
@lazy const POW_LOG_TABLE_BITS = 7;

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
@lazy const pow_log_data_tab: f64[] = [
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
];

/* Returns 0 if not int, 1 if odd int, 2 if even int.  The argument is
   the bit representation of a non-zero finite floating-point value. */
// @ts-ignore: decorator
@inline function checkint(iy: u64): i32 {
  var e = iy >> 52 & 0x7FF;
  if (e < 0x3FF     ) return 0;
  if (e > 0x3FF + 52) return 2;
  e = u64(1) << (0x3FF + 52 - e);
  if (iy & (e - 1)) return 0;
  if (iy &  e     ) return 1;
  return 2;
}

// @ts-ignore: decorator
@inline function xflow(sign: u32, y: f64): f64 {
  return select(-y, y, sign) * y;
}

// @ts-ignore: decorator
@inline function uflow(sign: u32): f64 {
  return xflow(sign, reinterpret<f64>(0x1000000000000000)); // 0x1p-767
}

// @ts-ignore: decorator
@inline function oflow(sign: u32): f64 {
  return xflow(sign, reinterpret<f64>(0x7000000000000000)); // 0x1p769
}

/** Returns 1 if input is the bit representation of 0, infinity or nan. */
// @ts-ignore: decorator
@inline function zeroinfnan(u: u64): bool {
  return (u << 1) - 1 >= 0xFFE0000000000000 - 1;
}

// @ts-ignore: decorator
@lazy var log_tail: f64 = 0;

/* Compute y+TAIL = log(x) where the rounded result is y and TAIL has about
   additional 15 bits precision.  IX is the bit representation of x, but
   normalized in the subnormal range using the sign bit for the exponent. */
// @ts-ignore: decorator
@inline function log_inline(ix: u64): f64 {
  const N = 1 << POW_LOG_TABLE_BITS;
  const N_MASK = N - 1;

  const Ln2hi = reinterpret<f64>(0x3FE62E42FEFA3800);
  const Ln2lo = reinterpret<f64>(0x3D2EF35793C76730);

  const A0 = reinterpret<f64>(0xBFE0000000000000);
  const A1 = reinterpret<f64>(0xBFE5555555555560);
  const A2 = reinterpret<f64>(0x3FE0000000000006);
  const A3 = reinterpret<f64>(0x3FE999999959554E);
  const A4 = reinterpret<f64>(0xBFE555555529A47A);
  const A5 = reinterpret<f64>(0xBFF2495B9B4845E9);
  const A6 = reinterpret<f64>(0x3FF0002B8B263FC3);

  /* x = 2^k z; where z is in range [OFF,2*OFF) and exact.
    The range is split into N subintervals.
    The ith subinterval contains z and c is near its center. */
  var tmp = ix - 0x3fE6955500000000;
  var i   = <usize>((tmp >> (52 - POW_LOG_TABLE_BITS)) & N_MASK);
  var k   = <i64>tmp >> 52;
  var iz  = ix - (tmp & u64(0xFFF) << 52);
  var z   = reinterpret<f64>(iz);
  var kd  = <f64>k;

  // log(x) = k*Ln2 + log(c) + log1p(z/c-1).
  // @ts-ignore: cast
  const tab = pow_log_data_tab.dataStart as usize;

  var invc     = load<f64>(tab + (i << (2 + alignof<f64>())), 0 << alignof<f64>()); // tab[i].invc
  var logc     = load<f64>(tab + (i << (2 + alignof<f64>())), 2 << alignof<f64>()); // tab[i].logc
  var logctail = load<f64>(tab + (i << (2 + alignof<f64>())), 3 << alignof<f64>()); // tab[i].logctail

  /* Note: 1/c is j/N or j/N/2 where j is an integer in [N,2N) and
    |z/c - 1| < 1/N, so r = z/c - 1 is exactly representible.  */
  // Split z such that rhi, rlo and rhi*rhi are exact and |rlo| <= |r|.
  var zhi = reinterpret<f64>((iz + u64(0x80000000)) & 0xFFFFFFFF00000000);
  var zlo = z - zhi;
  var rhi = zhi * invc - 1.0;
  var rlo = zlo * invc;
  var r   = rhi + rlo;

  // k*Ln2 + log(c) + r.
  var t1  = kd * Ln2hi + logc;
  var t2  = t1 + r;
  var lo1 = kd * Ln2lo + logctail;
  var lo2 = t1 - t2 + r;

  // Evaluation is optimized assuming superscalar pipelined execution.
  var ar  = A0 * r; // A[0] = -0.5
  var ar2 = r * ar;
  var ar3 = r * ar2;
  // k*Ln2 + log(c) + r + A[0]*r*r.
  var arhi  = A0  * rhi;
  var arhi2 = rhi * arhi;
  var hi    = t2  + arhi2;
  var lo3   = rlo * (ar + arhi);
  var lo4   = t2 - hi + arhi2;

  // p = log1p(r) - r - A[0]*r*r.
  var p  = ar3 * (A1 + r * A2 + ar2 * (A3 + r * A4 + ar2 * (A5 + r * A6)));
  var lo = lo1 + lo2 + lo3 + lo4 + p;
  var y  = hi + lo;
  log_tail = hi - y + lo;

  return y;
}

// @ts-ignore: decorator
@lazy const SIGN_BIAS = 0x800 << EXP_TABLE_BITS;

/* Computes sign*exp(x+xtail) where |xtail| < 2^-8/N and |xtail| <= |x|.
   The sign_bias argument is SIGN_BIAS or 0 and sets the sign to -1 or 1.*/
// @ts-ignore: decorator
@inline function exp_inline(x: f64, xtail: f64, sign_bias: u32): f64 {
  const N      = 1 << EXP_TABLE_BITS;
  const N_MASK = N - 1;

  const InvLn2N   = reinterpret<f64>(0x3FF71547652B82FE) * N; // 0x1.71547652b82fep0
  const NegLn2hiN = reinterpret<f64>(0xBF762E42FEFA0000);     // -0x1.62e42fefa0000p-8
  const NegLn2loN = reinterpret<f64>(0xBD0CF79ABC9E3B3A);     // -0x1.cf79abc9e3b3ap-47
  const shift     = reinterpret<f64>(0x4338000000000000);     // 0x1.8p52

  const C2 = reinterpret<f64>(0x3FDFFFFFFFFFFDBD); // __exp_data.poly[0] (0x1.ffffffffffdbdp-2)
  const C3 = reinterpret<f64>(0x3FC555555555543C); // __exp_data.poly[1] (0x1.555555555543cp-3)
  const C4 = reinterpret<f64>(0x3FA55555CF172B91); // __exp_data.poly[2] (0x1.55555cf172b91p-5)
  const C5 = reinterpret<f64>(0x3F81111167A4D017); // __exp_data.poly[3] (0x1.1111167a4d017p-7)

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
//   /* z - kd is in [-0.5-2^-16, 0.5] in all rounding modes.  */
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

  // @ts-ignore: cast
  const tab = exp_data_tab.dataStart as usize;

  tail = reinterpret<f64>(load<u64>(tab + (idx << alignof<u64>())));
  // This is only a valid scale when -1023*N < k < 1024*N
  sbits = load<u64>(tab + (idx << alignof<u64>()), 1 << alignof<u64>()) + top;
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

export function pow_lut(x: f64, y: f64): f64 {
  const Ox1p52 = reinterpret<f64>(0x4330000000000000); // 0x1p52

  var sign_bias: u32 = 0;
  var ix = reinterpret<u64>(x);
  var iy = reinterpret<u64>(y);
  var topx = ix >> 52;
  var topy = iy >> 52;

  if (topx - 0x001 >= 0x7FF - 0x001 || (topy & 0x7FF) - 0x3BE >= 0x43e - 0x3BE) {
    /* Note: if |y| > 1075 * ln2 * 2^53 ~= 0x1.749p62 then pow(x,y) = inf/0
       and if |y| < 2^-54 / 1075 ~= 0x1.e7b6p-65 then pow(x,y) = +-1.
       Special cases: (x < 0x1p-126 or inf or nan) or
       (|y| < 0x1p-65 or |y| >= 0x1p63 or nan).  */
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