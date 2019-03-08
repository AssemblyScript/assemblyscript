// Largely based on test cases from libc-test: http://nsz.repo.hu/git/?p=libc-test
/*
  libc-test is licensed under the following standard MIT license:

  Copyright © 2005-2013 libc-test AUTHORS

  Permission is hereby granted, free of charge, to any person obtaining
  a copy of this software and associated documentation files (the
  "Software"), to deal in the Software without restriction, including
  without limitation the rights to use, copy, modify, merge, publish,
  distribute, sublicense, and/or sell copies of the Software, and to
  permit persons to whom the Software is furnished to do so, subject to
  the following conditions:

  The above copyright notice and this permission notice shall be
  included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
  CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
  TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
  SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

  Portions of this software is derived from software authored by
  third parties:

  math tests use numbers under BSD and GPL licenses see src/math/ucb/*
  and src/math/crlibm/* for details
*/

const js = true; // also test, and thus compare to, JS math?

// these flags are unused, but kept in case these might just so happen to become useful
const INEXACT   = 1 << 0;
const INVALID   = 1 << 1;
const DIVBYZERO = 1 << 2;
const UNDERFLOW = 1 << 3;
const OVERFLOW  = 1 << 4;

function eulp(x: f64): i32 {
  var u = reinterpret<u64>(x);
  var e = <i32>(u >> 52 & 0x7ff);
  if (!e) e++;
  return e - 0x3ff - 52;
}

function ulperr(got: f64, want: f64, dwant: f64): f64 {
  const Ox1p1023  = reinterpret<f64>(0x7FE0000000000000);
  if (isNaN(got) && isNaN(want)) return 0;
  if (got == want) {
    if (NativeMath.signbit(got) == NativeMath.signbit(want)) return dwant;
    return Infinity;
  }
  if (!isFinite(got)) {
    got = copysign<f64>(Ox1p1023, got);
    want *= 0.5;
  }
  return NativeMath.scalbn(got - want, -eulp(want)) + dwant;
}

function eulpf(x: f32): i32 {
  var u = reinterpret<u32>(x);
  var e = <i32>(u >> 23 & 0xff);
  if (!e) e++;
  return e - 0x7f - 23;
}

function ulperrf(got: f32, want: f32, dwant: f32): f32 {
  const Ox1p127f = reinterpret<f32>(0x7F000000);
  if (isNaN(got) && isNaN(want)) return 0;
  if (got == want) {
    if (NativeMathf.signbit(got) == NativeMathf.signbit(want)) return dwant;
    return Infinity;
  }
  if (!isFinite(got)) {
    got = copysign<f32>(Ox1p127f, got);
    want *= 0.5;
  }
  return NativeMathf.scalbn(got - want, -eulpf(want)) + dwant;
}

function check<T>(actual: T, expected: T, dy: T, flags: i32): bool {
  if (actual == expected) return true;
  if (isNaN(expected)) return isNaN(actual);
  var d: T;
  if (sizeof<T>() == 8) d = ulperr(actual, expected, dy);
  else if (sizeof<T>() == 4) d = ulperrf(actual, expected, dy);
  else return false;
  if (abs<T>(d) >= 1.5) {
    return false;
  }
  return true;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
// Global aliases
////////////////////////////////////////////////////////////////////////////////////////////////////

assert(Math.E == NativeMath.E);
assert(Mathf.E == NativeMathf.E);

////////////////////////////////////////////////////////////////////////////////////////////////////
// Constants
////////////////////////////////////////////////////////////////////////////////////////////////////

assert(check<f64>(NativeMath.E, JSMath.E, 0.0, 0));
assert(check<f64>(NativeMath.LN2, JSMath.LN2, 0.0, 0));
assert(check<f64>(NativeMath.LN10, JSMath.LN10, 0.0, 0));
assert(check<f64>(NativeMath.LOG2E, JSMath.LOG2E, 0.0, 0));
assert(check<f64>(NativeMath.PI, JSMath.PI, 0.0, 0));
assert(check<f64>(NativeMath.SQRT1_2, JSMath.SQRT1_2, 0.0, 0));
assert(check<f64>(NativeMath.SQRT2, JSMath.SQRT2, 0.0, 0));

assert(check<f32>(NativeMathf.E, <f32>JSMath.E, 0.0, 0));
assert(check<f32>(NativeMathf.LN2, <f32>JSMath.LN2, 0.0, 0));
assert(check<f32>(NativeMathf.LN10, <f32>JSMath.LN10, 0.0, 0));
assert(check<f32>(NativeMathf.LOG2E, <f32>JSMath.LOG2E, 0.0, 0));
assert(check<f32>(NativeMathf.PI, <f32>JSMath.PI, 0.0, 0));
assert(check<f32>(NativeMathf.SQRT1_2, <f32>JSMath.SQRT1_2, 0.0, 0));
assert(check<f32>(NativeMathf.SQRT2, <f32>JSMath.SQRT2, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Internal scalbn
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_scalbn(value: f64, n: i32, expected: f64, error: f64, flags: i32): bool {
  return check<f64>(NativeMath.scalbn(value, n), expected, error, flags);
}

// sanity
assert(test_scalbn(-8.06684839057968084, -2, -2.01671209764492021, 0.0, 0));
assert(test_scalbn(4.34523984933830487, -1, 2.17261992466915244, 0.0, 0));
assert(test_scalbn(-8.38143342755524934, 0, -8.38143342755524934, 0.0, 0));
assert(test_scalbn(-6.53167358191348413, 1, -13.0633471638269683, 0.0, 0));
assert(test_scalbn(9.26705696697258574, 2, 37.068227867890343, 0.0, 0));
assert(test_scalbn(0.661985898099504477, 3, 5.29588718479603582, 0.0, 0));
assert(test_scalbn(-0.40660392238535531, 4, -6.50566275816568496, 0.0, 0));
assert(test_scalbn(0.56175974622072411, 5, 17.9763118790631715, 0.0, 0));
assert(test_scalbn(0.77415229659130369, 6, 49.5457469818434362, 0.0, 0));
assert(test_scalbn(-0.678763702639402444, 7, -86.8817539378435129, 0.0, 0));

// special
assert(test_scalbn(0.0, 2147483647, 0.0, 0.0, 0));
assert(test_scalbn(0.0, -2147483647, 0.0, 0.0, 0));
assert(test_scalbn(-0.0, 2147483647, -0.0, 0.0, 0));
assert(test_scalbn(NaN, 0, NaN, 0.0, 0));
assert(test_scalbn(Infinity, 0, Infinity, 0.0, 0));
assert(test_scalbn(-Infinity, 0, -Infinity, 0.0, 0));
assert(test_scalbn(1.0, 0, 1.0, 0.0, 0));
assert(test_scalbn(1.0, 1, 2.0, 0.0, 0));
assert(test_scalbn(1.0, -1, 0.5, 0.0, 0));
assert(test_scalbn(1.0, 2147483647, Infinity, 0.0, INEXACT | OVERFLOW));
assert(test_scalbn(NaN, 1, NaN, 0.0, 0));
assert(test_scalbn(Infinity, 2147483647, Infinity, 0.0, 0));
assert(test_scalbn(Infinity, -2147483647, Infinity, 0.0, 0));
assert(test_scalbn(-Infinity, 2147483647, -Infinity, 0.0, 0));
assert(test_scalbn(8.98846567431157954e+307, -2097, 4.94065645841246544e-324, 0.0, 0));
assert(test_scalbn(4.94065645841246544e-324, 2097, 8.98846567431157954e+307, 0.0, 0));
assert(test_scalbn(1.000244140625, -1074, 4.94065645841246544e-324, 0.0, INEXACT | UNDERFLOW));
assert(test_scalbn(0.749999999999999889, -1073, 4.94065645841246544e-324, 0.0, INEXACT | UNDERFLOW));
assert(test_scalbn(0.500000000000001221, -1024, 2.78134232313400667e-309, 0.0, INEXACT | UNDERFLOW));

// Internal scalbnf ////////////////////////////////////////////////////////////////////////////////

function test_scalbnf(value: f32, n: i32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.scalbn(value, n), expected, error, flags);
}

// sanity
assert(test_scalbnf(-8.066848755, -2, -2.016712189, 0.0, 0));
assert(test_scalbnf(4.345239639, -1, 2.17261982, 0.0, 0));
assert(test_scalbnf(-8.381433487, 0, -8.381433487, 0.0, 0));
assert(test_scalbnf(-6.531673431, 1, -13.06334686, 0.0, 0));
assert(test_scalbnf(9.267057419, 2, 37.06822968, 0.0, 0));
assert(test_scalbnf(0.6619858742, 3, 5.295886993, 0.0, 0));
assert(test_scalbnf(-0.4066039324, 4, -6.505662918, 0.0, 0));
assert(test_scalbnf(0.5617597699, 5, 17.97631264, 0.0, 0));
assert(test_scalbnf(0.7741522789, 6, 49.54574585, 0.0, 0));
assert(test_scalbnf(-0.6787636876, 7, -86.88175201, 0.0, 0));

// special
assert(test_scalbnf(0.0, 2147483647, 0.0, 0.0, 0));
assert(test_scalbnf(0.0, -2147483647, 0.0, 0.0, 0));
assert(test_scalbnf(-0.0, 2147483647, -0.0, 0.0, 0));
assert(test_scalbnf(NaN, 0, NaN, 0.0, 0));
assert(test_scalbnf(Infinity, 0, Infinity, 0.0, 0));
assert(test_scalbnf(-Infinity, 0, -Infinity, 0.0, 0));
assert(test_scalbnf(1.0, 0, 1.0, 0.0, 0));
assert(test_scalbnf(1.0, 1, 2.0, 0.0, 0));
assert(test_scalbnf(1.0, -1, 0.5, 0.0, 0));
assert(test_scalbnf(1.0, 2147483647, Infinity, 0.0, INEXACT | OVERFLOW));
assert(test_scalbnf(NaN, 1, NaN, 0.0, 0));
assert(test_scalbnf(Infinity, 2147483647, Infinity, 0.0, 0));
assert(test_scalbnf(Infinity, -2147483647, Infinity, 0.0, 0));
assert(test_scalbnf(-Infinity, 2147483647, -Infinity, 0.0, 0));
assert(test_scalbnf(1.701411835e+38, -276, 1.401298464e-45, 0.0, 0));
assert(test_scalbnf(1.401298464e-45, 276, 1.701411835e+38, 0.0, 0));
assert(test_scalbnf(1.000244141, -149, 1.401298464e-45, 0.0, INEXACT | UNDERFLOW));
assert(test_scalbnf(0.7499999404, -148, 1.401298464e-45, 0.0, INEXACT | UNDERFLOW));
assert(test_scalbnf(0.5000006557, -128, 1.469369340e-39, 0.0, INEXACT | UNDERFLOW));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.abs
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_abs(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.abs(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.abs(value), expected, error, flags));
}

// sanity
assert(test_abs(-8.06684839057968084, 8.06684839057968084, 0.0, 0));
assert(test_abs(4.34523984933830487, 4.34523984933830487, 0.0, 0));
assert(test_abs(-8.38143342755524934, 8.38143342755524934, 0.0, 0));
assert(test_abs(-6.53167358191348413, 6.53167358191348413, 0.0, 0));
assert(test_abs(9.26705696697258574, 9.26705696697258574, 0.0, 0));
assert(test_abs(0.661985898099504477, 0.661985898099504477, 0.0, 0));
assert(test_abs(-0.40660392238535531, 0.40660392238535531, 0.0, 0));
assert(test_abs(0.56175974622072411, 0.56175974622072411, 0.0, 0));
assert(test_abs(0.77415229659130369, 0.77415229659130369, 0.0, 0));
assert(test_abs(-0.678763702639402444, 0.678763702639402444, 0.0, 0));

// special
assert(test_abs(0.0, 0.0, 0.0, 0));
assert(test_abs(-0.0, 0.0, 0.0, 0));
assert(test_abs(1.0, 1.0, 0.0, 0));
assert(test_abs(-1.0, 1.0, 0.0, 0));
assert(test_abs(Infinity, Infinity, 0.0, 0));
assert(test_abs(-Infinity, Infinity, 0.0, 0));
assert(test_abs(NaN, NaN, 0.0, 0));

// Mathf.abs ///////////////////////////////////////////////////////////////////////////////////////

function test_absf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.abs(value), expected, error, flags);
}

// sanity
assert(test_absf(-8.066848755, 8.066848755, 0.0, 0));
assert(test_absf(4.345239639, 4.345239639, 0.0, 0));
assert(test_absf(-8.381433487, 8.381433487, 0.0, 0));
assert(test_absf(-6.531673431, 6.531673431, 0.0, 0));
assert(test_absf(9.267057419, 9.267057419, 0.0, 0));
assert(test_absf(0.6619858742, 0.6619858742, 0.0, 0));
assert(test_absf(-0.4066039324, 0.4066039324, 0.0, 0));
assert(test_absf(0.5617597699, 0.5617597699, 0.0, 0));
assert(test_absf(0.7741522789, 0.7741522789, 0.0, 0));
assert(test_absf(-0.6787636876, 0.6787636876, 0.0, 0));

// special
assert(test_absf(0.0, 0.0, 0.0, 0));
assert(test_absf(-0.0, 0.0, 0.0, 0));
assert(test_absf(1.0, 1.0, 0.0, 0));
assert(test_absf(-1.0, 1.0, 0.0, 0));
assert(test_absf(Infinity, Infinity, 0.0, 0));
assert(test_absf(-Infinity, Infinity, 0.0, 0));
assert(test_absf(NaN, NaN, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.acos
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_acos(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.acos(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.acos(value), expected, error, flags));
}

// sanity
assert(test_acos(-8.06684839057968084, NaN, 0.0, INVALID));
assert(test_acos(4.34523984933830487, NaN, 0.0, INVALID));
assert(test_acos(-8.38143342755524934, NaN, 0.0, INVALID));
assert(test_acos(-6.53167358191348413, NaN, 0.0, INVALID));
assert(test_acos(9.26705696697258574, NaN, 0.0, INVALID));
assert(test_acos(0.661985898099504477, 0.84733108284335068, -0.415532767772674561, INEXACT));
assert(test_acos(-0.40660392238535531, 1.98953007108866897, 0.4973946213722229, INEXACT));
assert(test_acos(0.56175974622072411, 0.974284964567490364, -0.442889750003814697, INEXACT));
assert(test_acos(0.77415229659130369, 0.68542151586362221, -0.125895276665687561, INEXACT));
assert(test_acos(-0.678763702639402444, 2.31687413820596388, -0.172849491238594055, INEXACT));

// special
assert(test_acos(0.0, 1.57079632679489656, -0.275765955448150635, INEXACT));
assert(test_acos(-1.0, 3.14159265358979312, -0.275765955448150635, INEXACT));
assert(test_acos(1.0, 0.0, 0.0, 0));
assert(test_acos(1.00000000000000022, NaN, 0.0, INVALID));
assert(test_acos(-1.00000000000000022, NaN, 0.0, INVALID));
assert(test_acos(Infinity, NaN, 0.0, INVALID));
assert(test_acos(-Infinity, NaN, 0.0, INVALID));
assert(test_acos(NaN, NaN, 0.0, 0));
assert(test_acos(-0.530922720959298489, 2.13048537997054632, 0.139100849628448486, INEXACT));
assert(test_acos(0.493955674639974585, 1.05416298758519456, 0.220547676086425781, INEXACT));

// Mathf.acos //////////////////////////////////////////////////////////////////////////////////////

function test_acosf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.acos(value), expected, error, flags);
}

// sanity
assert(test_acosf(-8.066848755, NaN, 0.0, INVALID));
assert(test_acosf(4.345239639, NaN, 0.0, INVALID));
assert(test_acosf(-8.381433487, NaN, 0.0, INVALID));
assert(test_acosf(-6.531673431, NaN, 0.0, INVALID));
assert(test_acosf(9.267057419, NaN, 0.0, INVALID));
assert(test_acosf(0.6619858742, 0.8473311067, -0.1358813196, INEXACT));
assert(test_acosf(-0.4066039324, 1.989530087, 0.03764917701, INEXACT));
assert(test_acosf(0.5617597699, 0.9742849469, 0.1844373941, INEXACT));
assert(test_acosf(0.7741522789, 0.6854215264, -0.2915834486, INEXACT));
assert(test_acosf(-0.6787636876, 2.316874027, -0.3795364499, INEXACT));

// special
assert(test_acosf(0.0, 1.570796371, 0.3666777015, INEXACT));
assert(test_acosf(-1.0, 3.141592741, 0.3666777015, INEXACT));
assert(test_acosf(1.0, 0.0, 0.0, 0));
assert(test_acosf(1.000000119, NaN, 0.0, INVALID));
assert(test_acosf(-1.000000119, NaN, 0.0, INVALID));
assert(test_acosf(Infinity, NaN, 0.0, INVALID));
assert(test_acosf(-Infinity, NaN, 0.0, INVALID));
assert(test_acosf(NaN, NaN, 0.0, 0));
assert(test_acosf(0.4996506572, 1.047600865, -0.2116181403, INEXACT));
assert(test_acosf(-0.505140543, 2.100341082, -0.2085270584, INEXACT));
assert(test_acosf(-0.5189794898, 2.116452932, -0.146008268, INEXACT));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.acosh
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_acosh(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.acosh(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.acosh(value), expected, error, flags));
}

// sanity
assert(test_acosh(-8.06684839057968084, NaN, 0.0, INVALID));
assert(test_acosh(4.34523984933830487, 2.14871639805975034, -0.291634738445281982, INEXACT));
assert(test_acosh(-8.38143342755524934, NaN, 0.0, INVALID));
assert(test_acosh(-6.53167358191348413, NaN, 0.0, INVALID));
assert(test_acosh(9.26705696697258574, 2.91668914109907984, -0.241919085383415222, INEXACT));
assert(test_acosh(0.661985898099504477, NaN, 0.0, INVALID));
assert(test_acosh(-0.40660392238535531, NaN, 0.0, INVALID));
assert(test_acosh(0.56175974622072411, NaN, 0.0, INVALID));
assert(test_acosh(0.77415229659130369, NaN, 0.0, INVALID));
assert(test_acosh(-0.678763702639402444, NaN, 0.0, INVALID));

// special
assert(test_acosh(NaN, NaN, 0.0, 0));
assert(test_acosh(Infinity, Infinity, 0.0, 0));
assert(test_acosh(1.0, 0.0, 0.0, 0));
assert(test_acosh(0.99999237060546875, NaN, 0.0, INVALID));
assert(test_acosh(0.0, NaN, 0.0, INVALID));
assert(test_acosh(-0.0, NaN, 0.0, INVALID));
assert(test_acosh(-Infinity, NaN, 0.0, INVALID));

// TODO: hard cases close to 1
// assert(test_acosh(1.00047471439683111, 0.030811583621269234, -0.147202208638191223, INEXACT));
// assert(test_acosh(1.00183940730320464, 0.0606439391272710696, -0.27641335129737854, INEXACT));
// assert(test_acosh(1.00188411580836734, 0.0613762895053152624, 0.144539892673492432, INEXACT));
// assert(test_acosh(1.00710219219241903, 0.11911172253310362, -0.0701267644762992859, INEXACT));
// assert(test_acosh(1.00721657615236126, 0.1200659234653388, 0.348167449235916138, INEXACT));
// assert(test_acosh(1.00755889036240331, 0.122877066266470714, 0.238077804446220398, INEXACT));
// assert(test_acosh(1.02542398474864016, 0.225019907470933367, -0.326139897108078003, INEXACT));
// assert(test_acosh(1.0256625220747686, 0.226068601206439679, -0.038667779415845871, INEXACT));
// assert(test_acosh(1.0258391651139116, 0.226842008792436378, -0.214941442012786865, INEXACT));
// assert(test_acosh(1.02779264167821971, 0.235222655703679978, -0.18194638192653656, INEXACT));
// assert(test_acosh(1.02795793845257588, 0.235917895367856345, -0.21022343635559082, INEXACT));
// assert(test_acosh(1.03023030515918168, 0.245272131775117419, -0.281468182802200317, INEXACT));
// assert(test_acosh(1.10422493637863384, 0.452687876797022049, 0.276559263467788696, INEXACT));
assert(test_acosh(1.10608311999264286, 0.45663734043848031, -0.293816089630126953, INEXACT));
// assert(test_acosh(1.10669650280664866, 0.457933064962976033, -0.261756330728530884, INEXACT));
assert(test_acosh(1.10898095576286582, 0.462724685995942797, -0.399009555578231812, INEXACT));
assert(test_acosh(1.11694291598755213, 0.47902433134075284, -0.321674108505249023, INEXACT));

// Mathf.acosh /////////////////////////////////////////////////////////////////////////////////////

function test_acoshf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.acosh(value), expected, error, flags);
}

// sanity
assert(test_acoshf(-8.066848755, NaN, 0.0, INVALID));
assert(test_acoshf(4.345239639, 2.14871645, 0.4251045287, INEXACT));
assert(test_acoshf(-8.381433487, NaN, 0.0, INVALID));
assert(test_acoshf(-6.531673431, NaN, 0.0, INVALID));
assert(test_acoshf(9.267057419, 2.916689157, -0.1369788945, INEXACT));
assert(test_acoshf(0.6619858742, NaN, 0.0, INVALID));
assert(test_acoshf(-0.4066039324, NaN, 0.0, INVALID));
assert(test_acoshf(0.5617597699, NaN, 0.0, INVALID));
assert(test_acoshf(0.7741522789, NaN, 0.0, INVALID));
assert(test_acoshf(-0.6787636876, NaN, 0.0, INVALID));

// special
assert(test_acoshf(NaN, NaN, 0.0, 0));
assert(test_acoshf(Infinity, Infinity, 0.0, 0));
assert(test_acoshf(1.0, 0.0, 0.0, 0));
assert(test_acoshf(0.9999923706, NaN, 0.0, INVALID));
assert(test_acoshf(0.0, NaN, 0.0, INVALID));
assert(test_acoshf(-0.0, NaN, 0.0, INVALID));
assert(test_acoshf(-Infinity, NaN, 0.0, INVALID));
assert(test_acoshf(-1.125899907e+15, NaN, 0.0, INVALID));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.asin
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_asin(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.asin(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.asin(value), expected, error, flags));
}

// sanity
assert(test_asin(-8.06684839057968084, NaN, 0.0, INVALID));
assert(test_asin(4.34523984933830487, NaN, 0.0, INVALID));
assert(test_asin(-8.38143342755524934, NaN, 0.0, INVALID));
assert(test_asin(-6.53167358191348413, NaN, 0.0, INVALID));
assert(test_asin(9.26705696697258574, NaN, 0.0, INVALID));
assert(test_asin(0.661985898099504477, 0.723465243951545878, -0.135999128222465515, INEXACT));
assert(test_asin(-0.40660392238535531, -0.418733744293772248, -0.0926423072814941406, INEXACT));
assert(test_asin(0.56175974622072411, 0.596511362227406194, -0.108642138540744781, INEXACT));
assert(test_asin(0.77415229659130369, 0.885374810931274348, -0.425636619329452515, INEXACT));
assert(test_asin(-0.678763702639402444, -0.746077811411067326, 0.139866068959236145, INEXACT));

// special
assert(test_asin(1.0, 1.57079632679489656, -0.275765955448150635, INEXACT));
assert(test_asin(-1.0, -1.57079632679489656, 0.275765955448150635, INEXACT));
assert(test_asin(0.0, 0.0, 0.0, 0));
assert(test_asin(-0.0, -0.0, 0.0, 0));
assert(test_asin(1.00000000000000022, NaN, 0.0, INVALID));
assert(test_asin(-1.00000000000000022, NaN, 0.0, INVALID));
assert(test_asin(Infinity, NaN, 0.0, INVALID));
assert(test_asin(-Infinity, NaN, 0.0, INVALID));
assert(test_asin(NaN, NaN, 0.0, 0));
assert(test_asin(0.507304392911914759, 0.53205389977723494, -0.161573171615600586, INEXACT));

// Mathf.asin //////////////////////////////////////////////////////////////////////////////////////

function test_asinf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.asin(value), expected, error, flags);
}

// sanity
assert(test_asinf(-8.066848755, NaN, 0.0, INVALID));
assert(test_asinf(4.345239639, NaN, 0.0, INVALID));
assert(test_asinf(-8.381433487, NaN, 0.0, INVALID));
assert(test_asinf(-6.531673431, NaN, 0.0, INVALID));
assert(test_asinf(9.267057419, NaN, 0.0, INVALID));
assert(test_asinf(0.6619858742, 0.7234652042, -0.1307632476, INEXACT));
assert(test_asinf(-0.4066039324, -0.4187337458, 0.3161141574, INEXACT));
assert(test_asinf(0.5617597699, 0.596511364, -0.4510819614, INEXACT));
assert(test_asinf(0.7741522789, 0.8853747845, 0.02493886836, INEXACT));
assert(test_asinf(-0.6787636876, -0.746077776, 0.2515012324, INEXACT));

// special
assert(test_asinf(1.0, 1.570796371, 0.3666777015, INEXACT));
assert(test_asinf(-1.0, -1.570796371, -0.3666777015, INEXACT));
assert(test_asinf(0.0, 0.0, 0.0, 0));
assert(test_asinf(-0.0, -0.0, 0.0, 0));
assert(test_asinf(1.000000119, NaN, 0.0, INVALID));
assert(test_asinf(-1.000000119, NaN, 0.0, INVALID));
assert(test_asinf(Infinity, NaN, 0.0, INVALID));
assert(test_asinf(-Infinity, NaN, 0.0, INVALID));
assert(test_asinf(NaN, NaN, 0.0, 0));
assert(test_asinf(0.500477016, 0.5241496563, -0.2942709923, INEXACT));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.asinh
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_asinh(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.asinh(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.asinh(value), expected, error, flags));
}

// sanity
assert(test_asinh(-8.06684839057968084, -2.78472987838786112, -0.476218998432159424, INEXACT));
assert(test_asinh(4.34523984933830487, 2.17521338901316419, -0.0272875130176544189, INEXACT));
assert(test_asinh(-8.38143342755524934, -2.82270608369769604, 0.20985257625579834, INEXACT));
assert(test_asinh(-6.53167358191348413, -2.57561944659192221, 0.311313420534133911, INEXACT));
assert(test_asinh(9.26705696697258574, 2.92251149510486741, 0.499175608158111572, INEXACT));
assert(test_asinh(0.661985898099504477, 0.621246276270716602, -0.469734758138656616, INEXACT));
assert(test_asinh(-0.40660392238535531, -0.396159903931920354, -0.408144384622573853, INEXACT));
assert(test_asinh(0.56175974622072411, 0.535758887025547414, 0.352071315050125122, INEXACT));
assert(test_asinh(0.77415229659130369, 0.712357126319734912, 0.13371451199054718, INEXACT));
assert(test_asinh(-0.678763702639402444, -0.635182348903198024, 0.0474967099726200104, INEXACT));

// special
assert(test_asinh(NaN, NaN, 0.0, 0));
assert(test_asinh(Infinity, Infinity, 0.0, 0));
assert(test_asinh(-Infinity, -Infinity, 0.0, 0));
assert(test_asinh(0.0, 0.0, 0.0, 0));
assert(test_asinh(-0.0, -0.0, 0.0, 0));

// TODO: hard cases around 0.125?
// assert(test_asinh(0.247980229031791038, 0.245506531315820731, -0.487455964088439941, INEXACT));
// assert(test_asinh(0.233961368245165308, 0.231877865394494953, 0.448774427175521851, INEXACT));
// assert(test_asinh(0.24189636405949258, 0.239597351837045336, -0.43224412202835083, INEXACT));
// assert(test_asinh(0.24297705017513252, 0.240647613714979003, 0.464605927467346191, INEXACT));
// assert(test_asinh(0.243009640747287647, 0.240679282734723166, 0.474347352981567383, INEXACT));
// assert(test_asinh(0.243762819057833202, 0.241411097647160899, -0.471239805221557617, INEXACT));
// assert(test_asinh(0.244209582852871615, 0.241845129387203428, 0.357721567153930664, INEXACT));
// assert(test_asinh(0.245142613572556872, 0.242751426027184358, 0.488074928522109985, INEXACT));
// assert(test_asinh(0.248925886656024803, 0.246424287018607635, 0.423774600028991699, INEXACT));
// assert(test_asinh(0.249687050136605942, 0.247162844410159732, 0.467378854751586914, INEXACT));
// assert(test_asinh(0.252496955340698215, 0.249888150492394823, -0.330307126045227051, INEXACT));
// assert(test_asinh(0.46527661837878348, 0.449940706126732537, 0.415301203727722168, INEXACT));
// assert(test_asinh(0.467958660300663964, 0.452371172681032996, 0.495325148105621338, INEXACT));
// assert(test_asinh(0.479083566135035333, 0.462425786301167263, 0.421210944652557373, INEXACT));
// assert(test_asinh(0.481281048969517788, 0.464406726694242211, -0.483110427856445313, INEXACT));
// assert(test_asinh(0.487328868799273951, 0.469849798263134111, -0.424072027206420898, INEXACT));
// assert(test_asinh(0.489993198082535886, 0.472243604962259256, -0.437918633222579956, INEXACT));
// assert(test_asinh(0.519085143365399015, 0.498216616337933904, -0.420524448156356812, INEXACT));

// Mathf.asinh /////////////////////////////////////////////////////////////////////////////////////

function test_asinhf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.asinh(value), expected, error, flags);
}

// sanity
assert(test_asinhf(-8.066848755, -2.784729958, -0.1441801339, INEXACT));
assert(test_asinhf(4.345239639, 2.175213337, -0.02079696581, INEXACT));
assert(test_asinhf(-8.381433487, -2.822705984, 0.4471853375, INEXACT));
assert(test_asinhf(-6.531673431, -2.575619459, -0.1482227296, INEXACT));
assert(test_asinhf(9.267057419, 2.922511578, 0.1427068114, INEXACT));
assert(test_asinhf(0.6619858742, 0.6212462783, 0.368491292, INEXACT));
assert(test_asinhf(-0.4066039324, -0.3961599171, -0.1317030638, INEXACT));
assert(test_asinhf(0.5617597699, 0.5357589126, 0.08184859902, INEXACT));
assert(test_asinhf(0.7741522789, 0.7123571038, -0.1427073777, INEXACT));
assert(test_asinhf(-0.6787636876, -0.6351823211, 0.2583143711, INEXACT));

// special
assert(test_asinhf(NaN, NaN, 0.0, 0));
assert(test_asinhf(Infinity, Infinity, 0.0, 0));
assert(test_asinhf(-Infinity, -Infinity, 0.0, 0));
assert(test_asinhf(0.0, 0.0, 0.0, 0));
assert(test_asinhf(-0.0, -0.0, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.atan
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_atan(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.atan(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.atan(value), expected, error, flags));
}

// sanity
assert(test_atan(-8.06684839057968084, -1.44746137626334681, 0.148571118712425232, INEXACT));
assert(test_atan(4.34523984933830487, 1.34459792711453807, -0.0817033573985099792, INEXACT));
assert(test_atan(-8.38143342755524934, -1.45204634632955387, -0.0750548020005226135, INEXACT));
assert(test_atan(-6.53167358191348413, -1.41887586587525316, -0.0576334968209266663, INEXACT));
assert(test_atan(9.26705696697258574, 1.46330314544870599, 0.160695642232894897, INEXACT));
assert(test_atan(0.661985898099504477, 0.584755067023832509, 0.458255648612976074, INEXACT));
assert(test_atan(-0.40660392238535531, -0.386186417755213118, -0.257428169250488281, INEXACT));
assert(test_atan(0.56175974622072411, 0.511826953162888065, -0.114442773163318634, INEXACT));
assert(test_atan(0.77415229659130369, 0.658780243165382196, -0.112864881753921509, INEXACT));
assert(test_atan(-0.678763702639402444, -0.596330782697347184, -0.218284234404563904, INEXACT));

// special
assert(test_atan(0.0, 0.0, 0.0, 0));
assert(test_atan(-0.0, -0.0, 0.0, 0));
assert(test_atan(1.0, 0.785398163397448279, -0.275765955448150635, INEXACT));
assert(test_atan(-1.0, -0.785398163397448279, 0.275765955448150635, INEXACT));
assert(test_atan(Infinity, 1.57079632679489656, -0.275765955448150635, INEXACT));
assert(test_atan(-Infinity, -1.57079632679489656, 0.275765955448150635, INEXACT));
assert(test_atan(NaN, NaN, 0.0, 0));
assert(test_atan(0.6929821535674624, 0.606000455515256164, -0.170757904648780823, INEXACT));

// Mathf.atan //////////////////////////////////////////////////////////////////////////////////////

function test_atanf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.atan(value), expected, error, flags);
}

// sanity
assert(test_atanf(-8.066848755, -1.447461367, 0.1268648058, INEXACT));
assert(test_atanf(4.345239639, 1.344597936, 0.1604543477, INEXACT));
assert(test_atanf(-8.381433487, -1.452046394, -0.3958175182, INEXACT));
assert(test_atanf(-6.531673431, -1.418875813, 0.4105703533, INEXACT));
assert(test_atanf(9.267057419, 1.463303208, 0.4840350151, INEXACT));
assert(test_atanf(0.6619858742, 0.5847550631, 0.2125193477, INEXACT));
assert(test_atanf(-0.4066039324, -0.3861864209, 0.1816962808, INEXACT));
assert(test_atanf(0.5617597699, 0.511826992, 0.3499770761, INEXACT));
assert(test_atanf(0.7741522789, 0.6587802172, -0.2505330741, INEXACT));
assert(test_atanf(-0.6787636876, -0.5963307619, 0.1761482656, INEXACT));

// special
assert(test_atanf(0.0, 0.0, 0.0, 0));
assert(test_atanf(-0.0, -0.0, 0.0, 0));
assert(test_atanf(1.0, 0.7853981853, 0.3666777015, INEXACT));
assert(test_atanf(-1.0, -0.7853981853, -0.3666777015, INEXACT));
assert(test_atanf(Infinity, 1.570796371, 0.3666777015, INEXACT));
assert(test_atanf(-Infinity, -1.570796371, -0.3666777015, INEXACT));
assert(test_atanf(NaN, NaN, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.atanh
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_atanh(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.atanh(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.atanh(value), expected, error, flags));
}

// sanity
assert(test_atanh(-8.06684839057968084, NaN, 0.0, INVALID));
assert(test_atanh(4.34523984933830487, NaN, 0.0, INVALID));
assert(test_atanh(-8.38143342755524934, NaN, 0.0, INVALID));
assert(test_atanh(-6.53167358191348413, NaN, 0.0, INVALID));
assert(test_atanh(9.26705696697258574, NaN, 0.0, INVALID));
assert(test_atanh(0.661985898099504477, 0.796340437134794299, 0.213383659720420837, INEXACT));
assert(test_atanh(-0.40660392238535531, -0.431535707306028971, -0.432566612958908081, INEXACT));
assert(test_atanh(0.56175974622072411, 0.635400611164457785, -0.0652786567807197571, INEXACT));
assert(test_atanh(0.77415229659130369, 1.03060855752779945, 0.146320521831512451, INEXACT));
assert(test_atanh(-0.678763702639402444, -0.826817964520525472, 0.139712870121002197, INEXACT));

// special
assert(test_atanh(NaN, NaN, 0.0, 0));
assert(test_atanh(Infinity, NaN, 0.0, INVALID));
assert(test_atanh(-Infinity, NaN, 0.0, INVALID));
assert(test_atanh(0.0, 0.0, 0.0, 0));
assert(test_atanh(-0.0, -0.0, 0.0, 0));
assert(test_atanh(1.0, Infinity, 0.0, DIVBYZERO));
assert(test_atanh(-1.0, -Infinity, 0.0, DIVBYZERO));
assert(test_atanh(1.0000152587890625, NaN, 0.0, INVALID));
assert(test_atanh(-1.0000152587890625, NaN, 0.0, INVALID));
assert(test_atanh(1.35525271560688054e-20, 1.35525271560688054e-20, 0.0, INEXACT));
assert(test_atanh(9.33263618503218879e-302, 9.33263618503218879e-302, 0.0, INEXACT));
assert(test_atanh(5.56268464626800346e-309, 5.56268464626800346e-309, 0.0, INEXACT | UNDERFLOW));
assert(test_atanh(-5.56268464626800346e-309, -5.56268464626800346e-309, 0.0, INEXACT | UNDERFLOW));
assert(test_atanh(8.98846567431157954e+307, NaN, 0.0, INVALID));

// Mathf.atanh /////////////////////////////////////////////////////////////////////////////////////

function test_atanhf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.atanh(value), expected, error, flags);
}

// sanity
assert(test_atanhf(-8.066848755, NaN, 0.0, INVALID));
assert(test_atanhf(4.345239639, NaN, 0.0, INVALID));
assert(test_atanhf(-8.381433487, NaN, 0.0, INVALID));
assert(test_atanhf(-6.531673431, NaN, 0.0, INVALID));
assert(test_atanhf(9.267057419, NaN, 0.0, INVALID));
assert(test_atanhf(0.6619858742, 0.7963404059, 0.1911219656, INEXACT));
assert(test_atanhf(-0.4066039324, -0.4315357208, -0.05180925131, INEXACT));
assert(test_atanhf(0.5617597699, 0.6354006529, 0.1191105619, INEXACT));
assert(test_atanhf(0.7741522789, 1.030608535, 0.1798270345, INEXACT));
assert(test_atanhf(-0.6787636876, -0.8268179297, 0.1158898324, INEXACT));

// special
assert(test_atanhf(NaN, NaN, 0.0, 0));
assert(test_atanhf(Infinity, NaN, 0.0, INVALID));
assert(test_atanhf(-Infinity, NaN, 0.0, INVALID));
assert(test_atanhf(0.0, 0.0, 0.0, 0));
assert(test_atanhf(-0.0, -0.0, 0.0, 0));
assert(test_atanhf(1.0, Infinity, 0.0, DIVBYZERO));
assert(test_atanhf(-1.0, -Infinity, 0.0, DIVBYZERO));
assert(test_atanhf(1.000015259, NaN, 0.0, INVALID));
assert(test_atanhf(-1.000015259, NaN, 0.0, INVALID));
assert(test_atanhf(1.355252716e-20, 1.355252716e-20, 0.0, INEXACT));
assert(test_atanhf(7.888609052e-31, 7.888609052e-31, 0.0, INEXACT));
assert(test_atanhf(2.938735877e-39, 2.938735877e-39, 0.0, INEXACT | UNDERFLOW));
assert(test_atanhf(-2.938735877e-39, -2.938735877e-39, 0.0, INEXACT | UNDERFLOW));
assert(test_atanhf(1.701411835e+38, NaN, 0.0, INVALID));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.atan2
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_atan2(value1: f64, value2: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.atan2(value1, value2), expected, error, flags) &&
  (!js || check<f64>(    JSMath.atan2(value1, value2), expected, error, flags));
}

// sanity
assert(test_atan2(-8.06684839057968084, 4.53566256067686879, -1.05858954024890228, 0.0976626351475715637, INEXACT));
assert(test_atan2(4.34523984933830487, -8.88799136300345083, 2.68687341260130674, 0.358339488506317139, INEXACT));
assert(test_atan2(-8.38143342755524934, -2.76360733737958819, -1.88930009184952796, -0.462359577417373657, INEXACT));
assert(test_atan2(-6.53167358191348413, 4.56753527684274374, -0.960546902111148904, -0.215244770050048828, INEXACT));
assert(test_atan2(9.26705696697258574, 4.81139208435979615, 1.09191239461421086, 0.389444321393966675, INEXACT));
assert(test_atan2(-6.45004555606023633, 0.662071792337673881, -1.46850850061642402, -0.448591411113739014, INEXACT));
assert(test_atan2(7.85889025304169664, 0.0521545267500622481, 1.5641600512601268, 0.378484278917312622, INEXACT));
assert(test_atan2(-0.792054511984895959, 7.67640268511753998, -0.102816589106785081, -0.139932602643966675, INEXACT));
assert(test_atan2(0.615702673197924044, 2.01190257903248026, 0.296979740044935159, 0.44753071665763855, INEXACT));
assert(test_atan2(-0.558758682360915193, 0.0322398306026380407, -1.51316120533039156, 0.397088766098022461, INEXACT));

// special
assert(test_atan2(0.0, 0.0, 0.0, 0.0, 0));
assert(test_atan2(0.0, -0.0, 3.14159265358979312, -0.275765955448150635, INEXACT));
assert(test_atan2(0.0, -1.0, 3.14159265358979312, -0.275765955448150635, INEXACT));
assert(test_atan2(0.0, -Infinity, 3.14159265358979312, -0.275765955448150635, INEXACT));
assert(test_atan2(0.0, 1.0, 0.0, 0.0, 0));
assert(test_atan2(0.0, Infinity, 0.0, 0.0, 0));
assert(test_atan2(-0.0, 0.0, -0.0, 0.0, 0));
assert(test_atan2(-0.0, -0.0, -3.14159265358979312, 0.275765955448150635, INEXACT));
assert(test_atan2(-0.0, -1.0, -3.14159265358979312, 0.275765955448150635, INEXACT));
assert(test_atan2(-0.0, -Infinity, -3.14159265358979312, 0.275765955448150635, INEXACT));
assert(test_atan2(-0.0, 1.0, -0.0, 0.0, 0));
assert(test_atan2(-0.0, Infinity, -0.0, 0.0, 0));
assert(test_atan2(-1.0, 0.0, -1.57079632679489656, 0.275765955448150635, INEXACT));
assert(test_atan2(-1.0, -0.0, -1.57079632679489656, 0.275765955448150635, INEXACT));
assert(test_atan2(1.0, 0.0, 1.57079632679489656, -0.275765955448150635, INEXACT));
assert(test_atan2(1.0, -0.0, 1.57079632679489656, -0.275765955448150635, INEXACT));
assert(test_atan2(-1.0, Infinity, -0.0, 0.0, 0));
assert(test_atan2(1.0, Infinity, 0.0, 0.0, 0));
assert(test_atan2(-1.0, -Infinity, -3.14159265358979312, 0.275765955448150635, INEXACT));
assert(test_atan2(1.0, -Infinity, 3.14159265358979312, -0.275765955448150635, INEXACT));
assert(test_atan2(Infinity, 0.0, 1.57079632679489656, -0.275765955448150635, INEXACT));
assert(test_atan2(-Infinity, 0.0, -1.57079632679489656, 0.275765955448150635, INEXACT));
assert(test_atan2(Infinity, Infinity, 0.785398163397448279, -0.275765955448150635, INEXACT));
assert(test_atan2(Infinity, -Infinity, 2.35619449019234484, -0.206824451684951782, INEXACT));
assert(test_atan2(-Infinity, Infinity, -0.785398163397448279, 0.275765955448150635, INEXACT));
assert(test_atan2(-Infinity, -Infinity, -2.35619449019234484, 0.206824451684951782, INEXACT));
assert(test_atan2(1.11253692925360069e-308, 1.0, 1.11253692925360069e-308, 0.0, INEXACT | UNDERFLOW));
assert(test_atan2(1.0, 8.98846567431157954e+307, 1.11253692925360069e-308, 0.0, INEXACT | UNDERFLOW));
assert(test_atan2(1.5, 8.98846567431157954e+307, 1.66880539388040104e-308, 0.0, INEXACT | UNDERFLOW));
assert(test_atan2(1.5, -8.98846567431157954e+307, 3.14159265358979312, 0.0, INEXACT));

// Mathf.atan2 /////////////////////////////////////////////////////////////////////////////////////

function test_atan2f(value1: f32, value2: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.atan2(value1, value2), expected, error, flags);
}

// sanity
assert(test_atan2f(-8.066848755, 4.535662651, -1.058589578, -0.2235258818, INEXACT));
assert(test_atan2f(4.345239639, -8.887990952, 2.686873436, 0.09464472532, INEXACT));
assert(test_atan2f(-8.381433487, -2.763607264, -1.889300108, -0.2194190174, INEXACT));
assert(test_atan2f(-6.531673431, 4.5675354, -0.9605468512, 0.4601557553, INEXACT));
assert(test_atan2f(9.267057419, 4.811392307, 1.091912389, -0.05708503723, INEXACT));
assert(test_atan2f(-6.450045586, 0.6620717645, -1.468508482, 0.1961120665, INEXACT));
assert(test_atan2f(7.858890057, 0.05215452611, 1.564160109, 0.4814318717, INEXACT));
assert(test_atan2f(-0.792054534, 7.676402569, -0.1028165966, -0.4216274917, INEXACT));
assert(test_atan2f(0.6157026887, 2.011902571, 0.2969797552, 0.2322007567, INEXACT));
assert(test_atan2f(-0.5587586761, 0.03223983198, -1.513161182, 0.1662072688, INEXACT));

// special
assert(test_atan2f(0.0, 0.0, 0.0, 0.0, 0));
assert(test_atan2f(0.0, -0.0, 3.141592741, 0.3666777015, INEXACT));
assert(test_atan2f(0.0, -1.0, 3.141592741, 0.3666777015, INEXACT));
assert(test_atan2f(0.0, -Infinity, 3.141592741, 0.3666777015, INEXACT));
assert(test_atan2f(0.0, 1.0, 0.0, 0.0, 0));
assert(test_atan2f(0.0, Infinity, 0.0, 0.0, 0));
assert(test_atan2f(-0.0, 0.0, -0.0, 0.0, 0));
assert(test_atan2f(-0.0, -0.0, -3.141592741, -0.3666777015, INEXACT));
assert(test_atan2f(-0.0, -1.0, -3.141592741, -0.3666777015, INEXACT));
assert(test_atan2f(-0.0, -Infinity, -3.141592741, -0.3666777015, INEXACT));
assert(test_atan2f(-0.0, 1.0, -0.0, 0.0, 0));
assert(test_atan2f(-0.0, Infinity, -0.0, 0.0, 0));
assert(test_atan2f(-1.0, 0.0, -1.570796371, -0.3666777015, INEXACT));
assert(test_atan2f(-1.0, -0.0, -1.570796371, -0.3666777015, INEXACT));
assert(test_atan2f(1.0, 0.0, 1.570796371, 0.3666777015, INEXACT));
assert(test_atan2f(1.0, -0.0, 1.570796371, 0.3666777015, INEXACT));
assert(test_atan2f(-1.0, Infinity, -0.0, 0.0, 0));
assert(test_atan2f(1.0, Infinity, 0.0, 0.0, 0));
assert(test_atan2f(-1.0, -Infinity, -3.141592741, -0.3666777015, INEXACT));
assert(test_atan2f(1.0, -Infinity, 3.141592741, 0.3666777015, INEXACT));
assert(test_atan2f(Infinity, 0.0, 1.570796371, 0.3666777015, INEXACT));
assert(test_atan2f(-Infinity, 0.0, -1.570796371, -0.3666777015, INEXACT));
assert(test_atan2f(Infinity, Infinity, 0.7853981853, 0.3666777015, INEXACT));
assert(test_atan2f(Infinity, -Infinity, 2.356194496, 0.02500828728, INEXACT));
assert(test_atan2f(-Infinity, Infinity, -0.7853981853, -0.3666777015, INEXACT));
assert(test_atan2f(-Infinity, -Infinity, -2.356194496, -0.02500828728, INEXACT));
assert(test_atan2f(5.877471754e-39, 1.0, 5.877471754e-39, 0.0, INEXACT | UNDERFLOW));
assert(test_atan2f(1.0, 1.701411835e+38, 5.877471754e-39, 0.0, INEXACT | UNDERFLOW));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.cbrt
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_cbrt(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.cbrt(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.cbrt(value), expected, error, flags));
}

// sanity
assert(test_cbrt(-8.06684839057968084, -2.00555525450202454, 0.466679513454437256, INEXACT));
assert(test_cbrt(4.34523984933830487, 1.63181624105156353, -0.0816027149558067322, INEXACT));
assert(test_cbrt(-8.38143342755524934, -2.03129391067336096, -0.048101816326379776, INEXACT));
assert(test_cbrt(-6.53167358191348413, -1.86928200122049248, 0.0862401872873306274, INEXACT));
assert(test_cbrt(9.26705696697258574, 2.10045772085970217, -0.272298902273178101, INEXACT));
assert(test_cbrt(0.661985898099504477, 0.87153114704559731, 0.441491812467575073, INEXACT));
assert(test_cbrt(-0.40660392238535531, -0.740839030300223023, 0.016453813761472702, INEXACT));
assert(test_cbrt(0.56175974622072411, 0.82511954005592858, 0.306806385517120361, INEXACT));
assert(test_cbrt(0.77415229659130369, 0.918210247895991372, 0.0654399842023849487, INEXACT));
assert(test_cbrt(-0.678763702639402444, -0.878832690658009397, -0.201671317219734192, INEXACT));

// special
assert(test_cbrt(NaN, NaN, 0.0, 0));
assert(test_cbrt(Infinity, Infinity, 0.0, 0));
assert(test_cbrt(-Infinity, -Infinity, 0.0, 0));
assert(test_cbrt(0.0, 0.0, 0.0, 0));
assert(test_cbrt(-0.0, -0.0, 0.0, 0));
assert(test_cbrt(9.31322574615478516e-10, 0.0009765625, 0.0, 0));
assert(test_cbrt(-9.31322574615478516e-10, -0.0009765625, 0.0, 0));
assert(test_cbrt(1.0, 1.0, 0.0, 0));
assert(test_cbrt(-1.0, -1.0, 0.0, 0));
assert(test_cbrt(8.0, 2.0, 0.0, 0));

// Mathf.cbrt //////////////////////////////////////////////////////////////////////////////////////

function test_cbrtf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.cbrt(value), expected, error, flags);
}

// sanity
assert(test_cbrtf(-8.066848755, -2.005555391, -0.4471924007, INEXACT));
assert(test_cbrtf(4.345239639, 1.631816268, 0.4463625252, INEXACT));
assert(test_cbrtf(-8.381433487, -2.031293869, 0.1948342621, INEXACT));
assert(test_cbrtf(-6.531673431, -1.869282007, -0.1707551479, INEXACT));
assert(test_cbrtf(9.267057419, 2.100457668, -0.3636204302, INEXACT));
assert(test_cbrtf(0.6619858742, 0.8715311289, -0.1285720915, INEXACT));
assert(test_cbrtf(-0.4066039324, -0.7408390641, -0.4655757546, INEXACT));
assert(test_cbrtf(0.5617597699, 0.825119555, 0.05601907894, INEXACT));
assert(test_cbrtf(0.7741522789, 0.918210268, 0.4549820423, INEXACT));
assert(test_cbrtf(-0.6787636876, -0.8788326979, -0.2297896743, INEXACT));

// special
assert(test_cbrtf(NaN, NaN, 0.0, 0));
assert(test_cbrtf(Infinity, Infinity, 0.0, 0));
assert(test_cbrtf(-Infinity, -Infinity, 0.0, 0));
assert(test_cbrtf(0.0, 0.0, 0.0, 0));
assert(test_cbrtf(-0.0, -0.0, 0.0, 0));
assert(test_cbrtf(9.313225746e-10, 0.0009765625, 0.0, 0));
assert(test_cbrtf(-9.313225746e-10, -0.0009765625, 0.0, 0));
assert(test_cbrtf(1.0, 1.0, 0.0, 0));
assert(test_cbrtf(-1.0, -1.0, 0.0, 0));
assert(test_cbrtf(8.0, 2.0, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.ceil
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_ceil(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.ceil(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.ceil(value), expected, error, flags));
}

// sanity
assert(test_ceil(-8.06684839057968084, -8.0, 0.0, INEXACT));
assert(test_ceil(4.34523984933830487, 5.0, 0.0, INEXACT));
assert(test_ceil(-8.38143342755524934, -8.0, 0.0, INEXACT));
assert(test_ceil(-6.53167358191348413, -6.0, 0.0, INEXACT));
assert(test_ceil(9.26705696697258574, 10.0, 0.0, INEXACT));
assert(test_ceil(0.661985898099504477, 1.0, 0.0, INEXACT));
assert(test_ceil(-0.40660392238535531, -0.0, 0.0, INEXACT));
assert(test_ceil(0.56175974622072411, 1.0, 0.0, INEXACT));
assert(test_ceil(0.77415229659130369, 1.0, 0.0, INEXACT));
assert(test_ceil(-0.678763702639402444, -0.0, 0.0, INEXACT));

// special
assert(test_ceil(NaN, NaN, 0.0, 0));
assert(test_ceil(Infinity, Infinity, 0.0, 0));
assert(test_ceil(-Infinity, -Infinity, 0.0, 0));
assert(test_ceil(0.0, 0.0, 0.0, 0));
assert(test_ceil(-0.0, -0.0, 0.0, 0));
assert(test_ceil(1.0, 1.0, 0.0, 0));
assert(test_ceil(-1.0, -1.0, 0.0, 0));
assert(test_ceil(0.5, 1.0, 0.0, INEXACT));
assert(test_ceil(-0.5, -0.0, 0.0, INEXACT));
assert(test_ceil(1.0000152587890625, 2.0, 0.0, INEXACT));
assert(test_ceil(-1.0000152587890625, -1.0, 0.0, INEXACT));
assert(test_ceil(0.99999237060546875, 1.0, 0.0, INEXACT));
assert(test_ceil(-0.99999237060546875, -0.0, 0.0, INEXACT));
assert(test_ceil(7.88860905221011805e-31, 1.0, 0.0, INEXACT));
assert(test_ceil(-7.88860905221011805e-31, -0.0, 0.0, INEXACT));
assert(test_ceil(NaN, NaN, 0.0, 0));
assert(test_ceil(Infinity, Infinity, 0.0, 0));
assert(test_ceil(-Infinity, -Infinity, 0.0, 0));
assert(test_ceil(0.0, 0.0, 0.0, 0));
assert(test_ceil(-0.0, -0.0, 0.0, 0));
assert(test_ceil(1.0, 1.0, 0.0, 0));
assert(test_ceil(-1.0, -1.0, 0.0, 0));
assert(test_ceil(0.5, 1.0, 0.0, INEXACT));
assert(test_ceil(-0.5, -0.0, 0.0, INEXACT));
assert(test_ceil(1.0000152587890625, 2.0, 0.0, INEXACT));
assert(test_ceil(-1.0000152587890625, -1.0, 0.0, INEXACT));
assert(test_ceil(0.99999237060546875, 1.0, 0.0, INEXACT));
assert(test_ceil(-0.99999237060546875, -0.0, 0.0, INEXACT));
assert(test_ceil(7.88860905221011805e-31, 1.0, 0.0, INEXACT));
assert(test_ceil(-7.88860905221011805e-31, -0.0, 0.0, INEXACT));
assert(test_ceil(NaN, NaN, 0.0, 0));
assert(test_ceil(Infinity, Infinity, 0.0, 0));
assert(test_ceil(-Infinity, -Infinity, 0.0, 0));
assert(test_ceil(0.0, 0.0, 0.0, 0));
assert(test_ceil(-0.0, -0.0, 0.0, 0));
assert(test_ceil(1.0, 1.0, 0.0, 0));
assert(test_ceil(-1.0, -1.0, 0.0, 0));
assert(test_ceil(0.5, 1.0, 0.0, INEXACT));
assert(test_ceil(-0.5, -0.0, 0.0, INEXACT));
assert(test_ceil(1.0000152587890625, 2.0, 0.0, INEXACT));
assert(test_ceil(-1.0000152587890625, -1.0, 0.0, INEXACT));
assert(test_ceil(0.99999237060546875, 1.0, 0.0, INEXACT));
assert(test_ceil(-0.99999237060546875, -0.0, 0.0, INEXACT));
assert(test_ceil(7.88860905221011805e-31, 1.0, 0.0, INEXACT));
assert(test_ceil(-7.88860905221011805e-31, -0.0, 0.0, INEXACT));

// Mathf.ceil //////////////////////////////////////////////////////////////////////////////////////

function test_ceilf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.ceil(value), expected, error, flags);
}

// sanity
assert(test_ceilf(-8.066848755, -8.0, 0.0, INEXACT));
assert(test_ceilf(4.345239639, 5.0, 0.0, INEXACT));
assert(test_ceilf(-8.381433487, -8.0, 0.0, INEXACT));
assert(test_ceilf(-6.531673431, -6.0, 0.0, INEXACT));
assert(test_ceilf(9.267057419, 10.0, 0.0, INEXACT));
assert(test_ceilf(0.6619858742, 1.0, 0.0, INEXACT));
assert(test_ceilf(-0.4066039324, -0.0, 0.0, INEXACT));
assert(test_ceilf(0.5617597699, 1.0, 0.0, INEXACT));
assert(test_ceilf(0.7741522789, 1.0, 0.0, INEXACT));
assert(test_ceilf(-0.6787636876, -0.0, 0.0, INEXACT));

// special
assert(test_ceilf(NaN, NaN, 0.0, 0));
assert(test_ceilf(Infinity, Infinity, 0.0, 0));
assert(test_ceilf(-Infinity, -Infinity, 0.0, 0));
assert(test_ceilf(0.0, 0.0, 0.0, 0));
assert(test_ceilf(-0.0, -0.0, 0.0, 0));
assert(test_ceilf(1.0, 1.0, 0.0, 0));
assert(test_ceilf(-1.0, -1.0, 0.0, 0));
assert(test_ceilf(0.5, 1.0, 0.0, INEXACT));
assert(test_ceilf(-0.5, -0.0, 0.0, INEXACT));
assert(test_ceilf(1.000015259, 2.0, 0.0, INEXACT));
assert(test_ceilf(-1.000015259, -1.0, 0.0, INEXACT));
assert(test_ceilf(0.9999923706, 1.0, 0.0, INEXACT));
assert(test_ceilf(-0.9999923706, -0.0, 0.0, INEXACT));
assert(test_ceilf(7.888609052e-31, 1.0, 0.0, INEXACT));
assert(test_ceilf(-7.888609052e-31, -0.0, 0.0, INEXACT));
assert(test_ceilf(NaN, NaN, 0.0, 0));
assert(test_ceilf(Infinity, Infinity, 0.0, 0));
assert(test_ceilf(-Infinity, -Infinity, 0.0, 0));
assert(test_ceilf(0.0, 0.0, 0.0, 0));
assert(test_ceilf(-0.0, -0.0, 0.0, 0));
assert(test_ceilf(1.0, 1.0, 0.0, 0));
assert(test_ceilf(-1.0, -1.0, 0.0, 0));
assert(test_ceilf(0.5, 1.0, 0.0, INEXACT));
assert(test_ceilf(-0.5, -0.0, 0.0, INEXACT));
assert(test_ceilf(1.000015259, 2.0, 0.0, INEXACT));
assert(test_ceilf(-1.000015259, -1.0, 0.0, INEXACT));
assert(test_ceilf(0.9999923706, 1.0, 0.0, INEXACT));
assert(test_ceilf(-0.9999923706, -0.0, 0.0, INEXACT));
assert(test_ceilf(7.888609052e-31, 1.0, 0.0, INEXACT));
assert(test_ceilf(-7.888609052e-31, -0.0, 0.0, INEXACT));
assert(test_ceilf(NaN, NaN, 0.0, 0));
assert(test_ceilf(Infinity, Infinity, 0.0, 0));
assert(test_ceilf(-Infinity, -Infinity, 0.0, 0));
assert(test_ceilf(0.0, 0.0, 0.0, 0));
assert(test_ceilf(-0.0, -0.0, 0.0, 0));
assert(test_ceilf(1.0, 1.0, 0.0, 0));
assert(test_ceilf(-1.0, -1.0, 0.0, 0));
assert(test_ceilf(0.5, 1.0, 0.0, INEXACT));
assert(test_ceilf(-0.5, -0.0, 0.0, INEXACT));
assert(test_ceilf(1.000015259, 2.0, 0.0, INEXACT));
assert(test_ceilf(-1.000015259, -1.0, 0.0, INEXACT));
assert(test_ceilf(0.9999923706, 1.0, 0.0, INEXACT));
assert(test_ceilf(-0.9999923706, -0.0, 0.0, INEXACT));
assert(test_ceilf(7.888609052e-31, 1.0, 0.0, INEXACT));
assert(test_ceilf(-7.888609052e-31, -0.0, 0.0, INEXACT));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.cos
////////////////////////////////////////////////////////////////////////////////////////////////////
/* TODO
function test_cos(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.cos(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.cos(value), expected, error, flags));
}

// sanity
assert(test_cos(-8.06684839057968084, -0.211262815998871367, -0.109624691307544708, INEXACT));
assert(test_cos(4.34523984933830487, -0.358956022975789546, -0.107598282396793365, INEXACT));
assert(test_cos(-8.38143342755524934, -0.503333091765515994, -0.0214304737746715546, INEXACT));
assert(test_cos(-6.53167358191348413, 0.969285321250328291, -0.478787630796432495, INEXACT));
assert(test_cos(9.26705696697258574, -0.987587806478862684, 0.488066881895065308, INEXACT));
assert(test_cos(0.661985898099504477, 0.788773086924857592, 0.127086669206619263, INEXACT));
assert(test_cos(-0.40660392238535531, 0.918469239700729356, -0.261207133531570435, INEXACT));
assert(test_cos(0.56175974622072411, 0.846319046741589642, -0.302586168050765991, INEXACT));
assert(test_cos(0.77415229659130369, 0.715013928995238301, -0.0853774622082710266, INEXACT));
assert(test_cos(-0.678763702639402444, 0.778349499475744722, 0.308907508850097656, INEXACT));

// special
assert(test_cos(0.0, 1.0, 0.0, 0));
assert(test_cos(-0.0, 1.0, 0.0, 0));
assert(test_cos(Infinity, NaN, 0.0, INVALID));
assert(test_cos(-Infinity, NaN, 0.0, INVALID));
assert(test_cos(NaN, NaN, 0.0, 0));
assert(test_cos(1.0, 0.540302305868139765, 0.428828656673431396, INEXACT));
assert(test_cos(2.0, -0.416146836547142407, -0.358593970537185669, INEXACT));
assert(test_cos(3.0, -0.989992496600445415, 0.378845155239105225, INEXACT));
assert(test_cos(4.0, -0.65364362086361194, -0.232805609703063965, INEXACT));
assert(test_cos(5.0, 0.283662185463226246, -0.327735781669616699, INEXACT));
assert(test_cos(0.100000000000000006, 0.995004165278025821, 0.495585262775421143, INEXACT));
assert(test_cos(0.200000000000000011, 0.980066577841241626, -0.024076409637928009, INEXACT));
assert(test_cos(0.299999999999999989, 0.955336489125605981, -0.377722293138504028, INEXACT));
assert(test_cos(0.400000000000000022, 0.921060994002885103, 0.258184850215911865, INEXACT));
assert(test_cos(0.5, 0.877582561890372759, 0.383915215730667114, INEXACT));
assert(test_cos(2.36414097466390147e-308, 1.0, 0.0, INEXACT));
assert(test_cos(1.18207048733195073e-308, 1.0, 0.0, INEXACT));
assert(test_cos(4.94065645841246544e-324, 1.0, 0.0, INEXACT));
assert(test_cos(-4.94065645841246544e-324, 1.0, 0.0, INEXACT));
assert(test_cos(-3.14000000000000012, -0.999998731727539503, 0.385551601648330688, INEXACT));
assert(test_cos(8.98846567431157954e+307, -0.826369834614148036, -0.369596511125564575, INEXACT));
assert(test_cos(1.79769313486231571e+308, -0.999987689426559911, 0.234483435750007629, INEXACT));
assert(test_cos(-8.98846567431157954e+307, -0.826369834614148036, -0.369596511125564575, INEXACT));
assert(test_cos(3.14000000000000012, -0.999998731727539503, 0.385551601648330688, INEXACT));
assert(test_cos(3.14150000000000018, -0.999999995707656186, -0.30608975887298584, INEXACT));
assert(test_cos(3.14159200000000016, -0.999999999999786393, 0.154033288359642029, INEXACT));
assert(test_cos(3.14159265000000021, -1.0, -0.0290180742740631104, INEXACT));
assert(test_cos(3.14159265350000005, -1.0, -0.000018155848010792397, INEXACT));
assert(test_cos(3.14159265358899997, -1.0, -1.41699141309459264e-9, INEXACT));
assert(test_cos(3.14159265358979001, -1.0, -2.35086489798518386e-14, INEXACT));
assert(test_cos(3.14159265358979312, -1.0, -3.37715874188331791e-17, INEXACT));
assert(test_cos(1.57000000000000006, 0.000796326710733263345, 0.296815931797027588, INEXACT));
assert(test_cos(1.57079600000000008, 3.26794896538138351e-7, -0.325708955526351929, INEXACT));
assert(test_cos(1.57079632670000002, 9.48965963067801342e-11, -0.272456467151641846, INEXACT));
assert(test_cos(1.5707963267948899, 6.72257048770830682e-15, -0.107476837933063507, INEXACT));
assert(test_cos(1.57079632679489656, 6.12323399573676604e-17, 0.121482297778129578, INEXACT));
assert(test_cos(0.670063519948610575, 0.783782219301615846, -0.0727850273251533508, INEXACT));
assert(test_cos(0.534389018943755345, 0.860579971903951746, -0.484340280294418335, INEXACT));
assert(test_cos(0.439997027548900854, 0.904752929300197573, 0.0297774728387594223, INEXACT));
assert(test_cos(0.990284084468731285, 0.548452336448076783, 0.197652801871299744, INEXACT));
assert(test_cos(0.453814475343389145, 0.898781390226378263, -0.017724866047501564, INEXACT));
assert(test_cos(0.460988881358358915, 0.895613047471305657, 0.36449819803237915, INEXACT));
assert(test_cos(0.928543409795642205, 0.599000979429298419, -0.289941638708114624, INEXACT));
assert(test_cos(0.910909212448835159, 0.613027669277437792, -0.493531346321105957, INEXACT));
assert(test_cos(0.832860065035955555, 0.672762471004635709, -0.366060882806777954, INEXACT));
assert(test_cos(0.95362012522034334, 0.578734618348708429, -0.170898333191871643, INEXACT));
assert(test_cos(0.872659006545769889, 0.642791914425904665, -0.274498611688613892, INEXACT));
assert(test_cos(0.181004475359684475, 0.983663365688489333, 0.00301952729932963848, INEXACT));
assert(test_cos(2.35619449034983885, -0.707106781297912601, -0.482787460088729858, INEXACT));
assert(test_cos(2.35619449037227202, -0.707106781313775246, -0.486605018377304077, INEXACT));
assert(test_cos(2.35619449022511152, -0.707106781209717039, -0.353395223617553711, INEXACT));
assert(test_cos(2.35619449031499961, -0.707106781273277529, -0.419119864702224731, INEXACT));
assert(test_cos(2.35619449036035267, -0.707106781305346987, -0.470620006322860718, INEXACT));
assert(test_cos(2.35619449038261974, -0.70710678132109217, -0.306183516979217529, INEXACT));
assert(test_cos(2.35619449037180306, -0.707106781313443622, -0.305648207664489746, INEXACT));
assert(test_cos(2.35619449039993079, -0.707106781333332934, -0.388455718755722046, INEXACT));
assert(test_cos(2.35619449026019101, -0.707106781234521975, -0.237968519330024719, INEXACT));
assert(test_cos(2.35619449040431528, -0.707106781336433232, -0.327458947896957397, INEXACT));
assert(test_cos(2.09439510247594463, -0.500000000071662898, -0.417113423347473145, INEXACT));
assert(test_cos(2.09439510243324012, -0.500000000034679704, -0.356616497039794922, INEXACT));
assert(test_cos(2.09439510251338845, -0.500000000104090181, -0.225348591804504395, INEXACT));
assert(test_cos(2.09439510254667072, -0.500000000132913458, -0.129822596907615662, INEXACT));
assert(test_cos(2.09439510241389604, -0.500000000017927215, -0.158867642283439636, INEXACT));
assert(test_cos(2.09439510242234039, -0.500000000025240254, -0.266656756401062012, INEXACT));
assert(test_cos(2.09439510249604766, -0.500000000089072638, -0.465207785367965698, INEXACT));
assert(test_cos(2.09439510251733152, -0.500000000107505005, -0.467109948396682739, INEXACT));
assert(test_cos(2.09439510240592419, -0.500000000011023404, -0.246960371732711792, INEXACT));
assert(test_cos(2.09439510242855809, -0.500000000030624947, -0.379944115877151489, INEXACT));
assert(test_cos(8.51321077086405609, -0.612507693998775915, 0.498996615409851074, INEXACT));
assert(test_cos(6.80288612980101703, 0.867967796134545222, 0.497216552495956421, INEXACT));
assert(test_cos(9.17192539308640775, -0.968202744042454433, -0.498275846242904663, INEXACT));
assert(test_cos(8.85469011288857288, -0.841853566381852714, 0.497497975826263428, INEXACT));
assert(test_cos(9.21351081385960846, -0.977765980283850644, -0.499560445547103882, INEXACT));
assert(test_cos(7.78244908154215143, 0.0714715638129333891, 0.498581260442733765, INEXACT));
assert(test_cos(7.5002613322736158, 0.346390176334581135, -0.499621003866195679, INEXACT));
assert(test_cos(9.12173941873158789, -0.954434129754181071, 0.498281508684158325, INEXACT));
assert(test_cos(6.78495402047631568, 0.876733223316664589, -0.498808383941650391, INEXACT));
assert(test_cos(8.77084654266666419, -0.793698411740070497, 0.499968290328979492, INEXACT));
*/

// Mathf.cos ///////////////////////////////////////////////////////////////////////////////////////

function test_cosf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return  check<f32>(NativeMathf.cos(value), expected, error, flags);
}

// sanity
assert(test_cosf(-8.066848754882812500,-0.211263164877891541, 0.4832856953144073490, INEXACT));
assert(test_cosf( 4.345239639282226560,-0.358956217765808105, 0.0425052084028720856, INEXACT));
assert(test_cosf(-8.381433486938476560,-0.503333151340484619,-0.1386195719242095950, INEXACT));
assert(test_cosf(-6.531673431396484380, 0.969285368919372559, 0.1786951720714569090, INEXACT));
assert(test_cosf( 9.267057418823242190,-0.987587869167327881, 0.1389600932598114010, INEXACT));
assert(test_cosf( 0.661985874176025391, 0.788773119449615479, 0.2989593744277954100, INEXACT));
assert(test_cosf(-0.406603932380676270, 0.918469250202178955, 0.2425066530704498290, INEXACT));
assert(test_cosf( 0.561759769916534424, 0.846319019794464111,-0.2403324097394943240, INEXACT));
assert(test_cosf( 0.774152278900146484, 0.715013921260833740,-0.3372635245323181150, INEXACT));
assert(test_cosf(-0.678763687610626221, 0.778349518775939941, 0.1655015349388122560, INEXACT));

// special
assert(test_cosf(      0.0, 1.0, 0.0, 0));
assert(test_cosf(     -0.0, 1.0, 0.0, 0));
assert(test_cosf( Infinity, NaN, 0.0, INVALID));
assert(test_cosf(-Infinity, NaN, 0.0, INVALID));
assert(test_cosf(      NaN, NaN, 0.0, 0));

// ubc
assert(test_cosf( 1.862645149e-09,             1.0, 1.455191523e-11, INEXACT));
assert(test_cosf(-1.862645149e-09,             1.0, 1.455191523e-11, INEXACT));
assert(test_cosf( 1.175494351e-38,             1.0,             0.0, INEXACT));
assert(test_cosf(-1.175494351e-38,             1.0,             0.0, INEXACT));
assert(test_cosf( 1.401298464e-45,             1.0,             0.0, INEXACT));
assert(test_cosf(-1.401298464e-45,             1.0,             0.0, INEXACT));
assert(test_cosf( 2.802596929e-45,             1.0,             0.0, INEXACT));
assert(test_cosf( 1.261168618e-44,             1.0,             0.0, INEXACT));
assert(test_cosf( 2.938735877e-39,             1.0,             0.0, INEXACT));
assert(test_cosf( 5.877471754e-39,             1.0,             0.0, INEXACT));
assert(test_cosf( 1.175494071e-38,             1.0,             0.0, INEXACT));
assert(test_cosf( 1.175494211e-38,             1.0,             0.0, INEXACT));
assert(test_cosf( 1.175494491e-38,             1.0,             0.0, INEXACT));
assert(test_cosf( 1.175494631e-38,             1.0,             0.0, INEXACT));
assert(test_cosf( 2.350988001e-38,             1.0,             0.0, INEXACT));
assert(test_cosf( 2.350988702e-38,             1.0,             0.0, INEXACT));
assert(test_cosf( 2.350989542e-38,             1.0,             0.0, INEXACT));
assert(test_cosf( 4.701977403e-38,             1.0,             0.0, INEXACT));
assert(test_cosf( 7.450580597e-09,             1.0, 2.328306437e-10, INEXACT));
assert(test_cosf( 2.441406250e-04,             1.0, 2.500000000e-01, INEXACT));
assert(test_cosf( 4.882812500e-04, 9.999998808e-01,-3.973643103e-08, INEXACT));
assert(test_cosf( 9.765625000e-04, 9.999995232e-01,-6.357828397e-07, INEXACT));
assert(test_cosf(-2.802596929e-45,             1.0,             0.0, INEXACT));
assert(test_cosf(-1.261168618e-44,             1.0,             0.0, INEXACT));
assert(test_cosf(-2.938735877e-39,             1.0,             0.0, INEXACT));
assert(test_cosf(-5.877471754e-39,             1.0,             0.0, INEXACT));
assert(test_cosf(-1.175494071e-38,             1.0,             0.0, INEXACT));
assert(test_cosf(-1.175494211e-38,             1.0,             0.0, INEXACT));
assert(test_cosf(-1.175494491e-38,             1.0,             0.0, INEXACT));
assert(test_cosf(-1.175494631e-38,             1.0,             0.0, INEXACT));
assert(test_cosf(-2.350988001e-38,             1.0,             0.0, INEXACT));
assert(test_cosf(-2.350988702e-38,             1.0,             0.0, INEXACT));
assert(test_cosf(-2.350989542e-38,             1.0,             0.0, INEXACT));
assert(test_cosf(-4.701977403e-38,             1.0,             0.0, INEXACT));
assert(test_cosf(-7.450580597e-09,             1.0, 2.328306437e-10, INEXACT));
assert(test_cosf(-2.441406250e-04,             1.0, 2.500000000e-01, INEXACT));
assert(test_cosf(-4.882812500e-04, 9.999998808e-01,-3.973643103e-08, INEXACT));
assert(test_cosf(-9.765625000e-04, 9.999995232e-01,-6.357828397e-07, INEXACT));

// large arguments
assert(test_cosf( 255.99993896484,-0.039851747453212740, 0.0, INEXACT));
assert(test_cosf( 5033165.25,      0.847187161445617700, 0.0, INEXACT));
assert(test_cosf( 421657440.0,     0.672892928123474100, 0.0, INEXACT));
assert(test_cosf( 2147483392.0,    0.961078047752380400, 0.0, INEXACT));
assert(test_cosf( 68719474688.0,   0.169419050216674800, 0.0, INEXACT));
assert(test_cosf( 549755797504.0,  0.207359507679939270, 0.0, INEXACT));
assert(test_cosf( f32.MAX_VALUE,   0.853021025657653800, 0.0, INEXACT));
assert(test_cosf(-255.99993896484,-0.039851747453212740, 0.0, INEXACT));
assert(test_cosf(-5033165.25,      0.847187161445617700, 0.0, INEXACT));
assert(test_cosf(-421657440.0,     0.672892928123474100, 0.0, INEXACT));
assert(test_cosf(-2147483392.0,    0.961078047752380400, 0.0, INEXACT));
assert(test_cosf(-68719474688.0,   0.169419050216674800, 0.0, INEXACT));
assert(test_cosf(-549755797504.0,  0.207359507679939270, 0.0, INEXACT));
assert(test_cosf(-f32.MAX_VALUE,   0.853021025657653800, 0.0, INEXACT));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.cosh
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_cosh(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.cosh(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.cosh(value), expected, error, flags));
}
// sanity
assert(test_cosh(-8.06684839057968084, 1593.52099388623287, -0.380988568067550659, INEXACT));
assert(test_cosh(4.34523984933830487, 38.5617492842672931, -0.271227836608886719, INEXACT));
assert(test_cosh(-8.38143342755524934, 2182.63097959589322, 0.0817827582359313965, INEXACT));
assert(test_cosh(-6.53167358191348413, 343.273849250878982, -0.429940402507781982, INEXACT));
assert(test_cosh(9.26705696697258574, 5291.77917000558682, -0.159299582242965698, INEXACT));
assert(test_cosh(0.661985898099504477, 1.22723219573428421, 0.23280741274356842, INEXACT));
assert(test_cosh(-0.40660392238535531, 1.08380854187119691, -0.396091699600219727, INEXACT));
assert(test_cosh(0.56175974622072411, 1.16198035831750768, 0.377483904361724854, INEXACT));
assert(test_cosh(0.77415229659130369, 1.31492368762767065, 0.435870081186294556, INEXACT));
assert(test_cosh(-0.678763702639402444, 1.23934132459345325, 0.102016061544418335, INEXACT));

// special
assert(test_cosh(0.0, 1.0, 0.0, 0));
assert(test_cosh(-0.0, 1.0, 0.0, 0));
assert(test_cosh(Infinity, Infinity, 0.0, 0));
assert(test_cosh(-Infinity, Infinity, 0.0, 0));
assert(test_cosh(NaN, NaN, 0.0, 0));

// Mathf.cosh //////////////////////////////////////////////////////////////////////////////////////

function test_coshf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.cosh(value), expected, error, flags);
}

// sanity
assert(test_coshf(-8.066848755, 1593.521606, 0.2624258101, INEXACT));
assert(test_coshf(4.345239639, 38.56174088, -0.08168885857, INEXACT));
assert(test_coshf(-8.381433487, 2182.631104, -0.02331414446, INEXACT));
assert(test_coshf(-6.531673431, 343.2738037, 0.2008149326, INEXACT));
assert(test_coshf(9.267057419, 5291.781738, 0.3628672361, INEXACT));
assert(test_coshf(0.6619858742, 1.227232218, 0.3277741671, INEXACT));
assert(test_coshf(-0.4066039324, 1.083808541, -0.03984870389, INEXACT));
assert(test_coshf(0.5617597699, 1.161980391, 0.1527447701, INEXACT));
assert(test_coshf(0.7741522789, 1.314923644, -0.2387111485, INEXACT));
assert(test_coshf(-0.6787636876, 1.239341259, -0.4579193294, INEXACT));

// special
assert(test_coshf(0.0, 1.0, 0.0, 0));
assert(test_coshf(-0.0, 1.0, 0.0, 0));
assert(test_coshf(Infinity, Infinity, 0.0, 0));
assert(test_coshf(-Infinity, Infinity, 0.0, 0));
assert(test_coshf(NaN, NaN, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.exp
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_exp(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.exp(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.exp(value), expected, error, flags));
}

// sanity
assert(test_exp(-8.06684839057968084, 0.000313770606816174511, -0.259919732809066772, INEXACT));
assert(test_exp(4.34523984933830487, 77.1105301711214111, -0.0279267579317092896, INEXACT));
assert(test_exp(-8.38143342755524934, 0.000229081338491632304, -0.249743342399597168, INEXACT));
assert(test_exp(-6.53167358191348413, 0.00145656612609315877, -0.481682240962982178, INEXACT));
assert(test_exp(9.26705696697258574, 10583.5582455249933, 0.176967620849609375, INEXACT));
assert(test_exp(0.661985898099504477, 1.9386384525571998, -0.496424645185470581, INEXACT));
assert(test_exp(-0.40660392238535531, 0.665907889283802512, -0.106083184480667114, INEXACT));
assert(test_exp(0.56175974622072411, 1.75375595186263111, -0.391621112823486328, INEXACT));
assert(test_exp(0.77415229659130369, 2.16875288851292458, -0.299612581729888916, INEXACT));
assert(test_exp(-0.678763702639402444, 0.507243708940284255, 0.472617387771606445, INEXACT));

// special
assert(test_exp(0.0, 1.0, 0.0, 0));
assert(test_exp(-0.0, 1.0, 0.0, 0));
assert(test_exp(1.0, 2.71828182845904509, -0.325530737638473511, INEXACT));
assert(test_exp(-1.0, 0.367879441171442334, 0.223896518349647522, INEXACT));
assert(test_exp(Infinity, Infinity, 0.0, 0));
assert(test_exp(-Infinity, 0.0, 0.0, 0));
assert(test_exp(NaN, NaN, 0.0, 0));
assert(test_exp(1.0397214889526365, 2.82842915587641119, 0.188030809164047241, INEXACT));
assert(test_exp(-1.0397214889526365, 0.353553136702178472, 0.252727240324020386, INEXACT));
assert(test_exp(1.03972101211547852, 2.82842780717661224, -0.418413937091827393, INEXACT));
assert(test_exp(1.03972148895263672, 2.82842915587641164, -0.226183772087097168, INEXACT));

// some vectors from crlibm
assert(test_exp( f64.MIN_VALUE, 1.0, 0.0, INEXACT)); // smallest denorm positive
assert(test_exp(-f64.MIN_VALUE, 1.0, 0.0, INEXACT)); // smallest denorm negative

assert(test_exp(
  reinterpret<f64>(0x40862E42FEFA39EF),
  reinterpret<f64>(0x7FEFFFFFFFFFFF2A),
  reinterpret<f64>(0xBFBB0E2640000000),
  INEXACT
));

assert(test_exp(reinterpret<f64>(0x40862E42FEFA39F0), Infinity, 0.0, INEXACT | OVERFLOW));
assert(test_exp(
  reinterpret<f64>(0xC0874910D52D3051),
  f64.MIN_VALUE,
  reinterpret<f64>(0x3FE0000000000000),
  INEXACT | UNDERFLOW
));

assert(test_exp(
  reinterpret<f64>(0xC0874910D52D3052),
  0.0,
  reinterpret<f64>(0xBFE0000000000000),
  INEXACT | UNDERFLOW
));

assert(test_exp(
  reinterpret<f64>(0xC086232BDD7ABCD2),
  reinterpret<f64>(0x001000000000007C),
  reinterpret<f64>(0x3FD0C013E0000000),
  INEXACT
));

assert(test_exp(
  reinterpret<f64>(0xC086232BDD7ABCD3),
  reinterpret<f64>(0x000FFFFFFFFFFE7C),
  reinterpret<f64>(0x000FFFFFFFFFFE7C),
  INEXACT | UNDERFLOW
));

assert(test_exp(
  reinterpret<f64>(0x3FE005AE04256BAB),
  reinterpret<f64>(0x3FFA65D89ABF3D1F),
  reinterpret<f64>(0x3FE0000000000000),
  INEXACT
)); // 5.006933289508784801213892023952e-01

assert(test_exp(
  reinterpret<f64>(0x3FE41C9E095CD545),
  reinterpret<f64>(0x3FFDFF1D425DE879),
  reinterpret<f64>(0x3FE0000000000000),
  INEXACT
)); // 6.284933264602520219810344315192e-01

assert(test_exp(
  reinterpret<f64>(0x3FEACCFBE46B4EF0),
  reinterpret<f64>(0x40027C2E4BC1EE70),
  reinterpret<f64>(0xBFE0000000000000),
  INEXACT
)); // 8.375224553405740124389922129922e-01
assert(test_exp(
  reinterpret<f64>(0x3FEB3738E335EA89),
  reinterpret<f64>(0x4002B9F331610FB0),
  reinterpret<f64>(0x3FE0000000000000),
  INEXACT
)); // 8.504909932810998940411195690103e-01
assert(test_exp(
  reinterpret<f64>(0x3FFA083788425AB6),
  reinterpret<f64>(0x40145ABE6A4C4281),
  reinterpret<f64>(0x3FE0000000000000),
  INEXACT
)); // 1.627006084692465659458093796275e+00
assert(test_exp(
  reinterpret<f64>(0x3FFACA7AE8DA5A7B),
  reinterpret<f64>(0x401557D4ACD7E557),
  reinterpret<f64>(0x3FE0000000000000),
  INEXACT
)); // 1.674433621961411544631914694037e+00

assert(test_exp(
  reinterpret<f64>(0x401AA1B465630FA4),
  reinterpret<f64>(0x4088576653F47E5E),
  reinterpret<f64>(0x3FE0000000000000),
  INEXACT
)); // 6.657914718791207775439033866860e+00

assert(test_exp(
  reinterpret<f64>(0x40260BB5FB993B99),
  reinterpret<f64>(0x40EDE96D34FCCCFE),
  reinterpret<f64>(0x3FE0000000000000),
  INEXACT
)); // 1.102287279363172167734319373267e+01

assert(test_exp(
  reinterpret<f64>(0x4026D2883E37B4D7),
  reinterpret<f64>(0x40F60D75C9585CA5),
  reinterpret<f64>(0x3FE0000000000000),
  INEXACT
)); // 1.141119570188531717747082439018e+01

assert(test_exp(
  reinterpret<f64>(0x402796C771AF1E4B),
  reinterpret<f64>(0x41002D419F8E15F2),
  reinterpret<f64>(0x3FE0000000000000),
  INEXACT
)); // 1.179449038756060552657345397165e+01

assert(test_exp(
  reinterpret<f64>(0x4079CD6B6D99965B),
  reinterpret<f64>(0x65284208270E2E4C),
  reinterpret<f64>(0x3FE0000000000000),
  INEXACT
)); // 4.128387275695328639812942128628e+02

assert(test_exp(
  reinterpret<f64>(0x407FEE02D3D0EC9A),
  reinterpret<f64>(0x6E006CCF59E5ED14),
  reinterpret<f64>(0xBFE0000000000000),
  INEXACT
)); // 5.108756902848341496792272664607e+02

assert(test_exp(
  reinterpret<f64>(0xBD1DF00000000070),
  reinterpret<f64>(0x3FEFFFFFFFFFFF11),
  reinterpret<f64>(0x3FE0000000000000),
  INEXACT
)); // -2.658984143977285255283151746406e-14

assert(test_exp(
  reinterpret<f64>(0xBD1E900000000075),
  reinterpret<f64>(0x3FEFFFFFFFFFFF0B),
  reinterpret<f64>(0xBFE0000000000000),
  INEXACT
)); // -2.714495295208544660026143771835e-14

// Mathf.exp ///////////////////////////////////////////////////////////////////////////////////////

function test_expf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.exp(value), expected, error, flags);
}

// sanity
assert(test_expf(-8.066848755, 0.0003137704916, -0.03019333631, INEXACT));
assert(test_expf(4.345239639, 77.11051178, -0.2875460684, INEXACT));
assert(test_expf(-8.381433487, 0.0002290813281, 0.2237040401, INEXACT));
assert(test_expf(-6.531673431, 0.001456566388, 0.3646970391, INEXACT));
assert(test_expf(9.267057419, 10583.56348, 0.459621042, INEXACT));
assert(test_expf(0.6619858742, 1.938638449, 0.3568260968, INEXACT));
assert(test_expf(-0.4066039324, 0.6659078598, -0.3829499185, INEXACT));
assert(test_expf(0.5617597699, 1.753756046, 0.443554908, INEXACT));
assert(test_expf(0.7741522789, 2.168752909, 0.2456246912, INEXACT));
assert(test_expf(-0.6787636876, 0.5072436929, -0.3974292278, INEXACT));

// special
assert(test_expf(0.0, 1.0, 0.0, 0));
assert(test_expf(-0.0, 1.0, 0.0, 0));
assert(test_expf(1.0, 2.718281746, -0.3462330997, INEXACT));
assert(test_expf(-1.0, 0.3678794503, 0.3070148528, INEXACT));
assert(test_expf(Infinity, Infinity, 0.0, 0));
assert(test_expf(-Infinity, 0.0, 0.0, 0));
assert(test_expf(NaN, NaN, 0.0, 0));
assert(test_expf(88.72283173, 3.402798519e+38, -0.09067153931, INEXACT));
assert(test_expf(88.72283936, Infinity, 0.0, INEXACT | OVERFLOW));
assert(test_expf(-103.9720764, 1.401298464e-45, 0.4999996722, INEXACT | UNDERFLOW));
assert(test_expf(-103.972084, 0.0, -0.4999965131, INEXACT | UNDERFLOW));
assert(test_expf(0.3465735614, 1.414213538, 0.1392242163, INEXACT));
assert(test_expf(0.3465735912, 1.414213538, -0.2143291682, INEXACT));
assert(test_expf(0.346573621, 1.414213657, 0.4321174324, INEXACT));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.expm1
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_expm1(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.expm1(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.expm1(value), expected, error, flags));
}

// sanity
assert(test_expm1(-8.06684839057968084, -0.999686229393183856, -0.276005834341049194, INEXACT));
assert(test_expm1(4.34523984933830487, 76.1105301711214111, -0.0279267579317092896, INEXACT));
assert(test_expm1(-8.38143342755524934, -0.999770918661508357, 0.100524961948394775, INEXACT));
assert(test_expm1(-6.53167358191348413, -0.998543433873906872, -0.274378299713134766, INEXACT));
assert(test_expm1(9.26705696697258574, 10582.5582455249933, 0.176967620849609375, INEXACT));
assert(test_expm1(0.661985898099504477, 0.938638452557199909, 0.00715068448334932327, INEXACT));
assert(test_expm1(-0.40660392238535531, -0.334092110716197488, -0.212166368961334229, INEXACT));
assert(test_expm1(0.56175974622072411, 0.753755951862631224, 0.216757774353027344, INEXACT));
assert(test_expm1(0.77415229659130369, 1.1687528885129248, 0.40077480673789978, INEXACT));
assert(test_expm1(-0.678763702639402444, -0.492756291059715801, -0.0547651983797550201, INEXACT));

// special
assert(test_expm1(0.0, 0.0, 0.0, 0));
assert(test_expm1(-0.0, -0.0, 0.0, 0));
assert(test_expm1(1.0, 1.71828182845904531, 0.348938524723052979, INEXACT));
assert(test_expm1(-1.0, -0.632120558828557666, 0.111948259174823761, INEXACT));
assert(test_expm1(Infinity, Infinity, 0.0, 0));
assert(test_expm1(-Infinity, -1.0, 0.0, 0));
assert(test_expm1(NaN, NaN, 0.0, 0));
assert(test_expm1(2.22507385850720089e-308, 2.22507385850720089e-308, 0.0, INEXACT | UNDERFLOW));
assert(test_expm1(-2.22507385850720089e-308,-2.22507385850720089e-308, 0.0, INEXACT | UNDERFLOW));

// Mathf.expm1 /////////////////////////////////////////////////////////////////////////////////////

function test_expm1f(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.expm1(value), expected, error, flags);
}

// sanity
assert(test_expm1f(-8.066848755, -0.9996862411, -0.1953272372, INEXACT));
assert(test_expm1f(4.345239639, 76.11051178, -0.2875460684, INEXACT));
assert(test_expm1f(-8.381433487, -0.9997709394, -0.3468692005, INEXACT));
assert(test_expm1f(-6.531673431, -0.9985434413, -0.1281939447, INEXACT));
assert(test_expm1f(9.267057419, 10582.56348, 0.459621042, INEXACT));
assert(test_expm1f(0.6619858742, 0.9386383891, -0.2863478065, INEXACT));
assert(test_expm1f(-0.4066039324, -0.3340921104, 0.2341001779, INEXACT));
assert(test_expm1f(0.5617597699, 0.7537559867, -0.1128901765, INEXACT));
assert(test_expm1f(0.7741522789, 1.168752909, 0.4912493825, INEXACT));
assert(test_expm1f(-0.6787636876, -0.4927562773, 0.2051415443, INEXACT));

// special
assert(test_expm1f(0.0, 0.0, 0.0, 0));
assert(test_expm1f(-0.0, -0.0, 0.0, 0));
assert(test_expm1f(1.0, 1.718281865, 0.3075338304, INEXACT));
assert(test_expm1f(-1.0, -0.6321205497, 0.1535074264, INEXACT));
assert(test_expm1f(Infinity, Infinity, 0.0, 0));
assert(test_expm1f(-Infinity, -1.0, 0.0, 0));
assert(test_expm1f(NaN, NaN, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.floor
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_floor(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.floor(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.floor(value), expected, error, flags));
}

// sanity
assert(test_floor(-8.06684839057968084, -9.0, 0.0, INEXACT));
assert(test_floor(4.34523984933830487, 4.0, 0.0, INEXACT));
assert(test_floor(-8.38143342755524934, -9.0, 0.0, INEXACT));
assert(test_floor(-6.53167358191348413, -7.0, 0.0, INEXACT));
assert(test_floor(9.26705696697258574, 9.0, 0.0, INEXACT));
assert(test_floor(0.661985898099504477, 0.0, 0.0, INEXACT));
assert(test_floor(-0.40660392238535531, -1.0, 0.0, INEXACT));
assert(test_floor(0.56175974622072411, 0.0, 0.0, INEXACT));
assert(test_floor(0.77415229659130369, 0.0, 0.0, INEXACT));
assert(test_floor(-0.678763702639402444, -1.0, 0.0, INEXACT));

// special
assert(test_floor(NaN, NaN, 0.0, 0));
assert(test_floor(Infinity, Infinity, 0.0, 0));
assert(test_floor(-Infinity, -Infinity, 0.0, 0));
assert(test_floor(0.0, 0.0, 0.0, 0));
assert(test_floor(-0.0, -0.0, 0.0, 0));
assert(test_floor(1.0, 1.0, 0.0, 0));
assert(test_floor(-1.0, -1.0, 0.0, 0));
assert(test_floor(0.5, 0.0, 0.0, INEXACT));
assert(test_floor(-0.5, -1.0, 0.0, INEXACT));
assert(test_floor(1.0000152587890625, 1.0, 0.0, INEXACT));
assert(test_floor(-1.0000152587890625, -2.0, 0.0, INEXACT));
assert(test_floor(0.99999237060546875, 0.0, 0.0, INEXACT));
assert(test_floor(-0.99999237060546875, -1.0, 0.0, INEXACT));
assert(test_floor(7.88860905221011805e-31, 0.0, 0.0, INEXACT));
assert(test_floor(-7.88860905221011805e-31, -1.0, 0.0, INEXACT));

// Mathf.floor /////////////////////////////////////////////////////////////////////////////////////

function test_floorf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.floor(value), expected, error, flags);
}

// sanity
assert(test_floorf(-8.066848755, -9.0, 0.0, INEXACT));
assert(test_floorf(4.345239639, 4.0, 0.0, INEXACT));
assert(test_floorf(-8.381433487, -9.0, 0.0, INEXACT));
assert(test_floorf(-6.531673431, -7.0, 0.0, INEXACT));
assert(test_floorf(9.267057419, 9.0, 0.0, INEXACT));
assert(test_floorf(0.6619858742, 0.0, 0.0, INEXACT));
assert(test_floorf(-0.4066039324, -1.0, 0.0, INEXACT));
assert(test_floorf(0.5617597699, 0.0, 0.0, INEXACT));
assert(test_floorf(0.7741522789, 0.0, 0.0, INEXACT));
assert(test_floorf(-0.6787636876, -1.0, 0.0, INEXACT));

// special
assert(test_floorf(NaN, NaN, 0.0, 0));
assert(test_floorf(Infinity, Infinity, 0.0, 0));
assert(test_floorf(-Infinity, -Infinity, 0.0, 0));
assert(test_floorf(0.0, 0.0, 0.0, 0));
assert(test_floorf(-0.0, -0.0, 0.0, 0));
assert(test_floorf(1.0, 1.0, 0.0, 0));
assert(test_floorf(-1.0, -1.0, 0.0, 0));
assert(test_floorf(0.5, 0.0, 0.0, INEXACT));
assert(test_floorf(-0.5, -1.0, 0.0, INEXACT));
assert(test_floorf(1.000015259, 1.0, 0.0, INEXACT));
assert(test_floorf(-1.000015259, -2.0, 0.0, INEXACT));
assert(test_floorf(0.9999923706, 0.0, 0.0, INEXACT));
assert(test_floorf(-0.9999923706, -1.0, 0.0, INEXACT));
assert(test_floorf(7.888609052e-31, 0.0, 0.0, INEXACT));
assert(test_floorf(-7.888609052e-31, -1.0, 0.0, INEXACT));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.hypot
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_hypot(value1: f64, value2: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.hypot(value1, value2), expected, error, flags) &&
  (!js || check<f64>(    JSMath.hypot(value1, value2), expected, error, flags));
}

// sanity
assert(test_hypot(-8.06684839057968084, 4.53566256067686879, 9.25452742288464059, -0.311886817216873169, INEXACT));
assert(test_hypot(4.34523984933830487, -8.88799136300345083, 9.89330580832825213, 0.459367334842681885, INEXACT));
assert(test_hypot(-8.38143342755524934, -2.76360733737958819, 8.82530179743213239, -0.170175433158874512, INEXACT));
assert(test_hypot(-6.53167358191348413, 4.56753527684274374, 7.97026588551909221, -0.317678272724151611, INEXACT));
assert(test_hypot(9.26705696697258574, 4.81139208435979615, 10.4416396518245751, -0.269363343715667725, INEXACT));
assert(test_hypot(-6.45004555606023633, 0.662071792337673881, 6.48393605254259331, 0.356188982725143433, INEXACT));
assert(test_hypot(7.85889025304169664, 0.0521545267500622481, 7.85906330958176635, 0.0804465562105178833, INEXACT));
assert(test_hypot(-0.792054511984895959, 7.67640268511753998, 7.7171567648995838, 0.0517808496952056885, INEXACT));
assert(test_hypot(0.615702673197924044, 2.01190257903248026, 2.10400612387431396, -0.0918039008975028992, INEXACT));
assert(test_hypot(-0.558758682360915193, 0.0322398306026380407, 0.559688012906291332, 0.138340771198272705, INEXACT));

// special
assert(test_hypot(3.0, 4.0, 5.0, 0.0, 0));
assert(test_hypot(-3.0, 4.0, 5.0, 0.0, 0));
assert(test_hypot(4.0, 3.0, 5.0, 0.0, 0));
assert(test_hypot(4.0, -3.0, 5.0, 0.0, 0));
assert(test_hypot(-3.0, -4.0, 5.0, 0.0, 0));
assert(test_hypot(1.79769313486231571e+308, 0.0, 1.79769313486231571e+308, 0.0, 0));
assert(test_hypot(1.79769313486231571e+308, -0.0, 1.79769313486231571e+308, 0.0, 0));
assert(test_hypot(4.94065645841246544e-324, 0.0, 4.94065645841246544e-324, 0.0, 0));
assert(test_hypot(4.94065645841246544e-324, -0.0, 4.94065645841246544e-324, 0.0, 0));
assert(test_hypot(Infinity, 1.0, Infinity, 0.0, 0));
assert(test_hypot(1.0, Infinity, Infinity, 0.0, 0));
assert(test_hypot(Infinity, NaN, Infinity, 0.0, 0));
assert(test_hypot(NaN, Infinity, Infinity, 0.0, 0));
assert(test_hypot(-Infinity, 1.0, Infinity, 0.0, 0));
assert(test_hypot(1.0, -Infinity, Infinity, 0.0, 0));
assert(test_hypot(-Infinity, NaN, Infinity, 0.0, 0));
assert(test_hypot(NaN, -Infinity, Infinity, 0.0, 0));
assert(test_hypot(NaN, 1.0, NaN, 0.0, 0));
assert(test_hypot(1.0, NaN, NaN, 0.0, 0));

// Mathf.hypot /////////////////////////////////////////////////////////////////////////////////////

function test_hypotf(value1: f32, value2: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.hypot(value1, value2), expected, error, flags);
}

// sanity
assert(test_hypotf(-8.066848755, 4.535662651, 9.254528046, 0.2735958993, INEXACT));
assert(test_hypotf(4.345239639, -8.887990952, 9.893305779, 0.4530770779, INEXACT));
assert(test_hypotf(-8.381433487, -2.763607264, 8.825302124, 0.3075572848, INEXACT));
assert(test_hypotf(-6.531673431, 4.5675354, 7.970265865, 0.06785223633, INEXACT));
assert(test_hypotf(9.267057419, 4.811392307, 10.4416399, -0.2677630782, INEXACT));
assert(test_hypotf(-6.450045586, 0.6620717645, 6.48393631, 0.4838129282, INEXACT));
assert(test_hypotf(7.858890057, 0.05215452611, 7.859063148, 0.07413065434, INEXACT));
assert(test_hypotf(-0.792054534, 7.676402569, 7.717156887, 0.4940592647, INEXACT));
assert(test_hypotf(0.6157026887, 2.011902571, 2.104006052, -0.287089467, INEXACT));
assert(test_hypotf(-0.5587586761, 0.03223983198, 0.5596880317, 0.4191940725, INEXACT));

// special
assert(test_hypotf(3.0, 4.0, 5.0, 0.0, 0));
assert(test_hypotf(-3.0, 4.0, 5.0, 0.0, 0));
assert(test_hypotf(4.0, 3.0, 5.0, 0.0, 0));
assert(test_hypotf(4.0, -3.0, 5.0, 0.0, 0));
assert(test_hypotf(-3.0, -4.0, 5.0, 0.0, 0));
assert(test_hypotf(3.402823466e+38, 0.0, 3.402823466e+38, 0.0, 0));
assert(test_hypotf(3.402823466e+38, -0.0, 3.402823466e+38, 0.0, 0));
assert(test_hypotf(1.401298464e-45, 0.0, 1.401298464e-45, 0.0, 0));
assert(test_hypotf(1.401298464e-45, -0.0, 1.401298464e-45, 0.0, 0));
assert(test_hypotf(Infinity, 1.0, Infinity, 0.0, 0));
assert(test_hypotf(1.0, Infinity, Infinity, 0.0, 0));
assert(test_hypotf(Infinity, NaN, Infinity, 0.0, 0));
assert(test_hypotf(NaN, Infinity, Infinity, 0.0, 0));
assert(test_hypotf(-Infinity, 1.0, Infinity, 0.0, 0));
assert(test_hypotf(1.0, -Infinity, Infinity, 0.0, 0));
assert(test_hypotf(-Infinity, NaN, Infinity, 0.0, 0));
assert(test_hypotf(NaN, -Infinity, Infinity, 0.0, 0));
assert(test_hypotf(NaN, 1.0, NaN, 0.0, 0));
assert(test_hypotf(1.0, NaN, NaN, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.log
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_log(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.log(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.log(value), expected, error, flags));
}

// sanity
assert(test_log(-8.06684839057968084, NaN, 0.0, INVALID));
assert(test_log(4.34523984933830487, 1.46908095842243225, -0.341253340244293213, INEXACT));
assert(test_log(-8.38143342755524934, NaN, 0.0, INVALID));
assert(test_log(-6.53167358191348413, NaN, 0.0, INVALID));
assert(test_log(9.26705696697258574, 2.22646584987956153, 0.363811403512954712, INEXACT));
assert(test_log(0.661985898099504477, -0.412511025236513673, -0.291087478399276733, INEXACT));
assert(test_log(-0.40660392238535531, NaN, 0.0, INVALID));
assert(test_log(0.56175974622072411, -0.576681018319586181, -0.109831996262073517, INEXACT));
assert(test_log(0.77415229659130369, -0.255986659126386518, -0.0579900443553924561, INEXACT));
assert(test_log(-0.678763702639402444, NaN, 0.0, INVALID));

// special
assert(test_log(0.0, -Infinity, 0.0, DIVBYZERO));
assert(test_log(-0.0, -Infinity, 0.0, DIVBYZERO));
assert(test_log(-7.88860905221011805e-31, NaN, 0.0, INVALID));
assert(test_log(1.0, 0.0, 0.0, 0));
assert(test_log(-1.0, NaN, 0.0, INVALID));
assert(test_log(Infinity, Infinity, 0.0, 0));
assert(test_log(-Infinity, NaN, 0.0, INVALID));
assert(test_log(NaN, NaN, 0.0, 0));

// Mathf.log ///////////////////////////////////////////////////////////////////////////////////////

function test_logf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.log(value), expected, error, flags);
}

// sanity
assert(test_logf(0.0, -Infinity, 0.0, DIVBYZERO));
assert(test_logf(-0.0, -Infinity, 0.0, DIVBYZERO));
assert(test_logf(-7.888609052e-31, NaN, 0.0, INVALID));
assert(test_logf(1.0, 0.0, 0.0, 0));
assert(test_logf(-1.0, NaN, 0.0, INVALID));
assert(test_logf(Infinity, Infinity, 0.0, 0));
assert(test_logf(-Infinity, NaN, 0.0, INVALID));
assert(test_logf(NaN, NaN, 0.0, 0));

// special
assert(test_logf(0.0, -Infinity, 0.0, DIVBYZERO));
assert(test_logf(-0.0, -Infinity, 0.0, DIVBYZERO));
assert(test_logf(-7.888609052e-31, NaN, 0.0, INVALID));
assert(test_logf(1.0, 0.0, 0.0, 0));
assert(test_logf(-1.0, NaN, 0.0, INVALID));
assert(test_logf(Infinity, Infinity, 0.0, 0));
assert(test_logf(-Infinity, NaN, 0.0, INVALID));
assert(test_logf(NaN, NaN, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.log10
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_log10(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.log10(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.log10(value), expected, error, flags));
}

// sanity
assert(test_log10(-8.06684839057968084, NaN, 0.0, INVALID));
assert(test_log10(4.34523984933830487, 0.638013753712002862, -0.2088824063539505, INEXACT));
assert(test_log10(-8.38143342755524934, NaN, 0.0, INVALID));
assert(test_log10(-6.53167358191348413, NaN, 0.0, INVALID));
assert(test_log10(9.26705696697258574, 0.966941832748727359, -0.0612043179571628571, INEXACT));
assert(test_log10(0.661985898099504477, -0.179151261984470928, 0.390908747911453247, INEXACT));
assert(test_log10(-0.40660392238535531, NaN, 0.0, INVALID));
assert(test_log10(0.56175974622072411, -0.250449384074544368, -0.304684162139892578, INEXACT));
assert(test_log10(0.77415229659130369, -0.111173593499438367, -0.315033614635467529, INEXACT));
assert(test_log10(-0.678763702639402444, NaN, 0.0, INVALID));

// special
assert(test_log10(0.0, -Infinity, 0.0, DIVBYZERO));
assert(test_log10(-0.0, -Infinity, 0.0, DIVBYZERO));
assert(test_log10(-7.88860905221011805e-31, NaN, 0.0, INVALID));
assert(test_log10(1.0, 0.0, 0.0, 0));
assert(test_log10(-1.0, NaN, 0.0, INVALID));
assert(test_log10(Infinity, Infinity, 0.0, 0));
assert(test_log10(-Infinity, NaN, 0.0, INVALID));
assert(test_log10(NaN, NaN, 0.0, 0));

// Mathf.log10 /////////////////////////////////////////////////////////////////////////////////////

function test_log10f(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.log10(value), expected, error, flags);
}

// sanity
assert(test_log10f(-8.066848755, NaN, 0.0, INVALID));
assert(test_log10f(4.345239639, 0.6380137205, -0.2047675848, INEXACT));
assert(test_log10f(-8.381433487, NaN, 0.0, INVALID));
assert(test_log10f(-6.531673431, NaN, 0.0, INVALID));
assert(test_log10f(9.267057419, 0.9669418335, -0.3427302539, INEXACT));
assert(test_log10f(0.6619858742, -0.1791512817, -0.2707855403, INEXACT));
assert(test_log10f(-0.4066039324, NaN, 0.0, INVALID));
assert(test_log10f(0.5617597699, -0.2504493594, 0.2126826048, INEXACT));
assert(test_log10f(0.7741522789, -0.1111736, 0.4651509523, INEXACT));
assert(test_log10f(-0.6787636876, NaN, 0.0, INVALID));

// special
assert(test_log10f(0.0, -Infinity, 0.0, DIVBYZERO));
assert(test_log10f(-0.0, -Infinity, 0.0, DIVBYZERO));
assert(test_log10f(-7.888609052e-31, NaN, 0.0, INVALID));
assert(test_log10f(1.0, 0.0, 0.0, 0));
assert(test_log10f(-1.0, NaN, 0.0, INVALID));
assert(test_log10f(Infinity, Infinity, 0.0, 0));
assert(test_log10f(-Infinity, NaN, 0.0, INVALID));
assert(test_log10f(NaN, NaN, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.log1p
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_log1p(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.log1p(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.log1p(value), expected, error, flags));
}

// sanity
assert(test_log1p(-8.06684839057968084, NaN, 0.0, INVALID));
assert(test_log1p(4.34523984933830487, 1.67620641706017337, 0.46188199520111084, INEXACT));
assert(test_log1p(-8.38143342755524934, NaN, 0.0, INVALID));
assert(test_log1p(-6.53167358191348413, NaN, 0.0, INVALID));
assert(test_log1p(9.26705696697258574, 2.32894041685238262, -0.411114901304244995, INEXACT));
assert(test_log1p(0.661985898099504477, 0.508013211499247719, -0.293060451745986938, INEXACT));
assert(test_log1p(-0.40660392238535531, -0.521893181166397935, -0.258257269859313965, INEXACT));
assert(test_log1p(0.56175974622072411, 0.445813227948810176, -0.132748872041702271, INEXACT));
assert(test_log1p(0.77415229659130369, 0.573322729464841419, 0.027165830135345459, INEXACT));
assert(test_log1p(-0.678763702639402444, -1.13557829781285635, 0.27130928635597229, INEXACT));

// special
assert(test_log1p(0.0, 0.0, 0.0, 0));
assert(test_log1p(-0.0, -0.0, 0.0, 0));
assert(test_log1p(-7.88860905221011805e-31, -7.88860905221011805e-31, 1.77635683940025046e-15, INEXACT));
assert(test_log1p(1.0, 0.693147180559945286, -0.208881169557571411, INEXACT));
assert(test_log1p(-1.0, -Infinity, 0.0, DIVBYZERO));
assert(test_log1p(Infinity, Infinity, 0.0, 0));
assert(test_log1p(-Infinity, NaN, 0.0, INVALID));
assert(test_log1p(NaN, NaN, 0.0, 0));

// Mathf.log1p /////////////////////////////////////////////////////////////////////////////////////

function test_log1pf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.log1p(value), expected, error, flags);
}

// sanity
assert(test_log1pf(-8.066848755, NaN, 0.0, INVALID));
assert(test_log1pf(4.345239639, 1.67620635, -0.2301485986, INEXACT));
assert(test_log1pf(-8.381433487, NaN, 0.0, INVALID));
assert(test_log1pf(-6.531673431, NaN, 0.0, INVALID));
assert(test_log1pf(9.267057419, 2.328940392, -0.2907558978, INEXACT));
assert(test_log1pf(0.6619858742, 0.5080131888, -0.1386766881, INEXACT));
assert(test_log1pf(-0.4066039324, -0.5218932033, -0.08804433048, INEXACT));
assert(test_log1pf(0.5617597699, 0.4458132386, -0.1510136873, INEXACT));
assert(test_log1pf(0.7741522789, 0.5733227134, -0.1026453301, INEXACT));
assert(test_log1pf(-0.6787636876, -1.135578275, -0.198794812, INEXACT));

// special
assert(test_log1pf(0.0, 0.0, 0.0, 0));
assert(test_log1pf(-0.0, -0.0, 0.0, 0));
assert(test_log1pf(-7.888609052e-31, -7.888609052e-31, 3.308722450e-24, INEXACT));
assert(test_log1pf(1.0, 0.6931471825, 0.03195479512, INEXACT));
assert(test_log1pf(-1.0, -Infinity, 0.0, DIVBYZERO));
assert(test_log1pf(Infinity, Infinity, 0.0, 0));
assert(test_log1pf(-Infinity, NaN, 0.0, INVALID));
assert(test_log1pf(NaN, NaN, 0.0, 0));
assert(test_log1pf(-1.175494211e-38,-1.175494211e-38, 4.930380658e-32, INEXACT | UNDERFLOW));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.log2
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_log2(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.log2(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.log2(value), expected, error, flags));
}

// sanity
assert(test_log2(-8.06684839057968084, NaN, 0.0, INVALID));
assert(test_log2(4.34523984933830487, 2.11943581338044851, -0.101648777723312378, INEXACT));
assert(test_log2(-8.38143342755524934, NaN, 0.0, INVALID));
assert(test_log2(-6.53167358191348413, NaN, 0.0, INVALID));
assert(test_log2(9.26705696697258574, 3.21211124032987438, -0.157394468784332275, INEXACT));
assert(test_log2(0.661985898099504477, -0.59512761042074025, 0.332148522138595581, INEXACT));
assert(test_log2(-0.40660392238535531, NaN, 0.0, INVALID));
assert(test_log2(0.56175974622072411, -0.831974845304464417, 0.0575554370880126953, INEXACT));
assert(test_log2(0.77415229659130369, -0.369310683655371341, -0.198382794857025146, INEXACT));
assert(test_log2(-0.678763702639402444, NaN, 0.0, INVALID));

// special
assert(test_log2(0.0, -Infinity, 0.0, DIVBYZERO));
assert(test_log2(-0.0, -Infinity, 0.0, DIVBYZERO));
assert(test_log2(-7.88860905221011805e-31, NaN, 0.0, INVALID));
assert(test_log2(1.0, 0.0, 0.0, 0));
assert(test_log2(-1.0, NaN, 0.0, INVALID));
assert(test_log2(Infinity, Infinity, 0.0, 0));
assert(test_log2(-Infinity, NaN, 0.0, INVALID));
assert(test_log2(NaN, NaN, 0.0, 0));

// Mathf.log2 //////////////////////////////////////////////////////////////////////////////////////

function test_log2f(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.log2(value), expected, error, flags);
}

// sanity
assert(test_log2f(-8.066848755, NaN, 0.0, INVALID));
assert(test_log2f(4.345239639, 2.119435787, 0.1827153862, INEXACT));
assert(test_log2f(-8.381433487, NaN, 0.0, INVALID));
assert(test_log2f(-6.531673431, NaN, 0.0, INVALID));
assert(test_log2f(9.267057419, 3.212111235, -0.3188050389, INEXACT));
assert(test_log2f(0.6619858742, -0.5951276422, 0.3423146009, INEXACT));
assert(test_log2f(-0.4066039324, NaN, 0.0, INVALID));
assert(test_log2f(0.5617597699, -0.8319748044, -0.3347360492, INEXACT));
assert(test_log2f(0.7741522789, -0.3693107069, 0.3278401792, INEXACT));
assert(test_log2f(-0.6787636876, NaN, 0.0, INVALID));

// special
assert(test_log2f(0.0, -Infinity, 0.0, DIVBYZERO));
assert(test_log2f(-0.0, -Infinity, 0.0, DIVBYZERO));
assert(test_log2f(-7.888609052e-31, NaN, 0.0, INVALID));
assert(test_log2f(1.0, 0.0, 0.0, 0));
assert(test_log2f(-1.0, NaN, 0.0, INVALID));
assert(test_log2f(Infinity, Infinity, 0.0, 0));
assert(test_log2f(-Infinity, NaN, 0.0, INVALID));
assert(test_log2f(NaN, NaN, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.max
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_max(left: f64, right: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.max(left, right), expected, error, flags) &&
  (!js || check<f64>(    JSMath.max(left, right), expected, error, flags));
}

// sanity
assert(test_max(-8.06684839057968084, 4.53566256067686879, 4.53566256067686879, 0.0, 0));
assert(test_max(4.34523984933830487, -8.88799136300345083, 4.34523984933830487, 0.0, 0));
assert(test_max(-8.38143342755524934, -2.76360733737958819, -2.76360733737958819, 0.0, 0));
assert(test_max(-6.53167358191348413, 4.56753527684274374, 4.56753527684274374, 0.0, 0));
assert(test_max(9.26705696697258574, 4.81139208435979615, 9.26705696697258574, 0.0, 0));
assert(test_max(-6.45004555606023633, 0.662071792337673881, 0.662071792337673881, 0.0, 0));
assert(test_max(7.85889025304169664, 0.0521545267500622481, 7.85889025304169664, 0.0, 0));
assert(test_max(-0.792054511984895959, 7.67640268511753998, 7.67640268511753998, 0.0, 0));
assert(test_max(0.615702673197924044, 2.01190257903248026, 2.01190257903248026, 0.0, 0));
assert(test_max(-0.558758682360915193, 0.0322398306026380407, 0.0322398306026380407, 0.0, 0));

// special
assert(test_max(0.0, 1.0, 1.0, 0.0, 0));
assert(test_max(-0.0, 1.0, 1.0, 0.0, 0));
assert(test_max(0.5, 1.0, 1.0, 0.0, 0));
assert(test_max(-0.5, 1.0, 1.0, 0.0, 0));
assert(test_max(1.0, 1.0, 1.0, 0.0, 0));
assert(test_max(-1.0, 1.0, 1.0, 0.0, 0));
assert(test_max(Infinity, 1.0, Infinity, 0.0, 0));
assert(test_max(-Infinity, 1.0, 1.0, 0.0, 0));
assert(test_max(NaN, 1.0, NaN, 0.0, 0)); // C: 1.0, JS: NaN
assert(test_max(0.0, -1.0, 0.0, 0.0, 0));
assert(test_max(-0.0, -1.0, -0.0, 0.0, 0));
assert(test_max(0.5, -1.0, 0.5, 0.0, 0));
assert(test_max(-0.5, -1.0, -0.5, 0.0, 0));
assert(test_max(1.0, -1.0, 1.0, 0.0, 0));
assert(test_max(-1.0, -1.0, -1.0, 0.0, 0));
assert(test_max(Infinity, -1.0, Infinity, 0.0, 0));
assert(test_max(-Infinity, -1.0, -1.0, 0.0, 0));
assert(test_max(NaN, -1.0, NaN, 0.0, 0)); // C: -1.0, JS: NaN
assert(test_max(0.0, 0.0, 0.0, 0.0, 0));
assert(test_max(0.0, -0.0, 0.0, 0.0, 0));
assert(test_max(0.0, Infinity, Infinity, 0.0, 0));
assert(test_max(0.0, -Infinity, 0.0, 0.0, 0));
assert(test_max(0.0, NaN, NaN, 0.0, 0)); // C: 0.0, JS: NaN
assert(test_max(-0.0, 0.0, 0.0, 0.0, 0));
assert(test_max(-0.0, -0.0, -0.0, 0.0, 0));
assert(test_max(-0.0, Infinity, Infinity, 0.0, 0));
assert(test_max(-0.0, -Infinity, -0.0, 0.0, 0));
assert(test_max(-0.0, NaN, NaN, 0.0, 0)); // C: -0.0, JS: NaN
assert(test_max(1.0, 0.0, 1.0, 0.0, 0));
assert(test_max(-1.0, 0.0, 0.0, 0.0, 0));
assert(test_max(Infinity, 0.0, Infinity, 0.0, 0));
assert(test_max(-Infinity, 0.0, 0.0, 0.0, 0));
assert(test_max(NaN, 0.0, NaN, 0.0, 0)); // C: 0.0, JS: NaN
assert(test_max(-1.0, -0.0, -0.0, 0.0, 0));
assert(test_max(Infinity, -0.0, Infinity, 0.0, 0));
assert(test_max(-Infinity, -0.0, -0.0, 0.0, 0));
assert(test_max(NaN, -0.0, NaN, 0.0, 0)); // C: -0.0, JS: NaN
assert(test_max(Infinity, 2.0, Infinity, 0.0, 0));
assert(test_max(Infinity, -0.5, Infinity, 0.0, 0));
assert(test_max(Infinity, NaN, NaN, 0.0, 0)); // C: Infinity, JS: NaN
assert(test_max(-Infinity, 2.0, 2.0, 0.0, 0));
assert(test_max(-Infinity, -0.5, -0.5, 0.0, 0));
assert(test_max(-Infinity, NaN, NaN, 0.0, 0)); // C: -Infinity, JS: NaN
assert(test_max(NaN, NaN, NaN, 0.0, 0));
assert(test_max(1.0, NaN, NaN, 0.0, 0)); // C: 1.0, JS: NaN
assert(test_max(-1.0, NaN, NaN, 0.0, 0)); // C: -1.0, JS: NaN
assert(test_max(1.0, Infinity, Infinity, 0.0, 0));
assert(test_max(-1.0, Infinity, Infinity, 0.0, 0));
assert(test_max(Infinity, Infinity, Infinity, 0.0, 0));
assert(test_max(-Infinity, Infinity, Infinity, 0.0, 0));
assert(test_max(1.0, -Infinity, 1.0, 0.0, 0));
assert(test_max(-1.0, -Infinity, -1.0, 0.0, 0));
assert(test_max(Infinity, -Infinity, Infinity, 0.0, 0));
assert(test_max(-Infinity, -Infinity, -Infinity, 0.0, 0));
assert(test_max(1.75, 0.5, 1.75, 0.0, 0));
assert(test_max(-1.75, 0.5, 0.5, 0.0, 0));
assert(test_max(1.75, -0.5, 1.75, 0.0, 0));
assert(test_max(-1.75, -0.5, -0.5, 0.0, 0));

// Mathf.max ///////////////////////////////////////////////////////////////////////////////////////

function test_maxf(left: f32, right: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.max(left, right), expected, error, flags);
}

// sanity
assert(test_maxf(-8.066848755, 4.535662651, 4.535662651, 0.0, 0));
assert(test_maxf(4.345239639, -8.887990952, 4.345239639, 0.0, 0));
assert(test_maxf(-8.381433487, -2.763607264, -2.763607264, 0.0, 0));
assert(test_maxf(-6.531673431, 4.5675354, 4.5675354, 0.0, 0));
assert(test_maxf(9.267057419, 4.811392307, 9.267057419, 0.0, 0));
assert(test_maxf(-6.450045586, 0.6620717645, 0.6620717645, 0.0, 0));
assert(test_maxf(7.858890057, 0.05215452611, 7.858890057, 0.0, 0));
assert(test_maxf(-0.792054534, 7.676402569, 7.676402569, 0.0, 0));
assert(test_maxf(0.6157026887, 2.011902571, 2.011902571, 0.0, 0));
assert(test_maxf(-0.5587586761, 0.03223983198, 0.03223983198, 0.0, 0));

// special
assert(test_maxf(0.0, 1.0, 1.0, 0.0, 0));
assert(test_maxf(-0.0, 1.0, 1.0, 0.0, 0));
assert(test_maxf(0.5, 1.0, 1.0, 0.0, 0));
assert(test_maxf(-0.5, 1.0, 1.0, 0.0, 0));
assert(test_maxf(1.0, 1.0, 1.0, 0.0, 0));
assert(test_maxf(-1.0, 1.0, 1.0, 0.0, 0));
assert(test_maxf(Infinity, 1.0, Infinity, 0.0, 0));
assert(test_maxf(-Infinity, 1.0, 1.0, 0.0, 0));
assert(test_maxf(NaN, 1.0, NaN, 0.0, 0)); // C: 1.0, JS: NaN
assert(test_maxf(0.0, -1.0, 0.0, 0.0, 0));
assert(test_maxf(-0.0, -1.0, -0.0, 0.0, 0));
assert(test_maxf(0.5, -1.0, 0.5, 0.0, 0));
assert(test_maxf(-0.5, -1.0, -0.5, 0.0, 0));
assert(test_maxf(1.0, -1.0, 1.0, 0.0, 0));
assert(test_maxf(-1.0, -1.0, -1.0, 0.0, 0));
assert(test_maxf(Infinity, -1.0, Infinity, 0.0, 0));
assert(test_maxf(-Infinity, -1.0, -1.0, 0.0, 0));
assert(test_maxf(NaN, -1.0, NaN, 0.0, 0)); // C: -1.0, JS: NaN
assert(test_maxf(0.0, 0.0, 0.0, 0.0, 0));
assert(test_maxf(0.0, -0.0, 0.0, 0.0, 0));
assert(test_maxf(0.0, Infinity, Infinity, 0.0, 0));
assert(test_maxf(0.0, -Infinity, 0.0, 0.0, 0));
assert(test_maxf(0.0, NaN, NaN, 0.0, 0)); // C: 0.0, JS: NaN
assert(test_maxf(-0.0, 0.0, 0.0, 0.0, 0));
assert(test_maxf(-0.0, -0.0, -0.0, 0.0, 0));
assert(test_maxf(-0.0, Infinity, Infinity, 0.0, 0));
assert(test_maxf(-0.0, -Infinity, -0.0, 0.0, 0));
assert(test_maxf(-0.0, NaN, NaN, 0.0, 0)); // C: -0.0, JS: NaN
assert(test_maxf(1.0, 0.0, 1.0, 0.0, 0));
assert(test_maxf(-1.0, 0.0, 0.0, 0.0, 0));
assert(test_maxf(Infinity, 0.0, Infinity, 0.0, 0));
assert(test_maxf(-Infinity, 0.0, 0.0, 0.0, 0));
assert(test_maxf(NaN, 0.0, NaN, 0.0, 0)); // C: 0.0, JS: NaN
assert(test_maxf(-1.0, -0.0, -0.0, 0.0, 0));
assert(test_maxf(Infinity, -0.0, Infinity, 0.0, 0));
assert(test_maxf(-Infinity, -0.0, -0.0, 0.0, 0));
assert(test_maxf(NaN, -0.0, NaN, 0.0, 0)); // C: -0.0, JS: NaN
assert(test_maxf(Infinity, 2.0, Infinity, 0.0, 0));
assert(test_maxf(Infinity, -0.5, Infinity, 0.0, 0));
assert(test_maxf(Infinity, NaN, NaN, 0.0, 0)); // C: Infinity, JS: NaN
assert(test_maxf(-Infinity, 2.0, 2.0, 0.0, 0));
assert(test_maxf(-Infinity, -0.5, -0.5, 0.0, 0));
assert(test_maxf(-Infinity, NaN, NaN, 0.0, 0)); // C: -Infinity, JS: NaN
assert(test_maxf(NaN, NaN, NaN, 0.0, 0));
assert(test_maxf(1.0, NaN, NaN, 0.0, 0)); // C: 1.0, JS: NaN
assert(test_maxf(-1.0, NaN, NaN, 0.0, 0)); // C: -1.0, JS: NaN
assert(test_maxf(1.0, Infinity, Infinity, 0.0, 0));
assert(test_maxf(-1.0, Infinity, Infinity, 0.0, 0));
assert(test_maxf(Infinity, Infinity, Infinity, 0.0, 0));
assert(test_maxf(-Infinity, Infinity, Infinity, 0.0, 0));
assert(test_maxf(1.0, -Infinity, 1.0, 0.0, 0));
assert(test_maxf(-1.0, -Infinity, -1.0, 0.0, 0));
assert(test_maxf(Infinity, -Infinity, Infinity, 0.0, 0));
assert(test_maxf(-Infinity, -Infinity, -Infinity, 0.0, 0));
assert(test_maxf(1.75, 0.5, 1.75, 0.0, 0));
assert(test_maxf(-1.75, 0.5, 0.5, 0.0, 0));
assert(test_maxf(1.75, -0.5, 1.75, 0.0, 0));
assert(test_maxf(-1.75, -0.5, -0.5, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.min
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_min(left: f64, right: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.min(left, right), expected, error, flags) &&
  (!js || check<f64>(    JSMath.min(left, right), expected, error, flags));
}

// sanity
assert(test_min(-8.06684839057968084, 4.53566256067686879, -8.06684839057968084, 0.0, 0));
assert(test_min(4.34523984933830487, -8.88799136300345083, -8.88799136300345083, 0.0, 0));
assert(test_min(-8.38143342755524934, -2.76360733737958819, -8.38143342755524934, 0.0, 0));
assert(test_min(-6.53167358191348413, 4.56753527684274374, -6.53167358191348413, 0.0, 0));
assert(test_min(9.26705696697258574, 4.81139208435979615, 4.81139208435979615, 0.0, 0));
assert(test_min(-6.45004555606023633, 0.662071792337673881, -6.45004555606023633, 0.0, 0));
assert(test_min(7.85889025304169664, 0.0521545267500622481, 0.0521545267500622481, 0.0, 0));
assert(test_min(-0.792054511984895959, 7.67640268511753998, -0.792054511984895959, 0.0, 0));
assert(test_min(0.615702673197924044, 2.01190257903248026, 0.615702673197924044, 0.0, 0));
assert(test_min(-0.558758682360915193, 0.0322398306026380407, -0.558758682360915193, 0.0, 0));

// special
assert(test_min(0.0, 1.0, 0.0, 0.0, 0));
assert(test_min(-0.0, 1.0, -0.0, 0.0, 0));
assert(test_min(0.5, 1.0, 0.5, 0.0, 0));
assert(test_min(-0.5, 1.0, -0.5, 0.0, 0));
assert(test_min(1.0, 1.0, 1.0, 0.0, 0));
assert(test_min(-1.0, 1.0, -1.0, 0.0, 0));
assert(test_min(Infinity, 1.0, 1.0, 0.0, 0));
assert(test_min(-Infinity, 1.0, -Infinity, 0.0, 0));
assert(test_min(NaN, 1.0, NaN, 0.0, 0)); // C: 1.0, JS: NaN
assert(test_min(0.0, -1.0, -1.0, 0.0, 0));
assert(test_min(-0.0, -1.0, -1.0, 0.0, 0));
assert(test_min(0.5, -1.0, -1.0, 0.0, 0));
assert(test_min(-0.5, -1.0, -1.0, 0.0, 0));
assert(test_min(1.0, -1.0, -1.0, 0.0, 0));
assert(test_min(-1.0, -1.0, -1.0, 0.0, 0));
assert(test_min(Infinity, -1.0, -1.0, 0.0, 0));
assert(test_min(-Infinity, -1.0, -Infinity, 0.0, 0));
assert(test_min(NaN, -1.0, NaN, 0.0, 0)); // C: -1.0, JS: NaN
assert(test_min(0.0, 0.0, 0.0, 0.0, 0));
assert(test_min(0.0, -0.0, -0.0, 0.0, 0));
assert(test_min(0.0, Infinity, 0.0, 0.0, 0));
assert(test_min(0.0, -Infinity, -Infinity, 0.0, 0));
assert(test_min(0.0, NaN, NaN, 0.0, 0)); // C: 0.0, JS: NaN
assert(test_min(-0.0, 0.0, -0.0, 0.0, 0));
assert(test_min(-0.0, -0.0, -0.0, 0.0, 0));
assert(test_min(-0.0, Infinity, -0.0, 0.0, 0));
assert(test_min(-0.0, -Infinity, -Infinity, 0.0, 0));
assert(test_min(-0.0, NaN, NaN, 0.0, 0)); // C: -0.0, JS: NaN
assert(test_min(1.0, 0.0, 0.0, 0.0, 0));
assert(test_min(-1.0, 0.0, -1.0, 0.0, 0));
assert(test_min(Infinity, 0.0, 0.0, 0.0, 0));
assert(test_min(-Infinity, 0.0, -Infinity, 0.0, 0));
assert(test_min(NaN, 0.0, NaN, 0.0, 0)); // C: 0.0, JS: NaN
assert(test_min(-1.0, -0.0, -1.0, 0.0, 0));
assert(test_min(Infinity, -0.0, -0.0, 0.0, 0));
assert(test_min(-Infinity, -0.0, -Infinity, 0.0, 0));
assert(test_min(NaN, -0.0, NaN, 0.0, 0)); // C: -0.0, JS: NaN
assert(test_min(Infinity, 2.0, 2.0, 0.0, 0));
assert(test_min(Infinity, -0.5, -0.5, 0.0, 0));
assert(test_min(Infinity, NaN, NaN, 0.0, 0)); // C: Infinity, JS: NaN
assert(test_min(-Infinity, 2.0, -Infinity, 0.0, 0));
assert(test_min(-Infinity, -0.5, -Infinity, 0.0, 0));
assert(test_min(-Infinity, NaN, NaN, 0.0, 0)); // C: -Infinity, JS: NaN
assert(test_min(NaN, NaN, NaN, 0.0, 0));
assert(test_min(1.0, NaN, NaN, 0.0, 0)); // C: 1.0, JS: NaN
assert(test_min(-1.0, NaN, NaN, 0.0, 0)); // C: -1.0, JS: NaN
assert(test_min(1.0, Infinity, 1.0, 0.0, 0));
assert(test_min(-1.0, Infinity, -1.0, 0.0, 0));
assert(test_min(Infinity, Infinity, Infinity, 0.0, 0));
assert(test_min(-Infinity, Infinity, -Infinity, 0.0, 0));
assert(test_min(1.0, -Infinity, -Infinity, 0.0, 0));
assert(test_min(-1.0, -Infinity, -Infinity, 0.0, 0));
assert(test_min(Infinity, -Infinity, -Infinity, 0.0, 0));
assert(test_min(-Infinity, -Infinity, -Infinity, 0.0, 0));
assert(test_min(1.75, 0.5, 0.5, 0.0, 0));
assert(test_min(-1.75, 0.5, -1.75, 0.0, 0));
assert(test_min(1.75, -0.5, -0.5, 0.0, 0));
assert(test_min(-1.75, -0.5, -1.75, 0.0, 0));

// Mathf.min ///////////////////////////////////////////////////////////////////////////////////////

function test_minf(left: f32, right: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.min(left, right), expected, error, flags);
}

// sanity
assert(test_minf(-8.066848755, 4.535662651, -8.066848755, 0.0, 0));
assert(test_minf(4.345239639, -8.887990952, -8.887990952, 0.0, 0));
assert(test_minf(-8.381433487, -2.763607264, -8.381433487, 0.0, 0));
assert(test_minf(-6.531673431, 4.5675354, -6.531673431, 0.0, 0));
assert(test_minf(9.267057419, 4.811392307, 4.811392307, 0.0, 0));
assert(test_minf(-6.450045586, 0.6620717645, -6.450045586, 0.0, 0));
assert(test_minf(7.858890057, 0.05215452611, 0.05215452611, 0.0, 0));
assert(test_minf(-0.792054534, 7.676402569, -0.792054534, 0.0, 0));
assert(test_minf(0.6157026887, 2.011902571, 0.6157026887, 0.0, 0));
assert(test_minf(-0.5587586761, 0.03223983198, -0.5587586761, 0.0, 0));

// special
assert(test_minf(0.0, 1.0, 0.0, 0.0, 0));
assert(test_minf(-0.0, 1.0, -0.0, 0.0, 0));
assert(test_minf(0.5, 1.0, 0.5, 0.0, 0));
assert(test_minf(-0.5, 1.0, -0.5, 0.0, 0));
assert(test_minf(1.0, 1.0, 1.0, 0.0, 0));
assert(test_minf(-1.0, 1.0, -1.0, 0.0, 0));
assert(test_minf(Infinity, 1.0, 1.0, 0.0, 0));
assert(test_minf(-Infinity, 1.0, -Infinity, 0.0, 0));
assert(test_minf(NaN, 1.0, NaN, 0.0, 0)); // C: 1.0, JS: NaN
assert(test_minf(0.0, -1.0, -1.0, 0.0, 0));
assert(test_minf(-0.0, -1.0, -1.0, 0.0, 0));
assert(test_minf(0.5, -1.0, -1.0, 0.0, 0));
assert(test_minf(-0.5, -1.0, -1.0, 0.0, 0));
assert(test_minf(1.0, -1.0, -1.0, 0.0, 0));
assert(test_minf(-1.0, -1.0, -1.0, 0.0, 0));
assert(test_minf(Infinity, -1.0, -1.0, 0.0, 0));
assert(test_minf(-Infinity, -1.0, -Infinity, 0.0, 0));
assert(test_minf(NaN, -1.0, NaN, 0.0, 0)); // C: -1.0, JS: NaN
assert(test_minf(0.0, 0.0, 0.0, 0.0, 0));
assert(test_minf(0.0, -0.0, -0.0, 0.0, 0));
assert(test_minf(0.0, Infinity, 0.0, 0.0, 0));
assert(test_minf(0.0, -Infinity, -Infinity, 0.0, 0));
assert(test_minf(0.0, NaN, NaN, 0.0, 0)); // C: 0.0, JS: NaN
assert(test_minf(-0.0, 0.0, -0.0, 0.0, 0));
assert(test_minf(-0.0, -0.0, -0.0, 0.0, 0));
assert(test_minf(-0.0, Infinity, -0.0, 0.0, 0));
assert(test_minf(-0.0, -Infinity, -Infinity, 0.0, 0));
assert(test_minf(-0.0, NaN, NaN, 0.0, 0)); // C: -0.0, JS: NaN
assert(test_minf(1.0, 0.0, 0.0, 0.0, 0));
assert(test_minf(-1.0, 0.0, -1.0, 0.0, 0));
assert(test_minf(Infinity, 0.0, 0.0, 0.0, 0));
assert(test_minf(-Infinity, 0.0, -Infinity, 0.0, 0));
assert(test_minf(NaN, 0.0, NaN, 0.0, 0)); // C: 0.0, JS: NaN
assert(test_minf(-1.0, -0.0, -1.0, 0.0, 0));
assert(test_minf(Infinity, -0.0, -0.0, 0.0, 0));
assert(test_minf(-Infinity, -0.0, -Infinity, 0.0, 0));
assert(test_minf(NaN, -0.0, NaN, 0.0, 0)); // C: -0.0, JS: NaN
assert(test_minf(Infinity, 2.0, 2.0, 0.0, 0));
assert(test_minf(Infinity, -0.5, -0.5, 0.0, 0));
assert(test_minf(Infinity, NaN, NaN, 0.0, 0)); // C: Infinity, JS: NaN
assert(test_minf(-Infinity, 2.0, -Infinity, 0.0, 0));
assert(test_minf(-Infinity, -0.5, -Infinity, 0.0, 0));
assert(test_minf(-Infinity, NaN, NaN, 0.0, 0)); // C: -Infinity, JS: NaN
assert(test_minf(NaN, NaN, NaN, 0.0, 0));
assert(test_minf(1.0, NaN, NaN, 0.0, 0)); // C: 1.0, JS: NaN
assert(test_minf(-1.0, NaN, NaN, 0.0, 0)); // C: -1.0, JS: NaN
assert(test_minf(1.0, Infinity, 1.0, 0.0, 0));
assert(test_minf(-1.0, Infinity, -1.0, 0.0, 0));
assert(test_minf(Infinity, Infinity, Infinity, 0.0, 0));
assert(test_minf(-Infinity, Infinity, -Infinity, 0.0, 0));
assert(test_minf(1.0, -Infinity, -Infinity, 0.0, 0));
assert(test_minf(-1.0, -Infinity, -Infinity, 0.0, 0));
assert(test_minf(Infinity, -Infinity, -Infinity, 0.0, 0));
assert(test_minf(-Infinity, -Infinity, -Infinity, 0.0, 0));
assert(test_minf(1.75, 0.5, 0.5, 0.0, 0));
assert(test_minf(-1.75, 0.5, -1.75, 0.0, 0));
assert(test_minf(1.75, -0.5, -0.5, 0.0, 0));
assert(test_minf(-1.75, -0.5, -1.75, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.mod
////////////////////////////////////////////////////////////////////////////////////////////////////

declare function mod(x: f64, y: f64): f64;

function test_mod(left: f64, right: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.mod(left, right), expected, error, flags) &&
  (!js || check<f64>(           mod(left, right), expected, error, flags));
}

// sanity
assert(test_mod(-8.06684839057968084, 4.53566256067686879, -3.53118582990281205, 0.0, 0));
assert(test_mod(4.34523984933830487, -8.88799136300345083, 4.34523984933830487, 0.0, 0));
assert(test_mod(-8.38143342755524934, -2.76360733737958819, -0.0906114154164847641, 0.0, 0));
assert(test_mod(-6.53167358191348413, 4.56753527684274374, -1.96413830507074039, 0.0, 0));
assert(test_mod(9.26705696697258574, 4.81139208435979615, 4.45566488261278959, 0.0, 0));
assert(test_mod(-6.45004555606023633, 0.662071792337673881, -0.491399425021171399, 0.0, 0));
assert(test_mod(7.85889025304169664, 0.0521545267500622481, 0.0357112405323594256, 0.0, 0));
assert(test_mod(-0.792054511984895959, 7.67640268511753998, -0.792054511984895959, 0.0, 0));
assert(test_mod(0.615702673197924044, 2.01190257903248026, 0.615702673197924044, 0.0, 0));
assert(test_mod(-0.558758682360915193, 0.0322398306026380407, -0.0106815621160685006, 0.0, 0));

// special
assert(test_mod(0.0, 1.0, 0.0, 0.0, 0));
assert(test_mod(-0.0, 1.0, -0.0, 0.0, 0));
assert(test_mod(0.5, 1.0, 0.5, 0.0, 0));
assert(test_mod(-0.5, 1.0, -0.5, 0.0, 0));
assert(test_mod(1.0, 1.0, 0.0, 0.0, 0));
assert(test_mod(-1.0, 1.0, -0.0, 0.0, 0));
assert(test_mod(1.5, 1.0, 0.5, 0.0, 0));
assert(test_mod(-1.5, 1.0, -0.5, 0.0, 0));
assert(test_mod(2.0, 1.0, 0.0, 0.0, 0));
assert(test_mod(-2.0, 1.0, -0.0, 0.0, 0));
assert(test_mod(Infinity, 1.0, NaN, 0.0, INVALID));
assert(test_mod(-Infinity, 1.0, NaN, 0.0, INVALID));
assert(test_mod(NaN, 1.0, NaN, 0.0, 0));
assert(test_mod(0.0, -1.0, 0.0, 0.0, 0));
assert(test_mod(-0.0, -1.0, -0.0, 0.0, 0));
assert(test_mod(0.5, -1.0, 0.5, 0.0, 0));
assert(test_mod(-0.5, -1.0, -0.5, 0.0, 0));
assert(test_mod(1.0, -1.0, 0.0, 0.0, 0));
assert(test_mod(-1.0, -1.0, -0.0, 0.0, 0));
assert(test_mod(1.5, -1.0, 0.5, 0.0, 0));
assert(test_mod(-1.5, -1.0, -0.5, 0.0, 0));
assert(test_mod(2.0, -1.0, 0.0, 0.0, 0));
assert(test_mod(-2.0, -1.0, -0.0, 0.0, 0));
assert(test_mod(Infinity, -1.0, NaN, 0.0, INVALID));
assert(test_mod(-Infinity, -1.0, NaN, 0.0, INVALID));
assert(test_mod(NaN, -1.0, NaN, 0.0, 0));
assert(test_mod(0.0, 0.0, NaN, 0.0, INVALID));
assert(test_mod(0.0, -0.0, NaN, 0.0, INVALID));
assert(test_mod(0.0, Infinity, 0.0, 0.0, 0));
assert(test_mod(0.0, -Infinity, 0.0, 0.0, 0));
assert(test_mod(0.0, NaN, NaN, 0.0, 0));
assert(test_mod(-0.0, 0.0, NaN, 0.0, INVALID));
assert(test_mod(-0.0, -0.0, NaN, 0.0, INVALID));
assert(test_mod(-0.0, Infinity, -0.0, 0.0, 0));
assert(test_mod(-0.0, -Infinity, -0.0, 0.0, 0));
assert(test_mod(-0.0, NaN, NaN, 0.0, 0));
assert(test_mod(1.0, 0.0, NaN, 0.0, INVALID));
assert(test_mod(-1.0, 0.0, NaN, 0.0, INVALID));
assert(test_mod(Infinity, 0.0, NaN, 0.0, INVALID));
assert(test_mod(-Infinity, 0.0, NaN, 0.0, INVALID));
assert(test_mod(NaN, 0.0, NaN, 0.0, 0));
assert(test_mod(-1.0, -0.0, NaN, 0.0, INVALID));
assert(test_mod(Infinity, -0.0, NaN, 0.0, INVALID));
assert(test_mod(-Infinity, -0.0, NaN, 0.0, INVALID));
assert(test_mod(NaN, -0.0, NaN, 0.0, 0));
assert(test_mod(Infinity, 2.0, NaN, 0.0, INVALID));
assert(test_mod(Infinity, -0.5, NaN, 0.0, INVALID));
assert(test_mod(Infinity, NaN, NaN, 0.0, 0));
assert(test_mod(-Infinity, 2.0, NaN, 0.0, INVALID));
assert(test_mod(-Infinity, -0.5, NaN, 0.0, INVALID));
assert(test_mod(-Infinity, NaN, NaN, 0.0, 0));
assert(test_mod(NaN, NaN, NaN, 0.0, 0));
assert(test_mod(1.0, NaN, NaN, 0.0, 0));
assert(test_mod(-1.0, NaN, NaN, 0.0, 0));
assert(test_mod(1.0, Infinity, 1.0, 0.0, 0));
assert(test_mod(-1.0, Infinity, -1.0, 0.0, 0));
assert(test_mod(Infinity, Infinity, NaN, 0.0, INVALID));
assert(test_mod(-Infinity, Infinity, NaN, 0.0, INVALID));
assert(test_mod(1.0, -Infinity, 1.0, 0.0, 0));
assert(test_mod(-1.0, -Infinity, -1.0, 0.0, 0));
assert(test_mod(Infinity, -Infinity, NaN, 0.0, INVALID));
assert(test_mod(-Infinity, -Infinity, NaN, 0.0, INVALID));
assert(test_mod(1.75, 0.5, 0.25, 0.0, 0));
assert(test_mod(-1.75, 0.5, -0.25, 0.0, 0));
assert(test_mod(1.75, -0.5, 0.25, 0.0, 0));
assert(test_mod(-1.75, -0.5, -0.25, 0.0, 0));

// Mathf.mod ///////////////////////////////////////////////////////////////////////////////////////

function test_modf(left: f32, right: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.mod(left, right), expected, error, flags);
}

// sanity
assert(test_modf(-8.066848755, 4.535662651, -3.531186104, 0.0, 0));
assert(test_modf(4.345239639, -8.887990952, 4.345239639, 0.0, 0));
assert(test_modf(-8.381433487, -2.763607264, -0.09061169624, 0.0, 0));
assert(test_modf(-6.531673431, 4.5675354, -1.964138031, 0.0, 0));
assert(test_modf(9.267057419, 4.811392307, 4.455665112, 0.0, 0));
assert(test_modf(-6.450045586, 0.6620717645, -0.4913997054, 0.0, 0));
assert(test_modf(7.858890057, 0.05215452611, 0.03571113944, 0.0, 0));
assert(test_modf(-0.792054534, 7.676402569, -0.792054534, 0.0, 0));
assert(test_modf(0.6157026887, 2.011902571, 0.6157026887, 0.0, 0));
assert(test_modf(-0.5587586761, 0.03223983198, -0.01068153232, 0.0, 0));

// special
assert(test_modf(0.0, 1.0, 0.0, 0.0, 0));
assert(test_modf(-0.0, 1.0, -0.0, 0.0, 0));
assert(test_modf(0.5, 1.0, 0.5, 0.0, 0));
assert(test_modf(-0.5, 1.0, -0.5, 0.0, 0));
assert(test_modf(1.0, 1.0, 0.0, 0.0, 0));
assert(test_modf(-1.0, 1.0, -0.0, 0.0, 0));
assert(test_modf(1.5, 1.0, 0.5, 0.0, 0));
assert(test_modf(-1.5, 1.0, -0.5, 0.0, 0));
assert(test_modf(2.0, 1.0, 0.0, 0.0, 0));
assert(test_modf(-2.0, 1.0, -0.0, 0.0, 0));
assert(test_modf(Infinity, 1.0, NaN, 0.0, INVALID));
assert(test_modf(-Infinity, 1.0, NaN, 0.0, INVALID));
assert(test_modf(NaN, 1.0, NaN, 0.0, 0));
assert(test_modf(0.0, -1.0, 0.0, 0.0, 0));
assert(test_modf(-0.0, -1.0, -0.0, 0.0, 0));
assert(test_modf(0.5, -1.0, 0.5, 0.0, 0));
assert(test_modf(-0.5, -1.0, -0.5, 0.0, 0));
assert(test_modf(1.0, -1.0, 0.0, 0.0, 0));
assert(test_modf(-1.0, -1.0, -0.0, 0.0, 0));
assert(test_modf(1.5, -1.0, 0.5, 0.0, 0));
assert(test_modf(-1.5, -1.0, -0.5, 0.0, 0));
assert(test_modf(2.0, -1.0, 0.0, 0.0, 0));
assert(test_modf(-2.0, -1.0, -0.0, 0.0, 0));
assert(test_modf(Infinity, -1.0, NaN, 0.0, INVALID));
assert(test_modf(-Infinity, -1.0, NaN, 0.0, INVALID));
assert(test_modf(NaN, -1.0, NaN, 0.0, 0));
assert(test_modf(0.0, 0.0, NaN, 0.0, INVALID));
assert(test_modf(0.0, -0.0, NaN, 0.0, INVALID));
assert(test_modf(0.0, Infinity, 0.0, 0.0, 0));
assert(test_modf(0.0, -Infinity, 0.0, 0.0, 0));
assert(test_modf(0.0, NaN, NaN, 0.0, 0));
assert(test_modf(-0.0, 0.0, NaN, 0.0, INVALID));
assert(test_modf(-0.0, -0.0, NaN, 0.0, INVALID));
assert(test_modf(-0.0, Infinity, -0.0, 0.0, 0));
assert(test_modf(-0.0, -Infinity, -0.0, 0.0, 0));
assert(test_modf(-0.0, NaN, NaN, 0.0, 0));
assert(test_modf(1.0, 0.0, NaN, 0.0, INVALID));
assert(test_modf(-1.0, 0.0, NaN, 0.0, INVALID));
assert(test_modf(Infinity, 0.0, NaN, 0.0, INVALID));
assert(test_modf(-Infinity, 0.0, NaN, 0.0, INVALID));
assert(test_modf(NaN, 0.0, NaN, 0.0, 0));
assert(test_modf(-1.0, -0.0, NaN, 0.0, INVALID));
assert(test_modf(Infinity, -0.0, NaN, 0.0, INVALID));
assert(test_modf(-Infinity, -0.0, NaN, 0.0, INVALID));
assert(test_modf(NaN, -0.0, NaN, 0.0, 0));
assert(test_modf(Infinity, 2.0, NaN, 0.0, INVALID));
assert(test_modf(Infinity, -0.5, NaN, 0.0, INVALID));
assert(test_modf(Infinity, NaN, NaN, 0.0, 0));
assert(test_modf(-Infinity, 2.0, NaN, 0.0, INVALID));
assert(test_modf(-Infinity, -0.5, NaN, 0.0, INVALID));
assert(test_modf(-Infinity, NaN, NaN, 0.0, 0));
assert(test_modf(NaN, NaN, NaN, 0.0, 0));
assert(test_modf(1.0, NaN, NaN, 0.0, 0));
assert(test_modf(-1.0, NaN, NaN, 0.0, 0));
assert(test_modf(1.0, Infinity, 1.0, 0.0, 0));
assert(test_modf(-1.0, Infinity, -1.0, 0.0, 0));
assert(test_modf(Infinity, Infinity, NaN, 0.0, INVALID));
assert(test_modf(-Infinity, Infinity, NaN, 0.0, INVALID));
assert(test_modf(1.0, -Infinity, 1.0, 0.0, 0));
assert(test_modf(-1.0, -Infinity, -1.0, 0.0, 0));
assert(test_modf(Infinity, -Infinity, NaN, 0.0, INVALID));
assert(test_modf(-Infinity, -Infinity, NaN, 0.0, INVALID));
assert(test_modf(1.75, 0.5, 0.25, 0.0, 0));
assert(test_modf(-1.75, 0.5, -0.25, 0.0, 0));
assert(test_modf(1.75, -0.5, 0.25, 0.0, 0));
assert(test_modf(-1.75, -0.5, -0.25, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.pow
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_pow(left: f64, right: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.pow(left, right), expected, error, flags) &&
  (!js || check<f64>(    JSMath.pow(left, right), expected, error, flags));
}

// sanity
assert(test_pow(-8.06684839057968084, 4.53566256067686879, NaN, 0.0, INVALID));
assert(test_pow(4.34523984933830487, -8.88799136300345083, 0.00000213471188255872853, 0.325016021728515625, INEXACT));
assert(test_pow(-8.38143342755524934, -2.76360733737958819, NaN, 0.0, INVALID));
assert(test_pow(-6.53167358191348413, 4.56753527684274374, NaN, 0.0, INVALID));
assert(test_pow(9.26705696697258574, 4.81139208435979615, 44909.2994151296589, -0.266590803861618042, INEXACT));
assert(test_pow(-6.45004555606023633, 0.662071792337673881, NaN, 0.0, INVALID));
assert(test_pow(7.85889025304169664, 0.0521545267500622481, 1.11351774134586523, -0.371686071157455444, INEXACT));
assert(test_pow(-0.792054511984895959, 7.67640268511753998, NaN, 0.0, INVALID));
assert(test_pow(0.615702673197924044, 2.01190257903248026, 0.376907735213801831, 0.32473301887512207, INEXACT));
assert(test_pow(-0.558758682360915193, 0.0322398306026380407, NaN, 0.0, INVALID));

// special
assert(test_pow(0.0, NaN, NaN, 0.0, 0));
assert(test_pow(0.0, Infinity, 0.0, 0.0, 0));
assert(test_pow(0.0, 3.0, 0.0, 0.0, 0));
assert(test_pow(0.0, 2.0, 0.0, 0.0, 0));
assert(test_pow(0.0, 1.0, 0.0, 0.0, 0));
assert(test_pow(0.0, 0.5, 0.0, 0.0, 0));
assert(test_pow(0.0, 0.0, 1.0, 0.0, 0));
assert(test_pow(0.0, -0.0, 1.0, 0.0, 0));
assert(test_pow(0.0, -0.5, Infinity, 0.0, DIVBYZERO));
assert(test_pow(0.0, -1.0, Infinity, 0.0, DIVBYZERO));
assert(test_pow(0.0, -2.0, Infinity, 0.0, DIVBYZERO));
assert(test_pow(0.0, -3.0, Infinity, 0.0, DIVBYZERO));
assert(test_pow(0.0, -4.0, Infinity, 0.0, DIVBYZERO));
assert(test_pow(0.0, -Infinity, Infinity, 0.0, 0));
assert(test_pow(-0.0, NaN, NaN, 0.0, 0));
assert(test_pow(-0.0, Infinity, 0.0, 0.0, 0));
assert(test_pow(-0.0, 3.0, -0.0, 0.0, 0));
assert(test_pow(-0.0, 2.0, 0.0, 0.0, 0));
assert(test_pow(-0.0, 1.0, -0.0, 0.0, 0));
assert(test_pow(-0.0, 0.5, 0.0, 0.0, 0));
assert(test_pow(-0.0, 0.0, 1.0, 0.0, 0));
assert(test_pow(-0.0, -0.0, 1.0, 0.0, 0));
assert(test_pow(-0.0, -0.5, Infinity, 0.0, DIVBYZERO));
assert(test_pow(-0.0, -1.0, -Infinity, 0.0, DIVBYZERO));
assert(test_pow(-0.0, -2.0, Infinity, 0.0, DIVBYZERO));
assert(test_pow(-0.0, -3.0, -Infinity, 0.0, DIVBYZERO));
assert(test_pow(-0.0, -4.0, Infinity, 0.0, DIVBYZERO));
assert(test_pow(-0.0, -Infinity, Infinity, 0.0, 0));
assert(test_pow(NaN, 0.0, 1.0, 0.0, 0));
assert(test_pow(Infinity, 0.0, 1.0, 0.0, 0));
assert(test_pow(-Infinity, 0.0, 1.0, 0.0, 0));
assert(test_pow(1.0, 0.0, 1.0, 0.0, 0));
assert(test_pow(-1.0, 0.0, 1.0, 0.0, 0));
assert(test_pow(-0.5, 0.0, 1.0, 0.0, 0));
assert(test_pow(NaN, -0.0, 1.0, 0.0, 0));
assert(test_pow(Infinity, -0.0, 1.0, 0.0, 0));
assert(test_pow(-Infinity, -0.0, 1.0, 0.0, 0));
assert(test_pow(1.0, -0.0, 1.0, 0.0, 0));
assert(test_pow(-1.0, -0.0, 1.0, 0.0, 0));
assert(test_pow(-0.5, -0.0, 1.0, 0.0, 0));
assert(test_pow(-1.0, NaN, NaN, 0.0, 0));
assert(test_pow(-1.0, Infinity, NaN, 0.0, 0));  // C: 1.0, JS: NaN
assert(test_pow(-1.0, -Infinity, NaN, 0.0, 0)); // C: 1.0, JS: NaN
assert(test_pow(-1.0, 2.0, 1.0, 0.0, 0));
assert(test_pow(-1.0, -1.0, -1.0, 0.0, 0));
assert(test_pow(-1.0, -2.0, 1.0, 0.0, 0));
assert(test_pow(-1.0, -3.0, -1.0, 0.0, 0));
assert(test_pow(-1.0, 0.5, NaN, 0.0, INVALID));
assert(test_pow(1.0, NaN, NaN, 0.0, 0));        // C: 1.0, JS: NaN
assert(test_pow(1.0, Infinity, NaN, 0.0, 0));   // C: 1.0, JS: NaN
assert(test_pow(1.0, -Infinity, NaN, 0.0, 0));  // C: 1.0, JS: NaN
assert(test_pow(1.0, 3.0, 1.0, 0.0, 0));
assert(test_pow(1.0, 0.5, 1.0, 0.0, 0));
assert(test_pow(1.0, -0.5, 1.0, 0.0, 0));
assert(test_pow(1.0, -3.0, 1.0, 0.0, 0));
assert(test_pow(-0.5, 0.5, NaN, 0.0, INVALID));
assert(test_pow(-0.5, 1.5, NaN, 0.0, INVALID));
assert(test_pow(-0.5, 2.0, 0.25, 0.0, 0));
assert(test_pow(-0.5, 3.0, -0.125, 0.0, 0));
assert(test_pow(-0.5, Infinity, 0.0, 0.0, 0));
assert(test_pow(-0.5, -Infinity, Infinity, 0.0, 0));
assert(test_pow(-0.5, NaN, NaN, 0.0, 0));
assert(test_pow(0.5, Infinity, 0.0, 0.0, 0));
assert(test_pow(0.5, -Infinity, Infinity, 0.0, 0));
assert(test_pow(0.5, NaN, NaN, 0.0, 0));
assert(test_pow(1.5, Infinity, Infinity, 0.0, 0));
assert(test_pow(1.5, -Infinity, 0.0, 0.0, 0));
assert(test_pow(1.5, NaN, NaN, 0.0, 0));
assert(test_pow(Infinity, NaN, NaN, 0.0, 0));
assert(test_pow(Infinity, Infinity, Infinity, 0.0, 0));
assert(test_pow(Infinity, -Infinity, 0.0, 0.0, 0));
assert(test_pow(Infinity, 3.0, Infinity, 0.0, 0));
assert(test_pow(Infinity, 2.0, Infinity, 0.0, 0));
assert(test_pow(Infinity, 1.0, Infinity, 0.0, 0));
assert(test_pow(Infinity, 0.5, Infinity, 0.0, 0));
assert(test_pow(Infinity, -0.5, 0.0, 0.0, 0));
assert(test_pow(Infinity, -1.0, 0.0, 0.0, 0));
assert(test_pow(Infinity, -2.0, 0.0, 0.0, 0));
assert(test_pow(-Infinity, NaN, NaN, 0.0, 0));
assert(test_pow(-Infinity, Infinity, Infinity, 0.0, 0));
assert(test_pow(-Infinity, -Infinity, 0.0, 0.0, 0));
assert(test_pow(-Infinity, 3.0, -Infinity, 0.0, 0));
assert(test_pow(-Infinity, 2.0, Infinity, 0.0, 0));
assert(test_pow(-Infinity, 1.0, -Infinity, 0.0, 0));
assert(test_pow(-Infinity, 0.5, Infinity, 0.0, 0));
assert(test_pow(-Infinity, -0.5, 0.0, 0.0, 0));
assert(test_pow(-Infinity, -1.0, -0.0, 0.0, 0));
assert(test_pow(-Infinity, -2.0, 0.0, 0.0, 0));
assert(test_pow(NaN, 1.0, NaN, 0.0, 0));
assert(test_pow(NaN, -1.0, NaN, 0.0, 0));
assert(test_pow(-2.0, 1.0, -2.0, 0.0, 0));
assert(test_pow(-2.0, -1.0, -0.5, 0.0, 0));

// Mathf.pow ///////////////////////////////////////////////////////////////////////////////////////

function test_powf(left: f32, right: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.pow(left, right), expected, error, flags);
}

// sanity
assert(test_powf(-8.066848755, 4.535662651, NaN, 0.0, INVALID));
assert(test_powf(4.345239639, -8.887990952, 0.000002134714123, 0.1436440796, INEXACT));
assert(test_powf(-8.381433487, -2.763607264, NaN, 0.0, INVALID));
assert(test_powf(-6.531673431, 4.5675354, NaN, 0.0, INVALID));
assert(test_powf(9.267057419, 4.811392307, 44909.33203, -0.05356409028, INEXACT));
assert(test_powf(-6.450045586, 0.6620717645, NaN, 0.0, INVALID));
assert(test_powf(7.858890057, 0.05215452611, 1.113517761, 0.1912208945, INEXACT));
assert(test_powf(-0.792054534, 7.676402569, NaN, 0.0, INVALID));
assert(test_powf(0.6157026887, 2.011902571, 0.3769077659, 0.3371490538, INEXACT));
assert(test_powf(-0.5587586761, 0.03223983198, NaN, 0.0, INVALID));

// special
assert(test_powf(0.0, NaN, NaN, 0.0, 0));
assert(test_powf(0.0, Infinity, 0.0, 0.0, 0));
assert(test_powf(0.0, 3.0, 0.0, 0.0, 0));
assert(test_powf(0.0, 2.0, 0.0, 0.0, 0));
assert(test_powf(0.0, 1.0, 0.0, 0.0, 0));
assert(test_powf(0.0, 0.5, 0.0, 0.0, 0));
assert(test_powf(0.0, 0.0, 1.0, 0.0, 0));
assert(test_powf(0.0, -0.0, 1.0, 0.0, 0));
assert(test_powf(0.0, -0.5, Infinity, 0.0, DIVBYZERO));
assert(test_powf(0.0, -1.0, Infinity, 0.0, DIVBYZERO));
assert(test_powf(0.0, -2.0, Infinity, 0.0, DIVBYZERO));
assert(test_powf(0.0, -3.0, Infinity, 0.0, DIVBYZERO));
assert(test_powf(0.0, -4.0, Infinity, 0.0, DIVBYZERO));
assert(test_powf(0.0, -Infinity, Infinity, 0.0, 0));
assert(test_powf(-0.0, NaN, NaN, 0.0, 0));
assert(test_powf(-0.0, Infinity, 0.0, 0.0, 0));
assert(test_powf(-0.0, 3.0, -0.0, 0.0, 0));
assert(test_powf(-0.0, 2.0, 0.0, 0.0, 0));
assert(test_powf(-0.0, 1.0, -0.0, 0.0, 0));
assert(test_powf(-0.0, 0.5, 0.0, 0.0, 0));
assert(test_powf(-0.0, 0.0, 1.0, 0.0, 0));
assert(test_powf(-0.0, -0.0, 1.0, 0.0, 0));
assert(test_powf(-0.0, -0.5, Infinity, 0.0, DIVBYZERO));
assert(test_powf(-0.0, -1.0, -Infinity, 0.0, DIVBYZERO));
assert(test_powf(-0.0, -2.0, Infinity, 0.0, DIVBYZERO));
assert(test_powf(-0.0, -3.0, -Infinity, 0.0, DIVBYZERO));
assert(test_powf(-0.0, -4.0, Infinity, 0.0, DIVBYZERO));
assert(test_powf(-0.0, -Infinity, Infinity, 0.0, 0));
assert(test_powf(NaN, 0.0, 1.0, 0.0, 0));
assert(test_powf(Infinity, 0.0, 1.0, 0.0, 0));
assert(test_powf(-Infinity, 0.0, 1.0, 0.0, 0));
assert(test_powf(1.0, 0.0, 1.0, 0.0, 0));
assert(test_powf(-1.0, 0.0, 1.0, 0.0, 0));
assert(test_powf(-0.5, 0.0, 1.0, 0.0, 0));
assert(test_powf(NaN, -0.0, 1.0, 0.0, 0));
assert(test_powf(Infinity, -0.0, 1.0, 0.0, 0));
assert(test_powf(-Infinity, -0.0, 1.0, 0.0, 0));
assert(test_powf(1.0, -0.0, 1.0, 0.0, 0));
assert(test_powf(-1.0, -0.0, 1.0, 0.0, 0));
assert(test_powf(-0.5, -0.0, 1.0, 0.0, 0));
assert(test_powf(-1.0, NaN, NaN, 0.0, 0));
assert(test_powf(-1.0, Infinity, NaN, 0.0, 0));  // C: 1.0, JS: NaN
assert(test_powf(-1.0, -Infinity, NaN, 0.0, 0)); // C: 1.0, JS: NaN
assert(test_powf(-1.0, 2.0, 1.0, 0.0, 0));
assert(test_powf(-1.0, -1.0, -1.0, 0.0, 0));
assert(test_powf(-1.0, -2.0, 1.0, 0.0, 0));
assert(test_powf(-1.0, -3.0, -1.0, 0.0, 0));
assert(test_powf(-1.0, 0.5, NaN, 0.0, INVALID));
assert(test_powf(1.0, NaN, NaN, 0.0, 0));        // C: 1.0, JS: NaN
assert(test_powf(1.0, Infinity, NaN, 0.0, 0));   // C: 1.0, JS: NaN
assert(test_powf(1.0, -Infinity, NaN, 0.0, 0));  // C: 1.0, JS: NaN
assert(test_powf(1.0, 3.0, 1.0, 0.0, 0));
assert(test_powf(1.0, 0.5, 1.0, 0.0, 0));
assert(test_powf(1.0, -0.5, 1.0, 0.0, 0));
assert(test_powf(1.0, -3.0, 1.0, 0.0, 0));
assert(test_powf(-0.5, 0.5, NaN, 0.0, INVALID));
assert(test_powf(-0.5, 1.5, NaN, 0.0, INVALID));
assert(test_powf(-0.5, 2.0, 0.25, 0.0, 0));
assert(test_powf(-0.5, 3.0, -0.125, 0.0, 0));
assert(test_powf(-0.5, Infinity, 0.0, 0.0, 0));
assert(test_powf(-0.5, -Infinity, Infinity, 0.0, 0));
assert(test_powf(-0.5, NaN, NaN, 0.0, 0));
assert(test_powf(0.5, Infinity, 0.0, 0.0, 0));
assert(test_powf(0.5, -Infinity, Infinity, 0.0, 0));
assert(test_powf(0.5, NaN, NaN, 0.0, 0));
assert(test_powf(1.5, Infinity, Infinity, 0.0, 0));
assert(test_powf(1.5, -Infinity, 0.0, 0.0, 0));
assert(test_powf(1.5, NaN, NaN, 0.0, 0));
assert(test_powf(Infinity, NaN, NaN, 0.0, 0));
assert(test_powf(Infinity, Infinity, Infinity, 0.0, 0));
assert(test_powf(Infinity, -Infinity, 0.0, 0.0, 0));
assert(test_powf(Infinity, 3.0, Infinity, 0.0, 0));
assert(test_powf(Infinity, 2.0, Infinity, 0.0, 0));
assert(test_powf(Infinity, 1.0, Infinity, 0.0, 0));
assert(test_powf(Infinity, 0.5, Infinity, 0.0, 0));
assert(test_powf(Infinity, -0.5, 0.0, 0.0, 0));
assert(test_powf(Infinity, -1.0, 0.0, 0.0, 0));
assert(test_powf(Infinity, -2.0, 0.0, 0.0, 0));
assert(test_powf(-Infinity, NaN, NaN, 0.0, 0));
assert(test_powf(-Infinity, Infinity, Infinity, 0.0, 0));
assert(test_powf(-Infinity, -Infinity, 0.0, 0.0, 0));
assert(test_powf(-Infinity, 3.0, -Infinity, 0.0, 0));
assert(test_powf(-Infinity, 2.0, Infinity, 0.0, 0));
assert(test_powf(-Infinity, 1.0, -Infinity, 0.0, 0));
assert(test_powf(-Infinity, 0.5, Infinity, 0.0, 0));
assert(test_powf(-Infinity, -0.5, 0.0, 0.0, 0));
assert(test_powf(-Infinity, -1.0, -0.0, 0.0, 0));
assert(test_powf(-Infinity, -2.0, 0.0, 0.0, 0));
assert(test_powf(NaN, 1.0, NaN, 0.0, 0));
assert(test_powf(NaN, -1.0, NaN, 0.0, 0));
assert(test_powf(-2.0, 1.0, -2.0, 0.0, 0));
assert(test_powf(-2.0, -1.0, -0.5, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.random
////////////////////////////////////////////////////////////////////////////////////////////////////

NativeMath.seedRandom(reinterpret<u64>(JSMath.random()));
for (let i = 0; i < 1e6; ++i) {
  let r = NativeMath.random();
  assert(r >= 0.0 && r < 1.0);
}

// Mathf.random ////////////////////////////////////////////////////////////////////////////////////

NativeMathf.seedRandom(reinterpret<u64>(JSMath.random()));
for (let i = 0; i < 1e6; ++i) {
  let r = NativeMathf.random();
  assert(r >= 0.0 && r < 1.0);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.round
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_round(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.round(value), expected, error, flags);
  // (!js || check<f64>(    JSMath.round(value), expected, error, flags));
  // FIXME: JS rounds fractional 0.5 towards +inf (why would one do that?)
}

// sanity
assert(test_round(-8.06684839057968084, -8.0, 0.0, INEXACT));
assert(test_round(4.34523984933830487, 4.0, 0.0, INEXACT));
assert(test_round(-8.38143342755524934, -8.0, 0.0, INEXACT));
assert(test_round(-6.53167358191348413, -7.0, 0.0, INEXACT));
assert(test_round(9.26705696697258574, 9.0, 0.0, INEXACT));
assert(test_round(0.661985898099504477, 1.0, 0.0, INEXACT));
assert(test_round(-0.406603922385355310, -0.0, 0.0, INEXACT));
assert(test_round(0.561759746220724110, 1.0, 0.0, INEXACT));
assert(test_round(0.774152296591303690, 1.0, 0.0, INEXACT));
assert(test_round(-0.678763702639402444, -1.0, 0.0, INEXACT));

// special
assert(test_round(NaN, NaN, 0.0, 0));
assert(test_round(Infinity, Infinity, 0.0, 0));
assert(test_round(-Infinity, -Infinity, 0.0, 0));
assert(test_round(0.0, 0.0, 0.0, 0));
assert(test_round(-0.0, -0.0, 0.0, 0));
assert(test_round(1.0, 1.0, 0.0, 0));
assert(test_round(-1.0, -1.0, 0.0, 0));
assert(test_round(0.5, 1.0, 0.0, INEXACT));
assert(test_round(-0.5, -0.0, 0.0, INEXACT)); // C: -1.0, JS: -0.0
assert(test_round(1.5, 2.0, 0.0, INEXACT));
assert(test_round(-1.5, -1.0, 0.0, INEXACT)); // C: -2.0, JS: -1.0
assert(test_round(1.00001525878906250, 1.0, 0.0, INEXACT));
assert(test_round(-1.00001525878906250, -1.0, 0.0, INEXACT));
assert(test_round(0.999992370605468750, 1.0, 0.0, INEXACT));
assert(test_round(-0.999992370605468750, -1.0, 0.0, INEXACT));
assert(test_round(7.88860905221011805e-31, 0.0, 0.0, INEXACT));
assert(test_round(-7.88860905221011805e-31, -0.0, 0.0, INEXACT));

// Mathf.round /////////////////////////////////////////////////////////////////////////////////////

function test_roundf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return  check<f32>(NativeMathf.round(value), expected, error, flags);
}

// sanity
assert(test_roundf(-8.066848755, -8.0, 0.0, INEXACT));
assert(test_roundf(4.345239639, 4.0, 0.0, INEXACT));
assert(test_roundf(-8.381433487, -8.0, 0.0, INEXACT));
assert(test_roundf(-6.531673431, -7.0, 0.0, INEXACT));
assert(test_roundf(9.267057419, 9.0, 0.0, INEXACT));
assert(test_roundf(0.6619858742, 1.0, 0.0, INEXACT));
assert(test_roundf(-0.4066039324, -0.0, 0.0, INEXACT));
assert(test_roundf(0.5617597699, 1.0, 0.0, INEXACT));
assert(test_roundf(0.7741522789, 1.0, 0.0, INEXACT));
assert(test_roundf(-0.6787636876, -1.0, 0.0, INEXACT));

// special
assert(test_roundf(NaN, NaN, 0.0, 0));
assert(test_roundf(Infinity, Infinity, 0.0, 0));
assert(test_roundf(-Infinity, -Infinity, 0.0, 0));
assert(test_roundf(0.0, 0.0, 0.0, 0));
assert(test_roundf(-0.0, -0.0, 0.0, 0));
assert(test_roundf(1.0, 1.0, 0.0, 0));
assert(test_roundf(-1.0, -1.0, 0.0, 0));
assert(test_roundf(0.5, 1.0, 0.0, INEXACT));
assert(test_roundf(-0.5, -0.0, 0.0, INEXACT)); // C: -1.0, JS: -0.0
assert(test_round(1.5, 2.0, 0.0, INEXACT));
assert(test_round(-1.5, -1.0, 0.0, INEXACT)); // C: -2.0, JS: -1.0
assert(test_roundf(1.000015259, 1.0, 0.0, INEXACT));
assert(test_roundf(-1.000015259, -1.0, 0.0, INEXACT));
assert(test_roundf(0.9999923706, 1.0, 0.0, INEXACT));
assert(test_roundf(-0.9999923706, -1.0, 0.0, INEXACT));
assert(test_roundf(7.888609052e-31, 0.0, 0.0, INEXACT));
assert(test_roundf(-7.888609052e-31, -0.0, 0.0, INEXACT));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.sign
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_sign(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.sign(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.sign(value), expected, error, flags));
}

assert(test_sign(0.0, 0.0, 0.0, 0));
assert(test_sign(-0.0, -0.0, 0.0, 0));
assert(test_sign(1.0, 1.0, 0.0, 0));
assert(test_sign(2.0, 1.0, 0.0, 0));
assert(test_sign(-1.0, -1.0, 0.0, 0));
assert(test_sign(-2.0, -1.0, 0.0, 0));
assert(test_sign(Infinity, 1.0, 0.0, 0));
assert(test_sign(-Infinity, -1.0, 0.0, 0));
assert(test_sign(NaN, NaN, 0.0, 0));

// Mathf.sign //////////////////////////////////////////////////////////////////////////////////////

function test_signf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return  check<f32>(NativeMathf.sign(value), expected, error, flags);
}

assert(test_signf(0.0, 0.0, 0.0, 0));
assert(test_signf(-0.0, -0.0, 0.0, 0));
assert(test_signf(1.0, 1.0, 0.0, 0));
assert(test_signf(2.0, 1.0, 0.0, 0));
assert(test_signf(-1.0, -1.0, 0.0, 0));
assert(test_signf(-2.0, -1.0, 0.0, 0));
assert(test_signf(Infinity, 1.0, 0.0, 0));
assert(test_signf(-Infinity, -1.0, 0.0, 0));
assert(test_signf(NaN, NaN, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.signbit
////////////////////////////////////////////////////////////////////////////////////////////////////

assert(NativeMath.signbit(0.0)  == false);
assert(NativeMath.signbit(-0.0) == true);
assert(NativeMath.signbit(1.0)  == false);
assert(NativeMath.signbit(-1.0) == true);
assert(NativeMath.signbit(+NaN) == false);
assert(NativeMath.signbit(-NaN) == false);
assert(NativeMath.signbit(+Infinity) == false);
assert(NativeMath.signbit(-Infinity) == true);

////////////////////////////////////////////////////////////////////////////////////////////////////
// Mathf.signbit
////////////////////////////////////////////////////////////////////////////////////////////////////

assert(NativeMathf.signbit(0.0)  == false);
assert(NativeMathf.signbit(-0.0) == true);
assert(NativeMathf.signbit(1.0)  == false);
assert(NativeMathf.signbit(-1.0) == true);
assert(NativeMathf.signbit(+NaN) == false);
assert(NativeMathf.signbit(-NaN) == false);
assert(NativeMathf.signbit(+Infinity) == false);
assert(NativeMathf.signbit(-Infinity) == true);

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.rem
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_rem(left: f64, right: f64, expected: f64, error: f64, flags: i32): bool {
  return check<f64>(NativeMath.rem(left, right), expected, error, flags);
}

// sanity
assert(test_rem(-8.06684839057968084, 4.53566256067686879, 1.00447673077405675, 0.0, 0));
assert(test_rem(4.34523984933830487, -8.88799136300345083, 4.34523984933830487, 0.0, 0));
assert(test_rem(-8.38143342755524934, -2.76360733737958819, -0.0906114154164847641, 0.0, 0));
assert(test_rem(-6.53167358191348413, 4.56753527684274374, -1.96413830507074039, 0.0, 0));
assert(test_rem(9.26705696697258574, 4.81139208435979615, -0.355727201747006561, 0.0, 0));
assert(test_rem(-6.45004555606023633, 0.662071792337673881, 0.170672367316502482, 0.0, 0));
assert(test_rem(7.85889025304169664, 0.0521545267500622481, -0.0164432862177028224, 0.0, 0));
assert(test_rem(-0.792054511984895959, 7.67640268511753998, -0.792054511984895959, 0.0, 0));
assert(test_rem(0.615702673197924044, 2.01190257903248026, 0.615702673197924044, 0.0, 0));
assert(test_rem(-0.558758682360915193, 0.0322398306026380407, -0.0106815621160685006, 0.0, 0));

// special
assert(test_rem(0.0, 1.0, 0.0, 0.0, 0));
assert(test_rem(-0.0, 1.0, -0.0, 0.0, 0));
assert(test_rem(0.5, 1.0, 0.5, 0.0, 0));
assert(test_rem(-0.5, 1.0, -0.5, 0.0, 0));
assert(test_rem(1.0, 1.0, 0.0, 0.0, 0));
assert(test_rem(-1.0, 1.0, -0.0, 0.0, 0));
assert(test_rem(1.5, 1.0, -0.5, 0.0, 0));
assert(test_rem(-1.5, 1.0, 0.5, 0.0, 0));
assert(test_rem(2.0, 1.0, 0.0, 0.0, 0));
assert(test_rem(-2.0, 1.0, -0.0, 0.0, 0));
assert(test_rem(Infinity, 1.0, NaN, 0.0, INVALID));
assert(test_rem(-Infinity, 1.0, NaN, 0.0, INVALID));
assert(test_rem(NaN, 1.0, NaN, 0.0, 0));
assert(test_rem(0.0, -1.0, 0.0, 0.0, 0));
assert(test_rem(-0.0, -1.0, -0.0, 0.0, 0));
assert(test_rem(0.5, -1.0, 0.5, 0.0, 0));
assert(test_rem(-0.5, -1.0, -0.5, 0.0, 0));
assert(test_rem(1.0, -1.0, 0.0, 0.0, 0));
assert(test_rem(-1.0, -1.0, -0.0, 0.0, 0));
assert(test_rem(1.5, -1.0, -0.5, 0.0, 0));
assert(test_rem(-1.5, -1.0, 0.5, 0.0, 0));
assert(test_rem(2.0, -1.0, 0.0, 0.0, 0));
assert(test_rem(-2.0, -1.0, -0.0, 0.0, 0));
assert(test_rem(Infinity, -1.0, NaN, 0.0, INVALID));
assert(test_rem(-Infinity, -1.0, NaN, 0.0, INVALID));
assert(test_rem(NaN, -1.0, NaN, 0.0, 0));
assert(test_rem(0.0, 0.0, NaN, 0.0, INVALID));
assert(test_rem(0.0, -0.0, NaN, 0.0, INVALID));
assert(test_rem(0.0, Infinity, 0.0, 0.0, 0));
assert(test_rem(0.0, -Infinity, 0.0, 0.0, 0));
assert(test_rem(0.0, NaN, NaN, 0.0, 0));
assert(test_rem(-0.0, 0.0, NaN, 0.0, INVALID));
assert(test_rem(-0.0, -0.0, NaN, 0.0, INVALID));
assert(test_rem(-0.0, Infinity, -0.0, 0.0, 0));
assert(test_rem(-0.0, -Infinity, -0.0, 0.0, 0));
assert(test_rem(-0.0, NaN, NaN, 0.0, 0));
assert(test_rem(1.0, 0.0, NaN, 0.0, INVALID));
assert(test_rem(-1.0, 0.0, NaN, 0.0, INVALID));
assert(test_rem(Infinity, 0.0, NaN, 0.0, INVALID));
assert(test_rem(-Infinity, 0.0, NaN, 0.0, INVALID));
assert(test_rem(NaN, 0.0, NaN, 0.0, 0));
assert(test_rem(-1.0, -0.0, NaN, 0.0, INVALID));
assert(test_rem(Infinity, -0.0, NaN, 0.0, INVALID));
assert(test_rem(-Infinity, -0.0, NaN, 0.0, INVALID));
assert(test_rem(NaN, -0.0, NaN, 0.0, 0));
assert(test_rem(Infinity, 2.0, NaN, 0.0, INVALID));
assert(test_rem(Infinity, -0.5, NaN, 0.0, INVALID));
assert(test_rem(Infinity, NaN, NaN, 0.0, 0));
assert(test_rem(-Infinity, 2.0, NaN, 0.0, INVALID));
assert(test_rem(-Infinity, -0.5, NaN, 0.0, INVALID));
assert(test_rem(-Infinity, NaN, NaN, 0.0, 0));
assert(test_rem(NaN, NaN, NaN, 0.0, 0));
assert(test_rem(1.0, NaN, NaN, 0.0, 0));
assert(test_rem(-1.0, NaN, NaN, 0.0, 0));
assert(test_rem(1.0, Infinity, 1.0, 0.0, 0));
assert(test_rem(-1.0, Infinity, -1.0, 0.0, 0));
assert(test_rem(Infinity, Infinity, NaN, 0.0, INVALID));
assert(test_rem(-Infinity, Infinity, NaN, 0.0, INVALID));
assert(test_rem(1.0, -Infinity, 1.0, 0.0, 0));
assert(test_rem(-1.0, -Infinity, -1.0, 0.0, 0));
assert(test_rem(Infinity, -Infinity, NaN, 0.0, INVALID));
assert(test_rem(-Infinity, -Infinity, NaN, 0.0, INVALID));
assert(test_rem(1.75, 0.5, -0.25, 0.0, 0));
assert(test_rem(-1.75, 0.5, 0.25, 0.0, 0));
assert(test_rem(1.75, -0.5, -0.25, 0.0, 0));
assert(test_rem(-1.75, -0.5, 0.25, 0.0, 0));
assert(test_rem(7.90505033345994471e-323, Infinity, 7.90505033345994471e-323, 0.0, 0));

// Mathf.rem ///////////////////////////////////////////////////////////////////////////////////////

function test_remf(left: f32, right: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.rem(left, right), expected, error, flags);
}

// sanity
assert(test_remf(-8.066848755, 4.535662651, 1.004476547, 0.0, 0));
assert(test_remf(4.345239639, -8.887990952, 4.345239639, 0.0, 0));
assert(test_remf(-8.381433487, -2.763607264, -0.09061169624, 0.0, 0));
assert(test_remf(-6.531673431, 4.5675354, -1.964138031, 0.0, 0));
assert(test_remf(9.267057419, 4.811392307, -0.3557271957, 0.0, 0));
assert(test_remf(-6.450045586, 0.6620717645, 0.1706720591, 0.0, 0));
assert(test_remf(7.858890057, 0.05215452611, -0.01644338667, 0.0, 0));
assert(test_remf(-0.792054534, 7.676402569, -0.792054534, 0.0, 0));
assert(test_remf(0.6157026887, 2.011902571, 0.6157026887, 0.0, 0));
assert(test_remf(-0.5587586761, 0.03223983198, -0.01068153232, 0.0, 0));

// special
assert(test_remf(0.0, 1.0, 0.0, 0.0, 0));
assert(test_remf(-0.0, 1.0, -0.0, 0.0, 0));
assert(test_remf(0.5, 1.0, 0.5, 0.0, 0));
assert(test_remf(-0.5, 1.0, -0.5, 0.0, 0));
assert(test_remf(1.0, 1.0, 0.0, 0.0, 0));
assert(test_remf(-1.0, 1.0, -0.0, 0.0, 0));
assert(test_remf(1.5, 1.0, -0.5, 0.0, 0));
assert(test_remf(-1.5, 1.0, 0.5, 0.0, 0));
assert(test_remf(2.0, 1.0, 0.0, 0.0, 0));
assert(test_remf(-2.0, 1.0, -0.0, 0.0, 0));
assert(test_remf(Infinity, 1.0, NaN, 0.0, INVALID));
assert(test_remf(-Infinity, 1.0, NaN, 0.0, INVALID));
assert(test_remf(NaN, 1.0, NaN, 0.0, 0));
assert(test_remf(0.0, -1.0, 0.0, 0.0, 0));
assert(test_remf(-0.0, -1.0, -0.0, 0.0, 0));
assert(test_remf(0.5, -1.0, 0.5, 0.0, 0));
assert(test_remf(-0.5, -1.0, -0.5, 0.0, 0));
assert(test_remf(1.0, -1.0, 0.0, 0.0, 0));
assert(test_remf(-1.0, -1.0, -0.0, 0.0, 0));
assert(test_remf(1.5, -1.0, -0.5, 0.0, 0));
assert(test_remf(-1.5, -1.0, 0.5, 0.0, 0));
assert(test_remf(2.0, -1.0, 0.0, 0.0, 0));
assert(test_remf(-2.0, -1.0, -0.0, 0.0, 0));
assert(test_remf(Infinity, -1.0, NaN, 0.0, INVALID));
assert(test_remf(-Infinity, -1.0, NaN, 0.0, INVALID));
assert(test_remf(NaN, -1.0, NaN, 0.0, 0));
assert(test_remf(0.0, 0.0, NaN, 0.0, INVALID));
assert(test_remf(0.0, -0.0, NaN, 0.0, INVALID));
assert(test_remf(0.0, Infinity, 0.0, 0.0, 0));
assert(test_remf(0.0, -Infinity, 0.0, 0.0, 0));
assert(test_remf(0.0, NaN, NaN, 0.0, 0));
assert(test_remf(-0.0, 0.0, NaN, 0.0, INVALID));
assert(test_remf(-0.0, -0.0, NaN, 0.0, INVALID));
assert(test_remf(-0.0, Infinity, -0.0, 0.0, 0));
assert(test_remf(-0.0, -Infinity, -0.0, 0.0, 0));
assert(test_remf(-0.0, NaN, NaN, 0.0, 0));
assert(test_remf(1.0, 0.0, NaN, 0.0, INVALID));
assert(test_remf(-1.0, 0.0, NaN, 0.0, INVALID));
assert(test_remf(Infinity, 0.0, NaN, 0.0, INVALID));
assert(test_remf(-Infinity, 0.0, NaN, 0.0, INVALID));
assert(test_remf(NaN, 0.0, NaN, 0.0, 0));
assert(test_remf(-1.0, -0.0, NaN, 0.0, INVALID));
assert(test_remf(Infinity, -0.0, NaN, 0.0, INVALID));
assert(test_remf(-Infinity, -0.0, NaN, 0.0, INVALID));
assert(test_remf(NaN, -0.0, NaN, 0.0, 0));
assert(test_remf(Infinity, 2.0, NaN, 0.0, INVALID));
assert(test_remf(Infinity, -0.5, NaN, 0.0, INVALID));
assert(test_remf(Infinity, NaN, NaN, 0.0, 0));
assert(test_remf(-Infinity, 2.0, NaN, 0.0, INVALID));
assert(test_remf(-Infinity, -0.5, NaN, 0.0, INVALID));
assert(test_remf(-Infinity, NaN, NaN, 0.0, 0));
assert(test_remf(NaN, NaN, NaN, 0.0, 0));
assert(test_remf(1.0, NaN, NaN, 0.0, 0));
assert(test_remf(-1.0, NaN, NaN, 0.0, 0));
assert(test_remf(1.0, Infinity, 1.0, 0.0, 0));
assert(test_remf(-1.0, Infinity, -1.0, 0.0, 0));
assert(test_remf(Infinity, Infinity, NaN, 0.0, INVALID));
assert(test_remf(-Infinity, Infinity, NaN, 0.0, INVALID));
assert(test_remf(1.0, -Infinity, 1.0, 0.0, 0));
assert(test_remf(-1.0, -Infinity, -1.0, 0.0, 0));
assert(test_remf(Infinity, -Infinity, NaN, 0.0, INVALID));
assert(test_remf(-Infinity, -Infinity, NaN, 0.0, INVALID));
assert(test_remf(1.75, 0.5, -0.25, 0.0, 0));
assert(test_remf(-1.75, 0.5, 0.25, 0.0, 0));
assert(test_remf(1.75, -0.5, -0.25, 0.0, 0));
assert(test_remf(-1.75, -0.5, 0.25, 0.0, 0));
assert(test_remf(5.877471754e-39, Infinity, 5.877471754e-39, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.sin
////////////////////////////////////////////////////////////////////////////////////////////////////
/* TODO
function test_sin(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.sin(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.sin(value), expected, error, flags));
}

// sanity
assert(test_sin(-8.06684839057968084, -0.977429292878122746, -0.145649120211601257, INEXACT));
assert(test_sin(4.34523984933830487, -0.933354473696571763, -0.0881374701857566833, INEXACT));
assert(test_sin(-8.38143342755524934, -0.864092471170630372, -0.117438830435276031, INEXACT));
assert(test_sin(-6.53167358191348413, -0.245938947726153739, -0.126978516578674316, INEXACT));
assert(test_sin(9.26705696697258574, 0.15706789772028007, -0.0295501593500375748, INEXACT));
assert(test_sin(0.661985898099504477, 0.614684486011344733, -0.0997673794627189636, INEXACT));
assert(test_sin(-0.40660392238535531, -0.395492421828236962, -0.366877496242523193, INEXACT));
assert(test_sin(0.56175974622072411, 0.532676328667237575, -0.355040758848190308, INEXACT));
assert(test_sin(0.77415229659130369, 0.699110206864977934, -0.427672415971755981, INEXACT));
assert(test_sin(-0.678763702639402444, -0.627831232630121527, -0.382811546325683594, INEXACT));

// special
assert(test_sin(0.0, 0.0, 0.0, 0));
assert(test_sin(-0.0, -0.0, 0.0, 0));
assert(test_sin(Infinity, NaN, 0.0, INVALID));
assert(test_sin(-Infinity, NaN, 0.0, INVALID));
assert(test_sin(NaN, NaN, 0.0, 0));
*/

// Mathf.sin ///////////////////////////////////////////////////////////////////////////////////////

function test_sinf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return  check<f32>(NativeMathf.sin(value), expected, error, flags);
}

// sanity
assert(test_sinf(-8.0668487550,-0.9774292111, 0.080105729400, INEXACT));
assert(test_sinf( 4.3452396390,-0.9333543777, 0.344756275400, INEXACT));
assert(test_sinf(-8.3814334870,-0.8640924692,-0.468659907600, INEXACT));
assert(test_sinf(-6.5316734310,-0.2459388077,-0.395517766500, INEXACT));
assert(test_sinf( 9.2670574190, 0.1570674479,-0.240068092900, INEXACT));
assert(test_sinf( 0.6619858742, 0.6146844625,-0.077071942390, INEXACT));
assert(test_sinf(-0.4066039324,-0.3954924345,-0.117206171200, INEXACT));
assert(test_sinf( 0.5617597699, 0.5326763391,-0.160591140400, INEXACT));
assert(test_sinf( 0.7741522789, 0.6991102099, 0.263843685400, INEXACT));
assert(test_sinf(-0.6787636876,-0.6278312206, 0.005127954297, INEXACT));

// special
assert(test_sinf(      0.0, 0.0, 0.0, 0));
assert(test_sinf(     -0.0,-0.0, 0.0, 0));
assert(test_sinf( Infinity, NaN, 0.0, INVALID));
assert(test_sinf(-Infinity, NaN, 0.0, INVALID));
assert(test_sinf(      NaN, NaN, 0.0, 0));

// ubc
assert(test_sinf( 1.862645149e-09, 1.862645149e-09, 4.850638554e-12, INEXACT));
assert(test_sinf(-1.862645149e-09,-1.862645149e-09,-4.850638554e-12, INEXACT));
assert(test_sinf( 1.175494351e-38, 1.175494351e-38,             0.0, INEXACT));
assert(test_sinf(-1.175494351e-38,-1.175494351e-38,             0.0, INEXACT));
assert(test_sinf( 1.401298464e-45, 1.401298464e-45,             0.0, INEXACT | UNDERFLOW));
assert(test_sinf(-1.401298464e-45,-1.401298464e-45,             0.0, INEXACT | UNDERFLOW));
assert(test_sinf( 1.175494491e-38, 1.175494491e-38,             0.0, INEXACT));
assert(test_sinf( 1.175494631e-38, 1.175494631e-38,             0.0, INEXACT));
assert(test_sinf( 2.350988001e-38, 2.350988001e-38,             0.0, INEXACT));
assert(test_sinf( 2.350988702e-38, 2.350988702e-38,             0.0, INEXACT));
assert(test_sinf( 2.350989542e-38, 2.350989542e-38,             0.0, INEXACT));
assert(test_sinf( 4.701977403e-38, 4.701977403e-38,             0.0, INEXACT));
assert(test_sinf( 1.117587090e-08, 1.117587090e-08, 2.619344741e-10, INEXACT));
assert(test_sinf( 1.490116119e-08, 1.490116119e-08, 3.104408675e-10, INEXACT));
assert(test_sinf( 2.441406250e-04, 2.441406250e-04, 8.333333582e-02, INEXACT));
assert(test_sinf( 3.662109375e-04, 3.662109375e-04, 2.812500000e-01, INEXACT));
assert(test_sinf(-1.175494491e-38,-1.175494491e-38,             0.0, INEXACT));
assert(test_sinf(-1.175494631e-38,-1.175494631e-38,             0.0, INEXACT));
assert(test_sinf(-2.350988001e-38,-2.350988001e-38,             0.0, INEXACT));
assert(test_sinf(-2.350988702e-38,-2.350988702e-38,             0.0, INEXACT));
assert(test_sinf(-2.350989542e-38,-2.350989542e-38,             0.0, INEXACT));
assert(test_sinf(-4.701977403e-38,-4.701977403e-38,             0.0, INEXACT));
assert(test_sinf(-1.117587090e-08,-1.117587090e-08,-2.619344741e-10, INEXACT));
assert(test_sinf(-1.490116119e-08,-1.490116119e-08,-3.104408675e-10, INEXACT));
assert(test_sinf(-2.441406250e-04,-2.441406250e-04,-8.333333582e-02, INEXACT));
assert(test_sinf(-3.662109375e-04,-3.662109375e-04,-2.812500000e-01, INEXACT));
assert(test_sinf( 2.802596929e-45, 2.802596929e-45,             0.0, INEXACT | UNDERFLOW));
assert(test_sinf( 1.261168618e-44, 1.261168618e-44,             0.0, INEXACT | UNDERFLOW));
assert(test_sinf( 2.938735877e-39, 2.938735877e-39,             0.0, INEXACT | UNDERFLOW));
assert(test_sinf( 5.877471754e-39, 5.877471754e-39,             0.0, INEXACT | UNDERFLOW));
assert(test_sinf( 1.175494071e-38, 1.175494071e-38,             0.0, INEXACT | UNDERFLOW));
assert(test_sinf( 1.175494211e-38, 1.175494211e-38,             0.0, INEXACT | UNDERFLOW));
assert(test_sinf(-2.802596929e-45,-2.802596929e-45,             0.0, INEXACT | UNDERFLOW));
assert(test_sinf(-1.261168618e-44,-1.261168618e-44,             0.0, INEXACT | UNDERFLOW));
assert(test_sinf(-2.938735877e-39,-2.938735877e-39,             0.0, INEXACT | UNDERFLOW));
assert(test_sinf(-5.877471754e-39,-5.877471754e-39,             0.0, INEXACT | UNDERFLOW));
assert(test_sinf(-1.175494071e-38,-1.175494071e-38,             0.0, INEXACT | UNDERFLOW));
assert(test_sinf(-1.175494211e-38,-1.175494211e-38,             0.0, INEXACT | UNDERFLOW));

// large arguments
assert(test_sinf( 255.9999389645,-0.9992055892944336,  0.0, INEXACT));
assert(test_sinf( 5033165.25,     0.5312945246696472,  0.0, INEXACT));
assert(test_sinf( 421657440.0,   -0.7397398948669434,  0.0, INEXACT));
assert(test_sinf( 2147483392.0,   0.2762770354700000,  0.0, INEXACT));
assert(test_sinf( 68719474688.0,  0.9855440855026245,  0.0, INEXACT));
assert(test_sinf( 549755797504.0,-0.9782648086547852,  0.0, INEXACT));
assert(test_sinf( f32.MAX_VALUE, -0.5218765139579773,  0.0, INEXACT));
assert(test_sinf(-255.9999389645, 0.9992055892944336,  0.0, INEXACT));
assert(test_sinf(-5033165.25,    -0.5312945246696472,  0.0, INEXACT));
assert(test_sinf(-421657440.0,    0.7397398948669434,  0.0, INEXACT));
assert(test_sinf(-2147483392.0,  -0.2762770354700000,  0.0, INEXACT));
assert(test_sinf(-68719474688.0, -0.9855440855026245,  0.0, INEXACT));
assert(test_sinf(-549755797504.0, 0.9782648086547852,  0.0, INEXACT));
assert(test_sinf(-f32.MAX_VALUE,  0.5218765139579773,  0.0, INEXACT));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.sinh
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_sinh(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.sinh(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.sinh(value), expected, error, flags));
}

// sanity
assert(test_sinh(-8.06684839057968084, -1593.52068011562619, -0.213872760534286499, INEXACT));
assert(test_sinh(4.34523984933830487, 38.548780886854118, 0.215374305844306946, INEXACT));
assert(test_sinh(-8.38143342755524934, -2182.63075051455462, 0.162138268351554871, INEXACT));
assert(test_sinh(-6.53167358191348413, -343.272392684752901, 0.204795137047767639, INEXACT));
assert(test_sinh(9.26705696697258574, 5291.77907551940552, -0.486765176057815552, INEXACT));
assert(test_sinh(0.661985898099504477, 0.711406256822915695, -0.458464145660400391, INEXACT));
assert(test_sinh(-0.40660392238535531, -0.41790065258739445, 0.372200459241867065, INEXACT));
assert(test_sinh(0.56175974622072411, 0.591775593545123657, 0.461789965629577637, INEXACT));
assert(test_sinh(0.77415229659130369, 0.853829200885254158, -0.0701905190944671631, INEXACT));
assert(test_sinh(-0.678763702639402444, -0.732097615653168998, 0.268585294485092163, INEXACT));

// special
assert(test_sinh(0.0, 0.0, 0.0, 0));
assert(test_sinh(-0.0, -0.0, 0.0, 0));
assert(test_sinh(Infinity, Infinity, 0.0, 0));
assert(test_sinh(-Infinity, -Infinity, 0.0, 0));
assert(test_sinh(NaN, NaN, 0.0, 0));

// Mathf.sinh //////////////////////////////////////////////////////////////////////////////////////

function test_sinhf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.sinh(value), expected, error, flags);
}

// sanity
assert(test_sinhf(-8.066848755, -1593.52124, 0.1671663225, INEXACT));
assert(test_sinhf(4.345239639, 38.5487709, -0.4934032857, INEXACT));
assert(test_sinhf(-8.381433487, -2182.630859, 0.08499703556, INEXACT));
assert(test_sinhf(-6.531673431, -343.2723389, 0.07041906565, INEXACT));
assert(test_sinhf(9.267057419, 5291.78125, -0.4436251521, INEXACT));
assert(test_sinhf(0.6619858742, 0.7114062309, 0.0581038855, INEXACT));
assert(test_sinhf(-0.4066039324, -0.4179006517, 0.3934949934, INEXACT));
assert(test_sinhf(0.5617597699, 0.5917755961, -0.418379724, INEXACT));
assert(test_sinhf(0.7741522789, 0.853829205, 0.459921062, INEXACT));
assert(test_sinhf(-0.6787636876, -0.7320976257, -0.4815905988, INEXACT));

// special
assert(test_sinhf(0.0, 0.0, 0.0, 0));
assert(test_sinhf(-0.0, -0.0, 0.0, 0));
assert(test_sinhf(Infinity, Infinity, 0.0, 0));
assert(test_sinhf(-Infinity, -Infinity, 0.0, 0));
assert(test_sinhf(NaN, NaN, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.sqrt
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_sqrt(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.sqrt(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.sqrt(value), expected, error, flags));
}

// sanity
assert(test_sqrt(-8.06684839057968084, NaN, 0.0, INVALID));
assert(test_sqrt(4.34523984933830487, 2.08452389032563135, -0.0718026161193847656, INEXACT));
assert(test_sqrt(-8.38143342755524934, NaN, 0.0, INVALID));
assert(test_sqrt(-6.53167358191348413, NaN, 0.0, INVALID));
assert(test_sqrt(9.26705696697258574, 3.04418412172663855, -0.0154626257717609406, INEXACT));
assert(test_sqrt(0.661985898099504477, 0.8136251582267503, -0.0861815735697746277, INEXACT));
assert(test_sqrt(-0.40660392238535531, NaN, 0.0, INVALID));
assert(test_sqrt(0.56175974622072411, 0.749506335010401425, -0.0981396734714508057, INEXACT));
assert(test_sqrt(0.77415229659130369, 0.87985924817058303, -0.371243536472320557, INEXACT));
assert(test_sqrt(-0.678763702639402444, NaN, 0.0, INVALID));

// special
assert(test_sqrt(NaN, NaN, 0.0, 0));
assert(test_sqrt(Infinity, Infinity, 0.0, 0));
assert(test_sqrt(-Infinity, NaN, 0.0, INVALID));
assert(test_sqrt(0.0, 0.0, 0.0, 0));
assert(test_sqrt(-0.0, -0.0, 0.0, 0));
assert(test_sqrt(1.0, 1.0, 0.0, 0));
assert(test_sqrt(-1.0, NaN, 0.0, INVALID));
assert(test_sqrt(4.0, 2.0, 0.0, 0));
assert(test_sqrt(9.88131291682493088e-324, 3.14345556940525759e-162, 0.435376197099685669, INEXACT));
assert(test_sqrt(1.48219693752373963e-323, 3.84993108707641605e-162, -0.451940029859542847, INEXACT));
assert(test_sqrt(4.94065645841246544e-324, 2.22275874948507748e-162, 0.0, 0));
assert(test_sqrt(-4.94065645841246544e-324, NaN, 0.0, INVALID));
assert(test_sqrt(0.999999999999999889, 0.999999999999999889, -0.5, INEXACT));
assert(test_sqrt(1.99999999999999978, 1.41421356237309492, -0.211070418357849121, INEXACT));
assert(test_sqrt(1.00000000000000022, 1.0, -0.5, INEXACT));
assert(test_sqrt(2.00000000000000044, 1.41421356237309515, -0.271730601787567139, INEXACT));
assert(test_sqrt(1.00000000000000022, 1.0, -0.5, INEXACT));
assert(test_sqrt(0.999999999999999889, 0.999999999999999889, -0.5, INEXACT));
assert(test_sqrt(-1.79769313486231571e+308, NaN, 0.0, INVALID));
assert(test_sqrt(1.79769313486231571e+308, 1.34078079299425956e+154, -0.5, INEXACT));
assert(test_sqrt(1.79769313486231491e+308, 1.34078079299425926e+154, -0.5, INEXACT));
assert(test_sqrt(1.79769313486231411e+308, 1.34078079299425897e+154, -0.5, INEXACT));
assert(test_sqrt(1.79769313486231331e+308, 1.34078079299425867e+154, -0.5, INEXACT));
assert(test_sqrt(1.79769313486231251e+308, 1.34078079299425837e+154, -0.5, INEXACT));
assert(test_sqrt(1.79769313486231172e+308, 1.34078079299425807e+154, -0.5, INEXACT));
assert(test_sqrt(1.79769313486231092e+308, 1.34078079299425777e+154, -0.5, INEXACT));
assert(test_sqrt(1.79769313486231012e+308, 1.34078079299425748e+154, -0.5, INEXACT));
assert(test_sqrt(1.79769313486230932e+308, 1.34078079299425718e+154, -0.5, INEXACT));
assert(test_sqrt(1.79769313486230852e+308, 1.34078079299425688e+154, -0.5, INEXACT));
assert(test_sqrt(1.79769313486230772e+308, 1.34078079299425658e+154, -0.5, INEXACT));
assert(test_sqrt(2.22507385850720287e-308, 1.49166814624004168e-154, -0.5, INEXACT));
assert(test_sqrt(2.22507385850720484e-308, 1.49166814624004234e-154, -0.5, INEXACT));
assert(test_sqrt(2.22507385850720682e-308, 1.49166814624004300e-154, -0.5, INEXACT));
assert(test_sqrt(2.22507385850720879e-308, 1.49166814624004367e-154, -0.5, INEXACT));
assert(test_sqrt(2.22507385850721077e-308, 1.49166814624004433e-154, -0.5, INEXACT));
assert(test_sqrt(2.22507385850721275e-308, 1.49166814624004499e-154, -0.5, INEXACT));
assert(test_sqrt(2.22507385850721472e-308, 1.49166814624004565e-154, -0.5, INEXACT));
assert(test_sqrt(2.22507385850721670e-308, 1.49166814624004632e-154, -0.5, INEXACT));
assert(test_sqrt(2.22507385850721868e-308, 1.49166814624004698e-154, -0.5, INEXACT));
assert(test_sqrt(2.22507385850722065e-308, 1.49166814624004764e-154, -0.5, INEXACT));
assert(test_sqrt(2.22507385850722263e-308, 1.49166814624004830e-154, -0.5, INEXACT));
assert(test_sqrt(2.22507385850722460e-308, 1.49166814624004897e-154, -0.5, INEXACT));
assert(test_sqrt(2.22507385850722658e-308, 1.49166814624004963e-154, -0.5, INEXACT));
assert(test_sqrt(2.22507385850722856e-308, 1.49166814624005029e-154, -0.5, INEXACT));
assert(test_sqrt(92.3513039189064529, 9.60995858049900598, 0.499813705682754517, INEXACT));
assert(test_sqrt(93.3599596388915955, 9.66229577475723822, -0.499799787998199463, INEXACT));
assert(test_sqrt(95.4204962888612442, 9.76834153215689049, -0.499972701072692871, INEXACT));
assert(test_sqrt(95.8791694188544881, 9.79179091989072781, 0.499876677989959717, INEXACT));
assert(test_sqrt(96.8480417488402168, 9.84114026669878506, 0.499801903963088989, INEXACT));
assert(test_sqrt(97.4363905088315505, 9.87098731175517052, 0.499769628047943115, INEXACT));
assert(test_sqrt(97.5095797988304724, 9.87469390912095513, 0.499998182058334351, INEXACT));
assert(test_sqrt(97.8049689388261214, 9.88963947466367976, -0.499958068132400513, INEXACT));
assert(test_sqrt(98.2751822888191953, 9.91338399784953417, 0.49979931116104126, INEXACT));
assert(test_sqrt(99.4729356488015526, 9.97361196602321876, -0.499954044818878174, INEXACT));
assert(test_sqrt(100.570471308785386, 10.0284830013709136, -0.499964535236358643, INEXACT));
assert(test_sqrt(100.609546088784811, 10.030431002144665, 0.499756723642349243, INEXACT));
assert(test_sqrt(100.679091098783786, 10.0338971042553435, -0.499777138233184814, INEXACT));
assert(test_sqrt(101.122680958777252, 10.0559773746154217, 0.499886780977249146, INEXACT));
assert(test_sqrt(101.302769128774599, 10.064927676281366, 0.499910563230514526, INEXACT));
assert(test_sqrt(2.45932313565506984e-307, 4.95915631499458737e-154, -0.499899983406066895, INEXACT));
assert(test_sqrt(5.61095730518040884e-307, 7.49063235326658376e-154, -0.499934375286102295, INEXACT));
assert(test_sqrt(5.80738879774085241e-307, 7.62062254526547942e-154, -0.499895691871643066, INEXACT));
assert(test_sqrt(7.02613708047142671e-307, 8.38220560501317447e-154, 0.499806404113769531, INEXACT));
assert(test_sqrt(8.43869776919497201e-307, 9.18623849526832761e-154, -0.499906569719314575, INEXACT));
assert(test_sqrt(1.16077925158367949e-306, 1.07739465915869443e-153, -0.499976843595504761, INEXACT));
assert(test_sqrt(1.28274138274231934e-306, 1.13258173336069622e-153, -0.499951303005218506, INEXACT));
assert(test_sqrt(1.71166045960874567e-306, 1.30830442161170782e-153, -0.499863952398300171, INEXACT));
assert(test_sqrt(2.03817325168699409e-306, 1.42764605266396281e-153, 0.499840378761291504, INEXACT));
assert(test_sqrt(2.17157206085693087e-306, 1.47362548188368786e-153, 0.499929040670394897, INEXACT));
assert(test_sqrt(2.46813996318040945e-306, 1.57103149655899957e-153, 0.499890446662902832, INEXACT));
assert(test_sqrt(2.51755339642005881e-306, 1.58667999181311239e-153, -0.499770104885101318, INEXACT));
assert(test_sqrt(2.64615054688296253e-306, 1.62669927979419815e-153, 0.499867290258407593, INEXACT));
assert(test_sqrt(3.81670763677204135e-306, 1.95363958722483965e-153, 0.499834716320037842, INEXACT));
assert(test_sqrt(4.57432207785627658e-306, 2.13876648511619359e-153, 0.499859392642974854, INEXACT));

// Mathf.sqrt //////////////////////////////////////////////////////////////////////////////////////

function test_sqrtf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.sqrt(value), expected, error, flags);
}

// sanity
assert(test_sqrtf(-8.066848755, NaN, 0.0, INVALID));
assert(test_sqrtf(4.345239639, 2.084523916, 0.3200402558, INEXACT));
assert(test_sqrtf(-8.381433487, NaN, 0.0, INVALID));
assert(test_sqrtf(-6.531673431, NaN, 0.0, INVALID));
assert(test_sqrtf(9.267057419, 3.044184208, 0.05022354797, INEXACT));
assert(test_sqrtf(0.6619858742, 0.8136251569, 0.2240506113, INEXACT));
assert(test_sqrtf(-0.4066039324, NaN, 0.0, INVALID));
assert(test_sqrtf(0.5617597699, 0.7495063543, 0.05895441771, INEXACT));
assert(test_sqrtf(0.7741522789, 0.8798592091, -0.4874873757, INEXACT));
assert(test_sqrtf(-0.6787636876, NaN, 0.0, INVALID));

// special
assert(test_sqrtf(NaN, NaN, 0.0, 0));
assert(test_sqrtf(Infinity, Infinity, 0.0, 0));
assert(test_sqrtf(-Infinity, NaN, 0.0, INVALID));
assert(test_sqrtf(0.0, 0.0, 0.0, 0));
assert(test_sqrtf(-0.0, -0.0, 0.0, 0));
assert(test_sqrtf(1.0, 1.0, 0.0, 0));
assert(test_sqrtf(-1.0, NaN, 0.0, INVALID));
assert(test_sqrtf(4.0, 2.0, 0.0, 0));
assert(test_sqrtf(2.802596929e-45, 5.293955920e-23, 0.0, 0));
assert(test_sqrtf(4.203895393e-45, 6.483745599e-23, 0.3738855422, INEXACT));
assert(test_sqrtf(1.401298464e-45, 3.743392067e-23, -0.2030314505, INEXACT));
assert(test_sqrtf(-1.401298464e-45, NaN, 0.0, INVALID));
assert(test_sqrtf(3.402823466e+38, 1.844674297e+19, -0.5, INEXACT));
assert(test_sqrtf(-3.402823466e+38, NaN, 0.0, INVALID));
assert(test_sqrtf(0.9999998808, 0.9999999404, 2.980232594e-8, INEXACT));
assert(test_sqrtf(0.9999999404, 0.9999999404, -0.5, INEXACT));
assert(test_sqrtf(1.999999762, 1.414213419, -0.4959246516, INEXACT));
assert(test_sqrtf(1.999999881, 1.414213538, 0.1505219489, INEXACT));
assert(test_sqrtf(1.000000119, 1.0, -0.5, INEXACT));
assert(test_sqrtf(1.000000238, 1.000000119, 5.960463767e-8, INEXACT));
assert(test_sqrtf(2.000000238, 1.414213657, 0.08986179531, INEXACT));
assert(test_sqrtf(2.000000477, 1.414213777, 0.3827550709, INEXACT));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.tan
////////////////////////////////////////////////////////////////////////////////////////////////////
/* TODO
function test_tan(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.tan(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.tan(value), expected, error, flags));
}

// sanity
assert(test_tan(-8.06684839057968084, 4.62660354240163318, -0.272760331630706787, INEXACT));
assert(test_tan(4.34523984933830487, 2.60019170582220216, 0.265100330114364624, INEXACT));
assert(test_tan(-8.38143342755524934, 1.71674083287410517, -0.246875196695327759, INEXACT));
assert(test_tan(-6.53167358191348413, -0.2537322523453725, -0.467970371246337891, INEXACT));
assert(test_tan(9.26705696697258574, -0.159041957271919582, -0.0670407786965370178, INEXACT));
assert(test_tan(0.661985898099504477, 0.779291910691043421, -0.0380561351776123047, INEXACT));
assert(test_tan(-0.40660392238535531, -0.430599528795436559, -0.0924271419644355774, INEXACT));
assert(test_tan(0.56175974622072411, 0.629403687318739968, -0.321913480758666992, INEXACT));
assert(test_tan(0.77415229659130369, 0.977757465294964545, -0.196665182709693909, INEXACT));
assert(test_tan(-0.678763702639402444, -0.806618663020912341, -0.0676656961441040039, INEXACT));

// special
assert(test_tan(0.0, 0.0, 0.0, 0));
assert(test_tan(-0.0, -0.0, 0.0, 0));
assert(test_tan(Infinity, NaN, 0.0, INVALID));
assert(test_tan(-Infinity, NaN, 0.0, INVALID));
assert(test_tan(NaN, NaN, 0.0, 0));
*/

// Mathf.tan ///////////////////////////////////////////////////////////////////////////////////////

function test_tanf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.tan(value), expected, error, flags);
}

// sanity
assert(test_tanf(-8.0668487550, 4.6265954970, 0.245566695900, INEXACT));
assert(test_tanf( 4.3452396390, 2.6001901630, 0.365240722900, INEXACT));
assert(test_tanf(-8.3814334870, 1.7167406080, 0.081693492830, INEXACT));
assert(test_tanf(-6.5316734310,-0.2537320852, 0.231865137800, INEXACT));
assert(test_tanf( 9.2670574190,-0.1590414941,-0.009332014248, INEXACT));
assert(test_tanf( 0.6619858742, 0.7792918682,-0.067597009240, INEXACT));
assert(test_tanf(-0.4066039324,-0.4305995405, 0.005771996453, INEXACT));
assert(test_tanf( 0.5617597699, 0.6294037104,-0.168381631400, INEXACT));
assert(test_tanf( 0.7741522789, 0.9777574539, 0.389693886000, INEXACT));
assert(test_tanf(-0.6787636876,-0.8066186309, 0.122940599900, INEXACT));

// special
assert(test_tanf(      0.0, 0.0, 0.0, 0));
assert(test_tanf(     -0.0,-0.0, 0.0, 0));
assert(test_tanf( Infinity, NaN, 0.0, INVALID));
assert(test_tanf(-Infinity, NaN, 0.0, INVALID));
assert(test_tanf(      NaN, NaN, 0.0, 0));

// ubc
assert(test_tanf( 1.862645149e-09, 1.862645149e-09,-9.701277108e-12, INEXACT));
assert(test_tanf(-1.862645149e-09,-1.862645149e-09, 9.701277108e-12, INEXACT));
assert(test_tanf( 1.175494351e-38, 1.175494351e-38,             0.0, INEXACT));
assert(test_tanf(-1.175494351e-38,-1.175494351e-38,             0.0, INEXACT));
assert(test_tanf( 1.401298464e-45, 1.401298464e-45,             0.0, INEXACT | UNDERFLOW));
assert(test_tanf(-1.401298464e-45,-1.401298464e-45,             0.0, INEXACT | UNDERFLOW));
assert(test_tanf( 1.175494491e-38, 1.175494491e-38,             0.0, INEXACT));
assert(test_tanf( 1.175494631e-38, 1.175494631e-38,             0.0, INEXACT));
assert(test_tanf( 2.350988001e-38, 2.350988001e-38,             0.0, INEXACT));
assert(test_tanf( 2.350988702e-38, 2.350988702e-38,             0.0, INEXACT));
assert(test_tanf( 2.350989542e-38, 2.350989542e-38,             0.0, INEXACT));
assert(test_tanf( 4.701977403e-38, 4.701977403e-38,             0.0, INEXACT));
assert(test_tanf( 1.117587090e-08, 1.117587090e-08,-5.238689482e-10, INEXACT));
assert(test_tanf( 1.490116119e-08, 1.490116119e-08,-6.208817349e-10, INEXACT));
assert(test_tanf( 2.441406250e-04, 2.441406250e-04,-1.666666716e-01, INEXACT));
assert(test_tanf(-1.175494491e-38,-1.175494491e-38,             0.0, INEXACT));
assert(test_tanf(-1.175494631e-38,-1.175494631e-38,             0.0, INEXACT));
assert(test_tanf(-2.350988001e-38,-2.350988001e-38,             0.0, INEXACT));
assert(test_tanf( 2.350988702e-38, 2.350988702e-38,             0.0, INEXACT));
assert(test_tanf(-2.350989542e-38,-2.350989542e-38,             0.0, INEXACT));
assert(test_tanf(-4.701977403e-38,-4.701977403e-38,             0.0, INEXACT));
assert(test_tanf(-1.117587090e-08,-1.117587090e-08, 5.238689482e-10, INEXACT));
assert(test_tanf(-1.490116119e-08,-1.490116119e-08, 6.208817349e-10, INEXACT));
assert(test_tanf(-2.441406250e-04,-2.441406250e-04, 1.666666716e-01, INEXACT));
assert(test_tanf( 2.802596929e-45, 2.802596929e-45,             0.0, INEXACT | UNDERFLOW));
assert(test_tanf( 1.261168618e-44, 1.261168618e-44,             0.0, INEXACT | UNDERFLOW));
assert(test_tanf( 2.938735877e-39, 2.938735877e-39,             0.0, INEXACT | UNDERFLOW));
assert(test_tanf( 5.877471754e-39, 5.877471754e-39,             0.0, INEXACT | UNDERFLOW));
assert(test_tanf( 1.175494071e-38, 1.175494071e-38,             0.0, INEXACT | UNDERFLOW));
assert(test_tanf( 1.175494211e-38, 1.175494211e-38,             0.0, INEXACT | UNDERFLOW));
assert(test_tanf(-2.802596929e-45,-2.802596929e-45,             0.0, INEXACT | UNDERFLOW));
assert(test_tanf(-1.261168618e-44,-1.261168618e-44,             0.0, INEXACT | UNDERFLOW));
assert(test_tanf(-2.938735877e-39,-2.938735877e-39,             0.0, INEXACT | UNDERFLOW));
assert(test_tanf(-5.877471754e-39,-5.877471754e-39,             0.0, INEXACT | UNDERFLOW));
assert(test_tanf(-1.175494071e-38,-1.175494071e-38,             0.0, INEXACT | UNDERFLOW));
assert(test_tanf(-1.175494211e-38,-1.175494211e-38,             0.0, INEXACT | UNDERFLOW));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.tanh
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_tanh(value: f64, expected: f64, error: f64, flags: i32): bool {
  return check<f64>(NativeMath.tanh(value), expected, error, flags) &&
  (!js || check<f64>(   JSMath.tanh(value), expected, error, flags));
}

// sanity
assert(test_tanh(-8.06684839057968084, -0.999999803096031981, 0.0127933314070105553, INEXACT));
assert(test_tanh(4.34523984933830487, 0.999663697896130743, 0.157350823283195496, INEXACT));
assert(test_tanh(-8.38143342755524934, -0.999999895043486187, 0.279850661754608154, INEXACT));
assert(test_tanh(-6.53167358191348413, -0.999995756839242911, -0.442855745553970337, INEXACT));
assert(test_tanh(9.26705696697258574, 0.999999982144723409, 0.446275502443313599, INEXACT));
assert(test_tanh(0.661985898099504477, 0.579683501863527462, 0.489204317331314087, INEXACT));
assert(test_tanh(-0.40660392238535531, -0.385585309990165215, 0.359938710927963257, INEXACT));
assert(test_tanh(0.56175974622072411, 0.509281924870043867, -0.394365221261978149, INEXACT));
assert(test_tanh(0.77415229659130369, 0.649337455031855471, -0.489939600229263306, INEXACT));
assert(test_tanh(-0.678763702639402444, -0.590715084799841028, -0.0145387789234519005, INEXACT));

// special
assert(test_tanh(0.0, 0.0, 0.0, 0));
assert(test_tanh(-0.0, -0.0, 0.0, 0));
assert(test_tanh(Infinity, 1.0, 0.0, 0));
assert(test_tanh(-Infinity, -1.0, 0.0, 0));
assert(test_tanh(NaN, NaN, 0.0, 0));

// Mathf.tanh //////////////////////////////////////////////////////////////////////////////////////

function test_tanhf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.tanh(value), expected, error, flags);
}

// sanity
assert(test_tanhf(-8.066848755, -0.9999998212, -0.3034979999, INEXACT));
assert(test_tanhf(4.345239639, 0.9996637106, 0.2154078335, INEXACT));
assert(test_tanhf(-8.381433487, -0.9999998808, 0.2391221076, INEXACT));
assert(test_tanhf(-6.531673431, -0.9999957681, -0.1884459704, INEXACT));
assert(test_tanhf(9.267057419, 1.0, 0.1497807801, INEXACT));
assert(test_tanhf(0.6619858742, 0.5796834826, -0.05590476096, INEXACT));
assert(test_tanhf(-0.4066039324, -0.3855853081, 0.3497871757, INEXACT));
assert(test_tanhf(0.5617597699, 0.5092819333, -0.152878508, INEXACT));
assert(test_tanhf(0.7741522789, 0.6493374705, 0.4317026138, INEXACT));
assert(test_tanhf(-0.6787636876, -0.5907150507, 0.407987386, INEXACT));

// special
assert(test_tanhf(0.0, 0.0, 0.0, 0));
assert(test_tanhf(-0.0, -0.0, 0.0, 0));
assert(test_tanhf(Infinity, 1.0, 0.0, 0));
assert(test_tanhf(-Infinity, -1.0, 0.0, 0));
assert(test_tanhf(NaN, NaN, 0.0, 0));

////////////////////////////////////////////////////////////////////////////////////////////////////
// Math.trunc
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_trunc(value: f64, expected: f64, error: f64, flags: i32): bool {
  return  check<f64>(NativeMath.trunc(value), expected, error, flags) &&
  (!js || check<f64>(    JSMath.trunc(value), expected, error, flags));
}

// sanity
assert(test_trunc(-8.06684839057968084, -8.0, 0.0, INEXACT));
assert(test_trunc(4.34523984933830487, 4.0, 0.0, INEXACT));
assert(test_trunc(-8.38143342755524934, -8.0, 0.0, INEXACT));
assert(test_trunc(-6.53167358191348413, -6.0, 0.0, INEXACT));
assert(test_trunc(9.26705696697258574, 9.0, 0.0, INEXACT));
assert(test_trunc(0.661985898099504477, 0.0, 0.0, INEXACT));
assert(test_trunc(-0.40660392238535531, -0.0, 0.0, INEXACT));
assert(test_trunc(0.56175974622072411, 0.0, 0.0, INEXACT));
assert(test_trunc(0.77415229659130369, 0.0, 0.0, INEXACT));
assert(test_trunc(-0.678763702639402444, -0.0, 0.0, INEXACT));

// special
assert(test_trunc(NaN, NaN, 0.0, 0));
assert(test_trunc(Infinity, Infinity, 0.0, 0));
assert(test_trunc(-Infinity, -Infinity, 0.0, 0));
assert(test_trunc(0.0, 0.0, 0.0, 0));
assert(test_trunc(-0.0, -0.0, 0.0, 0));
assert(test_trunc(1.0, 1.0, 0.0, 0));
assert(test_trunc(-1.0, -1.0, 0.0, 0));
assert(test_trunc(0.5, 0.0, 0.0, INEXACT));
assert(test_trunc(-0.5, -0.0, 0.0, INEXACT));
assert(test_trunc(1.0000152587890625, 1.0, 0.0, INEXACT));
assert(test_trunc(-1.0000152587890625, -1.0, 0.0, INEXACT));
assert(test_trunc(0.99999237060546875, 0.0, 0.0, INEXACT));
assert(test_trunc(-0.99999237060546875, -0.0, 0.0, INEXACT));
assert(test_trunc(7.88860905221011805e-31, 0.0, 0.0, INEXACT));
assert(test_trunc(-7.88860905221011805e-31, -0.0, 0.0, INEXACT));

// Mathf.trunc /////////////////////////////////////////////////////////////////////////////////////

function test_truncf(value: f32, expected: f32, error: f32, flags: i32): bool {
  return check<f32>(NativeMathf.trunc(value), expected, error, flags);
}

// sanity
assert(test_truncf(-8.066848755, -8.0, 0.0, INEXACT));
assert(test_truncf(4.345239639, 4.0, 0.0, INEXACT));
assert(test_truncf(-8.381433487, -8.0, 0.0, INEXACT));
assert(test_truncf(-6.531673431, -6.0, 0.0, INEXACT));
assert(test_truncf(9.267057419, 9.0, 0.0, INEXACT));
assert(test_truncf(0.6619858742, 0.0, 0.0, INEXACT));
assert(test_truncf(-0.4066039324, -0.0, 0.0, INEXACT));
assert(test_truncf(0.5617597699, 0.0, 0.0, INEXACT));
assert(test_truncf(0.7741522789, 0.0, 0.0, INEXACT));
assert(test_truncf(-0.6787636876, -0.0, 0.0, INEXACT));

// special
assert(test_truncf(NaN, NaN, 0.0, 0));
assert(test_truncf(Infinity, Infinity, 0.0, 0));
assert(test_truncf(-Infinity, -Infinity, 0.0, 0));
assert(test_truncf(0.0, 0.0, 0.0, 0));
assert(test_truncf(-0.0, -0.0, 0.0, 0));
assert(test_truncf(1.0, 1.0, 0.0, 0));
assert(test_truncf(-1.0, -1.0, 0.0, 0));
assert(test_truncf(0.5, 0.0, 0.0, INEXACT));
assert(test_truncf(-0.5, -0.0, 0.0, INEXACT));
assert(test_truncf(1.000015259, 1.0, 0.0, INEXACT));
assert(test_truncf(-1.000015259, -1.0, 0.0, INEXACT));
assert(test_truncf(0.9999923706, 0.0, 0.0, INEXACT));
assert(test_truncf(-0.9999923706, -0.0, 0.0, INEXACT));
assert(test_truncf(7.888609052e-31, 0.0, 0.0, INEXACT));
assert(test_truncf(-7.888609052e-31, -0.0, 0.0, INEXACT));

// Math.imul //////////////////////////////////////////////////////////////////////////////////

assert(NativeMath.imul(2, 4) == 8);
assert(NativeMath.imul(-1, 8) == -8);
assert(NativeMath.imul(-2, -2) == 4);
assert(NativeMath.imul(0xffffffff, 5) == -5);
assert(NativeMath.imul(0xfffffffe, 5) == -10);
assert(NativeMath.imul(1e+60, 1e+60) == 0);
assert(NativeMath.imul(1e+60,-1e+60) == 0);
assert(NativeMath.imul(-1e+60,-1e+60) == 0);
assert(NativeMath.imul(1e+24, 1e2) == -2147483648);
assert(NativeMath.imul(NaN, 1) == 0);
assert(NativeMath.imul(1, Infinity) == 0);
assert(NativeMath.imul(f64.MAX_VALUE, f64.MAX_VALUE) == 0);

// Math.clz32 /////////////////////////////////////////////////////////////////////////////////

assert(NativeMath.clz32(0) == 32);
assert(NativeMath.clz32(1) == 31);
assert(NativeMath.clz32(-1) == 0);
assert(NativeMath.clz32(-128) == 0);
assert(NativeMath.clz32(4294967295.) == 0);
assert(NativeMath.clz32(4294967295.5) == 0);
assert(NativeMath.clz32(4294967296) == 32);
assert(NativeMath.clz32(4294967297) == 31);
assert(NativeMath.clz32(NaN) == 32);
assert(NativeMath.clz32(Infinity) == 32);
assert(NativeMath.clz32(f64.MAX_SAFE_INTEGER) == 0);
assert(NativeMath.clz32(-f64.MAX_SAFE_INTEGER) == 31);
assert(NativeMath.clz32(f64.MAX_VALUE) == 32);
assert(NativeMath.clz32(f64.MIN_VALUE) == 32);
assert(NativeMath.clz32(-f64.MAX_VALUE) == 32);
assert(NativeMath.clz32(f64.EPSILON) == 32);

// ipow64 /////////////////////////////////////////////////////////////////////////////////////

assert(ipow64(0, 0) == 1);
assert(ipow64(0, 1) == 0);
assert(ipow64(0, 2) == 0);
assert(ipow64(0, 3) == 0);

assert(ipow64(1, 0) == 1);
assert(ipow64(1, 1) == 1);
assert(ipow64(1, 2) == 1);
assert(ipow64(1, 3) == 1);

assert(ipow64(2, 0) == 1);
assert(ipow64(2, 1) == 2);
assert(ipow64(2, 2) == 4);
assert(ipow64(2, 3) == 8);

assert(ipow64(-1, 0) ==  1);
assert(ipow64(-1, 1) == -1);
assert(ipow64(-1, 2) ==  1);
assert(ipow64(-1, 3) == -1);

assert(ipow64(-2, 0) ==  1);
assert(ipow64(-2, 1) == -2);
assert(ipow64(-2, 2) ==  4);
assert(ipow64(-2, 3) == -8);

assert(ipow64(3,  40) ==  12157665459056928801);
assert(ipow64(3,  41) == -420491770248316829);  // should overflow
assert(ipow64(3,  42) == -1261475310744950487); // should overflow
assert(ipow64(3,  43) == -3784425932234851461); // should overflow
assert(ipow64(3,  63) == -3237885987332494933); // should overflow
assert(ipow64(3,  64) ==  8733086111712066817); // should overflow
assert(ipow64(3, 128) == -9204772141784466943); // should overflow

assert(ipow64(57055, 3) + ipow64(339590, 3) == 39347712995520375); // add Buterin's twit example

// ipow32f /////////////////////////////////////////////////////////////////////////////////////

assert(ipow32f(0, 0) == <f32>1.0);
assert(ipow32f(<f32>NaN, 0) == <f32>1.0);
assert(isNaN<f32>(ipow32f(<f32>NaN, 1)));
assert(isNaN<f32>(ipow32f(<f32>NaN, -1)));
assert(isNaN<f32>(ipow32f(<f32>NaN, 2)));
assert(ipow32f(<f32>Infinity, 0) == <f32>1.0);
assert(ipow32f(<f32>Infinity, 1) == <f32>Infinity);
assert(ipow32f(<f32>-Infinity, 0) == <f32>1.0);
assert(ipow32f(<f32>-Infinity, 1) == <f32>-Infinity);
assert(ipow32f(<f32>-Infinity, 2) == <f32>Infinity);
assert(ipow32f(<f32>1.0, 0) == <f32>1.0);
assert(ipow32f(f32.MAX_VALUE, 2) == <f32>Infinity);
assert(ipow32f(f32.MIN_VALUE, 2) == <f32>0.0);
assert(ipow32f(f32.MAX_VALUE, -1) == <f32>2.938735877055719e-39);
assert(ipow32f(<f32>10.0, 36) == <f32>1.0000000409184788e+36);
assert(ipow32f(<f32>10.0,-36) == <f32>9.999999462560281e-37);

// ipow64f /////////////////////////////////////////////////////////////////////////////////////

assert(ipow64f(0, 0) == 1.0);
assert(ipow64f(NaN, 0) == 1.0);
assert(isNaN(ipow64f(NaN, 1)));
assert(isNaN(ipow64f(NaN, -1)));
assert(isNaN(ipow64f(NaN, 2)));
assert(ipow64f(Infinity, 0) == 1.0);
assert(ipow64f(Infinity, 1) == Infinity);
assert(ipow64f(-Infinity, 0) == 1.0);
assert(ipow64f(-Infinity, 1) == -Infinity);
assert(ipow64f(-Infinity, 2) == Infinity);
assert(ipow64f(1.0, 0) == 1.0);
assert(ipow64f(f64.MAX_VALUE, 2) == Infinity);
assert(ipow64f(f64.MIN_VALUE, 2) == 0.0);
assert(ipow64f(f64.MAX_VALUE, -1) == 5.562684646268003e-309);
assert(ipow64f(10.0, 127) == 1.0000000000000002e+127);
assert(ipow64f(10.0,-127) == 9.999999999999998e-128);
