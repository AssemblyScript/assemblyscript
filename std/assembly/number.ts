import {
  itoa,
  dtoa
} from "./internal/number";

abstract class Number<T> {
  private constructor() {
    unreachable();
  }

  toString(this: T): String {
    // TODO: radix other than 10
    if (isInteger<T>()) return itoa<T>(this);
    if (isFloat<T>()) return dtoa(this);
    assert(false);
    return "";
  }
}

@sealed
export abstract class I8 extends Number<i8> {
}

@sealed
export abstract class I16 extends Number<i16> {
}

@sealed
export abstract class I32 extends Number<i32> {
}

@sealed
export abstract class I64 extends Number<i64> {
}

@sealed
export abstract class Isize extends Number<isize> {
}

@sealed
export abstract class U8 extends Number<u8> {
}

@sealed
export abstract class U16 extends Number<u16> {
}

@sealed
export abstract class U32 extends Number<u32> {
}

@sealed
export abstract class U64 extends Number<u64> {
}

@sealed
export abstract class Usize extends Number<usize> {
}

@sealed
export abstract class Bool extends Number<bool> {
  toString(this: bool): String {
    return this ? "true" : "false";
  }
}

@sealed
export abstract class F32 extends Number<f32> {
}

@sealed
export abstract class F64 extends Number<f64> {
}
