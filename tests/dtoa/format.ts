import {
  toDigits32, toDigits64, writeUnpacked8, gDigits, gDigHi, gDigLo, gSig,
} from "~lib/util/dtoa";
import { dtoa as numberDtoa, dtoa_buffered as numberBuffered } from "util/number";

// The allocator can grow into host-grown memory during the string sweep.
const output = memory.data(64);

export function outputBuffer(): usize {
  return output;
}

// Called by the JS differential harness with exact input bit patterns.
export function format64Bits(bits: u64, buffer: usize): u32 {
  return numberBuffered<f64>(buffer, reinterpret<f64>(bits));
}

export function format32Bits(bits: u32, buffer: usize): u32 {
  return numberBuffered<f32>(buffer, reinterpret<f32>(bits));
}

export function string64Bits(bits: u64, buffer: usize): u32 {
  let result = numberDtoa<f64>(reinterpret<f64>(bits));
  memory.copy(buffer, changetype<usize>(result), <usize>result.length << 1);
  return result.length;
}

export function string32Bits(bits: u32, buffer: usize): u32 {
  let result = numberDtoa<f32>(reinterpret<f32>(bits));
  memory.copy(buffer, changetype<usize>(result), <usize>result.length << 1);
  return result.length;
}

toDigits32(1);
assert(gDigits == 1);
assert(gDigHi == 0x3130303030303030); // "00000001"
toDigits32(78);
assert(gDigits == 2);
assert(gDigHi == 0x3837303030303030); // "00000078"
toDigits32(1234);
assert(gDigits == 4);
toDigits32(10000);
assert(gDigits == 5);
toDigits32(10000000);
assert(gDigits == 8);

toDigits64(100000001);
assert(gDigits == 9);
toDigits64(100000000);
assert(gDigits == 9);
toDigits64(1000000000000000);
assert(gDigits == 16);
toDigits64(1234567890123456);
assert(gDigits == 16);
assert(gDigHi == 0x3837363534333231); // "12345678"
assert(gDigLo == 0x3635343332313039); // "90123456"

// Exercise every four-digit group in every SIMD lane (and the scalar path).
const packed = memory.data(32);
for (let lane = 0; lane < 4; ++lane) {
  let scale: u64 = lane == 0 ? 1000000000000 : lane == 1 ? 100000000 : lane == 2 ? 10000 : 1;
  let original: u64 = lane == 0 ? 1234 : lane == 1 ? 0 : lane == 2 ? 5678 : 1;
  let base = <u64>1234000056780001 - original * scale;
  for (let group: u64 = 0; group < 10000; ++group) {
    let value = base + group * scale;
    toDigits64(value);
    writeUnpacked8(packed, gDigHi);
    writeUnpacked8(packed + 16, gDigLo);
    let expected = value.toString().padStart(16, "0");
    for (let i = 0; i < 16; ++i)
      assert(load<u16>(packed + (<usize>i << 1)) == expected.charCodeAt(i));
  }
}

// Writers may store complete digit blocks beyond the logical end. Keep the
// canary after the documented 32-code-unit capacity.
const guarded = memory.data(68);

function check64(value: f64, expected: string, normalized: bool = false): void {
  store<u16>(guarded, 0x5a5a);
  store<u16>(guarded + 66, 0x6b6b);
  let count = numberBuffered<f64>(guarded + 2, value);
  assert(count == expected.length);
  for (let i: u32 = 0; i < count; ++i)
    assert(load<u16>(guarded + 2 + (<usize>i << 1)) == expected.charCodeAt(i));
  assert(load<u16>(guarded) == 0x5a5a);
  assert(load<u16>(guarded + 66) == 0x6b6b);
  if (normalized) assert(gSig >= 1000000000000000 && gSig < 10000000000000000);
}

function check32(value: f32, expected: string): void {
  store<u16>(guarded, 0x5a5a);
  store<u16>(guarded + 66, 0x6b6b);
  let count = numberBuffered<f32>(guarded + 2, value);
  assert(count == expected.length);
  for (let i: u32 = 0; i < count; ++i)
    assert(load<u16>(guarded + 2 + (<usize>i << 1)) == expected.charCodeAt(i));
  assert(load<u16>(guarded) == 0x5a5a);
  assert(load<u16>(guarded + 66) == 0x6b6b);
}

check64(0.1 + 0.2, "0.30000000000000004", true);
check64(1e-6, "0.000001", true);
check64(1e-7, "1e-7", true);
check64(1e20, "100000000000000000000.0");
check64(1e21, "1e+21");
check64(123456789, "123456789.0");
check64(9007199254740992, "9007199254740992.0");
check64(f64.MIN_VALUE, "5e-324", true);
check64(reinterpret<f64>(0x0010000000000000), "2.2250738585072014e-308", true);
check64(reinterpret<f64>(0x3ff0000000000001), "1.0000000000000002", true);
check32(<f32>1, "1.0");
check32(<f32>1234, "1234.0");
check32(<f32>16777215, "16777215.0");
check32(<f32>16777216, "16777216.0");
check32(<f32>0.1, "0.1");
check32(reinterpret<f32>(0x00000001), "1e-45");
check32(reinterpret<f32>(0x00000002), "3e-45");
check32(reinterpret<f32>(0x000003e8), "1.401e-42");
check32(reinterpret<f32>(0x007fffff), "1.1754942e-38");
check32(reinterpret<f32>(0x3f800001), "1.0000001");
check32(reinterpret<f32>(0x7f7fffff), "3.4028235e+38");
check32(<f32>1e-6, "0.000001");
check32(<f32>1e-7, "1e-7");
// Power-of-two exponents with a one-digit correction in toDecimalFloat.
check32(reinterpret<f32>(<u32>31 << 23), "1.2621775e-29");
check32(reinterpret<f32>(<u32>214 << 23), "1.5474251e+26");
check32(reinterpret<f32>(<u32>217 << 23), "1.2379401e+27");

// The string entry point returns interned literals for special values.
assert(changetype<usize>(numberDtoa<f64>(0)) == changetype<usize>("0.0"));
assert(changetype<usize>(numberDtoa<f64>(-0.0)) == changetype<usize>("0.0"));
assert(changetype<usize>(numberDtoa<f32>(<f32>0)) == changetype<usize>("0.0"));
assert(changetype<usize>(numberDtoa<f32>(reinterpret<f32>(0x80000000))) == changetype<usize>("0.0"));
assert(changetype<usize>(numberDtoa<f64>(NaN)) == changetype<usize>("NaN"));
assert(changetype<usize>(numberDtoa<f64>(Infinity)) == changetype<usize>("Infinity"));
assert(changetype<usize>(numberDtoa<f64>(-Infinity)) == changetype<usize>("-Infinity"));
assert(changetype<usize>(numberDtoa<f32>(<f32>NaN)) == changetype<usize>("NaN"));
assert(changetype<usize>(numberDtoa<f32>(<f32>Infinity)) == changetype<usize>("Infinity"));
assert(changetype<usize>(numberDtoa<f32>(<f32>-Infinity)) == changetype<usize>("-Infinity"));
