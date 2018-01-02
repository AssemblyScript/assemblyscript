export function fmod(x: f64, y: f64): f64 {
  // the following is based on musl's implementation of fmod
  var ux = reinterpret<f64,u64>(x);
  var uy = reinterpret<f64,u64>(y);
  var ex = <i32>(ux >> 52 & 0x7ff);
  var ey = <i32>(uy >> 52 & 0x7ff);
  var sx = <i32>(ux >> 63);

  if (uy << 1 == 0 || isNaN<f64>(y) || ex == 0x7ff)
    return (x * y) / (x * y);
  if (ux << 1 <= uy << 1) {
    if (ux << 1 == uy << 1)
      return 0 * x;
    return x;
  }

  if (!ex) {
    for (var i = ux << 12; !(i >> 63); ex--) i <<= 1;
    ux <<= -ex + 1;
  } else {
    ux &= -1 >> 12;
    ux |= 1 << 52;
  }
  if (!ey) {
    for (i = uy << 12; !(i >> 63); ey--) i <<= 1;
    uy <<= -ey + 1;
  } else {
    uy &= -1 >> 12;
    uy |= 1 << 52;
  }

  for (; ex > ey; ex--) {
    i = ux - uy;
    if (!(i >> 63)) {
      if (!i)
        return 0 * x;
      ux = i;
    }
    ux <<= 1;
  }
  i = ux - uy;
  if (!(i >> 63)) {
    if (!i)
      return 0 * x;
    ux = i;
  }
  for (; !(ux >> 52); ex--) ux <<= 1;

  if (ex > 0) {
    ux -= 1 << 52;
    ux |= <u64>ex << 52;
  } else {
    ux >>= -ex + 1;
  }
  ux |= <u64>sx << 63;
  return reinterpret<u64,f64>(ux);
}

assert(isNaN<f64>(fmod(1, NaN)));
assert(fmod(1.5, 1.0) == 0.5); // exactly 0.5 (as in C)
assert(fmod(9.2, 2.0) - 1.2 < f64.EPSILON); // not exactly 1.2 (as in C)
assert(fmod(9.2, 3.7) - 1.8 < f64.EPSILON); // not exactly 1.8 (as in C)
