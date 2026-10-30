import { readFileSync } from "node:fs";

const source = readFileSync(new URL("../../std/assembly/util/dtoa.ts", import.meta.url), "utf8");
const mask64 = (1n << 64n) - 1n;

function table(name) {
  const match = new RegExp(`\\b${name}\\s*=\\s*memory\\.data<[^>]+>\\(\\[([\\s\\S]*?)\\]\\)`).exec(source);
  if (!match) throw new Error(`missing ${name}`);
  return [...match[1].matchAll(/0x[0-9a-f]+/gi)].map(([hex]) => BigInt(hex));
}

function exactPower(index) {
  const exponent = index - 293;
  const power = 10n ** BigInt(Math.abs(exponent));
  const bitCount = power.toString(2).length;
  return exponent >= 0
    ? bitCount <= 128 ? power << BigInt(128 - bitCount) : power >> BigInt(bitCount - 128)
    : (1n << BigInt(127 + bitCount)) / power;
}

export function verifyPowers() {
  const majorTable = table("POW10_MAJOR");
  const fixups = table("POW10_FIXUPS");
  const shared = table("POW10_SHARED");
  if (majorTable.length !== 46 || fixups.length !== 20 || shared.length !== 53) {
    throw new Error("power-table lengths changed; update the verifier with the layout");
  }

  // Shared highs cover powers 10^27..10^-17. Their rounding direction is
  // important to the f32 path, even where the corresponding low is not stored.
  for (let t = 17; t <= 61; ++t) {
    const exact = exactPower(337 - t);
    const high = exact >> 64n;
    const low = exact & mask64;
    if (shared[t - 17] !== high + BigInt(low !== 0n)) {
      throw new Error(`shared high mismatch at t=${t}`);
    }
    if (t >= 45 && t <= 52 && shared[t] !== low) {
      throw new Error(`shared low mismatch at t=${t}`);
    }
  }

  // Reproduce the compact reconstruction using BigInt multiplication, then
  // compare all 618 entries against exact powers of ten. The reference above
  // does not use any cached factors or correction bits.
  for (let index = 0; index < 618; ++index) {
    const j = index + 10;
    const major = (j * 293) >>> 13;
    if (major !== Math.floor(j / 28)) throw new Error(`quotient mismatch at ${j}`);
    const minor = j - major * 28;
    const factor = shared[27 - minor];
    const anchor = (majorTable[major * 2] << 64n) | majorTable[major * 2 + 1];
    const product = anchor * factor;
    const c0 = product & mask64;
    const c1 = (product >> 64n) & mask64;
    const c2 = product >> 128n;
    let high;
    let low;
    if (c2 >> 63n) {
      high = c2;
      low = c1;
    } else {
      high = (c2 << 1n) | (c1 >> 63n);
      low = ((c1 << 1n) | (c0 >> 63n)) & mask64;
    }
    const fixup = (fixups[index >> 5] >> BigInt(index & 31)) & 1n;
    low = (low - fixup) & mask64;
    const actual = (high << 64n) | low;
    const expected = exactPower(index);
    if (actual !== expected) {
      throw new Error(`power mismatch at ${index}: ${actual.toString(16)} != ${expected.toString(16)}`);
    }
  }
}
