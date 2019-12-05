/** Lookup data for exp2f **/

const EXP2F_TABLE_BITS = 5;

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

// @lazy const exp2f_data_shift = reinterpret<f64>(0x4338000000000000); // 0x1.8p+52
// @lazy const exp2f_data_shift_scaled = exp2f_data_shift / EXP2F_N;
// @lazy export const exp2f_data_poly: f64[] = [
//   reinterpret<f64>(0x3FAC6AF84B912394), // 0x1.c6af84b912394p-5
//   reinterpret<f64>(0x3FCEBFCE50FAC4F3), // 0x1.ebfce50fac4f3p-3
//   reinterpret<f64>(0x3FE62E42FF0C52D6)  // 0x1.62e42ff0c52d6p-1
// ];
// @lazy const exp2f_data_invln2_scaled = reinterpret<f64>(0x3FF71547652B82FE) * EXP2F_N; // 0x1.71547652b82fep+0
// @lazy const exp2f_data_poly_scaled: f64[] = [
//   reinterpret<f64>(0x3FAC6AF84B912394) / EXP2F_N / EXP2F_N / EXP2F_N, // 0x1.c6af84b912394p-5
//   reinterpret<f64>(0x3FCEBFCE50FAC4F3) / EXP2F_N / EXP2F_N,           // 0x1.ebfce50fac4f3p-3
//   reinterpret<f64>(0x3FE62E42FF0C52D6) / EXP2F_N                      // 0x1.62e42ff0c52d6p-1
// ];

// @inline function top12(x: f32): u32 {
//   return reinterpret<u32>(x) >> 20;
// }

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
    if (x > 0) return Infinity;     // x >     0    -> Owerflow
    if (x <= -150) return 0;        // x <= -150    -> Underflow
  }

  // x = k/N + r with r in [-1/(2N), 1/(2N)] and int k.
  var kd = xd + shift;
  var ki = reinterpret<u64>(kd);
  var r  = xd - (kd - shift);
  var t: u64, y: f64;

  const tab = exp2f_data_tab.dataStart as usize;

  // exp2(x) = 2^(k/N) * 2^r ~= s * (C0*r^3 + C1*r^2 + C2*r + 1)
  t  = load<u64>(tab + ((<usize>ki & N_MASK) << alignof<u64>()));
  t += ki << (52 - EXP2F_TABLE_BITS);
  y  = C2 * r + 1;
  y += (C0 * r + C1) * (r  * r);
  y *= reinterpret<f64>(t);

  return <f32>y;
}

/** Lookup data for log2f **/

@lazy const LOG2F_TABLE_BITS = 4;
@lazy const LOG2F_POLY_ORDER = 4;

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
  reinterpret<f64>(0x3FF0000000000000), reinterpret<f64>(0x0),                // 0x1p+0,                0x0,
  reinterpret<f64>(0x3FEE608CFD9A47AC), reinterpret<f64>(0x3FB338CA9F24F53D), // 0x1.e608cfd9a47acp-1,  0x1.338ca9f24f53dp-4,
  reinterpret<f64>(0x3FECA4B31F026AA0), reinterpret<f64>(0x3FC476A9543891BA), // 0x1.ca4b31f026aap-1 ,  0x1.476a9543891bap-3,
  reinterpret<f64>(0x3FEB2036576AFCE6), reinterpret<f64>(0x3FCE840B4AC4E4D2), // 0x1.b2036576afce6p-1,  0x1.e840b4ac4e4d2p-3,
  reinterpret<f64>(0x3FE9C2D163A1AA2D), reinterpret<f64>(0x3FD40645F0C6651C), // 0x1.9c2d163a1aa2dp-1,  0x1.40645f0c6651cp-2,
  reinterpret<f64>(0x3FE886E6037841ED), reinterpret<f64>(0x3FD88E9C2C1B9FF8), // 0x1.886e6037841edp-1,  0x1.88e9c2c1b9ff8p-2,
  reinterpret<f64>(0x3FE767DCF5534862), reinterpret<f64>(0x3FDCE0A44EB17BCC), // 0x1.767dcf5534862p-1,  0x1.ce0a44eb17bccp-2
];

@lazy const log2f_data_poly: f64[] = [
  reinterpret<f64>(0xBFD712B6F70A7E4D), // -0x1.712b6f70a7e4dp-2,
  reinterpret<f64>(0x3FDECABF496832E0), //  0x1.ecabf496832ep-2,
  reinterpret<f64>(0xBFE715479FFAE3DE), // -0x1.715479ffae3dep-1,
  reinterpret<f64>(0x3FF715475F35C8B8)  //  0x1.715475f35c8b8p0
];

/* Lookup data for powf. See: https://git.musl-libc.org/cgit/musl/tree/src/math/powf.c */

@lazy const POWF_LOG2_TABLE_BITS = 4;
@lazy const POWF_LOG2_POLY_ORDER = 5;
@lazy const POWF_SCALE_BITS = 0;
@lazy const POWF_SCALE: f64 = 1 << POWF_SCALE_BITS;

@lazy export const powf_log2_data_tab: f64[] = [
  reinterpret<f64>(0x3FF661EC79F8F3BE), reinterpret<f64>(0xBFDEFEC65B963019) * POWF_SCALE,
  reinterpret<f64>(0x3FF571ED4AAF883D), reinterpret<f64>(0xBFDB0B6832D4FCA4) * POWF_SCALE,
  reinterpret<f64>(0x3FF49539F0F010B0), reinterpret<f64>(0xBFD7418B0A1FB77B) * POWF_SCALE,
  reinterpret<f64>(0x3FF3C995B0B80385), reinterpret<f64>(0xBFD39DE91A6DCF7B) * POWF_SCALE,
  reinterpret<f64>(0x3FF30D190C8864A5), reinterpret<f64>(0xBFD01D9BF3F2B631) * POWF_SCALE,
  reinterpret<f64>(0x3FF25E227B0B8EA0), reinterpret<f64>(0xBFC97C1D1B3B7AF0) * POWF_SCALE,
  reinterpret<f64>(0x3FF1BB4A4A1A343F), reinterpret<f64>(0xBFC2F9E393AF3C9F) * POWF_SCALE,
  reinterpret<f64>(0x3FF12358F08AE5BA), reinterpret<f64>(0xBFB960CBBF788D5C) * POWF_SCALE,
  reinterpret<f64>(0x3FF0953F419900A7), reinterpret<f64>(0xBFAA6F9DB6475FCE) * POWF_SCALE,
  reinterpret<f64>(0x3FF0000000000000), reinterpret<f64>(0x0),
  reinterpret<f64>(0x3FEE608CFD9A47AC), reinterpret<f64>(0x3FB338CA9F24F53D) * POWF_SCALE,
  reinterpret<f64>(0x3FECA4B31F026AA0), reinterpret<f64>(0x3FC476A9543891BA) * POWF_SCALE,
  reinterpret<f64>(0x3FEB2036576AFCE6), reinterpret<f64>(0x3FCE840B4AC4E4D2) * POWF_SCALE,
  reinterpret<f64>(0x3FE9C2D163A1AA2D), reinterpret<f64>(0x3FD40645F0C6651C) * POWF_SCALE,
  reinterpret<f64>(0x3FE886E6037841ED), reinterpret<f64>(0x3FD88E9C2C1B9FF8) * POWF_SCALE,
  reinterpret<f64>(0x3FE767DCF5534862), reinterpret<f64>(0x3FDCE0A44EB17BCC) * POWF_SCALE
];

@inline function zeroinfnan(ux: u32): bool {
  return 2 * ux - 1 >= 2 * 0x7f800000 - 1;
}

/* Returns 0 if not int, 1 if odd int, 2 if even int.  The argument is
   the bit representation of a non-zero finite floating-point value.  */
@inline function checkint(iy: u32): i32 {
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
@inline function log2_inline(ux: u32): f64 {
  // #define A __powf_log2_data_poly
  const A0 = reinterpret<f64>(0x3FD27616C9496E0B) * POWF_SCALE; //  0x1.27616c9496e0bp-2
  const A1 = reinterpret<f64>(0xBFD71969A075C67A) * POWF_SCALE; // -0x1.71969a075c67ap-2
  const A2 = reinterpret<f64>(0x3FDEC70A6CA7BADD) * POWF_SCALE; //  0x1.ec70a6ca7baddp-2
  const A3 = reinterpret<f64>(0xBFE7154748BEF6C8) * POWF_SCALE; // -0x1.7154748bef6c8p-1
  const A4 = reinterpret<f64>(0x3FF71547652AB82B) * POWF_SCALE; //  0x1.71547652ab82bp+0
  const N_MASK = (1 << POWF_LOG2_TABLE_BITS) - 1;
  const tab = powf_log2_data_tab.dataStart as usize;

  /* x = 2^k z; where z is in range [OFF,2*OFF] and exact.
    The range is split into N subintervals.
    The ith subinterval contains z and c is near its center.  */
  var tmp  = ux - 0x3F330000;
  var i    = <usize>((tmp >> (23 - POWF_LOG2_TABLE_BITS)) & N_MASK);
  var top  = tmp & 0xFF800000;
  var uz   = ux - top;
  var k    = <i32>(<i32>top >> (23 - POWF_SCALE_BITS)); /* arithmetic shift */
  var invc = load<f64>(tab + (i << (1 + alignof<f64>())), 0 << alignof<f64>());
  var logc = load<f64>(tab + (i << (1 + alignof<f64>())), 1 << alignof<f64>());
  var z    = <f64>reinterpret<f32>(uz);

  /* log2(x) = log1p(z/c-1)/ln2 + log2(c) + k */
  var r  = z * invc - 1;
  var y0 = logc + <f64>k;
  var p: f64, q: f64, y: f64;

  /* Pipelined polynomial evaluation to approximate log1p(r)/ln2. */
  y = A0 * r + A1;
  p = A2 * r + A3;
  q = A4 * r + y0;

  r *= r;
  q += p * r;
  y  = y * (r * r) + q;

  return y;
}

/* The output of log2 and thus the input of exp2 is either scaled by N
   (in case of fast toint intrinsics) or not.  The unscaled xd must be
   in [-1021,1023], sign_bias sets the sign of the result.  */
@inline function exp2_inline(xd: f64, signBias: u32): f32 {
  const N      = 1 << EXP2F_TABLE_BITS;
  const N_MASK = N - 1;
  const shift  = reinterpret<f64>(0x4338000000000000) / N; // 0x1.8p+52

  const C0 = reinterpret<f64>(0x3FAC6AF84B912394); // 0x1.c6af84b912394p-5
  const C1 = reinterpret<f64>(0x3FCEBFCE50FAC4F3); // 0x1.ebfce50fac4f3p-3
  const C2 = reinterpret<f64>(0x3FE62E42FF0C52D6); // 0x1.62e42ff0c52d6p-1

  /* x = k/N + r with r in [-1/(2N), 1/(2N)] */
  var kd = <f64>(xd + shift);
  var ki = reinterpret<u64>(kd);
  var r  = xd - (kd - shift);
  var t: u64, z: f64, y: f64, s: f64;

  /* exp2(x) = 2^(k/N) * 2^r ~= s * (C0*r^3 + C1*r^2 + C2*r + 1) */
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

export function powf_lut(x: f32, y: f32): f32 {
  const Ox1p23f     = reinterpret<f32>(0x4B000000); // 0x1p23f
  const UPPER_LIMIT = reinterpret<f64>(0x405FFFFFFFD1D571) * POWF_SCALE; // 0x1.fffffffd1d571p+6
  const LOWER_LIMIT = -150.0 * POWF_SCALE;
  const SIGN_BIAS   = 1 << (EXP2F_TABLE_BITS + 11);

  var signBias: u32 = 0;
  var by: bool = false;
  var ix = reinterpret<u32>(x);
  var iy = reinterpret<u32>(y);

  if (ix - 0x00800000 >= 0x7f800000 - 0x00800000 || (by = zeroinfnan(iy))) {
    /* Either (x < 0x1p-126 or inf or nan) or (y is 0 or inf or nan).  */
    if (by) {
      if (2 * iy == 0) return isNaN(x) ? x + y : 1.0;
      if (ix == 0x3F800000) return isNaN(y) ? x + y : 1.0;
      if (2 * ix > 2 * 0x7F800000 || 2 * iy > 2 * 0x7F800000) return x + y;
      if (2 * ix == 2 * 0x3F800000) return 1.0;
      if ((2 * ix < 2 * 0x3F800000) == !(iy & 0x80000000)) return 0; /* |x|<1 && y==inf or |x|>1 && y==-inf.  */
      return y * y;
    }
    if (zeroinfnan(ix)) {
      let x2 = x * x;
      if (ix & 0x80000000 && checkint(iy) == 1) x2 = -x2;
      /* Without the barrier some versions of clang hoist the 1/x2 and
         thus division by zero exception can be signaled spuriously.  */
      return iy & 0x80000000 ? 1 / x2 : x2;
    }
    /* x and y are non-zero finite.  */
    if (ix & 0x80000000) {
      /* Finite x < 0.  */
      let yint = checkint(iy);
      if (yint == 0) return (x - x) / (x - x);
      if (yint == 1) signBias = SIGN_BIAS;
      ix &= 0x7FFFFFFF;
    }
    if (ix < 0x00800000) {
      /* Normalize subnormal x so exponent becomes negative.  */
      ix = reinterpret<u32>(x * Ox1p23f);
      ix &= 0x7FFFFFFF;
      ix -= 23 << 23;
    }
  }
  var logx = log2_inline(ix);
  var ylogx = y * logx; /* cannot overflow, y is single prec.  */
  if ((reinterpret<u64>(ylogx) >> 47 & 0xFFFF) >= reinterpret<u64>(126.0 * POWF_SCALE) >> 47) {
    /* |y*log(x)| >= 126.  */
    if (ylogx  > UPPER_LIMIT) return __math_oflowf(signBias); // overflow
    if (ylogx <= LOWER_LIMIT) return __math_uflowf(signBias); // underflow
  }
  return exp2_inline(ylogx, signBias);
}
