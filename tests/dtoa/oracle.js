// Independent f32 shortest-decimal oracle, adapted from xjb-as's BigInt
// verifier. It works from the exact binary32 value, not a widened f64 string.
const bits32 = new DataView(new ArrayBuffer(4));

export function float32FromBits(bits) {
  bits32.setUint32(0, bits >>> 0);
  return bits32.getFloat32(0);
}

function formatDecimal(negative, digits, point) {
  const count = digits.length;
  let result;
  if (count <= point && point <= 21) {
    result = digits + "0".repeat(point - count);
  } else if (0 < point && point <= 21) {
    result = digits.slice(0, point) + "." + digits.slice(point);
  } else if (-6 < point && point <= 0) {
    result = "0." + "0".repeat(-point) + digits;
  } else {
    const exponent = point - 1;
    const suffix = "e" + (exponent >= 0 ? "+" : "-") + Math.abs(exponent);
    result = count === 1 ? digits + suffix : digits[0] + "." + digits.slice(1) + suffix;
  }
  return (negative ? "-" : "") + result;
}

// Represent values and midpoints as integers in units of 2^-150. Adjacent
// binary32 values are multiples of 2^-149, including the subnormal range.
function scaledFloat32(bits) {
  const exponent = (bits >>> 23) & 0xff;
  const significand = BigInt(exponent ? (bits & 0x7fffff) | 0x800000 : bits);
  return significand << BigInt(exponent || 1);
}

function roundingInterval(bits) {
  bits &= 0x7fffffff;
  const value = scaledFloat32(bits);
  // At the largest finite value, the next encoding represents the virtual
  // value 2^128 here, giving the correct overflow midpoint.
  return [
    (value + scaledFloat32(bits - 1)) / 2n,
    (value + scaledFloat32(bits + 1)) / 2n,
    (bits & 1) === 0,
  ];
}

function roundsToInterval(digits, exponent, [lower, upper, inclusive]) {
  let numerator = BigInt(digits) << 150n;
  if (exponent >= 0) {
    numerator *= 10n ** BigInt(exponent);
  } else {
    const denominator = 10n ** BigInt(-exponent);
    lower *= denominator;
    upper *= denominator;
  }
  return inclusive
    ? lower <= numerator && numerator <= upper
    : lower < numerator && numerator < upper;
}

// Candidate acceptance for finite, nonzero binary32 magnitudes. No binary64
// parsing is involved, so decimal-to-f64-to-f32 double rounding is impossible.
export function roundsToFloat32(bits, digits, exponent) {
  return roundsToInterval(digits, exponent, roundingInterval(bits));
}

export function shortestFloat32(bits) {
  const value = float32FromBits(bits);
  if (Number.isNaN(value)) return "NaN";
  if (value === Infinity) return "Infinity";
  if (value === -Infinity) return "-Infinity";
  if (value === 0) return "0";

  const negative = (bits >>> 31) !== 0;
  const exponentBits = (bits >>> 23) & 0xff;
  const mantissa = bits & 0x7fffff;
  const significand = BigInt(exponentBits ? mantissa | 0x800000 : mantissa);
  const binaryExponent = exponentBits ? exponentBits - 150 : -149;
  const decimalInteger = binaryExponent >= 0
    ? significand << BigInt(binaryExponent)
    : significand * 5n ** BigInt(-binaryExponent);
  const decimalExponent = Math.min(binaryExponent, 0);
  const exactDigits = decimalInteger.toString();
  const interval = roundingInterval(bits);

  // At each length, test the two decimals bracketing the exact value. Choose
  // the closest one that parses back to the binary32 value; ties go to even.
  for (let count = 1; count <= exactDigits.length; ++count) {
    const shift = exactDigits.length - count + decimalExponent;
    const floor = exactDigits.slice(0, count);
    const ceil = (BigInt(floor) + 1n).toString();
    const roundTrips = digits => roundsToInterval(digits, shift, interval);
    const floorOk = roundTrips(floor);
    const ceilOk = roundTrips(ceil);
    if (!floorOk && !ceilOk) continue;

    let chosen;
    if (floorOk && ceilOk) {
      const unit = 10n ** BigInt(exactDigits.length - count);
      const distance = 2n * (decimalInteger % unit);
      chosen = distance < unit ? floor : distance > unit ? ceil
        : (Number(floor[floor.length - 1]) & 1) === 0 ? floor : ceil;
    } else {
      chosen = floorOk ? floor : ceil;
    }
    const point = chosen.length + shift;
    return formatDecimal(negative, chosen.replace(/0+$/, ""), point);
  }
  throw new Error(`no shortest f32 decimal for 0x${bits.toString(16)}`);
}

export function withAssemblyScriptDotZero(text) {
  return /^-?\d+$/.test(text) ? text + ".0" : text;
}
