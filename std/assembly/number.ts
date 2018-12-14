import {
  itoa,
  dtoa
} from "./internal/number";

import {
  isNaN as builtin_isNaN,
  isFinite as builtin_isFinite
} from "./builtins";

export abstract class Number {

  static readonly EPSILON: f64 = reinterpret<f64>(0x3CB0000000000000); // 0x1p-52
  static readonly MIN_VALUE: f64 = reinterpret<f64>(0x0000000000000001); // 0x0.0000000000001p+0
  static readonly MAX_VALUE: f64 = reinterpret<f64>(0x7FEFFFFFFFFFFFFF); // 0x1.fffffffffffffp+1023
  static readonly MIN_NORMAL_VALUE: f64 = reinterpret<f64>(0x0010000000000000); // 0x1p-1022
  static readonly MIN_SAFE_INTEGER: f64 = -9007199254740991;
  static readonly MAX_SAFE_INTEGER: f64 =  9007199254740991;
  static readonly POSITIVE_INFINITY: f64 =  Infinity;
  static readonly NEGATIVE_INFINITY: f64 = -Infinity;
  static readonly NaN: f64 = NaN;

  static isNaN(value: f64): bool {
    return builtin_isNaN<f64>(value);
  }

  static isFinite(value: f64): bool {
    return builtin_isFinite<f64>(value);
  }

  static isSafeInteger(value: f64): bool {
    return abs<f64>(value) <= f64.MAX_SAFE_INTEGER && trunc<f64>(value) == value;
  }

  static isInteger(value: f64): bool {
    return builtin_isFinite<f64>(value) && trunc<f64>(value) == value;
  }

  static parseInt(value: string, radix: i32 = 0): f64 {
    return <f64>parseI64(value, radix);
  }

  static parseFloat(value: string): f64 {
    return parseFloat(value);
  }
}

@sealed
export abstract class I8 extends Number {
  toString(this: i8): String {
    return itoa(this);
  }
}

@sealed
export abstract class I16 extends Number {
  toString(this: i16): String {
    return itoa(this);
  }

}

@sealed
export abstract class I32 extends Number {
  toString(this: i32): String {
    return itoa(this);
  }

}

@sealed
export abstract class I64 extends Number {
  toString(this: i64): String {
    return itoa(this);
  }

}

@sealed
export abstract class Isize extends Number {
  toString(this: isize): String {
    return itoa(this);
  }

}

@sealed
export abstract class U8 extends Number {
  toString(this: u8): String {
    return itoa(this);
  }

}

@sealed
export abstract class U16 extends Number {
  toString(this: u16): String {
    return itoa(this);
  }

}

@sealed
export abstract class U32 extends Number {
  toString(this: u32): String {
    return itoa(this);
  }

}

@sealed
export abstract class U64 extends Number {
  toString(this: u64): String {
    return itoa(this);
  }

}

@sealed
export abstract class Usize extends Number {
  toString(this: usize): String {
    return itoa(this);
  }
}

@sealed
export abstract class Bool extends Number {
  toString(this: bool): String {
    return this ? "true" : "false";
  }
}

@sealed
export abstract class F32 extends Number {
  toString(this: f32): String {
    return dtoa(this);
  }

}

@sealed
export abstract class F64 extends Number {
  toString(this: f64): String {
    return dtoa(this);
  }
}
