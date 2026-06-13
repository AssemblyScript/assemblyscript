import { u256 } from './u256';

export class i256 {

  constructor(
    public lo1: i64 = 0,
    public lo2: i64 = 0,
    public hi1: i64 = 0,
    public hi2: i64 = 0,
  ) {
  }

  @inline static get Zero(): i256 {
    return new i256();
  }

  @inline static get One(): i256 {
    return new i256(1);
  }

  @inline static get Min(): i256 {
    return new i256(0, 0, 0, 0x8000000000000000);
  }

  @inline static get Max(): i256 {
    return new i256(u64.MAX_VALUE, u64.MAX_VALUE, u64.MAX_VALUE, 0x7FFFFFFFFFFFFFFF);
  }

  /**
   * Construct from a decimal (or `radix`) string. A leading `-` parses the magnitude
   * and negates (two's complement), mirroring `i128.fromString`.
   */
  static fromString(str: string, radix: i32 = 10): i256 {
    if (str.length > 0 && str.charCodeAt(0) == 0x2D /* '-' */) {
      return changetype<i256>(u256.fromString(str.substring(1), radix)).neg();
    }
    return changetype<i256>(u256.fromString(str, radix));
  }

  @inline @operator.prefix('!')
  static isEmpty(value: i256): bool {
    return value.isZero();
  }

  @inline
  isNeg(): bool {
    return <bool>(this.hi2 >>> 63);
  }

  @inline
  isZero(): bool {
    return !(this.lo1 | this.lo2 | this.hi1 | this.hi2);
  }

  @inline @operator.prefix('-')
  neg(): i256 {
    // two's complement: ~x + 1, carrying across the four limbs
    let l1 = ~(<u64>this.lo1);
    let l2 = ~(<u64>this.lo2);
    let h1 = ~(<u64>this.hi1);
    let h2 = ~(<u64>this.hi2);
    l1 += 1;
    if (!l1) {
      l2 += 1;
      if (!l2) {
        h1 += 1;
        if (!h1) h2 += 1;
      }
    }
    return new i256(<i64>l1, <i64>l2, <i64>h1, <i64>h2);
  }

  /**
   * Decimal (or `radix`) string. Sign + unsigned magnitude: negate (two's complement)
   * and reinterpret as u256, which is layout-identical. i256.Min survives because
   * neg(Min) == Min and its bit pattern reinterpreted unsigned is exactly 2^255.
   */
  toString(radix: i32 = 10): string {
    if (!this.isNeg()) return changetype<u256>(this).toString(radix);
    return '-' + changetype<u256>(this.neg()).toString(radix);
  }
}
