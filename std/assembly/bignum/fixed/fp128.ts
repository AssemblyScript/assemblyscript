import { i128 } from '../integer/i128';
import { u128 } from '../integer/u128';

// Support only this fractions:
// fp128<u8>   =>   8 bits (~ 2  decimal digits)
// fp128<u16>  =>  16 bits (~ 4  decimal digits)
// fp128<u24>  =>  24 bits (~ 7  decimal digits)
// fp128<u32>  =>  32 bits (~ 9  decimal digits)
// fp128<u40>  =>  40 bits (~ 12 decimal digits)
// fp128<u48>  =>  48 bits (~ 14 decimal digits)
// fp128<u56>  =>  56 bits (~ 16 decimal digits)
// fp128<u64>  =>  64 bits (~ 19 decimal digits)
// fp128<u72>  =>  72 bits (~ 21 decimal digits)
// fp128<u80>  =>  80 bits (~ 24 decimal digits)
// fp128<u88>  =>  88 bits (~ 26 decimal digits)
// fp128<u96>  =>  96 bits (~ 28 decimal digits)
// fp128<u104> => 104 bits (~ 31 decimal digits)
// fp128<u112> => 112 bits (~ 33 decimal digits)
// fp128<u120> => 120 bits (~ 36 decimal digits)

export class fp128<Q> {

  static readonly Zero: fp128<Q> = new fp128<Q>(0);
  static readonly One: fp128<Q> = new fp128<Q>(1);

  protected value: i128 = i128.Zero;

  constructor(lo: u64 = 0, hi: i64 = 0) {
    this.value.lo = lo;
    this.value.hi = hi;
  }

  @inline
  get intBits(): i32 {
    return 128 - this.fractBits;
  }

  @inline
  get fractBits(): i32 {
    if (isReference<Q>()) {
      return 8 * offsetof<Q>();
    } else {
      return 8 * sizeof<Q>();
    }
  }

  @inline
  get int(): i128 {
    return this.value >>> this.fractBits;
  }

  @inline
  get fract(): u128 {
    return (chagetype<u128>(this.value)) << this.intBits;
  }

  // TODO
}
