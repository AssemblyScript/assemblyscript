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
  0x3ff0000000000000, 0x3fefd9b0d3158574, 0x3fefb5586cf9890f,
  0x3fef9301d0125b51, 0x3fef72b83c7d517b, 0x3fef54873168b9aa,
  0x3fef387a6e756238, 0x3fef1e9df51fdee1, 0x3fef06fe0a31b715,
  0x3feef1a7373aa9cb, 0x3feedea64c123422, 0x3feece086061892d,
  0x3feebfdad5362a27, 0x3feeb42b569d4f82, 0x3feeab07dd485429,
  0x3feea47eb03a5585, 0x3feea09e667f3bcd, 0x3fee9f75e8ec5f74,
  0x3feea11473eb0187, 0x3feea589994cce13, 0x3feeace5422aa0db,
  0x3feeb737b0cdc5e5, 0x3feec49182a3f090, 0x3feed503b23e255d,
  0x3feee89f995ad3ad, 0x3feeff76f2fb5e47, 0x3fef199bdd85529c,
  0x3fef3720dcef9069, 0x3fef5818dcfba487, 0x3fef7c97337b9b5f,
  0x3fefa4afa2a490da, 0x3fefd0765b6e4540,
]);

// ULP error: 0.502 (nearest rounding.)
// Relative error: 1.69 * 2^-34 in [-1/64, 1/64] (before rounding.)
// Wrong count: 168353 (all nearest rounding wrong results with fma.)
// @ts-ignore: decorator
@inline
export function exp2f_lut(x: f32): f32 {
  const N = 1 << EXP2F_TABLE_BITS,
    N_MASK = N - 1,
    shift = reinterpret<f64>(0x4338000000000000) / N, // 0x1.8p+52
    Ox127f = reinterpret<f32>(0x7f000000);

  const C0 = reinterpret<f64>(0x3fac6af84b912394), // 0x1.c6af84b912394p-5
    C1 = reinterpret<f64>(0x3fcebfce50fac4f3), // 0x1.ebfce50fac4f3p-3
    C2 = reinterpret<f64>(0x3fe62e42ff0c52d6); // 0x1.62e42ff0c52d6p-1

  let xd = <f64>x;
  let ix = reinterpret<u32>(x);
  let ux = (ix >> 20) & 0x7ff;
  if (ux >= 0x430) {
    // |x| >= 128 or x is nan.
    if (ix == 0xff800000) return 0; // x == -Inf    -> 0
    if (ux >= 0x7f8) return x + x; // x == Inf/NaN -> Inf/NaN
    if (x > 0) return x * Ox127f; // x >     0    -> HugeVal (Owerflow)
    if (x <= -150) return 0; // x <= -150    -> 0 (Underflow)
  }

  // x = k/N + r with r in [-1/(2N), 1/(2N)] and int k.
  let kd = xd + shift;
  let ki = reinterpret<u64>(kd);
  let r = xd - (kd - shift);
  let t: u64, y: f64, s: f64;

  // exp2(x) = 2^(k/N) * 2^r ~= s * (C0*r^3 + C1*r^2 + C2*r + 1)
  t = load<u64>(EXP2F_DATA_TAB + (((<usize>ki) & N_MASK) << alignof<u64>()));
  t += ki << (52 - EXP2F_TABLE_BITS);
  s = reinterpret<f64>(t);
  y = C2 * r + 1;
  y += (C0 * r + C1) * (r * r);
  y *= s;

  return <f32>y;
}

// ULP error: 0.502 (nearest rounding.)
// Relative error: 1.69 * 2^-34 in [-ln2/64, ln2/64] (before rounding.)
// Wrong count: 170635 (all nearest rounding wrong results with fma.)
// @ts-ignore: decorator
@inline
export function expf_lut(x: f32): f32 {
  const N = 1 << EXP2F_TABLE_BITS,
    N_MASK = N - 1,
    shift = reinterpret<f64>(0x4338000000000000), // 0x1.8p+52
    InvLn2N = reinterpret<f64>(0x3ff71547652b82fe) * N, // 0x1.71547652b82fep+0
    Ox1p127f = reinterpret<f32>(0x7f000000);

  const C0 = reinterpret<f64>(0x3fac6af84b912394) / N / N / N, // 0x1.c6af84b912394p-5
    C1 = reinterpret<f64>(0x3fcebfce50fac4f3) / N / N, // 0x1.ebfce50fac4f3p-3
    C2 = reinterpret<f64>(0x3fe62e42ff0c52d6) / N; // 0x1.62e42ff0c52d6p-1

  let xd = <f64>x;
  let ix = reinterpret<u32>(x);
  let ux = (ix >> 20) & 0x7ff;
  if (ux >= 0x42b) {
    // |x| >= 88 or x is nan.
    if (ix == 0xff800000) return 0; // x == -Inf    -> 0
    if (ux >= 0x7f8) return x + x; // x == Inf/NaN -> Inf/NaN
    if (x > reinterpret<f32>(0x42b17217)) return x * Ox1p127f; // x > log(0x1p128)  ~=  88.72 -> HugeVal (Owerflow)
    if (x < reinterpret<f32>(0xc2cff1b4)) return 0; // x < log(0x1p-150) ~= -103.97 -> 0 (Underflow)
  }

  // x*N/Ln2 = k + r with r in [-1/2, 1/2] and int k.
  let z = InvLn2N * xd;

  // Round and convert z to int, the result is in [-150*N, 128*N] and
  // ideally ties-to-even rule is used, otherwise the magnitude of r
  // can be bigger which gives larger approximation error.
  let kd = <f64>(z + shift);
  let ki = reinterpret<u64>(kd);
  let r = z - (kd - shift);
  let s: f64, y: f64, t: u64;

  // exp(x) = 2^(k/N) * 2^(r/N) ~= s * (C0*r^3 + C1*r^2 + C2*r + 1)
  t = load<u64>(EXP2F_DATA_TAB + (((<usize>ki) & N_MASK) << alignof<u64>()));
  t += ki << (52 - EXP2F_TABLE_BITS);
  s = reinterpret<f64>(t);
  z = C0 * r + C1;
  y = C2 * r + 1;
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
@lazy @inline const LOG2F_DATA_TAB = memory.data<u64>([
  0x3ff661ec79f8f3be,
  0xbfdefec65b963019, // 0x1.661ec79f8f3bep+0, -0x1.efec65b963019p-2,
  0x3ff571ed4aaf883d,
  0xbfdb0b6832d4fca4, // 0x1.571ed4aaf883dp+0, -0x1.b0b6832d4fca4p-2,
  0x3ff49539f0f010b0,
  0xbfd7418b0a1fb77b, // 0x1.49539f0f010bp+0 , -0x1.7418b0a1fb77bp-2,
  0x3ff3c995b0b80385,
  0xbfd39de91a6dcf7b, // 0x1.3c995b0b80385p+0, -0x1.39de91a6dcf7bp-2,
  0x3ff30d190c8864a5,
  0xbfd01d9bf3f2b631, // 0x1.30d190c8864a5p+0, -0x1.01d9bf3f2b631p-2,
  0x3ff25e227b0b8ea0,
  0xbfc97c1d1b3b7af0, // 0x1.25e227b0b8eap+0 , -0x1.97c1d1b3b7afp-3 ,
  0x3ff1bb4a4a1a343f,
  0xbfc2f9e393af3c9f, // 0x1.1bb4a4a1a343fp+0, -0x1.2f9e393af3c9fp-3,
  0x3ff12358f08ae5ba,
  0xbfb960cbbf788d5c, // 0x1.12358f08ae5bap+0, -0x1.960cbbf788d5cp-4,
  0x3ff0953f419900a7,
  0xbfaa6f9db6475fce, // 0x1.0953f419900a7p+0, -0x1.a6f9db6475fcep-5,
  0x3ff0000000000000,
  0, // 0x1p+0,                0x0,
  0x3fee608cfd9a47ac,
  0x3fb338ca9f24f53d, // 0x1.e608cfd9a47acp-1,  0x1.338ca9f24f53dp-4,
  0x3feca4b31f026aa0,
  0x3fc476a9543891ba, // 0x1.ca4b31f026aap-1 ,  0x1.476a9543891bap-3,
  0x3feb2036576afce6,
  0x3fce840b4ac4e4d2, // 0x1.b2036576afce6p-1,  0x1.e840b4ac4e4d2p-3,
  0x3fe9c2d163a1aa2d,
  0x3fd40645f0c6651c, // 0x1.9c2d163a1aa2dp-1,  0x1.40645f0c6651cp-2,
  0x3fe886e6037841ed,
  0x3fd88e9c2c1b9ff8, // 0x1.886e6037841edp-1,  0x1.88e9c2c1b9ff8p-2,
  0x3fe767dcf5534862,
  0x3fdce0a44eb17bcc, // 0x1.767dcf5534862p-1,  0x1.ce0a44eb17bccp-2
]);

// ULP error: 0.752 (nearest rounding.)
// Relative error: 1.9 * 2^-26 (before rounding.)
// @ts-ignore: decorator
@inline
export function log2f_lut(x: f32): f32 {
  const N_MASK = (1 << LOG2F_TABLE_BITS) - 1,
    Ox1p23f = reinterpret<f32>(0x4b000000); // 0x1p23f

  const A0 = reinterpret<f64>(0xbfd712b6f70a7e4d), // -0x1.712b6f70a7e4dp-2
    A1 = reinterpret<f64>(0x3fdecabf496832e0), //  0x1.ecabf496832ep-2
    A2 = reinterpret<f64>(0xbfe715479ffae3de), // -0x1.715479ffae3dep-1
    A3 = reinterpret<f64>(0x3ff715475f35c8b8); //  0x1.715475f35c8b8p0

  let ux = reinterpret<u32>(x);
  // Fix sign of zero with downward rounding when x==1.
  // if (WANT_ROUNDING && predict_false(ix == 0x3f800000)) return 0;
  if (ux - 0x00800000 >= 0x7f800000 - 0x00800000) {
    // x < 0x1p-126 or inf or nan.
    if (ux * 2 == 0) return -Infinity;
    if (ux == 0x7f800000) return x; // log2(inf) == inf.
    if (ux >> 31 || ux * 2 >= 0xff000000) return (x - x) / (x - x);
    // x is subnormal, normalize it.
    ux = reinterpret<u32>(x * Ox1p23f);
    ux -= 23 << 23;
  }
  // x = 2^k z; where z is in range [OFF,2*OFF] and exact.
  // The range is split into N subintervals.
  // The ith subinterval contains z and c is near its center.
  let tmp = ux - 0x3f330000;
  let i = (tmp >> (23 - LOG2F_TABLE_BITS)) & N_MASK;
  let top = tmp & 0xff800000;
  let iz = ux - top;
  let k = (<i32>tmp) >> 23;

  let invc = load<f64>(
    LOG2F_DATA_TAB + (i << (1 + alignof<f64>())),
    0 << alignof<f64>(),
  );
  let logc = load<f64>(
    LOG2F_DATA_TAB + (i << (1 + alignof<f64>())),
    1 << alignof<f64>(),
  );
  let z = <f64>reinterpret<f32>(iz);

  // log2(x) = log1p(z/c-1)/ln2 + log2(c) + k
  let r = z * invc - 1;
  let y0 = logc + <f64>k;

  // Pipelined polynomial evaluation to approximate log1p(r)/ln2.
  let y = A1 * r + A2;
  let p = A3 * r + y0;
  let r2 = r * r;
  y += A0 * r2;
  y = y * r2 + p;

  return <f32>y;
}

//
// Lookup data for logf. See: https://git.musl-libc.org/cgit/musl/tree/src/math/logf.c
//

// @ts-ignore: decorator
@inline const LOGF_TABLE_BITS = 4;

// @ts-ignore: decorator
@lazy @inline const LOGF_DATA_TAB = memory.data<u64>([
  0x3ff661ec79f8f3be,
  0xbfd57bf7808caade, // 0x1.661ec79f8f3bep+0, -0x1.57bf7808caadep-2,
  0x3ff571ed4aaf883d,
  0xbfd2bef0a7c06ddb, // 0x1.571ed4aaf883dp+0, -0x1.2bef0a7c06ddbp-2,
  0x3ff49539f0f010b0,
  0xbfd01eae7f513a67, // 0x1.49539f0f010bp+0 , -0x1.01eae7f513a67p-2,
  0x3ff3c995b0b80385,
  0xbfcb31d8a68224e9, // 0x1.3c995b0b80385p+0, -0x1.b31d8a68224e9p-3,
  0x3ff30d190c8864a5,
  0xbfc6574f0ac07758, // 0x1.30d190c8864a5p+0, -0x1.6574f0ac07758p-3,
  0x3ff25e227b0b8ea0,
  0xbfc1aa2bc79c8100, // 0x1.25e227b0b8eap+0 , -0x1.1aa2bc79c81p-3  ,
  0x3ff1bb4a4a1a343f,
  0xbfba4e76ce8c0e5e, // 0x1.1bb4a4a1a343fp+0, -0x1.a4e76ce8c0e5ep-4,
  0x3ff12358f08ae5ba,
  0xbfb1973c5a611ccc, // 0x1.12358f08ae5bap+0, -0x1.1973c5a611cccp-4,
  0x3ff0953f419900a7,
  0xbfa252f438e10c1e, // 0x1.0953f419900a7p+0, -0x1.252f438e10c1ep-5,
  0x3ff0000000000000,
  0, // 0x1p+0,                0,
  0x3fee608cfd9a47ac,
  0x3faaa5aa5df25984, // 0x1.e608cfd9a47acp-1,  0x1.aa5aa5df25984p-5,
  0x3feca4b31f026aa0,
  0x3fbc5e53aa362eb4, // 0x1.ca4b31f026aap-1 ,  0x1.c5e53aa362eb4p-4,
  0x3feb2036576afce6,
  0x3fc526e57720db08, // 0x1.b2036576afce6p-1,  0x1.526e57720db08p-3,
  0x3fe9c2d163a1aa2d,
  0x3fcbc2860d224770, // 0x1.9c2d163a1aa2dp-1,  0x1.bc2860d22477p-3 ,
  0x3fe886e6037841ed,
  0x3fd1058bc8a07ee1, // 0x1.886e6037841edp-1,  0x1.1058bc8a07ee1p-2,
  0x3fe767dcf5534862,
  0x3fd4043057b6ee09, // 0x1.767dcf5534862p-1,  0x1.4043057b6ee09p-2
]);

// ULP error: 0.818 (nearest rounding.)
// Relative error: 1.957 * 2^-26 (before rounding.)
// @ts-ignore: decorator
@inline
export function logf_lut(x: f32): f32 {
  const N_MASK = (1 << LOGF_TABLE_BITS) - 1,
    Ox1p23f = reinterpret<f32>(0x4b000000); // 0x1p23f

  const Ln2 = reinterpret<f64>(0x3fe62e42fefa39ef), // 0x1.62e42fefa39efp-1;
    A0 = reinterpret<f64>(0xbfd00ea348b88334), // -0x1.00ea348b88334p-2
    A1 = reinterpret<f64>(0x3fd5575b0be00b6a), //  0x1.5575b0be00b6ap-2
    A2 = reinterpret<f64>(0xbfdffffef20a4123); // -0x1.ffffef20a4123p-2

  let ux = reinterpret<u32>(x);
  // Fix sign of zero with downward rounding when x==1.
  // if (WANT_ROUNDING && ux == 0x3f800000) return 0;
  if (ux - 0x00800000 >= 0x7f800000 - 0x00800000) {
    // x < 0x1p-126 or inf or nan.
    if (ux << 1 == 0) return -Infinity;
    if (ux == 0x7f800000) return x; // log(inf) == inf.
    if (ux >> 31 || ux << 1 >= 0xff000000) return (x - x) / (x - x);
    // x is subnormal, normalize it.
    ux = reinterpret<u32>(x * Ox1p23f);
    ux -= 23 << 23;
  }
  // x = 2^k z; where z is in range [OFF,2*OFF] and exact.
  // The range is split into N subintervals.
  // The ith subinterval contains z and c is near its center.
  let tmp = ux - 0x3f330000;
  let i = (tmp >> (23 - LOGF_TABLE_BITS)) & N_MASK;
  let k = (<i32>tmp) >> 23;
  let iz = ux - (tmp & (0x1ff << 23));

  let invc = load<f64>(
    LOGF_DATA_TAB + (i << (1 + alignof<f64>())),
    0 << alignof<f64>(),
  );
  let logc = load<f64>(
    LOGF_DATA_TAB + (i << (1 + alignof<f64>())),
    1 << alignof<f64>(),
  );

  let z = <f64>reinterpret<f32>(iz);

  // log(x) = log1p(z/c-1) + log(c) + k*Ln2
  let r = z * invc - 1;
  let y0 = logc + <f64>k * Ln2;

  // Pipelined polynomial evaluation to approximate log1p(r).
  let r2 = r * r;
  let y = A1 * r + A2;
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
  return (ux << 1) - 1 >= ((<u32>0x7f800000) << 1) - 1;
}

// Returns 0 if not int, 1 if odd int, 2 if even int. The argument is
// the bit representation of a non-zero finite floating-point value.
// @ts-ignore: decorator
@inline
function checkintf(iy: u32): i32 {
  let e = (iy >> 23) & 0xff;
  if (e < 0x7f) return 0;
  if (e > 0x7f + 23) return 2;
  e = 1 << (0x7f + 23 - e);
  if (iy & (e - 1)) return 0;
  if (iy & e) return 1;
  return 2;
}

// Subnormal input is normalized so ix has negative biased exponent.
// Output is multiplied by N (POWF_SCALE) if TOINT_INTRINICS is set.
// @ts-ignore: decorator
@inline
function log2f_inline(ux: u32): f64 {
  const N_MASK = (1 << LOG2F_TABLE_BITS) - 1;

  const A0 = reinterpret<f64>(0x3fd27616c9496e0b), //  0x1.27616c9496e0bp-2
    A1 = reinterpret<f64>(0xbfd71969a075c67a), // -0x1.71969a075c67ap-2
    A2 = reinterpret<f64>(0x3fdec70a6ca7badd), //  0x1.ec70a6ca7baddp-2
    A3 = reinterpret<f64>(0xbfe7154748bef6c8), // -0x1.7154748bef6c8p-1
    A4 = reinterpret<f64>(0x3ff71547652ab82b); //  0x1.71547652ab82bp+0

  // x = 2^k z; where z is in range [OFF,2*OFF] and exact.
  // The range is split into N subintervals.
  // The ith subinterval contains z and c is near its center.
  let tmp = ux - 0x3f330000;
  let i = usize((tmp >> (23 - LOG2F_TABLE_BITS)) & N_MASK);
  let top = tmp & 0xff800000;
  let uz = ux - top;
  let k = (<i32>top) >> 23;

  let invc = load<f64>(
    LOG2F_DATA_TAB + (i << (1 + alignof<f64>())),
    0 << alignof<f64>(),
  );
  let logc = load<f64>(
    LOG2F_DATA_TAB + (i << (1 + alignof<f64>())),
    1 << alignof<f64>(),
  );
  let z = <f64>reinterpret<f32>(uz);

  // log2(x) = log1p(z/c-1)/ln2 + log2(c) + k
  let r = z * invc - 1;
  let y0 = logc + <f64>k;

  // Pipelined polynomial evaluation to approximate log1p(r)/ln2.
  let y = A0 * r + A1;
  let p = A2 * r + A3;
  let q = A4 * r + y0;

  r *= r;
  q += p * r;
  y = y * (r * r) + q;

  return y;
}

// The output of log2 and thus the input of exp2 is either scaled by N
// (in case of fast toint intrinsics) or not.  The unscaled xd must be
// in [-1021,1023], sign_bias sets the sign of the result.
// @ts-ignore: decorator
@inline
function exp2f_inline(xd: f64, signBias: u32): f32 {
  const N = 1 << EXP2F_TABLE_BITS,
    N_MASK = N - 1,
    shift = reinterpret<f64>(0x4338000000000000) / N; // 0x1.8p+52

  const C0 = reinterpret<f64>(0x3fac6af84b912394), // 0x1.c6af84b912394p-5
    C1 = reinterpret<f64>(0x3fcebfce50fac4f3), // 0x1.ebfce50fac4f3p-3
    C2 = reinterpret<f64>(0x3fe62e42ff0c52d6); // 0x1.62e42ff0c52d6p-1

  // x = k/N + r with r in [-1/(2N), 1/(2N)]
  let kd = <f64>(xd + shift);
  let ki = reinterpret<u64>(kd);
  let r = xd - (kd - shift);
  let t: u64, z: f64, y: f64, s: f64;

  // exp2(x) = 2^(k/N) * 2^r ~= s * (C0*r^3 + C1*r^2 + C2*r + 1)
  t = load<u64>(EXP2F_DATA_TAB + (((<usize>ki) & N_MASK) << alignof<u64>()));
  t += (ki + signBias) << (52 - EXP2F_TABLE_BITS);
  s = reinterpret<f64>(t);
  z = C0 * r + C1;
  y = C2 * r + 1;
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
  const Ox1p23f = reinterpret<f32>(0x4b000000), // 0x1p23f
    UPPER_LIMIT = reinterpret<f64>(0x405fffffffd1d571), // 0x1.fffffffd1d571p+6
    LOWER_LIMIT = -150.0,
    SIGN_BIAS = 1 << (EXP2F_TABLE_BITS + 11);

  let signBias: u32 = 0;
  let ix = reinterpret<u32>(x);
  let iy = reinterpret<u32>(y);
  let ny = 0;

  if (
    i32(ix - 0x00800000 >= 0x7f800000 - 0x00800000) |
    (ny = i32(zeroinfnanf(iy)))
  ) {
    // Either (x < 0x1p-126 or inf or nan) or (y is 0 or inf or nan).
    if (ny) {
      if (iy << 1 == 0) return 1.0;
      if (ix == 0x3f800000) return NaN; // original: 1.0
      if (ix << 1 > (<u32>0x7f800000) << 1 || iy << 1 > (<u32>0x7f800000) << 1)
        return x + y;
      if (ix << 1 == 0x3f800000 << 1) return NaN; // original: 1.0
      if (ix << 1 < 0x3f800000 << 1 == !(iy >> 31)) return 0; // |x| < 1 && y==inf or |x| > 1 && y==-inf.
      return y * y;
    }
    if (zeroinfnanf(ix)) {
      let x2 = x * x;
      if (ix >> 31 && checkintf(iy) == 1) x2 = -x2;
      return <i32>iy < 0 ? 1 / x2 : x2;
    }
    // x and y are non-zero finite.
    if (<i32>ix < 0) {
      // Finite x < 0.
      let yint = checkintf(iy);
      if (yint == 0) return (x - x) / (x - x);
      if (yint == 1) signBias = SIGN_BIAS;
      ix &= 0x7fffffff;
    }
    if (ix < 0x00800000) {
      // Normalize subnormal x so exponent becomes negative.
      ix = reinterpret<u32>(x * Ox1p23f);
      ix &= 0x7fffffff;
      ix -= 23 << 23;
    }
  }
  let logx = log2f_inline(ix);
  let ylogx = y * logx; // cannot overflow, y is single prec.
  if (((reinterpret<u64>(ylogx) >> 47) & 0xffff) >= 0x80bf) {
    // reinterpret<u64>(126.0) >> 47
    // |y * log(x)| >= 126
    if (ylogx > UPPER_LIMIT) return oflowf(signBias); // overflow
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
  0x0000000000000000, 0x3ff0000000000000, 0x3c9b3b4f1a88bf6e,
  0x3feff63da9fb3335, 0xbc7160139cd8dc5d, 0x3fefec9a3e778061,
  0xbc905e7a108766d1, 0x3fefe315e86e7f85, 0x3c8cd2523567f613,
  0x3fefd9b0d3158574, 0xbc8bce8023f98efa, 0x3fefd06b29ddf6de,
  0x3c60f74e61e6c861, 0x3fefc74518759bc8, 0x3c90a3e45b33d399,
  0x3fefbe3ecac6f383, 0x3c979aa65d837b6d, 0x3fefb5586cf9890f,
  0x3c8eb51a92fdeffc, 0x3fefac922b7247f7, 0x3c3ebe3d702f9cd1,
  0x3fefa3ec32d3d1a2, 0xbc6a033489906e0b, 0x3fef9b66affed31b,
  0xbc9556522a2fbd0e, 0x3fef9301d0125b51, 0xbc5080ef8c4eea55,
  0x3fef8abdc06c31cc, 0xbc91c923b9d5f416, 0x3fef829aaea92de0,
  0x3c80d3e3e95c55af, 0x3fef7a98c8a58e51, 0xbc801b15eaa59348,
  0x3fef72b83c7d517b, 0xbc8f1ff055de323d, 0x3fef6af9388c8dea,
  0x3c8b898c3f1353bf, 0x3fef635beb6fcb75, 0xbc96d99c7611eb26,
  0x3fef5be084045cd4, 0x3c9aecf73e3a2f60, 0x3fef54873168b9aa,
  0xbc8fe782cb86389d, 0x3fef4d5022fcd91d, 0x3c8a6f4144a6c38d,
  0x3fef463b88628cd6, 0x3c807a05b0e4047d, 0x3fef3f49917ddc96,
  0x3c968efde3a8a894, 0x3fef387a6e756238, 0x3c875e18f274487d,
  0x3fef31ce4fb2a63f, 0x3c80472b981fe7f2, 0x3fef2b4565e27cdd,
  0xbc96b87b3f71085e, 0x3fef24dfe1f56381, 0x3c82f7e16d09ab31,
  0x3fef1e9df51fdee1, 0xbc3d219b1a6fbffa, 0x3fef187fd0dad990,
  0x3c8b3782720c0ab4, 0x3fef1285a6e4030b, 0x3c6e149289cecb8f,
  0x3fef0cafa93e2f56, 0x3c834d754db0abb6, 0x3fef06fe0a31b715,
  0x3c864201e2ac744c, 0x3fef0170fc4cd831, 0x3c8fdd395dd3f84a,
  0x3feefc08b26416ff, 0xbc86a3803b8e5b04, 0x3feef6c55f929ff1,
  0xbc924aedcc4b5068, 0x3feef1a7373aa9cb, 0xbc9907f81b512d8e,
  0x3feeecae6d05d866, 0xbc71d1e83e9436d2, 0x3feee7db34e59ff7,
  0xbc991919b3ce1b15, 0x3feee32dc313a8e5, 0x3c859f48a72a4c6d,
  0x3feedea64c123422, 0xbc9312607a28698a, 0x3feeda4504ac801c,
  0xbc58a78f4817895b, 0x3feed60a21f72e2a, 0xbc7c2c9b67499a1b,
  0x3feed1f5d950a897, 0x3c4363ed60c2ac11, 0x3feece086061892d,
  0x3c9666093b0664ef, 0x3feeca41ed1d0057, 0x3c6ecce1daa10379,
  0x3feec6a2b5c13cd0, 0x3c93ff8e3f0f1230, 0x3feec32af0d7d3de,
  0x3c7690cebb7aafb0, 0x3feebfdad5362a27, 0x3c931dbdeb54e077,
  0x3feebcb299fddd0d, 0xbc8f94340071a38e, 0x3feeb9b2769d2ca7,
  0xbc87deccdc93a349, 0x3feeb6daa2cf6642, 0xbc78dec6bd0f385f,
  0x3feeb42b569d4f82, 0xbc861246ec7b5cf6, 0x3feeb1a4ca5d920f,
  0x3c93350518fdd78e, 0x3feeaf4736b527da, 0x3c7b98b72f8a9b05,
  0x3feead12d497c7fd, 0x3c9063e1e21c5409, 0x3feeab07dd485429,
  0x3c34c7855019c6ea, 0x3feea9268a5946b7, 0x3c9432e62b64c035,
  0x3feea76f15ad2148, 0xbc8ce44a6199769f, 0x3feea5e1b976dc09,
  0xbc8c33c53bef4da8, 0x3feea47eb03a5585, 0xbc845378892be9ae,
  0x3feea34634ccc320, 0xbc93cedd78565858, 0x3feea23882552225,
  0x3c5710aa807e1964, 0x3feea155d44ca973, 0xbc93b3efbf5e2228,
  0x3feea09e667f3bcd, 0xbc6a12ad8734b982, 0x3feea012750bdabf,
  0xbc6367efb86da9ee, 0x3fee9fb23c651a2f, 0xbc80dc3d54e08851,
  0x3fee9f7df9519484, 0xbc781f647e5a3ecf, 0x3fee9f75e8ec5f74,
  0xbc86ee4ac08b7db0, 0x3fee9f9a48a58174, 0xbc8619321e55e68a,
  0x3fee9feb564267c9, 0x3c909ccb5e09d4d3, 0x3feea0694fde5d3f,
  0xbc7b32dcb94da51d, 0x3feea11473eb0187, 0x3c94ecfd5467c06b,
  0x3feea1ed0130c132, 0x3c65ebe1abd66c55, 0x3feea2f336cf4e62,
  0xbc88a1c52fb3cf42, 0x3feea427543e1a12, 0xbc9369b6f13b3734,
  0x3feea589994cce13, 0xbc805e843a19ff1e, 0x3feea71a4623c7ad,
  0xbc94d450d872576e, 0x3feea8d99b4492ed, 0x3c90ad675b0e8a00,
  0x3feeaac7d98a6699, 0x3c8db72fc1f0eab4, 0x3feeace5422aa0db,
  0xbc65b6609cc5e7ff, 0x3feeaf3216b5448c, 0x3c7bf68359f35f44,
  0x3feeb1ae99157736, 0xbc93091fa71e3d83, 0x3feeb45b0b91ffc6,
  0xbc5da9b88b6c1e29, 0x3feeb737b0cdc5e5, 0xbc6c23f97c90b959,
  0x3feeba44cbc8520f, 0xbc92434322f4f9aa, 0x3feebd829fde4e50,
  0xbc85ca6cd7668e4b, 0x3feec0f170ca07ba, 0x3c71affc2b91ce27,
  0x3feec49182a3f090, 0x3c6dd235e10a73bb, 0x3feec86319e32323,
  0xbc87c50422622263, 0x3feecc667b5de565, 0x3c8b1c86e3e231d5,
  0x3feed09bec4a2d33, 0xbc91bbd1d3bcbb15, 0x3feed503b23e255d,
  0x3c90cc319cee31d2, 0x3feed99e1330b358, 0x3c8469846e735ab3,
  0x3feede6b5579fdbf, 0xbc82dfcd978e9db4, 0x3feee36bbfd3f37a,
  0x3c8c1a7792cb3387, 0x3feee89f995ad3ad, 0xbc907b8f4ad1d9fa,
  0x3feeee07298db666, 0xbc55c3d956dcaeba, 0x3feef3a2b84f15fb,
  0xbc90a40e3da6f640, 0x3feef9728de5593a, 0xbc68d6f438ad9334,
  0x3feeff76f2fb5e47, 0xbc91eee26b588a35, 0x3fef05b030a1064a,
  0x3c74ffd70a5fddcd, 0x3fef0c1e904bc1d2, 0xbc91bdfbfa9298ac,
  0x3fef12c25bd71e09, 0x3c736eae30af0cb3, 0x3fef199bdd85529c,
  0x3c8ee3325c9ffd94, 0x3fef20ab5fffd07a, 0x3c84e08fd10959ac,
  0x3fef27f12e57d14b, 0x3c63cdaf384e1a67, 0x3fef2f6d9406e7b5,
  0x3c676b2c6c921968, 0x3fef3720dcef9069, 0xbc808a1883ccb5d2,
  0x3fef3f0b555dc3fa, 0xbc8fad5d3ffffa6f, 0x3fef472d4a07897c,
  0xbc900dae3875a949, 0x3fef4f87080d89f2, 0x3c74a385a63d07a7,
  0x3fef5818dcfba487, 0xbc82919e2040220f, 0x3fef60e316c98398,
  0x3c8e5a50d5c192ac, 0x3fef69e603db3285, 0x3c843a59ac016b4b,
  0x3fef7321f301b460, 0xbc82d52107b43e1f, 0x3fef7c97337b9b5f,
  0xbc892ab93b470dc9, 0x3fef864614f5a129, 0x3c74b604603a88d3,
  0x3fef902ee78b3ff6, 0x3c83c5ec519d7271, 0x3fef9a51fbc74c83,
  0xbc8ff7128fd391f0, 0x3fefa4afa2a490da, 0xbc8dae98e223747d,
  0x3fefaf482d8e67f1, 0x3c8ec3bc41aa2008, 0x3fefba1bee615a27,
  0x3c842b94c3a9eb32, 0x3fefc52b376bba97, 0x3c8a64a931d185ee,
  0x3fefd0765b6e4540, 0xbc8e37bae43be3ed, 0x3fefdbfdad9cbe14,
  0x3c77893b4d91cd9d, 0x3fefe7c1819e90d8, 0x3c5305c14160cc89,
  0x3feff3c22b8f71f1,
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
  const Ox1p_1022 = reinterpret<f64>(0x0010000000000000), // 0x1p-1022
    Ox1p1009 = reinterpret<f64>(0x7f00000000000000); // 0x1p1009

  let scale: f64;
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
  let y = scale + scale * tmp;
  if (abs(y) < 1.0) {
    // Round y to the right precision before scaling it into the subnormal
    // range to avoid double rounding that can cause 0.5+E/2 ulp error where
    // E is the worst-case ulp error outside the subnormal range.  So this
    // is only useful if the goal is better than 1 ulp worst-case error.
    let one = copysign(1.0, y);
    let lo = scale - y + scale * tmp;
    let hi = one + y;
    lo = one - hi + y + lo;
    y = hi + lo - one;
    // Fix the sign of 0.
    if (y == 0.0) y = reinterpret<f64>(sbits & 0x8000000000000000);
  }
  return y * Ox1p_1022;
}

// @ts-ignore: decorator
@inline
export function exp_lut(x: f64): f64 {
  const N = 1 << EXP_TABLE_BITS,
    N_MASK = N - 1;

  const InvLn2N = reinterpret<f64>(0x3ff71547652b82fe) * N, // 0x1.71547652b82fep0
    NegLn2hiN = reinterpret<f64>(0xbf762e42fefa0000), // -0x1.62e42fefa0000p-8
    NegLn2loN = reinterpret<f64>(0xbd0cf79abc9e3b3a), // -0x1.cf79abc9e3b3ap-47
    shift = reinterpret<f64>(0x4338000000000000); // 0x1.8p52;

  const C2 = reinterpret<f64>(0x3fdffffffffffdbd), // __exp_data.poly[0] (0x1.ffffffffffdbdp-2)
    C3 = reinterpret<f64>(0x3fc555555555543c), // __exp_data.poly[1] (0x1.555555555543cp-3)
    C4 = reinterpret<f64>(0x3fa55555cf172b91), // __exp_data.poly[2] (0x1.55555cf172b91p-5)
    C5 = reinterpret<f64>(0x3f81111167a4d017); // __exp_data.poly[3] (0x1.1111167a4d017p-7)

  let ux = reinterpret<u64>(x);
  let abstop = u32(ux >> 52) & 0x7ff;
  if (abstop - 0x3c9 >= 0x03f) {
    if (abstop - 0x3c9 >= 0x80000000) return 1;
    if (abstop >= 0x409) {
      if (ux == 0xfff0000000000000) return 0;
      if (abstop >= 0x7ff) {
        return 1.0 + x;
      } else {
        return select<f64>(0, Infinity, <i64>ux < 0);
      }
    }
    // Large x is special cased below.
    abstop = 0;
  }

  // exp(x) = 2^(k/N) * exp(r), with exp(r) in [2^(-1/2N),2^(1/2N)]
  // x = ln2/N*k + r, with int k and r in [-ln2/2N, ln2/2N]
  let z = InvLn2N * x;
  // #if TOINT_INTRINSICS
  // 	kd = roundtoint(z);
  // 	ki = converttoint(z);
  // #elif EXP_USE_TOINT_NARROW
  // 	// z - kd is in [-0.5-2^-16, 0.5] in all rounding modes.
  // let kd = z + shift;
  // let ki = reinterpret<u64>(kd) >> 16;
  // let kd = <f64><i32>ki;
  // #else
  // z - kd is in [-1, 1] in non-nearest rounding modes.
  let kd = z + shift;
  let ki = reinterpret<u64>(kd);
  kd -= shift;
  // #endif
  let r = x + kd * NegLn2hiN + kd * NegLn2loN;
  // 2^(k/N) ~= scale * (1 + tail).
  let idx = usize((ki & N_MASK) << 1);
  let top = ki << (52 - EXP_TABLE_BITS);

  let tail = reinterpret<f64>(
    load<u64>(EXP_DATA_TAB + (idx << alignof<u64>())),
  ); // T[idx]
  // This is only a valid scale when -1023*N < k < 1024*N
  let sbits =
    load<u64>(EXP_DATA_TAB + (idx << alignof<u64>()), 1 << alignof<u64>()) +
    top; // T[idx + 1]
  // exp(x) = 2^(k/N) * exp(r) ~= scale + scale * (tail + exp(r) - 1).
  // Evaluation is optimized assuming superscalar pipelined execution.
  let r2 = r * r;
  // Without fma the worst case error is 0.25/N ulp larger.
  // Worst case error is less than 0.5+1.11/N+(abs poly error * 2^53) ulp.
  let tmp = tail + r + r2 * (C2 + r * C3) + r2 * r2 * (C4 + r * C5);
  if (abstop == 0) return specialcase(tmp, sbits, ki);
  let scale = reinterpret<f64>(sbits);
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
  let scale: f64;
  if ((ki & 0x80000000) == 0) {
    // k > 0, the exponent of scale might have overflowed by 1
    sbits -= u64(1) << 52;
    scale = reinterpret<f64>(sbits);
    return 2 * (scale * tmp + scale);
  }
  // k < 0, need special care in the subnormal range
  sbits += u64(1022) << 52;
  scale = reinterpret<f64>(sbits);
  let y = scale * tmp + scale;
  if (y < 1.0) {
    // Round y to the right precision before scaling it into the subnormal
    // range to avoid double rounding that can cause 0.5+E/2 ulp error where
    // E is the worst-case ulp error outside the subnormal range. So this
    // is only useful if the goal is better than 1 ulp worst-case error.
    let hi: f64, lo: f64;
    lo = scale - y + scale * tmp;
    hi = 1.0 + y;
    lo = 1.0 - hi + y + lo;
    y = hi + lo - 1.0;
  }
  return y * Ox1p_1022;
}

// @ts-ignore: decorator
@inline
export function exp2_lut(x: f64): f64 {
  const N = 1 << EXP_TABLE_BITS,
    N_MASK = N - 1,
    shift = reinterpret<f64>(0x4338000000000000) / N; // 0x1.8p52

  const C1 = reinterpret<f64>(0x3fe62e42fefa39ef), // 0x1.62e42fefa39efp-1
    C2 = reinterpret<f64>(0x3fcebfbdff82c424), // 0x1.ebfbdff82c424p-3
    C3 = reinterpret<f64>(0x3fac6b08d70cf4b5), // 0x1.c6b08d70cf4b5p-5
    C4 = reinterpret<f64>(0x3f83b2abd24650cc), // 0x1.3b2abd24650ccp-7
    C5 = reinterpret<f64>(0x3f55d7e09b4e3a84); // 0x1.5d7e09b4e3a84p-10

  let ux = reinterpret<u64>(x);
  let abstop = u32(ux >> 52) & 0x7ff;
  if (abstop - 0x3c9 >= 0x03f) {
    if (abstop - 0x3c9 >= 0x80000000) return 1.0;
    if (abstop >= 0x409) {
      if (ux == 0xfff0000000000000) return 0;
      if (abstop >= 0x7ff) return 1.0 + x;
      if (<i64>ux >= 0) return Infinity;
      else if (ux >= 0xc090cc0000000000) return 0;
    }
    if (ux << 1 > 0x811a000000000000) abstop = 0; // Large x is special cased below.
  }

  // exp2(x) = 2^(k/N) * 2^r, with 2^r in [2^(-1/2N),2^(1/2N)].
  // x = k/N + r, with int k and r in [-1/2N, 1/2N]
  let kd = x + shift;
  let ki = reinterpret<u64>(kd);
  kd -= shift; // k/N for int k
  let r = x - kd;
  // 2^(k/N) ~= scale * (1 + tail)
  let idx = usize((ki & N_MASK) << 1);
  let top = ki << (52 - EXP_TABLE_BITS);

  let tail = reinterpret<f64>(
    load<u64>(EXP_DATA_TAB + (idx << alignof<u64>()), 0 << alignof<u64>()),
  ); // T[idx])
  // This is only a valid scale when -1023*N < k < 1024*N
  let sbits =
    load<u64>(EXP_DATA_TAB + (idx << alignof<u64>()), 1 << alignof<u64>()) +
    top; // T[idx + 1]
  // exp2(x) = 2^(k/N) * 2^r ~= scale + scale * (tail + 2^r - 1).
  // Evaluation is optimized assuming superscalar pipelined execution
  let r2 = r * r;
  // Without fma the worst case error is 0.5/N ulp larger.
  // Worst case error is less than 0.5+0.86/N+(abs poly error * 2^53) ulp.
  let tmp = tail + r * C1 + r2 * (C2 + r * C3) + r2 * r2 * (C4 + r * C5);
  if (abstop == 0) return specialcase2(tmp, sbits, ki);
  let scale = reinterpret<f64>(sbits);
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
@lazy @inline const LOG2_DATA_TAB1 = memory.data<u64>([
  //     invc       ,        logc
  0x3ff724286bb1acf8, 0xbfe1095feecdb000, 0x3ff6e1f766d2cca1,
  0xbfe08494bd76d000, 0x3ff6a13d0e30d48a, 0xbfe00143aee8f800,
  0x3ff661ec32d06c85, 0xbfdefec5360b4000, 0x3ff623fa951198f8,
  0xbfddfdd91ab7e000, 0x3ff5e75ba4cf026c, 0xbfdcffae0cc79000,
  0x3ff5ac055a214fb8, 0xbfdc043811fda000, 0x3ff571ed0f166e1e,
  0xbfdb0b67323ae000, 0x3ff53909590bf835, 0xbfda152f5a2db000,
  0x3ff5014fed61addd, 0xbfd9217f5af86000, 0x3ff4cab88e487bd0,
  0xbfd8304db0719000, 0x3ff49539b4334fee, 0xbfd74189f9a9e000,
  0x3ff460cbdfafd569, 0xbfd6552bb5199000, 0x3ff42d664ee4b953,
  0xbfd56b23a29b1000, 0x3ff3fb01111dd8a6, 0xbfd483650f5fa000,
  0x3ff3c995b70c5836, 0xbfd39de937f6a000, 0x3ff3991c4ab6fd4a,
  0xbfd2baa1538d6000, 0x3ff3698e0ce099b5, 0xbfd1d98340ca4000,
  0x3ff33ae48213e7b2, 0xbfd0fa853a40e000, 0x3ff30d191985bdb1,
  0xbfd01d9c32e73000, 0x3ff2e025cab271d7, 0xbfce857da2fa6000,
  0x3ff2b404cf13cd82, 0xbfccd3c8633d8000, 0x3ff288b02c7ccb50,
  0xbfcb26034c14a000, 0x3ff25e2263944de5, 0xbfc97c1c2f4fe000,
  0x3ff234563d8615b1, 0xbfc7d6023f800000, 0x3ff20b46e33eaf38,
  0xbfc633a71a05e000, 0x3ff1e2eefdcda3dd, 0xbfc494f5e9570000,
  0x3ff1bb4a580b3930, 0xbfc2f9e424e0a000, 0x3ff19453847f2200,
  0xbfc162595afdc000, 0x3ff16e06c0d5d73c, 0xbfbf9c9a75bd8000,
  0x3ff1485f47b7e4c2, 0xbfbc7b575bf9c000, 0x3ff12358ad0085d1,
  0xbfb960c60ff48000, 0x3ff0fef00f532227, 0xbfb64ce247b60000,
  0x3ff0db2077d03a8f, 0xbfb33f78b2014000, 0x3ff0b7e6d65980d9,
  0xbfb0387d1a42c000, 0x3ff0953efe7b408d, 0xbfaa6f9208b50000,
  0x3ff07325cac53b83, 0xbfa47a954f770000, 0x3ff05197e40d1b5c,
  0xbf9d23a8c50c0000, 0x3ff03091c1208ea2, 0xbf916a2629780000,
  0x3ff0101025b37e21, 0xbf7720f8d8e80000, 0x3fefc07ef9caa76b,
  0x3f86fe53b1500000, 0x3fef4465d3f6f184, 0x3fa11ccce10f8000,
  0x3feecc079f84107f, 0x3fac4dfc8c8b8000, 0x3fee573a99975ae8,
  0x3fb3aa321e574000, 0x3fede5d6f0bd3de6, 0x3fb918a0d08b8000,
  0x3fed77b681ff38b3, 0x3fbe72e9da044000, 0x3fed0cb5724de943,
  0x3fc1dcd2507f6000, 0x3feca4b2dc0e7563, 0x3fc476ab03dea000,
  0x3fec3f8ee8d6cb51, 0x3fc7074377e22000, 0x3febdd2b4f020c4c,
  0x3fc98ede8ba94000, 0x3feb7d6c006015ca, 0x3fcc0db86ad2e000,
  0x3feb20366e2e338f, 0x3fce840aafcee000, 0x3feac57026295039,
  0x3fd0790ab4678000, 0x3fea6d01bc2731dd, 0x3fd1ac056801c000,
  0x3fea16d3bc3ff18b, 0x3fd2db11d4fee000, 0x3fe9c2d14967fead,
  0x3fd406464ec58000, 0x3fe970e4f47c9902, 0x3fd52dbe093af000,
  0x3fe920fb3982bcf2, 0x3fd651902050d000, 0x3fe8d30187f759f1,
  0x3fd771d2cdeaf000, 0x3fe886e5ebb9f66d, 0x3fd88e9c857d9000,
  0x3fe83c97b658b994, 0x3fd9a80155e16000, 0x3fe7f405ffc61022,
  0x3fdabe186ed3d000, 0x3fe7ad22181415ca, 0x3fdbd0f2aea0e000,
  0x3fe767dcf99eff8c, 0x3fdce0a43dbf4000,
]);

// @ts-ignore: decorator
@lazy @inline const LOG2_DATA_TAB2 = memory.data<u64>([
  //      chi       ,         clo
  0x3fe6200012b90a8e, 0x3c8904ab0644b605, 0x3fe66000045734a6,
  0x3c61ff9bea62f7a9, 0x3fe69fffc325f2c5, 0x3c827ecfcb3c90ba,
  0x3fe6e00038b95a04, 0x3c88ff8856739326, 0x3fe71fffe09994e3,
  0x3c8afd40275f82b1, 0x3fe7600015590e10, 0xbc72fd75b4238341,
  0x3fe7a00012655bd5, 0x3c7808e67c242b76, 0x3fe7e0003259e9a6,
  0xbc6208e426f622b7, 0x3fe81fffedb4b2d2, 0xbc8402461ea5c92f,
  0x3fe860002dfafcc3, 0x3c6df7f4a2f29a1f, 0x3fe89ffff78c6b50,
  0xbc8e0453094995fd, 0x3fe8e00039671566, 0xbc8a04f3bec77b45,
  0x3fe91fffe2bf1745, 0xbc77fa34400e203c, 0x3fe95fffcc5c9fd1,
  0xbc76ff8005a0695d, 0x3fe9a0003bba4767, 0x3c70f8c4c4ec7e03,
  0x3fe9dfffe7b92da5, 0x3c8e7fd9478c4602, 0x3fea1fffd72efdaf,
  0xbc6a0c554dcdae7e, 0x3fea5fffde04ff95, 0x3c867da98ce9b26b,
  0x3fea9fffca5e8d2b, 0xbc8284c9b54c13de, 0x3feadfffddad03ea,
  0x3c5812c8ea602e3c, 0x3feb1ffff10d3d4d, 0xbc8efaddad27789c,
  0x3feb5fffce21165a, 0x3c53cb1719c61237, 0x3feb9fffd950e674,
  0x3c73f7d94194ce00, 0x3febe000139ca8af, 0x3c750ac4215d9bc0,
  0x3fec20005b46df99, 0x3c6beea653e9c1c9, 0x3fec600040b9f7ae,
  0xbc7c079f274a70d6, 0x3feca0006255fd8a, 0xbc7a0b4076e84c1f,
  0x3fecdfffd94c095d, 0x3c88f933f99ab5d7, 0x3fed1ffff975d6cf,
  0xbc582c08665fe1be, 0x3fed5fffa2561c93, 0xbc7b04289bd295f3,
  0x3fed9fff9d228b0c, 0x3c870251340fa236, 0x3fede00065bc7e16,
  0xbc75011e16a4d80c, 0x3fee200002f64791, 0x3c89802f09ef62e0,
  0x3fee600057d7a6d8, 0xbc7e0b75580cf7fa, 0x3feea00027edc00c,
  0xbc8c848309459811, 0x3feee0006cf5cb7c, 0xbc8f8027951576f4,
  0x3fef2000782b7dcc, 0xbc8f81d97274538f, 0x3fef6000260c450a,
  0xbc4071002727ffdc, 0x3fef9fffe88cd533, 0xbc581bdce1fda8b0,
  0x3fefdfffd50f8689, 0x3c87f91acb918e6e, 0x3ff0200004292367,
  0x3c9b7ff365324681, 0x3ff05fffe3e3d668, 0x3c86fa08ddae957b,
  0x3ff0a0000a85a757, 0xbc57e2de80d3fb91, 0x3ff0e0001a5f3fcc,
  0xbc91823305c5f014, 0x3ff11ffff8afbaf5, 0xbc8bfabb6680bac2,
  0x3ff15fffe54d91ad, 0xbc9d7f121737e7ef, 0x3ff1a00011ac36e1,
  0x3c9c000a0516f5ff, 0x3ff1e00019c84248, 0xbc9082fbe4da5da0,
  0x3ff220000ffe5e6e, 0xbc88fdd04c9cfb43, 0x3ff26000269fd891,
  0x3c8cfe2a7994d182, 0x3ff2a00029a6e6da, 0xbc700273715e8bc5,
  0x3ff2dfffe0293e39, 0x3c9b7c39dab2a6f9, 0x3ff31ffff7dcf082,
  0x3c7df1336edc5254, 0x3ff35ffff05a8b60, 0xbc9e03564ccd31eb,
  0x3ff3a0002e0eaecc, 0x3c75f0e74bd3a477, 0x3ff3e000043bb236,
  0x3c9c7dcb149d8833, 0x3ff4200002d187ff, 0x3c7e08afcf2d3d28,
  0x3ff460000d387cb1, 0x3c820837856599a6, 0x3ff4a00004569f89,
  0xbc89fa5c904fbcd2, 0x3ff4e000043543f3, 0xbc781125ed175329,
  0x3ff51fffcc027f0f, 0x3c9883d8847754dc, 0x3ff55ffffd87b36f,
  0xbc8709e731d02807, 0x3ff59ffff21df7ba, 0x3c87f79f68727b02,
  0x3ff5dfffebfc3481, 0xbc9180902e30e93e,
]);

// @ts-ignore: decorator
@inline
export function log2_lut(x: f64): f64 {
  const N_MASK = (1 << LOG2_TABLE_BITS) - 1;

  const LO: u64 = 0x3feea4af00000000, // reinterpret<u64>(1.0 - 0x1.5b51p-5)
    HI: u64 = 0x3ff0b55900000000; // reinterpret<u64>(1.0 + 0x1.6ab2p-5)

  const InvLn2hi = reinterpret<f64>(0x3ff7154765200000), // 0x1.7154765200000p+0
    InvLn2lo = reinterpret<f64>(0x3de705fc2eefa200), // 0x1.705fc2eefa200p-33
    Ox1p52 = reinterpret<f64>(0x4330000000000000); // 0x1p52

  const B0 = reinterpret<f64>(0xbfe71547652b82fe), // -0x1.71547652b82fep-1
    B1 = reinterpret<f64>(0x3fdec709dc3a03f7), //  0x1.ec709dc3a03f7p-2
    B2 = reinterpret<f64>(0xbfd71547652b7c3f), // -0x1.71547652b7c3fp-2
    B3 = reinterpret<f64>(0x3fd2776c50f05be4), //  0x1.2776c50f05be4p-2
    B4 = reinterpret<f64>(0xbfcec709dd768fe5), // -0x1.ec709dd768fe5p-3
    B5 = reinterpret<f64>(0x3fca61761ec4e736), //  0x1.a61761ec4e736p-3
    B6 = reinterpret<f64>(0xbfc7153fbc64a79b), // -0x1.7153fbc64a79bp-3
    B7 = reinterpret<f64>(0x3fc484d154f01b4a), //  0x1.484d154f01b4ap-3
    B8 = reinterpret<f64>(0xbfc289e4a72c383c), // -0x1.289e4a72c383cp-3
    B9 = reinterpret<f64>(0x3fc0b32f285aee66); //  0x1.0b32f285aee66p-3

  const A0 = reinterpret<f64>(0xbfe71547652b8339), // -0x1.71547652b8339p-1
    A1 = reinterpret<f64>(0x3fdec709dc3a04be), //  0x1.ec709dc3a04bep-2
    A2 = reinterpret<f64>(0xbfd7154764702ffb), // -0x1.7154764702ffbp-2
    A3 = reinterpret<f64>(0x3fd2776c50034c48), //  0x1.2776c50034c48p-2
    A4 = reinterpret<f64>(0xbfcec7b328ea92bc), // -0x1.ec7b328ea92bcp-3
    A5 = reinterpret<f64>(0x3fca6225e117f92e); //  0x1.a6225e117f92ep-3

  let ix = reinterpret<u64>(x);
  if (ix - LO < HI - LO) {
    let r = x - 1.0;
    // #if __FP_FAST_FMA
    //     hi = r * InvLn2hi;
    //     lo = r * InvLn2lo + __builtin_fma(r, InvLn2hi, -hi);
    // #else
    let rhi = reinterpret<f64>(reinterpret<u64>(r) & 0xffffffff00000000);
    let rlo = r - rhi;
    let hi = rhi * InvLn2hi;
    let lo = rlo * InvLn2hi + r * InvLn2lo;
    // #endif
    let r2 = r * r; // rounding error: 0x1p-62
    let r4 = r2 * r2;
    // Worst-case error is less than 0.54 ULP (0.55 ULP without fma)
    let p = r2 * (B0 + r * B1);
    let y = hi + p;
    lo += hi - y + p;
    lo +=
      r4 *
      (B2 +
        r * B3 +
        r2 * (B4 + r * B5) +
        r4 * (B6 + r * B7 + r2 * (B8 + r * B9)));
    return y + lo;
  }
  let top = u32(ix >> 48);
  if (top - 0x0010 >= 0x7ff0 - 0x0010) {
    // x < 0x1p-1022 or inf or nan.
    if (ix << 1 == 0) return -1.0 / (x * x);
    if (ix == 0x7ff0000000000000) return x; // log(inf) == inf
    if (top & 0x8000 || (top & 0x7ff0) == 0x7ff0) return (x - x) / (x - x);
    // x is subnormal, normalize it.
    ix = reinterpret<u64>(x * Ox1p52);
    ix -= u64(52) << 52;
  }

  // x = 2^k z; where z is in range [OFF,2*OFF) and exact.
  // The range is split into N subintervals.
  // The ith subinterval contains z and c is near its center.
  let tmp = ix - 0x3fe6000000000000;
  let i = <usize>((tmp >> (52 - LOG2_TABLE_BITS)) & N_MASK);
  let k = (<i64>tmp) >> 52;
  let iz = ix - (tmp & 0xfff0000000000000);

  let invc = load<f64>(
    LOG2_DATA_TAB1 + (i << (1 + alignof<f64>())),
    0 << alignof<f64>(),
  ); // T[i].invc;
  let logc = load<f64>(
    LOG2_DATA_TAB1 + (i << (1 + alignof<f64>())),
    1 << alignof<f64>(),
  ); // T[i].logc;
  let z = reinterpret<f64>(iz);
  let kd = <f64>k;

  // log2(x) = log2(z/c) + log2(c) + k.
  // r ~= z/c - 1, |r| < 1/(2*N).
  // #if __FP_FAST_FMA
  // 	// rounding error: 0x1p-55/N.
  // 	r = __builtin_fma(z, invc, -1.0);
  // 	t1 = r * InvLn2hi;
  // 	t2 = r * InvLn2lo + __builtin_fma(r, InvLn2hi, -t1);
  // #else
  // rounding error: 0x1p-55/N + 0x1p-65.
  let chi = load<f64>(
    LOG2_DATA_TAB2 + (i << (1 + alignof<f64>())),
    0 << alignof<f64>(),
  ); // T[i].chi;
  let clo = load<f64>(
    LOG2_DATA_TAB2 + (i << (1 + alignof<f64>())),
    1 << alignof<f64>(),
  ); // T[i].clo;

  let r = (z - chi - clo) * invc;
  let rhi = reinterpret<f64>(reinterpret<u64>(r) & 0xffffffff00000000);
  let rlo = r - rhi;
  let t1 = rhi * InvLn2hi;
  let t2 = rlo * InvLn2hi + r * InvLn2lo;
  // #endif

  // hi + lo = r/ln2 + log2(c) + k
  let t3 = kd + logc;
  let hi = t3 + t1;
  let lo = t3 - hi + t1 + t2;

  // log2(r+1) = r/ln2 + r^2*poly(r)
  // Evaluation is optimized assuming superscalar pipelined execution
  let r2 = r * r; // rounding error: 0x1p-54/N^2
  // Worst-case error if |y| > 0x1p-4: 0.547 ULP (0.550 ULP without fma).
  // ~ 0.5 + 2/N/ln2 + abs-poly-error*0x1p56 ULP (+ 0.003 ULP without fma).
  let p = A0 + r * A1 + r2 * (A2 + r * A3) + r2 * r2 * (A4 + r * A5);
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
@lazy @inline const LOG_DATA_TAB1 = memory.data<u64>([
  //      invc      ,        logc
  0x3ff734f0c3e0de9f, 0xbfd7cc7f79e69000, 0x3ff713786a2ce91f,
  0xbfd76feec20d0000, 0x3ff6f26008fab5a0, 0xbfd713e31351e000,
  0x3ff6d1a61f138c7d, 0xbfd6b85b38287800, 0x3ff6b1490bc5b4d1,
  0xbfd65d5590807800, 0x3ff69147332f0cba, 0xbfd602d076180000,
  0x3ff6719f18224223, 0xbfd5a8ca86909000, 0x3ff6524f99a51ed9,
  0xbfd54f4356035000, 0x3ff63356aa8f24c4, 0xbfd4f637c36b4000,
  0x3ff614b36b9ddc14, 0xbfd49da7fda85000, 0x3ff5f66452c65c4c,
  0xbfd445923989a800, 0x3ff5d867b5912c4f, 0xbfd3edf439b0b800,
  0x3ff5babccb5b90de, 0xbfd396ce448f7000, 0x3ff59d61f2d91a78,
  0xbfd3401e17bda000, 0x3ff5805612465687, 0xbfd2e9e2ef468000,
  0x3ff56397cee76bd3, 0xbfd2941b3830e000, 0x3ff54725e2a77f93,
  0xbfd23ec58cda8800, 0x3ff52aff42064583, 0xbfd1e9e129279000,
  0x3ff50f22dbb2bddf, 0xbfd1956d2b48f800, 0x3ff4f38f4734ded7,
  0xbfd141679ab9f800, 0x3ff4d843cfde2840, 0xbfd0edd094ef9800,
  0x3ff4bd3ec078a3c8, 0xbfd09aa518db1000, 0x3ff4a27fc3e0258a,
  0xbfd047e65263b800, 0x3ff4880524d48434, 0xbfcfeb224586f000,
  0x3ff46dce1b192d0b, 0xbfcf474a7517b000, 0x3ff453d9d3391854,
  0xbfcea4443d103000, 0x3ff43a2744b4845a, 0xbfce020d44e9b000,
  0x3ff420b54115f8fb, 0xbfcd60a22977f000, 0x3ff40782da3ef4b1,
  0xbfccc00104959000, 0x3ff3ee8f5d57fe8f, 0xbfcc202956891000,
  0x3ff3d5d9a00b4ce9, 0xbfcb81178d811000, 0x3ff3bd60c010c12b,
  0xbfcae2c9ccd3d000, 0x3ff3a5242b75dab8, 0xbfca45402e129000,
  0x3ff38d22cd9fd002, 0xbfc9a877681df000, 0x3ff3755bc5847a1c,
  0xbfc90c6d69483000, 0x3ff35dce49ad36e2, 0xbfc87120a645c000,
  0x3ff34679984dd440, 0xbfc7d68fb4143000, 0x3ff32f5cceffcb24,
  0xbfc73cb83c627000, 0x3ff3187775a10d49, 0xbfc6a39a9b376000,
  0x3ff301c8373e3990, 0xbfc60b3154b7a000, 0x3ff2eb4ebb95f841,
  0xbfc5737d76243000, 0x3ff2d50a0219a9d1, 0xbfc4dc7b8fc23000,
  0x3ff2bef9a8b7fd2a, 0xbfc4462c51d20000, 0x3ff2a91c7a0c1bab,
  0xbfc3b08abc830000, 0x3ff293726014b530, 0xbfc31b996b490000,
  0x3ff27dfa5757a1f5, 0xbfc2875490a44000, 0x3ff268b39b1d3bbf,
  0xbfc1f3b9f879a000, 0x3ff2539d838ff5bd, 0xbfc160c8252ca000,
  0x3ff23eb7aac9083b, 0xbfc0ce7f57f72000, 0x3ff22a012ba940b6,
  0xbfc03cdc49fea000, 0x3ff2157996cc4132, 0xbfbf57bdbc4b8000,
  0x3ff201201dd2fc9b, 0xbfbe370896404000, 0x3ff1ecf4494d480b,
  0xbfbd17983ef94000, 0x3ff1d8f5528f6569, 0xbfbbf9674ed8a000,
  0x3ff1c52311577e7c, 0xbfbadc79202f6000, 0x3ff1b17c74cb26e9,
  0xbfb9c0c3e7288000, 0x3ff19e010c2c1ab6, 0xbfb8a646b372c000,
  0x3ff18ab07bb670bd, 0xbfb78d01b3ac0000, 0x3ff1778a25efbcb6,
  0xbfb674f145380000, 0x3ff1648d354c31da, 0xbfb55e0e6d878000,
  0x3ff151b990275fdd, 0xbfb4485cdea1e000, 0x3ff13f0ea432d24c,
  0xbfb333d94d6aa000, 0x3ff12c8b7210f9da, 0xbfb22079f8c56000,
  0x3ff11a3028ecb531, 0xbfb10e4698622000, 0x3ff107fbda8434af,
  0xbfaffa6c6ad20000, 0x3ff0f5ee0f4e6bb3, 0xbfadda8d4a774000,
  0x3ff0e4065d2a9fce, 0xbfabbcece4850000, 0x3ff0d244632ca521,
  0xbfa9a1894012c000, 0x3ff0c0a77ce2981a, 0xbfa788583302c000,
  0x3ff0af2f83c636d1, 0xbfa5715e67d68000, 0x3ff09ddb98a01339,
  0xbfa35c8a49658000, 0x3ff08cabaf52e7df, 0xbfa149e364154000,
  0x3ff07b9f2f4e28fb, 0xbf9e72c082eb8000, 0x3ff06ab58c358f19,
  0xbf9a55f152528000, 0x3ff059eea5ecf92c, 0xbf963d62cf818000,
  0x3ff04949cdd12c90, 0xbf9228fb8caa0000, 0x3ff038c6c6f0ada9,
  0xbf8c317b20f90000, 0x3ff02865137932a9, 0xbf8419355daa0000,
  0x3ff0182427ea7348, 0xbf781203c2ec0000, 0x3ff008040614b195,
  0xbf60040979240000, 0x3fefe01ff726fa1a, 0x3f6feff384900000,
  0x3fefa11cc261ea74, 0x3f87dc41353d0000, 0x3fef6310b081992e,
  0x3f93cea3c4c28000, 0x3fef25f63ceeadcd, 0x3f9b9fc114890000,
  0x3feee9c8039113e7, 0x3fa1b0d8ce110000, 0x3feeae8078cbb1ab,
  0x3fa58a5bd001c000, 0x3fee741aa29d0c9b, 0x3fa95c8340d88000,
  0x3fee3a91830a99b5, 0x3fad276aef578000, 0x3fee01e009609a56,
  0x3fb07598e598c000, 0x3fedca01e577bb98, 0x3fb253f5e30d2000,
  0x3fed92f20b7c9103, 0x3fb42edd8b380000, 0x3fed5cac66fb5cce,
  0x3fb606598757c000, 0x3fed272caa5ede9d, 0x3fb7da76356a0000,
  0x3fecf26e3e6b2ccd, 0x3fb9ab434e1c6000, 0x3fecbe6da2a77902,
  0x3fbb78c7bb0d6000, 0x3fec8b266d37086d, 0x3fbd431332e72000,
  0x3fec5894bd5d5804, 0x3fbf0a3171de6000, 0x3fec26b533bb9f8c,
  0x3fc067152b914000, 0x3febf583eeece73f, 0x3fc147858292b000,
  0x3febc4fd75db96c1, 0x3fc2266ecdca3000, 0x3feb951e0c864a28,
  0x3fc303d7a6c55000, 0x3feb65e2c5ef3e2c, 0x3fc3dfc33c331000,
  0x3feb374867c9888b, 0x3fc4ba366b7a8000, 0x3feb094b211d304a,
  0x3fc5933928d1f000, 0x3feadbe885f2ef7e, 0x3fc66acd2418f000,
  0x3feaaf1d31603da2, 0x3fc740f8ec669000, 0x3fea82e63fd358a7,
  0x3fc815c0f51af000, 0x3fea5740ef09738b, 0x3fc8e92954f68000,
  0x3fea2c2a90ab4b27, 0x3fc9bb3602f84000, 0x3fea01a01393f2d1,
  0x3fca8bed1c2c0000, 0x3fe9d79f24db3c1b, 0x3fcb5b515c01d000,
  0x3fe9ae2505c7b190, 0x3fcc2967ccbcc000, 0x3fe9852ef297ce2f,
  0x3fccf635d5486000, 0x3fe95cbaeea44b75, 0x3fcdc1bd3446c000,
  0x3fe934c69de74838, 0x3fce8c01b8cfe000, 0x3fe90d4f2f6752e6,
  0x3fcf5509c0179000, 0x3fe8e6528effd79d, 0x3fd00e6c121fb800,
  0x3fe8bfce9fcc007c, 0x3fd071b80e93d000, 0x3fe899c0dabec30e,
  0x3fd0d46b9e867000, 0x3fe87427aa2317fb, 0x3fd13687334bd000,
  0x3fe84f00acb39a08, 0x3fd1980d67234800, 0x3fe82a49e8653e55,
  0x3fd1f8ffe0cc8000, 0x3fe8060195f40260, 0x3fd2595fd7636800,
  0x3fe7e22563e0a329, 0x3fd2b9300914a800, 0x3fe7beb377dcb5ad,
  0x3fd3187210436000, 0x3fe79baa679725c2, 0x3fd377266dec1800,
  0x3fe77907f2170657, 0x3fd3d54ffbaf3000, 0x3fe756cadbd6130c,
  0x3fd432eee32fe000,
]);

// @ts-ignore: decorator
@lazy @inline const LOG_DATA_TAB2 = memory.data<u64>([
  //      chi       ,         clo
  0x3fe61000014fb66b, 0x3c7e026c91425b3c, 0x3fe63000034db495,
  0x3c8dbfea48005d41, 0x3fe650000d94d478, 0x3c8e7fa786d6a5b7,
  0x3fe67000074e6fad, 0x3c61fcea6b54254c, 0x3fe68ffffedf0fae,
  0xbc7c7e274c590efd, 0x3fe6b0000763c5bc, 0xbc8ac16848dcda01,
  0x3fe6d0001e5cc1f6, 0x3c833f1c9d499311, 0x3fe6efffeb05f63e,
  0xbc7e80041ae22d53, 0x3fe710000e869780, 0x3c7bff6671097952,
  0x3fe72ffffc67e912, 0x3c8c00e226bd8724, 0x3fe74fffdf81116a,
  0xbc6e02916ef101d2, 0x3fe770000f679c90, 0xbc67fc71cd549c74,
  0x3fe78ffffa7ec835, 0x3c81bec19ef50483, 0x3fe7affffe20c2e6,
  0xbc707e1729cc6465, 0x3fe7cfffed3fc900, 0xbc808072087b8b1c,
  0x3fe7efffe9261a76, 0x3c8dc0286d9df9ae, 0x3fe81000049ca3e8,
  0x3c897fd251e54c33, 0x3fe8300017932c8f, 0xbc8afee9b630f381,
  0x3fe850000633739c, 0x3c89bfbf6b6535bc, 0x3fe87000204289c6,
  0xbc8bbf65f3117b75, 0x3fe88fffebf57904, 0xbc89006ea23dcb57,
  0x3fe8b00022bc04df, 0xbc7d00df38e04b0a, 0x3fe8cfffe50c1b8a,
  0xbc88007146ff9f05, 0x3fe8effffc918e43, 0x3c83817bd07a7038,
  0x3fe910001efa5fc7, 0x3c893e9176dfb403, 0x3fe9300013467bb9,
  0x3c7f804e4b980276, 0x3fe94fffe6ee076f, 0xbc8f7ef0d9ff622e,
  0x3fe96fffde3c12d1, 0xbc7082aa962638ba, 0x3fe98ffff4458a0d,
  0xbc87801b9164a8ef, 0x3fe9afffdd982e3e, 0xbc8740e08a5a9337,
  0x3fe9cfffed49fb66, 0x3c3fce08c19be000, 0x3fe9f00020f19c51,
  0xbc8a3faa27885b0a, 0x3fea10001145b006, 0x3c74ff489958da56,
  0x3fea300007bbf6fa, 0x3c8cbeab8a2b6d18, 0x3fea500010971d79,
  0x3c88fecadd787930, 0x3fea70001df52e48, 0xbc8f41763dd8abdb,
  0x3fea90001c593352, 0xbc8ebf0284c27612, 0x3feab0002a4f3e4b,
  0xbc69fd043cff3f5f, 0x3feacfffd7ae1ed1, 0xbc823ee7129070b4,
  0x3feaefffee510478, 0x3c6a063ee00edea3, 0x3feb0fffdb650d5b,
  0x3c5a06c8381f0ab9, 0x3feb2ffffeaaca57, 0xbc79011e74233c1d,
  0x3feb4fffd995badc, 0xbc79ff1068862a9f, 0x3feb7000249e659c,
  0x3c8aff45d0864f3e, 0x3feb8ffff9871640, 0x3c7cfe7796c2c3f9,
  0x3febafffd204cb4f, 0xbc63ff27eef22bc4, 0x3febcfffd2415c45,
  0xbc6cffb7ee3bea21, 0x3febeffff86309df, 0xbc814103972e0b5c,
  0x3fec0fffe1b57653, 0x3c8bc16494b76a19, 0x3fec2ffff1fa57e3,
  0xbc64feef8d30c6ed, 0x3fec4fffdcbfe424, 0xbc843f68bcec4775,
  0x3fec6fffed54b9f7, 0x3c847ea3f053e0ec, 0x3fec8fffeb998fd5,
  0x3c7383068df992f1, 0x3fecb0002125219a, 0xbc68fd8e64180e04,
  0x3feccfffdd94469c, 0x3c8e7ebe1cc7ea72, 0x3fecefffeafdc476,
  0x3c8ebe39ad9f88fe, 0x3fed1000169af82b, 0x3c757d91a8b95a71,
  0x3fed30000d0ff71d, 0x3c89c1906970c7da, 0x3fed4fffea790fc4,
  0xbc580e37c558fe0c, 0x3fed70002edc87e5, 0xbc7f80d64dc10f44,
  0x3fed900021dc82aa, 0xbc747c8f94fd5c5c, 0x3fedafffd86b0283,
  0x3c8c7f1dc521617e, 0x3fedd000296c4739, 0x3c88019eb2ffb153,
  0x3fedefffe54490f5, 0x3c6e00d2c652cc89, 0x3fee0fffcdabf694,
  0xbc7f8340202d69d2, 0x3fee2fffdb52c8dd, 0x3c7b00c1ca1b0864,
  0x3fee4ffff24216ef, 0x3c72ffa8b094ab51, 0x3fee6fffe88a5e11,
  0xbc57f673b1efbe59, 0x3fee9000119eff0d, 0xbc84808d5e0bc801,
  0x3feeafffdfa51744, 0x3c780006d54320b5, 0x3feed0001a127fa1,
  0xbc5002f860565c92, 0x3feef00007babcc4, 0xbc8540445d35e611,
  0x3fef0ffff57a8d02, 0xbc4ffb3139ef9105, 0x3fef30001ee58ac7,
  0x3c8a81acf2731155, 0x3fef4ffff5823494, 0x3c8a3f41d4d7c743,
  0x3fef6ffffca94c6b, 0xbc6202f41c987875, 0x3fef8fffe1f9c441,
  0x3c777dd1f477e74b, 0x3fefafffd2e0e37e, 0xbc6f01199a7ca331,
  0x3fefd0001c77e49e, 0x3c7181ee4bceacb1, 0x3fefeffff7e0c331,
  0xbc6e05370170875a, 0x3ff00ffff465606e, 0xbc8a7ead491c0ada,
  0x3ff02ffff3867a58, 0xbc977f69c3fcb2e0, 0x3ff04ffffdfc0d17,
  0x3c97bffe34cb945b, 0x3ff0700003cd4d82, 0x3c820083c0e456cb,
  0x3ff08ffff9f2cbe8, 0xbc6dffdfbe37751a, 0x3ff0b000010cda65,
  0xbc913f7faee626eb, 0x3ff0d00001a4d338, 0x3c807dfa79489ff7,
  0x3ff0effffadafdfd, 0xbc77040570d66bc0, 0x3ff110000bbafd96,
  0x3c8e80d4846d0b62, 0x3ff12ffffae5f45d, 0x3c9dbffa64fd36ef,
  0x3ff150000dd59ad9, 0x3c9a0077701250ae, 0x3ff170000f21559a,
  0x3c8dfdf9e2e3deee, 0x3ff18ffffc275426, 0x3c910030dc3b7273,
  0x3ff1b000123d3c59, 0x3c997f7980030188, 0x3ff1cffff8299eb7,
  0xbc65f932ab9f8c67, 0x3ff1effff48ad400, 0x3c937fbf9da75beb,
  0x3ff210000c8b86a4, 0x3c9f806b91fd5b22, 0x3ff2300003854303,
  0x3c93ffc2eb9fbf33, 0x3ff24fffffbcf684, 0x3c7601e77e2e2e72,
  0x3ff26ffff52921d9, 0x3c7ffcbb767f0c61, 0x3ff2900014933a3c,
  0xbc7202ca3c02412b, 0x3ff2b00014556313, 0xbc92808233f21f02,
  0x3ff2cfffebfe523b, 0xbc88ff7e384fdcf2, 0x3ff2f0000bb8ad96,
  0xbc85ff51503041c5, 0x3ff30ffffb7ae2af, 0xbc810071885e289d,
  0x3ff32ffffeac5f7f, 0xbc91ff5d3fb7b715, 0x3ff350000ca66756,
  0x3c957f82228b82bd, 0x3ff3700011fbf721, 0x3c8000bac40dd5cc,
  0x3ff38ffff9592fb9, 0xbc943f9d2db2a751, 0x3ff3b00004ddd242,
  0x3c857f6b707638e1, 0x3ff3cffff5b2c957, 0x3c7a023a10bf1231,
  0x3ff3efffeab0b418, 0x3c987f6d66b152b0, 0x3ff410001532aff4,
  0x3c67f8375f198524, 0x3ff4300017478b29, 0x3c8301e672dc5143,
  0x3ff44fffe795b463, 0x3c89ff69b8b2895a, 0x3ff46fffe80475e0,
  0xbc95c0b19bc2f254, 0x3ff48fffef6fc1e7, 0x3c9b4009f23a2a72,
  0x3ff4afffe5bea704, 0xbc94ffb7bf0d7d45, 0x3ff4d000171027de,
  0xbc99c06471dc6a3d, 0x3ff4f0000ff03ee2, 0x3c977f890b85531c,
  0x3ff5100012dc4bd1, 0x3c6004657166a436, 0x3ff530001605277a,
  0xbc96bfcece233209, 0x3ff54fffecdb704c, 0xbc8902720505a1d7,
  0x3ff56fffef5f54a9, 0x3c9bbfe60ec96412, 0x3ff5900017e61012,
  0x3c887ec581afef90, 0x3ff5b00003c93e92, 0xbc9f41080abf0cc0,
  0x3ff5d0001d4919bc, 0xbc98812afb254729, 0x3ff5efffe7b87a89,
  0xbc947eb780ed6904,
]);

// @ts-ignore: decorator
@inline
export function log_lut(x: f64): f64 {
  const N_MASK = (1 << LOG_TABLE_BITS) - 1;

  const B0 = reinterpret<f64>(0xbfe0000000000000), // -0x1p-1
    B1 = reinterpret<f64>(0x3fd5555555555577), //  0x1.5555555555577p-2
    B2 = reinterpret<f64>(0xbfcffffffffffdcb), // -0x1.ffffffffffdcbp-3
    B3 = reinterpret<f64>(0x3fc999999995dd0c), //  0x1.999999995dd0cp-3
    B4 = reinterpret<f64>(0xbfc55555556745a7), // -0x1.55555556745a7p-3
    B5 = reinterpret<f64>(0x3fc24924a344de30), //  0x1.24924a344de3p-3
    B6 = reinterpret<f64>(0xbfbfffffa4423d65), // -0x1.fffffa4423d65p-4
    B7 = reinterpret<f64>(0x3fbc7184282ad6ca), //  0x1.c7184282ad6cap-4
    B8 = reinterpret<f64>(0xbfb999eb43b068ff), // -0x1.999eb43b068ffp-4
    B9 = reinterpret<f64>(0x3fb78182f7afd085), //  0x1.78182f7afd085p-4
    B10 = reinterpret<f64>(0xbfb5521375d145cd); // -0x1.5521375d145cdp-4

  const A0 = reinterpret<f64>(0xbfe0000000000001), // -0x1.0000000000001p-1
    A1 = reinterpret<f64>(0x3fd555555551305b), //  0x1.555555551305bp-2
    A2 = reinterpret<f64>(0xbfcfffffffeb4590), // -0x1.fffffffeb459p-3
    A3 = reinterpret<f64>(0x3fc999b324f10111), //  0x1.999b324f10111p-3
    A4 = reinterpret<f64>(0xbfc55575e506c89f); // -0x1.55575e506c89fp-3

  const LO: u64 = 0x3fee000000000000,
    HI: u64 = 0x3ff1090000000000;

  const Ln2hi = reinterpret<f64>(0x3fe62e42fefa3800), // 0x1.62e42fefa3800p-1
    Ln2lo = reinterpret<f64>(0x3d2ef35793c76730), // 0x1.ef35793c76730p-45
    Ox1p27 = reinterpret<f64>(0x41a0000000000000), // 0x1p27
    Ox1p52 = reinterpret<f64>(0x4330000000000000); // 0x1p52

  let ix = reinterpret<u64>(x);
  if (ix - LO < HI - LO) {
    let r = x - 1.0;
    let r2 = r * r;
    let r3 = r2 * r;
    let y =
      r3 *
      (B1 +
        r * B2 +
        r2 * B3 +
        r3 * (B4 + r * B5 + r2 * B6 + r3 * (B7 + r * B8 + r2 * B9 + r3 * B10)));
    // Worst-case error is around 0.507 ULP
    let w = r * Ox1p27;
    let rhi = r + w - w;
    let rlo = r - rhi;
    w = rhi * rhi * B0; // B[0] == -0.5
    let hi = r + w;
    let lo = r - hi + w;
    lo += B0 * rlo * (rhi + r);
    return y + lo + hi;
  }
  let top = u32(ix >> 48);
  if (top - 0x0010 >= 0x7ff0 - 0x0010) {
    // x < 0x1p-1022 or inf or nan
    if (ix << 1 == 0) return -1.0 / (x * x);
    if (ix == reinterpret<u64>(Infinity)) return x; // log(inf) == inf
    if (top & 0x8000 || (top & 0x7ff0) == 0x7ff0) return (x - x) / (x - x);
    // x is subnormal, normalize it
    ix = reinterpret<u64>(x * Ox1p52);
    ix -= u64(52) << 52;
  }

  // x = 2^k z; where z is in range [OFF,2*OFF) and exact.
  // The range is split into N subintervals.
  // The ith subinterval contains z and c is near its center.
  let tmp = ix - 0x3fe6000000000000;
  let i = <usize>((tmp >> (52 - LOG_TABLE_BITS)) & N_MASK);
  let k = (<i64>tmp) >> 52;
  let iz = ix - (tmp & (u64(0xfff) << 52));

  let invc = load<f64>(
    LOG_DATA_TAB1 + (i << (1 + alignof<f64>())),
    0 << alignof<f64>(),
  ); // T[i].invc;
  let logc = load<f64>(
    LOG_DATA_TAB1 + (i << (1 + alignof<f64>())),
    1 << alignof<f64>(),
  ); // T[i].logc;
  let z = reinterpret<f64>(iz);

  // log(x) = log1p(z/c-1) + log(c) + k*Ln2.
  // r ~= z/c - 1, |r| < 1/(2*N)
  // #if __FP_FAST_FMA
  // 	// rounding error: 0x1p-55/N
  // 	r = __builtin_fma(z, invc, -1.0);
  // #else
  // rounding error: 0x1p-55/N + 0x1p-66
  const chi = load<f64>(
    LOG_DATA_TAB2 + (i << (1 + alignof<f64>())),
    0 << alignof<f64>(),
  ); // T2[i].chi
  const clo = load<f64>(
    LOG_DATA_TAB2 + (i << (1 + alignof<f64>())),
    1 << alignof<f64>(),
  ); // T2[i].clo
  let r = (z - chi - clo) * invc;
  // #endif
  let kd = <f64>k;

  // hi + lo = r + log(c) + k*Ln2
  let w = kd * Ln2hi + logc;
  let hi = w + r;
  let lo = w - hi + r + kd * Ln2lo;

  // log(x) = lo + (log1p(r) - r) + hi
  let r2 = r * r; // rounding error: 0x1p-54/N^2
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
@lazy @inline const POW_LOG_DATA_TAB = memory.data<u64>([
  //      invc      ,pad,       logc       ,       logctail
  0x3ff6a00000000000, 0, 0xbfd62c82f2b9c800, 0x3cfab42428375680,
  0x3ff6800000000000, 0, 0xbfd5d1bdbf580800, 0xbd1ca508d8e0f720,
  0x3ff6600000000000, 0, 0xbfd5767717455800, 0xbd2362a4d5b6506d,
  0x3ff6400000000000, 0, 0xbfd51aad872df800, 0xbce684e49eb067d5,
  0x3ff6200000000000, 0, 0xbfd4be5f95777800, 0xbd041b6993293ee0,
  0x3ff6000000000000, 0, 0xbfd4618bc21c6000, 0x3d13d82f484c84cc,
  0x3ff5e00000000000, 0, 0xbfd404308686a800, 0x3cdc42f3ed820b3a,
  0x3ff5c00000000000, 0, 0xbfd3a64c55694800, 0x3d20b1c686519460,
  0x3ff5a00000000000, 0, 0xbfd347dd9a988000, 0x3d25594dd4c58092,
  0x3ff5800000000000, 0, 0xbfd2e8e2bae12000, 0x3d267b1e99b72bd8,
  0x3ff5600000000000, 0, 0xbfd2895a13de8800, 0x3d15ca14b6cfb03f,
  0x3ff5600000000000, 0, 0xbfd2895a13de8800, 0x3d15ca14b6cfb03f,
  0x3ff5400000000000, 0, 0xbfd22941fbcf7800, 0xbd165a242853da76,
  0x3ff5200000000000, 0, 0xbfd1c898c1699800, 0xbd1fafbc68e75404,
  0x3ff5000000000000, 0, 0xbfd1675cababa800, 0x3d1f1fc63382a8f0,
  0x3ff4e00000000000, 0, 0xbfd1058bf9ae4800, 0xbd26a8c4fd055a66,
  0x3ff4c00000000000, 0, 0xbfd0a324e2739000, 0xbd0c6bee7ef4030e,
  0x3ff4a00000000000, 0, 0xbfd0402594b4d000, 0xbcf036b89ef42d7f,
  0x3ff4a00000000000, 0, 0xbfd0402594b4d000, 0xbcf036b89ef42d7f,
  0x3ff4800000000000, 0, 0xbfcfb9186d5e4000, 0x3d0d572aab993c87,
  0x3ff4600000000000, 0, 0xbfcef0adcbdc6000, 0x3d2b26b79c86af24,
  0x3ff4400000000000, 0, 0xbfce27076e2af000, 0xbd172f4f543fff10,
  0x3ff4200000000000, 0, 0xbfcd5c216b4fc000, 0x3d21ba91bbca681b,
  0x3ff4000000000000, 0, 0xbfcc8ff7c79aa000, 0x3d27794f689f8434,
  0x3ff4000000000000, 0, 0xbfcc8ff7c79aa000, 0x3d27794f689f8434,
  0x3ff3e00000000000, 0, 0xbfcbc286742d9000, 0x3d194eb0318bb78f,
  0x3ff3c00000000000, 0, 0xbfcaf3c94e80c000, 0x3cba4e633fcd9066,
  0x3ff3a00000000000, 0, 0xbfca23bc1fe2b000, 0xbd258c64dc46c1ea,
  0x3ff3a00000000000, 0, 0xbfca23bc1fe2b000, 0xbd258c64dc46c1ea,
  0x3ff3800000000000, 0, 0xbfc9525a9cf45000, 0xbd2ad1d904c1d4e3,
  0x3ff3600000000000, 0, 0xbfc87fa06520d000, 0x3d2bbdbf7fdbfa09,
  0x3ff3400000000000, 0, 0xbfc7ab890210e000, 0x3d2bdb9072534a58,
  0x3ff3400000000000, 0, 0xbfc7ab890210e000, 0x3d2bdb9072534a58,
  0x3ff3200000000000, 0, 0xbfc6d60fe719d000, 0xbd10e46aa3b2e266,
  0x3ff3000000000000, 0, 0xbfc5ff3070a79000, 0xbd1e9e439f105039,
  0x3ff3000000000000, 0, 0xbfc5ff3070a79000, 0xbd1e9e439f105039,
  0x3ff2e00000000000, 0, 0xbfc526e5e3a1b000, 0xbd20de8b90075b8f,
  0x3ff2c00000000000, 0, 0xbfc44d2b6ccb8000, 0x3d170cc16135783c,
  0x3ff2c00000000000, 0, 0xbfc44d2b6ccb8000, 0x3d170cc16135783c,
  0x3ff2a00000000000, 0, 0xbfc371fc201e9000, 0x3cf178864d27543a,
  0x3ff2800000000000, 0, 0xbfc29552f81ff000, 0xbd248d301771c408,
  0x3ff2600000000000, 0, 0xbfc1b72ad52f6000, 0xbd2e80a41811a396,
  0x3ff2600000000000, 0, 0xbfc1b72ad52f6000, 0xbd2e80a41811a396,
  0x3ff2400000000000, 0, 0xbfc0d77e7cd09000, 0x3d0a699688e85bf4,
  0x3ff2400000000000, 0, 0xbfc0d77e7cd09000, 0x3d0a699688e85bf4,
  0x3ff2200000000000, 0, 0xbfbfec9131dbe000, 0xbd2575545ca333f2,
  0x3ff2000000000000, 0, 0xbfbe27076e2b0000, 0x3d2a342c2af0003c,
  0x3ff2000000000000, 0, 0xbfbe27076e2b0000, 0x3d2a342c2af0003c,
  0x3ff1e00000000000, 0, 0xbfbc5e548f5bc000, 0xbd1d0c57585fbe06,
  0x3ff1c00000000000, 0, 0xbfba926d3a4ae000, 0x3d253935e85baac8,
  0x3ff1c00000000000, 0, 0xbfba926d3a4ae000, 0x3d253935e85baac8,
  0x3ff1a00000000000, 0, 0xbfb8c345d631a000, 0x3d137c294d2f5668,
  0x3ff1a00000000000, 0, 0xbfb8c345d631a000, 0x3d137c294d2f5668,
  0x3ff1800000000000, 0, 0xbfb6f0d28ae56000, 0xbd269737c93373da,
  0x3ff1600000000000, 0, 0xbfb51b073f062000, 0x3d1f025b61c65e57,
  0x3ff1600000000000, 0, 0xbfb51b073f062000, 0x3d1f025b61c65e57,
  0x3ff1400000000000, 0, 0xbfb341d7961be000, 0x3d2c5edaccf913df,
  0x3ff1400000000000, 0, 0xbfb341d7961be000, 0x3d2c5edaccf913df,
  0x3ff1200000000000, 0, 0xbfb16536eea38000, 0x3d147c5e768fa309,
  0x3ff1000000000000, 0, 0xbfaf0a30c0118000, 0x3d2d599e83368e91,
  0x3ff1000000000000, 0, 0xbfaf0a30c0118000, 0x3d2d599e83368e91,
  0x3ff0e00000000000, 0, 0xbfab42dd71198000, 0x3d1c827ae5d6704c,
  0x3ff0e00000000000, 0, 0xbfab42dd71198000, 0x3d1c827ae5d6704c,
  0x3ff0c00000000000, 0, 0xbfa77458f632c000, 0xbd2cfc4634f2a1ee,
  0x3ff0c00000000000, 0, 0xbfa77458f632c000, 0xbd2cfc4634f2a1ee,
  0x3ff0a00000000000, 0, 0xbfa39e87b9fec000, 0x3cf502b7f526feaa,
  0x3ff0a00000000000, 0, 0xbfa39e87b9fec000, 0x3cf502b7f526feaa,
  0x3ff0800000000000, 0, 0xbf9f829b0e780000, 0xbd2980267c7e09e4,
  0x3ff0800000000000, 0, 0xbf9f829b0e780000, 0xbd2980267c7e09e4,
  0x3ff0600000000000, 0, 0xbf97b91b07d58000, 0xbd288d5493faa639,
  0x3ff0400000000000, 0, 0xbf8fc0a8b0fc0000, 0xbcdf1e7cf6d3a69c,
  0x3ff0400000000000, 0, 0xbf8fc0a8b0fc0000, 0xbcdf1e7cf6d3a69c,
  0x3ff0200000000000, 0, 0xbf7fe02a6b100000, 0xbd19e23f0dda40e4,
  0x3ff0200000000000, 0, 0xbf7fe02a6b100000, 0xbd19e23f0dda40e4,
  0x3ff0000000000000, 0, 0, 0, 0x3ff0000000000000, 0, 0, 0, 0x3fefc00000000000,
  0, 0x3f80101575890000, 0xbd10c76b999d2be8, 0x3fef800000000000, 0,
  0x3f90205658938000, 0xbd23dc5b06e2f7d2, 0x3fef400000000000, 0,
  0x3f98492528c90000, 0xbd2aa0ba325a0c34, 0x3fef000000000000, 0,
  0x3fa0415d89e74000, 0x3d0111c05cf1d753, 0x3feec00000000000, 0,
  0x3fa466aed42e0000, 0xbd2c167375bdfd28, 0x3fee800000000000, 0,
  0x3fa894aa149fc000, 0xbd197995d05a267d, 0x3fee400000000000, 0,
  0x3faccb73cdddc000, 0xbd1a68f247d82807, 0x3fee200000000000, 0,
  0x3faeea31c006c000, 0xbd0e113e4fc93b7b, 0x3fede00000000000, 0,
  0x3fb1973bd1466000, 0xbd25325d560d9e9b, 0x3feda00000000000, 0,
  0x3fb3bdf5a7d1e000, 0x3d2cc85ea5db4ed7, 0x3fed600000000000, 0,
  0x3fb5e95a4d97a000, 0xbd2c69063c5d1d1e, 0x3fed400000000000, 0,
  0x3fb700d30aeac000, 0x3cec1e8da99ded32, 0x3fed000000000000, 0,
  0x3fb9335e5d594000, 0x3d23115c3abd47da, 0x3fecc00000000000, 0,
  0x3fbb6ac88dad6000, 0xbd1390802bf768e5, 0x3feca00000000000, 0,
  0x3fbc885801bc4000, 0x3d2646d1c65aacd3, 0x3fec600000000000, 0,
  0x3fbec739830a2000, 0xbd2dc068afe645e0, 0x3fec400000000000, 0,
  0x3fbfe89139dbe000, 0xbd2534d64fa10afd, 0x3fec000000000000, 0,
  0x3fc1178e8227e000, 0x3d21ef78ce2d07f2, 0x3febe00000000000, 0,
  0x3fc1aa2b7e23f000, 0x3d2ca78e44389934, 0x3feba00000000000, 0,
  0x3fc2d1610c868000, 0x3d039d6ccb81b4a1, 0x3feb800000000000, 0,
  0x3fc365fcb0159000, 0x3cc62fa8234b7289, 0x3feb400000000000, 0,
  0x3fc4913d8333b000, 0x3d25837954fdb678, 0x3feb200000000000, 0,
  0x3fc527e5e4a1b000, 0x3d2633e8e5697dc7, 0x3feae00000000000, 0,
  0x3fc6574ebe8c1000, 0x3d19cf8b2c3c2e78, 0x3feac00000000000, 0,
  0x3fc6f0128b757000, 0xbd25118de59c21e1, 0x3feaa00000000000, 0,
  0x3fc7898d85445000, 0xbd1c661070914305, 0x3fea600000000000, 0,
  0x3fc8beafeb390000, 0xbd073d54aae92cd1, 0x3fea400000000000, 0,
  0x3fc95a5adcf70000, 0x3d07f22858a0ff6f, 0x3fea000000000000, 0,
  0x3fca93ed3c8ae000, 0xbd28724350562169, 0x3fe9e00000000000, 0,
  0x3fcb31d8575bd000, 0xbd0c358d4eace1aa, 0x3fe9c00000000000, 0,
  0x3fcbd087383be000, 0xbd2d4bc4595412b6, 0x3fe9a00000000000, 0,
  0x3fcc6ffbc6f01000, 0xbcf1ec72c5962bd2, 0x3fe9600000000000, 0,
  0x3fcdb13db0d49000, 0xbd2aff2af715b035, 0x3fe9400000000000, 0,
  0x3fce530effe71000, 0x3cc212276041f430, 0x3fe9200000000000, 0,
  0x3fcef5ade4dd0000, 0xbcca211565bb8e11, 0x3fe9000000000000, 0,
  0x3fcf991c6cb3b000, 0x3d1bcbecca0cdf30, 0x3fe8c00000000000, 0,
  0x3fd07138604d5800, 0x3cf89cdb16ed4e91, 0x3fe8a00000000000, 0,
  0x3fd0c42d67616000, 0x3d27188b163ceae9, 0x3fe8800000000000, 0,
  0x3fd1178e8227e800, 0xbd2c210e63a5f01c, 0x3fe8600000000000, 0,
  0x3fd16b5ccbacf800, 0x3d2b9acdf7a51681, 0x3fe8400000000000, 0,
  0x3fd1bf99635a6800, 0x3d2ca6ed5147bdb7, 0x3fe8200000000000, 0,
  0x3fd214456d0eb800, 0x3d0a87deba46baea, 0x3fe7e00000000000, 0,
  0x3fd2bef07cdc9000, 0x3d2a9cfa4a5004f4, 0x3fe7c00000000000, 0,
  0x3fd314f1e1d36000, 0xbd28e27ad3213cb8, 0x3fe7a00000000000, 0,
  0x3fd36b6776be1000, 0x3d116ecdb0f177c8, 0x3fe7800000000000, 0,
  0x3fd3c25277333000, 0x3d183b54b606bd5c, 0x3fe7600000000000, 0,
  0x3fd419b423d5e800, 0x3d08e436ec90e09d, 0x3fe7400000000000, 0,
  0x3fd4718dc271c800, 0xbd2f27ce0967d675, 0x3fe7200000000000, 0,
  0x3fd4c9e09e173000, 0xbd2e20891b0ad8a4, 0x3fe7000000000000, 0,
  0x3fd522ae0738a000, 0x3d2ebe708164c759, 0x3fe6e00000000000, 0,
  0x3fd57bf753c8d000, 0x3d1fadedee5d40ef, 0x3fe6c00000000000, 0,
  0x3fd5d5bddf596000, 0xbd0a0b2a08a465dc,
]);

// Returns 0 if not int, 1 if odd int, 2 if even int. The argument is
// the bit representation of a non-zero finite floating-point value.
// @ts-ignore: decorator
@inline
function checkint(iy: u64): i32 {
  let e = (iy >> 52) & 0x7ff;
  if (e < 0x3ff) return 0;
  if (e > 0x3ff + 52) return 2;
  e = u64(1) << (0x3ff + 52 - e);
  if (iy & (e - 1)) return 0;
  if (iy & e) return 1;
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
  return (u << 1) - 1 >= 0xffe0000000000000 - 1;
}

// @ts-ignore: decorator
@lazy let log_tail: f64 = 0;

// Compute y+TAIL = log(x) where the rounded result is y and TAIL has about
// additional 15 bits precision. IX is the bit representation of x, but
// normalized in the subnormal range using the sign bit for the exponent.
// @ts-ignore: decorator
@inline
function log_inline(ix: u64): f64 {
  const N = 1 << POW_LOG_TABLE_BITS;
  const N_MASK = N - 1;

  const Ln2hi = reinterpret<f64>(0x3fe62e42fefa3800),
    Ln2lo = reinterpret<f64>(0x3d2ef35793c76730);

  const A0 = reinterpret<f64>(0xbfe0000000000000),
    A1 = reinterpret<f64>(0xbfe5555555555560),
    A2 = reinterpret<f64>(0x3fe0000000000006),
    A3 = reinterpret<f64>(0x3fe999999959554e),
    A4 = reinterpret<f64>(0xbfe555555529a47a),
    A5 = reinterpret<f64>(0xbff2495b9b4845e9),
    A6 = reinterpret<f64>(0x3ff0002b8b263fc3);

  // x = 2^k z; where z is in range [OFF,2*OFF) and exact.
  // The range is split into N subintervals.
  // The ith subinterval contains z and c is near its center.
  let tmp = ix - 0x3fe6955500000000;
  let i = usize((tmp >> (52 - POW_LOG_TABLE_BITS)) & N_MASK);
  let k = (<i64>tmp) >> 52;
  let iz = ix - (tmp & (u64(0xfff) << 52));
  let z = reinterpret<f64>(iz);
  let kd = <f64>k;

  // log(x) = k*Ln2 + log(c) + log1p(z/c-1).
  let invc = load<f64>(
    POW_LOG_DATA_TAB + (i << (2 + alignof<f64>())),
    0 << alignof<f64>(),
  ); // tab[i].invc
  let logc = load<f64>(
    POW_LOG_DATA_TAB + (i << (2 + alignof<f64>())),
    2 << alignof<f64>(),
  ); // tab[i].logc
  let logctail = load<f64>(
    POW_LOG_DATA_TAB + (i << (2 + alignof<f64>())),
    3 << alignof<f64>(),
  ); // tab[i].logctail

  // Note: 1/c is j/N or j/N/2 where j is an integer in [N,2N) and
  // |z/c - 1| < 1/N, so r = z/c - 1 is exactly representible.
  // Split z such that rhi, rlo and rhi*rhi are exact and |rlo| <= |r|.
  let zhi = reinterpret<f64>((iz + u64(0x80000000)) & 0xffffffff00000000);
  let zlo = z - zhi;
  let rhi = zhi * invc - 1.0;
  let rlo = zlo * invc;
  let r = rhi + rlo;

  // k * Ln2 + log(c) + r.
  let t1 = kd * Ln2hi + logc;
  let t2 = t1 + r;
  let lo1 = kd * Ln2lo + logctail;
  let lo2 = t1 - t2 + r;

  // Evaluation is optimized assuming superscalar pipelined execution.
  let ar = A0 * r; // A[0] = -0.5
  let ar2 = r * ar;
  let ar3 = r * ar2;
  // k * Ln2 + log(c) + r + A[0] * r * r.
  let arhi = A0 * rhi;
  let arhi2 = rhi * arhi;
  let hi = t2 + arhi2;
  let lo3 = rlo * (ar + arhi);
  let lo4 = t2 - hi + arhi2;

  // p = log1p(r) - r - A[0] * r * r.
  let p = ar3 * (A1 + r * A2 + ar2 * (A3 + r * A4 + ar2 * (A5 + r * A6)));
  let lo = lo1 + lo2 + lo3 + lo4 + p;
  let y = hi + lo;
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
  const N = 1 << EXP_TABLE_BITS;
  const N_MASK = N - 1;

  const InvLn2N = reinterpret<f64>(0x3ff71547652b82fe) * N, // 0x1.71547652b82fep0
    NegLn2hiN = reinterpret<f64>(0xbf762e42fefa0000), // -0x1.62e42fefa0000p-8
    NegLn2loN = reinterpret<f64>(0xbd0cf79abc9e3b3a), // -0x1.cf79abc9e3b3ap-47
    shift = reinterpret<f64>(0x4338000000000000); // 0x1.8p52

  const C2 = reinterpret<f64>(0x3fdffffffffffdbd), // __exp_data.poly[0] (0x1.ffffffffffdbdp-2)
    C3 = reinterpret<f64>(0x3fc555555555543c), // __exp_data.poly[1] (0x1.555555555543cp-3)
    C4 = reinterpret<f64>(0x3fa55555cf172b91), // __exp_data.poly[2] (0x1.55555cf172b91p-5)
    C5 = reinterpret<f64>(0x3f81111167a4d017); // __exp_data.poly[3] (0x1.1111167a4d017p-7)

  let abstop: u32;
  let ki: u64, top: u64, sbits: u64;
  let idx: usize;
  // double_t for better performance on targets with FLT_EVAL_METHOD==2.
  let kd: f64, z: f64, r: f64, r2: f64, scale: f64, tail: f64, tmp: f64;

  let ux = reinterpret<u64>(x);
  abstop = u32(ux >> 52) & 0x7ff;
  if (abstop - 0x3c9 >= 0x03f) {
    if (abstop - 0x3c9 >= 0x80000000) {
      // Avoid spurious underflow for tiny x.
      // Note: 0 is common input.
      return select(-1.0, 1.0, sign_bias);
    }
    if (abstop >= 0x409) {
      // top12(1024.0)
      // Note: inf and nan are already handled.
      return <i64>ux < 0 ? uflow(sign_bias) : oflow(sign_bias);
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
  kd = z + shift;
  ki = reinterpret<u64>(kd);
  kd -= shift;
  // #endif
  r = x + kd * NegLn2hiN + kd * NegLn2loN;
  // The code assumes 2^-200 < |xtail| < 2^-8/N
  r += xtail;
  // 2^(k/N) ~= scale * (1 + tail)
  idx = usize((ki & N_MASK) << 1);
  top = (ki + sign_bias) << (52 - EXP_TABLE_BITS);

  tail = reinterpret<f64>(load<u64>(EXP_DATA_TAB + (idx << alignof<u64>())));
  // This is only a valid scale when -1023*N < k < 1024*N
  sbits =
    load<u64>(EXP_DATA_TAB + (idx << alignof<u64>()), 1 << alignof<u64>()) +
    top;
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

  let sign_bias: u32 = 0;
  let ix = reinterpret<u64>(x);
  let iy = reinterpret<u64>(y);
  let topx = ix >> 52;
  let topy = iy >> 52;

  if (
    topx - 0x001 >= 0x7ff - 0x001 ||
    (topy & 0x7ff) - 0x3be >= 0x43e - 0x3be
  ) {
    // Note: if |y| > 1075 * ln2 * 2^53 ~= 0x1.749p62 then pow(x,y) = inf/0
    // and if |y| < 2^-54 / 1075 ~= 0x1.e7b6p-65 then pow(x,y) = +-1.
    // Special cases: (x < 0x1p-126 or inf or nan) or
    // (|y| < 0x1p-65 or |y| >= 0x1p63 or nan).
    if (zeroinfnan(iy)) {
      if (iy << 1 == 0) return 1.0;
      if (ix == 0x3ff0000000000000) return NaN; // original: 1.0
      if (ix << 1 > 0xffe0000000000000 || iy << 1 > 0xffe0000000000000)
        return x + y;
      if (ix << 1 == 0x7fe0000000000000) return NaN; // original: 1.0
      if (ix << 1 < 0x7fe0000000000000 == !(iy >> 63)) return 0; // |x|<1 && y==inf or |x|>1 && y==-inf.
      return y * y;
    }
    if (zeroinfnan(ix)) {
      let x2 = x * x;
      if (i32(ix >> 63) && checkint(iy) == 1) x2 = -x2;
      return <i64>iy < 0 ? 1 / x2 : x2;
    }
    // Here x and y are non-zero finite
    if (<i64>ix < 0) {
      // Finite x < 0
      let yint = checkint(iy);
      if (yint == 0) return (x - x) / (x - x);
      if (yint == 1) sign_bias = SIGN_BIAS;
      ix &= 0x7fffffffffffffff;
      topx &= 0x7ff;
    }
    if ((topy & 0x7ff) - 0x3be >= 0x43e - 0x3be) {
      // Note: sign_bias == 0 here because y is not odd.
      if (ix == 0x3ff0000000000000) return 1;
      if ((topy & 0x7ff) < 0x3be) return 1; // |y| < 2^-65, x^y ~= 1 + y*log(x).
      return ix > 0x3ff0000000000000 == topy < 0x800 ? Infinity : 0;
    }
    if (topx == 0) {
      // Normalize subnormal x so exponent becomes negative.
      ix = reinterpret<u64>(x * Ox1p52);
      ix &= 0x7fffffffffffffff;
      ix -= u64(52) << 52;
    }
  }

  let hi = log_inline(ix);
  let lo = log_tail;
  let ehi: f64, elo: f64;
  // #if __FP_FAST_FMA
  //   ehi = y * hi;
  //   elo = y * lo + __builtin_fma(y, hi, -ehi);
  // #else
  let yhi = reinterpret<f64>(iy & 0xfffffffff8000000);
  let ylo = y - yhi;
  let lhi = reinterpret<f64>(reinterpret<u64>(hi) & 0xfffffffff8000000);
  let llo = hi - lhi + lo;
  ehi = yhi * lhi;
  elo = ylo * lhi + y * llo; // |elo| < |ehi| * 2^-25.
  // #endif
  return exp_inline(ehi, elo, sign_bias);
}
