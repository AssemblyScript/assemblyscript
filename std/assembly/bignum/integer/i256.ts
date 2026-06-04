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

  /*
  @inline
  static abs(value: i128): i128 {
    return value < 0 ? value.neg() : value;
  }
  */

  // TODO
}
