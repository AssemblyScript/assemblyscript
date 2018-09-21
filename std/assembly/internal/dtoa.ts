/*
 * Implementation based on dtoa-pldi2010).pdf
 * "Printing Floating-Point Numbers Quickly and Accurately with Integers" by Florian Loitsh paper and implementation
 */

import {
  CharCode,
  allocateUnsafe as allocateUnsafeString,
  HEADER_SIZE as STRING_HEADER_SIZE
} from "./string";

import {
  loadUnsafe
} from "./arraybuffer";

import {
  POWERS10,
  decimalCount32,
  utoa32_core
} from "./itoa";

@inline
function EXP_POWERS(): i16[] {
  const table: i16[] = [
    -1220, -1193, -1166, -1140, -1113, -1087, -1060, -1034, -1007,  -980,
     -954,  -927,  -901,  -874,  -847,  -821,  -794,  -768,  -741,  -715,
     -688,  -661,  -635,  -608,  -582,  -555,  -529,  -502,  -475,  -449,
     -422,  -396,  -369,  -343,  -316,  -289,  -263,  -236,  -210,  -183,
     -157,  -130,  -103,   -77,   -50,   -24,     3,    30,    56,    83,
      109,   136,   162,   189,   216,   242,   269,   295,   322,   348,
      375,   402,   428,   455,   481,   508,   534,   561,   588,   614,
      641,   667,   694,   720,   747,   774,   800,   827,   853,   880,
      907,   933,   960,   986,  1013,  1039,  1066
  ];
  return table;
}

// 1e-348, 1e-340, ..., 1e340
@inline
function FRC_POWERS(): u64[] {
  const table: u64[] = [
    0xFA8FD5A0081C0288, 0xBAAEE17FA23EBF76, 0x8B16FB203055AC76, 0xCF42894A5DCE35EA,
    0x9A6BB0AA55653B2D, 0xE61ACF033D1A45DF, 0xAB70FE17C79AC6CA, 0xFF77B1FCBEBCDC4F,
    0xBE5691EF416BD60C, 0x8DD01FAD907FFC3C, 0xD3515C2831559A83, 0x9D71AC8FADA6C9B5,
    0xEA9C227723EE8BCB, 0xAECC49914078536D, 0x823C12795DB6CE57, 0xC21094364DFB5637,
    0x9096EA6F3848984F, 0xD77485CB25823AC7, 0xA086CFCD97BF97F4, 0xEF340A98172AACE5,
    0xB23867FB2A35B28E, 0x84C8D4DFD2C63F3B, 0xC5DD44271AD3CDBA, 0x936B9FCEBB25C996,
    0xDBAC6C247D62A584, 0xA3AB66580D5FDAF6, 0xF3E2F893DEC3F126, 0xB5B5ADA8AAFF80B8,
    0x87625F056C7C4A8B, 0xC9BCFF6034C13053, 0x964E858C91BA2655, 0xDFF9772470297EBD,
    0xA6DFBD9FB8E5B88F, 0xF8A95FCF88747D94, 0xB94470938FA89BCF, 0x8A08F0F8BF0F156B,
    0xCDB02555653131B6, 0x993FE2C6D07B7FAC, 0xE45C10C42A2B3B06, 0xAA242499697392D3,
    0xFD87B5F28300CA0E, 0xBCE5086492111AEB, 0x8CBCCC096F5088CC, 0xD1B71758E219652C,
    0x9C40000000000000, 0xE8D4A51000000000, 0xAD78EBC5AC620000, 0x813F3978F8940984,
    0xC097CE7BC90715B3, 0x8F7E32CE7BEA5C70, 0xD5D238A4ABE98068, 0x9F4F2726179A2245,
    0xED63A231D4C4FB27, 0xB0DE65388CC8ADA8, 0x83C7088E1AAB65DB, 0xC45D1DF942711D9A,
    0x924D692CA61BE758, 0xDA01EE641A708DEA, 0xA26DA3999AEF774A, 0xF209787BB47D6B85,
    0xB454E4A179DD1877, 0x865B86925B9BC5C2, 0xC83553C5C8965D3D, 0x952AB45CFA97A0B3,
    0xDE469FBD99A05FE3, 0xA59BC234DB398C25, 0xF6C69A72A3989F5C, 0xB7DCBF5354E9BECE,
    0x88FCF317F22241E2, 0xCC20CE9BD35C78A5, 0x98165AF37B2153DF, 0xE2A0B5DC971F303A,
    0xA8D9D1535CE3B396, 0xFB9B7CD9A4A7443C, 0xBB764C4CA7A44410, 0x8BAB8EEFB6409C1A,
    0xD01FEF10A657842C, 0x9B10A4E5E9913129, 0xE7109BFBA19C0C9D, 0xAC2820D9623BF429,
    0x80444B5E7AA7CF85, 0xBF21E44003ACDD2D, 0x8E679C2F5E44FF8F, 0xD433179D9C8CB841,
    0x9E19DB92B4E31BA9, 0xEB96BF6EBADF77D9, 0xAF87023B9BF0EE6B
  ];
  return table;
}

/*
const kDiySignificandSize: i32 = 64;
const kDpSignificandSize:  i32 = 52;
const kDpExponentBias:     i32 = 0x3FF + kDpSignificandSize;
const kDpMinExponent:      i32 = -kDpExponentBias;
const kDpExponentMask:     u64 = 0x7FF0000000000000;
const kDpSignificandMask:  u64 = 0x000FFFFFFFFFFFFF;
const kDpHiddenBit:        u64 = 0x0010000000000000;
*/

var _K: i32 = 0;

var _frc: u64 = 0;
var _exp: i32 = 0;

var _frc_minus: u64 = 0;
var _exp_minus: i32 = 0;

var _frc_plus: u64 = 0;
var _exp_plus: i32 = 0;

var _frc_pow: u64 = 0;
var _exp_pow: i32 = 0;

@inline
function umul64f(u: u64, v: u64): u64 {
  var u0 = u & 0xFFFFFFFF;
  var v0 = v & 0xFFFFFFFF;

  var u1 = u >> 32;
  var v1 = v >> 32;

  var l = u0 * v0;
  var t = u1 * v0 + (l >> 32);
  var w = u0 * v1 + (t & 0xFFFFFFFF);

  w += 0x7FFFFFFF; // rounding

  t >>= 32;
  w >>= 32;

  return u1 * v1 + t + w;
}

@inline
function umul64e(e1: i32, e2: i32): i32 {
  return e1 + e2 + 64;
}

/*
@inline
function normalizeBoundary(f: u64, e: i32): void {
  while (!(f & (0x0010000000000000 << 1))) { f <<= 1; --e; }
  _frc = f << 10;
  _exp = e - 10;
}
*/

@inline
function normalizedBoundaries(f: u64, e: i32): void {
  // normalizeBoundary((f << 1) + 1, e - 1);
  var frc = (f << 1) + 1;
  var exp = e - 1;
  var off = <i32>clz<u64>(frc);
  frc <<= off;
  exp  -= off;

  var m = 1 + <i32>(f == 0x0010000000000000);

  _frc_plus  = frc;
  _frc_minus = ((f << m) - 1) << e - m - exp;
  _exp_plus  = exp;
  _exp_minus = exp;
}

@inline
function grisuRound(buffer: usize, len: i32, delta: u64, rest: u64, ten_kappa: u64, wp_w: u64): void {
  while (
    rest < wp_w &&
    delta - rest >= ten_kappa && (
      rest + ten_kappa < wp_w ||
      wp_w - rest > rest + ten_kappa - wp_w
    )
  ) {
    let digit = load<u16>(buffer + ((len - 1) << 1), STRING_HEADER_SIZE);
    store<u16>(buffer + ((len - 1) << 1), digit - 1, STRING_HEADER_SIZE);
    rest += ten_kappa;
  }
}

@inline
function getCachedPower(e: i32): void {
  const c = reinterpret<f64>(0x3FD34413509F79FE);  // 0.30102999566398114;
  var dk = (-61 - e) * c + 347;	                  // dk must be positive, so can do ceiling in positive
  var k = <i32>dk;
  k += <i32>(k != dk);

  var index = (k >> 3) + 1;
  _K = 348 - (index << 3);	// decimal exponent no need lookup table
  // assert(index < sizeof(kCachedPowers_F) / sizeof(kCachedPowers_F[0]));
  var frcPowers = <ArrayBuffer>FRC_POWERS().buffer_;
  var expPowers = <ArrayBuffer>EXP_POWERS().buffer_;
  _frc_pow = loadUnsafe<u64,u64>(frcPowers, index);
  _exp_pow = loadUnsafe<i16,i32>(expPowers, index);
}

@inline
function grisu2(value: f64, buffer: usize): i32 {

  // frexp routine
  var uv  = reinterpret<u64>(value);
  var exp = <i32>((uv & 0x7FF0000000000000) >>> 52);
  var sid = uv & 0x000FFFFFFFFFFFFF;
  var frc = select<u64>(0x0010000000000000, 0, exp != 0) + sid;
      exp = select<i32>(exp, 1, exp != 0) - (0x3FF + 52);

  normalizedBoundaries(frc, exp);
  getCachedPower(_exp_plus);

  // frc = _frc;
  // exp = _exp;

  // normalize
  var off = <i32>clz<u64>(frc);
  frc <<= off;
  exp  -= off;

  var frc_pow = _frc_pow;
  var exp_pow = _exp_pow;

  var w_frc = umul64f(frc, frc_pow);
  var w_exp = umul64e(exp, exp_pow);

  var wp_frc = umul64f(_frc_plus, frc_pow) - 1;
  var wp_exp = umul64e(_exp_plus, exp_pow);

  var wm_frc = umul64f(_frc_minus, frc_pow) + 1;
  var delta  = wp_frc - wm_frc;

  return write(buffer, w_frc, w_exp, wp_frc, wp_exp, delta);
}

function write(buffer: usize, w_frc: u64, w_exp: i32, mp_frc: u64, mp_exp: i32, delta: u64): i32 {
  var one_frc = (<u64>1) << -mp_exp;
  var one_exp = mp_exp;

  // assert(mp_exp == w_exp && mp_frc >= w_frc);
  var wp_w_frc = mp_frc - w_frc;
  var wp_w_exp = mp_exp;

  var p1 = <u32>(mp_frc >> -one_exp);
  var p2 = mp_frc & (one_frc - 1);

  var kappa = <i32>decimalCount32(p1);
  var len = 0;

  var powers10 = <ArrayBuffer>POWERS10().buffer_;

  while (kappa > 0) {
    let d: u32;
    switch (kappa) {
      case 10: { d = p1 / 1000000000; p1 %= 1000000000; break; }
      case  9: { d = p1 /  100000000; p1 %=  100000000; break; }
      case  8: { d = p1 /   10000000; p1 %=   10000000; break; }
      case  7: { d = p1 /    1000000; p1 %=    1000000; break; }
      case  6: { d = p1 /     100000; p1 %=     100000; break; }
      case  5: { d = p1 /      10000; p1 %=      10000; break; }
      case  4: { d = p1 /       1000; p1 %=       1000; break; }
      case  3: { d = p1 /        100; p1 %=        100; break; }
      case  2: { d = p1 /         10; p1 %=         10; break; }
      case  1: { d = p1;              p1 =           0; break; }
      default: { d = 0; break; }
    }

    if (d || len) {
      store<u16>(buffer + (len++ << 1), CharCode._0 + <u16>d, STRING_HEADER_SIZE);
      // buffer[len++] = "0" + <u16>(d);
    }

    --kappa;
    let tmp = ((<u64>p1) << -one_exp) + p2;
    if (tmp <= delta) {
      _K += kappa;
      grisuRound(buffer, len, delta, tmp, loadUnsafe<u32,u64>(powers10, kappa) << -one_exp, wp_w_frc);
      return len;
    }
  }

  // kappa = 0
  while (1) {
    p2    *= 10;
    delta *= 10;
    let d = p2 >> -one_exp;
    if (d || len) {
      store<u16>(buffer + (len++ << 1), CharCode._0 + <u16>d, STRING_HEADER_SIZE);
      // buffer[(len)++] = '0' + d;
    }
    p2 &= one_frc - 1;
    --kappa;
    if (p2 < delta) {
      _K += kappa;
      wp_w_frc *= loadUnsafe<u32,u64>(powers10, -kappa);
      grisuRound(buffer, len, delta, p2, one_frc, wp_w_frc);
      return len;
    }
  }

  return len;
}

@inline
function writeExponent(buffer: usize, offset: usize): void {
  var k = _K;
  var isneg = k < 0;
  if (k < 0) k = -k;
  utoa32_core(buffer, k, offset + <u32>isneg);
  if (isneg) store<u16>(buffer, CharCode.MINUS, STRING_HEADER_SIZE);
}

function prettify(buffer: usize, length: i32, k: i32): void {
  // TODO
}

export function dtoa(value: f64): string {
  if (value == 0) return "0.0";
  var isneg = value < 0;
  if (!isFinite(value)) {
    if (isNaN(value)) return "NaN";
    return isneg ? "-Infinity" : "Infinity";
  }
  if (isneg) value = -value;
  var decimals = 32; // TMP
  var result = allocateUnsafeString(decimals);
  var buffer = changetype<usize>(result);
  var len = grisu2(value, buffer);
  prettify(buffer, len, _K);
  _K = 0;
  if (isneg) store<u16>(buffer, CharCode.MINUS, STRING_HEADER_SIZE);
  return changetype<string>(result);
}
