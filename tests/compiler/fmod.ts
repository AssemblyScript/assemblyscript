export function fmod(x: f64, y: f64): f64 {
  // the following is based on musl's implementation of fmod
  var ux = reinterpret<u64>(x);
  var uy = reinterpret<u64>(y);
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

  // normalize x and y
  if (!ex) {
    for (var i = ux << 12; !(i >> 63); i <<= 1)
      --ex;
    ux <<= -ex + 1;
  } else {
    ux &= -1 >> 12;
    ux |= 1 << 52;
  }
  if (!ey) {
    for (i = uy << 12; !(i >> 63); i <<= 1)
      --ey;
    uy <<= -ey + 1;
  } else {
    uy &= -1 >> 12;
    uy |= 1 << 52;
  }

  // x mod y
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
  for (; !(ux >> 52); ux <<= 1)
    --ex;

  // scale result
  if (ex > 0) {
    ux -= 1 << 52;
    ux |= <u64>ex << 52;
  } else {
    ux >>= -ex + 1;
  }
  ux |= <u64>sx << 63;
  return reinterpret<f64>(ux);
}

assert(isNaN<f64>(fmod(1, NaN)));
assert(fmod(1.5, 1.0) == 0.5); // exactly 0.5 (as in C)
assert(fmod(9.2, 2.0) - 1.2 < f64.EPSILON); // not exactly 1.2 (as in C)
assert(fmod(9.2, 3.7) - 1.8 < f64.EPSILON); // not exactly 1.8 (as in C)

export function fmodf(x: f32, y: f32): f32 {
  // the following is based on musl's implementation of fmodf
  var ux = reinterpret<u32>(x);
  var uy = reinterpret<u32>(y);
  var ex = <i32>(ux >> 23 & 0xff);
  var ey = <i32>(uy >> 23 & 0xff);
  var sx = ux & 0x80000000;

  if (uy << 1 == 0 || isNaN<f32>(y) || ex == 0xff)
    return (x * y) / (x * y);
  if (ux << 1 <= uy << 1) {
    if (ux << 1 == uy << 1)
      return 0 * x;
    return x;
  }

  // normalize x and y
  if (!ex) {
    for (var i = ux << 9; !(i >> 31); i <<= 1)
      --ex;
    ux <<= -ex + 1;
  } else {
    ux &= -1 >> 9;
    ux |= 1 << 23;
  }
  if (!ey) {
    for (i = uy << 9; !(i >> 31); i <<= 1)
      --ey;
    uy <<= -ey + 1;
  } else {
    uy &= -1 >> 9;
    uy |= 1 << 23;
  }

  // x mod y
  for (; ex > ey; --ex) {
    i = ux - uy;
    if (!(i >> 31)) {
      if (!i)
        return 0 * x;
      ux = i;
    }
    ux <<= 1;
  }
  i = ux - uy;
  if (!(i >> 31)) {
    if (!i)
      return 0 * x;
    ux = i;
  }
  for (; !(ux >> 23); ux <<= 1)
    --ex;

  // scale result
  if (ex > 0) {
    ux -= 1 << 23;
    ux |= <u32>ex << 23;
  } else {
    ux >>= -ex + 1;
  }
  ux |= sx;
  return reinterpret<f32>(ux);
}

assert(isNaN<f32>(fmodf(1, NaN)));
assert(fmodf(1.5, 1.0) == 0.5);
assert(fmodf(9.2, 2.0) - 1.2 < f32.EPSILON);
assert(fmodf(9.2, 3.7) - 1.8 < f32.EPSILON);
