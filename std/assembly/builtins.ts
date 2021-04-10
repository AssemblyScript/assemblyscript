type auto = i32;

// @ts-ignore: decorator
@builtin
export declare function isInteger<T>(value?: T): bool;

// @ts-ignore: decorator
@builtin
export declare function isFloat<T>(value?: T): bool;

// @ts-ignore: decorator
@builtin
export declare function isBoolean<T>(value?: T): bool;

// @ts-ignore: decorator
@builtin
export declare function isSigned<T>(value?: T): bool;

// @ts-ignore: decorator
@builtin
export declare function isReference<T>(value?: T): bool;

// @ts-ignore: decorator
@builtin
export declare function isString<T>(value?: T): bool;

// @ts-ignore: decorator
@builtin
export declare function isArray<T>(value?: T): bool;

// @ts-ignore: decorator
@builtin
export declare function isArrayLike<T>(value?: T): bool;

// @ts-ignore: decorator
@builtin
export declare function isFunction<T>(value?: T): bool;

// @ts-ignore: decorator
@builtin
export declare function isNullable<T>(value?: T): bool;

// @ts-ignore: decorator
@builtin
export declare function isDefined(expression: auto): bool;

// @ts-ignore: decorator
@builtin
export declare function isConstant(expression: auto): bool;

// @ts-ignore: decorator
@builtin
export declare function isManaged<T>(value?: T): bool;

// @ts-ignore: decorator
@builtin
export declare function isVoid<T>(): bool;

// @ts-ignore
@builtin
export declare function lengthof<T>(func?: T): i32;

// @ts-ignore: decorator
@builtin
export declare function clz<T>(value: T): T;

// @ts-ignore: decorator
@builtin
export declare function ctz<T>(value: T): T;

// @ts-ignore: decorator
@builtin
export declare function popcnt<T>(value: T): T;

// @ts-ignore: decorator
@builtin
export declare function rotl<T>(value: T, shift: T): T;

// @ts-ignore: decorator
@builtin
export declare function rotr<T>(value: T, shift: T): T;

// @ts-ignore: decorator
@builtin
export declare function abs<T>(value: T): T;

// @ts-ignore: decorator
@builtin
export declare function max<T>(left: T, right: T): T;

// @ts-ignore: decorator
@builtin
export declare function min<T>(left: T, right: T): T;

// @ts-ignore: decorator
@builtin
export declare function ceil<T>(value: T): T;

// @ts-ignore: decorator
@builtin
export declare function floor<T>(value: T): T;

// @ts-ignore: decorator
@builtin
export declare function copysign<T>(left: T, right: T): T;

// @ts-ignore: decorator
@builtin
export declare function nearest<T>(value: T): T;

// @ts-ignore: decorator
@builtin
export declare function reinterpret<T>(value: number): T;

// @ts-ignore: decorator
@builtin
export declare function sqrt<T>(value: T): T;

// @ts-ignore: decorator
@builtin
export declare function trunc<T>(value: T): T;

// @ts-ignore: decorator
@builtin
export declare function add<T>(left: T, right: T): T;

// @ts-ignore: decorator
@builtin
export declare function sub<T>(left: T, right: T): T;

// @ts-ignore: decorator
@builtin
export declare function mul<T>(left: T, right: T): T;

// @ts-ignore: decorator
@builtin
export declare function div<T>(left: T, right: T): T;

// @ts-ignore: decorator
@unsafe @builtin
export declare function load<T>(ptr: usize, immOffset?: usize, immAlign?: usize): T;

// @ts-ignore: decorator
@unsafe @builtin
export declare function store<T>(ptr: usize, value: auto, immOffset?: usize, immAlign?: usize): void;

// @ts-ignore: decorator
@builtin
export declare function sizeof<T>(): usize; // | u32 / u64

// @ts-ignore: decorator
@builtin
export declare function alignof<T>(): usize; // | u32 / u64

// @ts-ignore: decorator
@builtin
export declare function offsetof<T>(fieldName?: string): usize; // | u32 / u64

// @ts-ignore: decorator
@builtin
export declare function idof<T>(): u32;

// @ts-ignore
@builtin
export declare function nameof<T>(): string;

// @ts-ignore: decorator
@builtin
export declare function select<T>(ifTrue: T, ifFalse: T, condition: bool): T;

// @ts-ignore: decorator
@unsafe @builtin
export declare function unreachable(): void;

// @ts-ignore: decorator
@builtin
export declare function changetype<T>(value: auto): T;

// @ts-ignore: decorator
@builtin
export declare function assert<T>(isTrueish: T, message?: string): T;

// @ts-ignore: decorator
@unsafe @builtin
export declare function unchecked<T>(expr: T): T;

// @ts-ignore: decorator
@unsafe @builtin
export declare function call_indirect<T>(index: u32, ...args: auto[]): T;

// @ts-ignore: decorator
@builtin
export declare function instantiate<T>(...args: auto[]): T;

export namespace atomic {
  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function load<T>(ptr: usize, immOffset?: usize): T;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function store<T>(ptr: usize, value: T, immOffset?: usize): void;

  // @ts-ignore: decorator
  @builtin
  export declare function add<T>(ptr: usize, value: T, immOffset?: usize): T;

  // @ts-ignore: decorator
  @builtin
  export declare function sub<T>(ptr: usize, value: T, immOffset?: usize): T;

  // @ts-ignore: decorator
  @builtin
  export declare function and<T>(ptr: usize, value: T, immOffset?: usize): T;

  // @ts-ignore: decorator
  @builtin
  export declare function or<T>(ptr: usize, value: T, immOffset?: usize): T;

  // @ts-ignore: decorator
  @builtin
  export declare function xor<T>(ptr: usize, value: T, immOffset?: usize): T;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function xchg<T>(ptr: usize, value: T, immOffset?: usize): T;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function cmpxchg<T>(ptr: usize, expected: T, replacement: T, immOffset?: usize): T;

  // @ts-ignore: decorator
  @builtin
  export declare function wait<T>(ptr: usize, expected: T, timeout: i64): AtomicWaitResult;

  // @ts-ignore: decorator
  @builtin
  export declare function notify(ptr: usize, count: i32): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function fence(): void;
}

// @ts-ignore: decorator
@lazy
export const enum AtomicWaitResult {
  OK = 0,
  NOT_EQUAL = 1,
  TIMED_OUT = 2
}

// @ts-ignore: decorator
@builtin
export declare function i8(value: auto): i8;

export namespace i8 {

  // @ts-ignore: decorator
  @lazy
  export const MIN_VALUE: i8 = -128;

  // @ts-ignore: decorator
  @lazy
  export const MAX_VALUE: i8 =  127;
}

// @ts-ignore: decorator
@builtin
export declare function i16(value: auto): i16;

export namespace i16 {

  // @ts-ignore: decorator
  @lazy
  export const MIN_VALUE: i16 = -32768;

  // @ts-ignore: decorator
  @lazy
  export const MAX_VALUE: i16 =  32767;
}

// @ts-ignore: decorator
@builtin
export declare function i32(value: auto): i32;

export namespace i32 {

  // @ts-ignore: decorator
  @lazy
  export const MIN_VALUE: i32 = -2147483648;

  // @ts-ignore: decorator
  @lazy
  export const MAX_VALUE: i32 =  2147483647;

  // @ts-ignore: decorator
  @builtin
  export declare function clz(value: i32): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function ctz(value: i32): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function popcnt(value: i32): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function add(left: i32, right:i32): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function sub(left: i32, right:i32): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function mul(left: i32, right:i32): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function div_s(left: i32, right:i32): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function div_u(left: i32, right:i32): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function rotl(value: i32, shift: i32): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function rotr(value: i32, shift: i32): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function reinterpret_f32(value: f32): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function load8_s(ptr: usize, immOffset?: usize, immAlign?: usize): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function load8_u(ptr: usize, immOffset?: usize, immAlign?: usize): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function load16_s(ptr: usize, immOffset?: usize, immAlign?: usize): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function load16_u(ptr: usize, immOffset?: usize, immAlign?: usize): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function load(ptr: usize, immOffset?: usize, immAlign?: usize): i32;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function store8(ptr: usize, value: i32, immOffset?: usize, immAlign?: usize): void;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function store16(ptr: usize, value: i32, immOffset?: usize, immAlign?: usize): void;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function store(ptr: usize, value: i32, immOffset?: usize, immAlign?: usize): void;

  export namespace atomic {

    // @ts-ignore: decorator
    @builtin
    export declare function load8_u(ptr: usize, immOffset?: usize): i32;

    // @ts-ignore: decorator
    @builtin
    export declare function load16_u(ptr: usize, immOffset?: usize): i32;

    // @ts-ignore: decorator
    @builtin
    export declare function load(ptr: usize, immOffset?: usize): i32;

    // @ts-ignore: decorator
    @unsafe @builtin
    export declare function store8(ptr: usize, value: i32, immOffset?: usize): void;

    // @ts-ignore: decorator
    @unsafe @builtin
    export declare function store16(ptr: usize, value: i32, immOffset?: usize): void;

    // @ts-ignore: decorator
    @unsafe @builtin
    export declare function store(ptr: usize, value: i32, immOffset?: usize): void;

    // @ts-ignore: decorator
    @builtin
    export declare function wait(ptr: usize, expected: i32, timeout: i64): AtomicWaitResult;

    export namespace rmw8 {

      // @ts-ignore: decorator
      @builtin
      export declare function add_u(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @builtin
      export declare function sub_u(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @builtin
      export declare function and_u(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @builtin
      export declare function or_u(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @builtin
      export declare function xor_u(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @unsafe @builtin
      export declare function xchg_u(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @unsafe @builtin
      export declare function cmpxchg_u(ptr: usize, expected: i32, replacement: i32, immOffset?: usize): i32;
    }

    export namespace rmw16 {

      // @ts-ignore: decorator
      @builtin
      export declare function add_u(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @builtin
      export declare function sub_u(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @builtin
      export declare function and_u(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @builtin
      export declare function or_u(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @builtin
      export declare function xor_u(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @unsafe @builtin
      export declare function xchg_u(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @unsafe @builtin
      export declare function cmpxchg_u(ptr: usize, expected: i32, replacement: i32, immOffset?: usize): i32;
    }

    export namespace rmw {

      // @ts-ignore: decorator
      @builtin
      export declare function add(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @builtin
      export declare function sub(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @builtin
      export declare function and(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @builtin
      export declare function or(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @builtin
      export declare function xor(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @unsafe @builtin
      export declare function xchg(ptr: usize, value: i32, immOffset?: usize): i32;

      // @ts-ignore: decorator
      @unsafe @builtin
      export declare function cmpxchg(ptr: usize, expected: i32, replacement: i32, immOffset?: usize): i32;
    }
  }
}

// @ts-ignore: decorator
@builtin
export declare function i64(value: auto): i64;

export namespace i64 {

  // @ts-ignore: decorator
  @lazy
  export const MIN_VALUE: i64 = -9223372036854775808;

  // @ts-ignore: decorator
  @lazy
  export const MAX_VALUE: i64 =  9223372036854775807;

  // @ts-ignore: decorator
  @builtin
  export declare function clz(value: i64): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function ctz(value: i64): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function add(left: i64, right:i64): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function sub(left: i64, right:i64): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function mul(left: i64, right:i64): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function div_s(left: i64, right:i64): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function div_u(left: i64, right:i64): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function load8_s(ptr: usize, immOffset?: usize, immAlign?: usize): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function load8_u(ptr: usize, immOffset?: usize, immAlign?: usize): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function load16_s(ptr: usize, immOffset?: usize, immAlign?: usize): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function load16_u(ptr: usize, immOffset?: usize, immAlign?: usize): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function load32_s(ptr: usize, immOffset?: usize, immAlign?: usize): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function load32_u(ptr: usize, immOffset?: usize, immAlign?: usize): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function load(ptr: usize, immOffset?: usize): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function popcnt(value: i64): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function rotl(value: i64, shift: i64): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function rotr(value: i64, shift: i64): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function reinterpret_f64(value: f64): i64;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function store8(ptr: usize, value: i64, immOffset?: usize, immAlign?: usize): void;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function store16(ptr: usize, value: i64, immOffset?: usize, immAlign?: usize): void;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function store32(ptr: usize, value: i64, immOffset?: usize, immAlign?: usize): void;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function store(ptr: usize, value: i64, immOffset?: usize, immAlign?: usize): void;

  export namespace atomic {

    // @ts-ignore: decorator
    @builtin
    export declare function load8_u(ptr: usize, immOffset?: usize): i64;

    // @ts-ignore: decorator
    @builtin
    export declare function load16_u(ptr: usize, immOffset?: usize): i64;

    // @ts-ignore: decorator
    @builtin
    export declare function load32_u(ptr: usize, immOffset?: usize): i64;

    // @ts-ignore: decorator
    @builtin
    export declare function load(ptr: usize, immOffset?: usize): i64;

    // @ts-ignore: decorator
    @unsafe @builtin
    export declare function store8(ptr: usize, value: i64, immOffset?: usize): void;

    // @ts-ignore: decorator
    @unsafe @builtin
    export declare function store16(ptr: usize, value: i64, immOffset?: usize): void;

    // @ts-ignore: decorator
    @unsafe @builtin
    export declare function store32(ptr: usize, value: i64, immOffset?: usize): void;

    // @ts-ignore: decorator
    @unsafe @builtin
    export declare function store(ptr: usize, value: i64, immOffset?: usize): void;

    // @ts-ignore: decorator
    @builtin
    export declare function wait(ptr: usize, expected: i64, timeout: i64): AtomicWaitResult;

    export namespace rmw8 {

      // @ts-ignore: decorator
      @builtin
      export declare function add_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function sub_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function and_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function or_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function xor_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @unsafe @builtin
      export declare function xchg_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @unsafe @builtin
      export declare function cmpxchg_u(ptr: usize, expected: i64, replacement: i64, immOffset?: usize): i64;
    }

    export namespace rmw16 {

      // @ts-ignore: decorator
      @builtin
      export declare function add_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function sub_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function and_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function or_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function xor_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @unsafe @builtin
      export declare function xchg_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @unsafe @builtin
      export declare function cmpxchg_u(ptr: usize, expected: i64, replacement: i64, immOffset?: usize): i64;
    }

    export namespace rmw32 {

      // @ts-ignore: decorator
      @builtin
      export declare function add_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function sub_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function and_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function or_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function xor_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @unsafe @builtin
      export declare function xchg_u(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @unsafe @builtin
      export declare function cmpxchg_u(ptr: usize, expected: i64, replacement: i64, immOffset?: usize): i64;
    }

    export namespace rmw {

      // @ts-ignore: decorator
      @builtin
      export declare function add(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function sub(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function and(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function or(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @builtin
      export declare function xor(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @unsafe @builtin
      export declare function xchg(ptr: usize, value: i64, immOffset?: usize): i64;

      // @ts-ignore: decorator
      @unsafe @builtin
      export declare function cmpxchg(ptr: usize, expected: i64, replacement: i64, immOffset?: usize): i64;
    }
  }
}

// @ts-ignore: decorator
@builtin
export declare function isize(value: auto): isize;

export namespace isize {

  // @ts-ignore: decorator
  @lazy
  export const MIN_VALUE: isize = sizeof<i32>() == sizeof<isize>()
    ? -2147483648
    : <isize>-9223372036854775808;

  // @ts-ignore: decorator
  @lazy
  export const MAX_VALUE: isize = sizeof<i32>() == sizeof<isize>()
    ? 2147483647
    : <isize>9223372036854775807;
}

// @ts-ignore: decorator
@builtin
export declare function u8(value: auto): u8;

export namespace u8 {

  // @ts-ignore: decorator
  @lazy
  export const MIN_VALUE: u8 = 0;

  // @ts-ignore: decorator
  @lazy
  export const MAX_VALUE: u8 = 255;
}

// @ts-ignore: decorator
@builtin
export declare function u16(value: auto): u16;

export namespace u16 {

  // @ts-ignore: decorator
  @lazy
  export const MIN_VALUE: u16 = 0;

  // @ts-ignore: decorator
  @lazy
  export const MAX_VALUE: u16 = 65535;
}

// @ts-ignore: decorator
@builtin
export declare function u32(value: auto): u32;

export namespace u32 {

  // @ts-ignore: decorator
  @lazy
  export const MIN_VALUE: u32 = 0;

  // @ts-ignore: decorator
  @lazy
  export const MAX_VALUE: u32 = 4294967295;
}

// @ts-ignore: decorator
@builtin
export declare function u64(value: auto): u64;

export namespace u64 {

  // @ts-ignore: decorator
  @lazy
  export const MIN_VALUE: u64 = 0;

  // @ts-ignore: decorator
  @lazy
  export const MAX_VALUE: u64 = 18446744073709551615;
}

// @ts-ignore: decorator
@builtin
export declare function usize(value: auto): usize;

export namespace usize {

  // @ts-ignore: decorator
  @lazy
  export const MIN_VALUE: usize = 0;

  // @ts-ignore: decorator
  @lazy
  export const MAX_VALUE: usize = sizeof<u32>() == sizeof<usize>()
    ? 4294967295
    : <usize>18446744073709551615;
}

// @ts-ignore: decorator
@builtin
export declare function bool(value: auto): bool;

export namespace bool {

  // @ts-ignore: decorator
  @lazy
  export const MIN_VALUE: bool = false;

  // @ts-ignore: decorator
  @lazy
  export const MAX_VALUE: bool = true;
}

// @ts-ignore: decorator
@builtin
export declare function f32(value: auto): f32;

export namespace f32 {

  // @ts-ignore: decorator
  @lazy
  export const EPSILON = reinterpret<f32>(0x34000000); // 0x1p-23f

  // @ts-ignore: decorator
  @lazy
  export const MIN_VALUE = reinterpret<f32>(0x00000001); // 0x0.000001p+0f

  // @ts-ignore: decorator
  @lazy
  export const MAX_VALUE = reinterpret<f32>(0x7F7FFFFF); // 0x1.fffffep+127f

  // @ts-ignore: decorator
  @lazy
  export const MIN_NORMAL_VALUE = reinterpret<f32>(0x00800000); // 0x1p-126f

  // @ts-ignore: decorator
  @lazy
  export const MIN_SAFE_INTEGER: f32 = -16777215;

  // @ts-ignore: decorator
  @lazy
  export const MAX_SAFE_INTEGER: f32 =  16777215;

  // @ts-ignore: decorator
  @lazy
  export const POSITIVE_INFINITY: f32 =  Infinity;

  // @ts-ignore: decorator
  @lazy
  export const NEGATIVE_INFINITY: f32 = -Infinity;

  // @ts-ignore: decorator
  @lazy
  export const NaN: f32 = 0.0 / 0.0;

  // @ts-ignore: decorator
  @builtin
  export declare function abs(value: f32): f32;

  // @ts-ignore: decorator
  @builtin
  export declare function ceil(value: f32): f32;

  // @ts-ignore: decorator
  @builtin
  export declare function copysign(x: f32, y: f32): f32;

  // @ts-ignore: decorator
  @builtin
  export declare function floor(value: f32): f32;

  // @ts-ignore: decorator
  @builtin
  export declare function load(ptr: usize, immOffset?: usize, immAlign?: usize): f32;

  // @ts-ignore: decorator
  @builtin
  export declare function max(left: f32, right: f32): f32;

  // @ts-ignore: decorator
  @builtin
  export declare function min(left: f32, right: f32): f32;

  // @ts-ignore: decorator
  @builtin
  export declare function nearest(value: f32): f32;

  // @ts-ignore: decorator
  @builtin
  export declare function reinterpret_i32(value: i32): f32;

  // @ts-ignore: decorator
  @builtin
  export declare function sqrt(value: f32): f32;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function store(ptr: usize, value: f32, immOffset?: usize, immAlign?: usize): void;

  // @ts-ignore: decorator
  @builtin
  export declare function trunc(value: f32): f32;

  // @ts-ignore: decorator
  @builtin
  export declare function add(left: f32, right: f32): f32;

  // @ts-ignore: decorator
  @builtin
  export declare function sub(left: f32, right: f32): f32;

  // @ts-ignore: decorator
  @builtin
  export declare function mul(left: f32, right: f32): f32;

  // @ts-ignore: decorator
  @builtin
  export declare function div(left: f32, right: f32): f32;
}

// @ts-ignore: decorator
@builtin
export declare function f64(value: auto): f64;

export namespace f64 {

  // @ts-ignore: decorator
  @lazy
  export const EPSILON = reinterpret<f64>(0x3CB0000000000000); // 0x1p-52

  // @ts-ignore: decorator
  @lazy
  export const MIN_VALUE = reinterpret<f64>(0x0000000000000001); // 0x0.0000000000001p+0

  // @ts-ignore: decorator
  @lazy
  export const MAX_VALUE = reinterpret<f64>(0x7FEFFFFFFFFFFFFF); // 0x1.fffffffffffffp+1023

  // @ts-ignore: decorator
  @lazy
  export const MIN_NORMAL_VALUE = reinterpret<f64>(0x0010000000000000); // 0x1p-1022

  // @ts-ignore: decorator
  @lazy
  export const MIN_SAFE_INTEGER: f64 = -9007199254740991;

  // @ts-ignore: decorator
  @lazy
  export const MAX_SAFE_INTEGER: f64 =  9007199254740991;

  // @ts-ignore: decorator
  @lazy
  export const POSITIVE_INFINITY: f64 =  Infinity;

  // @ts-ignore: decorator
  @lazy
  export const NEGATIVE_INFINITY: f64 = -Infinity;

  // @ts-ignore: decorator
  @lazy
  export const NaN: f64 = 0.0 / 0.0;

  // @ts-ignore: decorator
  @builtin
  export declare function abs(value: f64): f64;

  // @ts-ignore: decorator
  @builtin
  export declare function ceil(value: f64): f64;

  // @ts-ignore: decorator
  @builtin
  export declare function copysign(x: f64, y: f64): f64;

  // @ts-ignore: decorator
  @builtin
  export declare function floor(value: f64): f64;

  // @ts-ignore: decorator
  @builtin
  export declare function load(ptr: usize, immOffset?: usize, immAlign?: usize): f64;

  // @ts-ignore: decorator
  @builtin
  export declare function max(left: f64, right: f64): f64;

  // @ts-ignore: decorator
  @builtin
  export declare function min(left: f64, right: f64): f64;

  // @ts-ignore: decorator
  @builtin
  export declare function nearest(value: f64): f64;

  // @ts-ignore: decorator
  @builtin
  export declare function reinterpret_i64(value: i64): f64;

  // @ts-ignore: decorator
  @builtin
  export declare function sqrt(value: f64): f64;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function store(ptr: usize, value: f64, immOffset?: usize, immAlign?: usize): void;

  // @ts-ignore: decorator
  @builtin
  export declare function trunc(value: f64): f64;

  // @ts-ignore: decorator
  @builtin
  export declare function add(left: f64, right: f64): f64;

  // @ts-ignore: decorator
  @builtin
  export declare function sub(left: f64, right: f64): f64;

  // @ts-ignore: decorator
  @builtin
  export declare function mul(left: f64, right: f64): f64;

  // @ts-ignore: decorator
  @builtin
  export declare function div(left: f64, right: f64): f64;
}

// @ts-ignore: decorator
@builtin
export declare function v128(
  a: i8, b: i8, c: i8, d: i8, e: i8, f: i8, g: i8, h: i8,
  i: i8, j: i8, k: i8, l: i8, m: i8, n: i8, o: i8, p: i8
): v128;

export namespace v128 {

  // @ts-ignore: decorator
  @builtin
  export declare function splat<T>(x: T): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extract_lane<T>(x: v128, idx: u8): T;

  // @ts-ignore: decorator
  @builtin
  export declare function replace_lane<T>(x: v128, idx: u8, value: T): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shuffle<T>(a: v128, b: v128, ...lanes: u8[]): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function swizzle(a: v128, s: v128): v128;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function load(ptr: usize, immOffset?: usize, immAlign?: usize): v128;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function load_ext<TFrom>(ptr: usize, immOffset?: usize, immAlign?: usize): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function load8x8_s(ptr: usize, immOffset?: u32, immAlign?: u32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function load8x8_u(ptr: usize, immOffset?: u32, immAlign?: u32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function load16x4_s(ptr: usize, immOffset?: u32, immAlign?: u32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function load16x4_u(ptr: usize, immOffset?: u32, immAlign?: u32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function load32x2_s(ptr: usize, immOffset?: u32, immAlign?: u32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function load32x2_u(ptr: usize, immOffset?: u32, immAlign?: u32): v128;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function load_splat<T>(ptr: usize, immOffset?: usize, immAlign?: usize): v128;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function load8_splat(ptr: usize, immOffset?: u32, immAlign?: u32): v128;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function load16_splat(ptr: usize, immOffset?: u32, immAlign?: u32): v128;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function load32_splat(ptr: usize, immOffset?: u32, immAlign?: u32): v128;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function load64_splat(ptr: usize, immOffset?: u32, immAlign?: u32): v128;

  // @ts-ignore: decorator
  @unsafe @builtin
  export declare function store(ptr: usize, value: v128, immOffset?: usize, immAlign?: usize): void;

  // @ts-ignore: decorator
  @builtin
  export declare function add<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function sub<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function mul<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function div<T>(a: v128, b: v128): v128; // f32, f64 only

  // @ts-ignore: decorator
  @builtin
  export declare function neg<T>(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function add_sat<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function sub_sat<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shl<T>(a: v128, b: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shr<T>(a: v128, b: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function and(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function or(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function xor(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function andnot(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function not(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function bitselect(v1: v128, v2: v128, c: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function any_true(a: v128): bool;

  // @ts-ignore: decorator
  @builtin
  export declare function all_true<T>(a: v128): bool;

  // @ts-ignore: decorator
  @builtin
  export declare function bitmask<T>(a: v128): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function popcnt<T>(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function min<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function max<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function pmin<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function pmax<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function dot<T>(a: v128, b: v128): v128; // i16 only

  // @ts-ignore: decorator
  @builtin
  export declare function avgr<T>(a: v128, b: v128): v128; // u8, u16 only

  // @ts-ignore: decorator
  @builtin
  export declare function abs<T>(a: v128): v128; // f32, f64 only

  // @ts-ignore: decorator
  @builtin
  export declare function sqrt<T>(a: v128): v128; // f32, f64 only

  // @ts-ignore: decorator
  @builtin
  export declare function ceil<T>(a: v128): v128; // f32, f64 only

  // @ts-ignore: decorator
  @builtin
  export declare function floor<T>(a: v128): v128; // f32, f64 only

  // @ts-ignore: decorator
  @builtin
  export declare function trunc<T>(a: v128): v128; // f32, f64 only

  // @ts-ignore: decorator
  @builtin
  export declare function nearest<T>(a: v128): v128; // f32, f64 only

  // @ts-ignore: decorator
  @builtin
  export declare function eq<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ne<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function lt<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function le<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function gt<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ge<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function convert<T>(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function trunc_sat<T>(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function narrow<T>(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extend_low<T>(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extend_high<T>(a: v128): v128;
}

// @ts-ignore: decorator
@builtin
export declare function i8x16(
  a: i8, b: i8, c: i8, d: i8, e: i8, f: i8, g: i8, h: i8,
  i: i8, j: i8, k: i8, l: i8, m: i8, n: i8, o: i8, p: i8
): v128;

export namespace i8x16 {

  // @ts-ignore: decorator
  @builtin
  export declare function splat(x: i8): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extract_lane_s(x: v128, idx: u8): i8;

  // @ts-ignore: decorator
  @builtin
  export declare function extract_lane_u(x: v128, idx: u8): u8;

  // @ts-ignore: decorator
  @builtin
  export declare function replace_lane(x: v128, idx: u8, value: i8): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function add(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function sub(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function min_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function min_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function max_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function max_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function avgr_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function abs(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function neg(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function add_sat_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function add_sat_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function sub_sat_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function sub_sat_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shl(a: v128, b: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shr_s(a: v128, b: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shr_u(a: v128, b: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function all_true(a: v128): bool;

  // @ts-ignore: decorator
  @builtin
  export declare function bitmask(a: v128): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function popcnt(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function eq(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ne(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function lt_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function lt_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function le_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function le_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function gt_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function gt_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ge_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ge_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function narrow_i16x8_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function narrow_i16x8_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shuffle(
    a: v128, b: v128,
    l0: u8, l1: u8, l2: u8, l3: u8, l4: u8, l5: u8, l6: u8, l7: u8,
    l8: u8, l9: u8, l10: u8, l11: u8, l12: u8, l13: u8, l14: u8, l15: u8
  ): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function swizzle(a: v128, s: v128): v128;
}

// @ts-ignore: decorator
@builtin
export declare function i16x8(a: i16, b: i16, c: i16, d: i16, e: i16, f: i16, g: i16, h: i16): v128;

export namespace i16x8 {

  // @ts-ignore: decorator
  @builtin
  export declare function splat(x: i16): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extract_lane_s(x: v128, idx: u8): i16;

  // @ts-ignore: decorator
  @builtin
  export declare function extract_lane_u(x: v128, idx: u8): u16;

  // @ts-ignore: decorator
  @builtin
  export declare function replace_lane(x: v128, idx: u8, value: i16): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function add(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function sub(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function mul(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function min_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function min_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function max_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function max_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function avgr_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function abs(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function neg(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function add_sat_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function add_sat_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function sub_sat_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function sub_sat_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shl(a: v128, b: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shr_s(a: v128, b: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shr_u(a: v128, b: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function all_true(a: v128): bool;

  // @ts-ignore: decorator
  @builtin
  export declare function bitmask(a: v128): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function eq(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ne(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function lt_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function lt_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function le_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function le_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function gt_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function gt_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ge_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ge_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function narrow_i32x4_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function narrow_i32x4_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extend_low_i8x16_s(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extend_low_i8x16_u(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extend_high_i8x16_s(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extend_high_i8x16_u(a: v128): v128;
}

// @ts-ignore: decorator
@builtin
export declare function i32x4(a: i32, b: i32, c: i32, d: i32): v128;

export namespace i32x4 {

  // @ts-ignore: decorator
  @builtin
  export declare function splat(x: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extract_lane(x: v128, idx: u8): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function replace_lane(x: v128, idx: u8, value: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function add(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function sub(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function mul(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function min_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function min_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function max_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function max_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function dot_i16x8_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function abs(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function neg(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shl(a: v128, b: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shr_s(a: v128, b: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shr_u(a: v128, b: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function all_true(a: v128): bool;

  // @ts-ignore: decorator
  @builtin
  export declare function bitmask(a: v128): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function eq(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ne(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function lt_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function lt_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function le_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function le_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function gt_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function gt_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ge_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ge_u(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function trunc_sat_f32x4_s(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function trunc_sat_f32x4_u(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extend_low_i16x8_s(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extend_low_i16x8_u(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extend_high_i16x8_s(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extend_high_i16x8_u(a: v128): v128;
}

// @ts-ignore: decorator
@builtin
export declare function i64x2(a: i64, b: i64): v128;

export namespace i64x2 {

  // @ts-ignore: decorator
  @builtin
  export declare function splat(x: i64): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extract_lane(x: v128, idx: u8): i64;

  // @ts-ignore: decorator
  @builtin
  export declare function replace_lane(x: v128, idx: u8, value: i64): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function add(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function sub(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function mul(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function abs(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function neg(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shl(a: v128, b: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shr_s(a: v128, b: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function shr_u(a: v128, b: i32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function all_true(a: v128): bool;

  // @ts-ignore: decorator
  @builtin
  export declare function bitmask(a: v128): i32;

  // @ts-ignore: decorator
  @builtin
  export declare function eq(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ne(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function lt_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function le_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function gt_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ge_s(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extend_low_i32x4_s(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extend_low_i32x4_u(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extend_high_i32x4_s(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extend_high_i32x4_u(a: v128): v128;
}

// @ts-ignore: decorator
@builtin
export declare function f32x4(a: f32, b: f32, c: f32, d: f32): v128;

export namespace f32x4 {

  // @ts-ignore: decorator
  @builtin
  export declare function splat(x: f32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extract_lane(x: v128, idx: u8): f32;

  // @ts-ignore: decorator
  @builtin
  export declare function replace_lane(x: v128, idx: u8, value: f32): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function add(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function sub(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function mul(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function div(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function neg(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function min(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function max(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function pmin(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function pmax(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function abs(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function sqrt(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ceil(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function floor(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function trunc(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function nearest(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function eq(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ne(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function lt(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function le(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function gt(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ge(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function convert_i32x4_s(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function convert_i32x4_u(a: v128): v128;
}

// @ts-ignore: decorator
@builtin
export declare function f64x2(a: f64, b: f64): v128;

export namespace f64x2 {

  // @ts-ignore: decorator
  @builtin
  export declare function splat(x: f64): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function extract_lane(x: v128, idx: u8): f64;

  // @ts-ignore: decorator
  @builtin
  export declare function replace_lane(x: v128, idx: u8, value: f64): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function add(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function sub(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function mul(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function div(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function neg(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function min(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function max(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function pmin(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function pmax(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function abs(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function sqrt(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ceil(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function floor(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function trunc(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function nearest(a: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function eq(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ne(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function lt(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function le(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function gt(a: v128, b: v128): v128;

  // @ts-ignore: decorator
  @builtin
  export declare function ge(a: v128, b: v128): v128;
}

@final
export abstract class i31 { // FIXME: usage of 'new' requires a class :(

  // @ts-ignore: decorator
  @builtin
  static new(value: i32): i31ref { return unreachable(); }

  // @ts-ignore: decorator
  @builtin
  static get(i31expr: i31ref): i32 { return unreachable(); }
}

/* eslint-disable @typescript-eslint/no-unused-vars */

// @ts-ignore: decorator
@external("env", "abort")
declare function abort(
  message?: string | null,
  fileName?: string | null,
  lineNumber?: u32,
  columnNumber?: u32
): void;

// @ts-ignore: decorator
@external("env", "trace")
declare function trace(
  message: string,
  n?: i32,
  a0?: f64,
  a1?: f64,
  a2?: f64,
  a3?: f64,
  a4?: f64
): void;

// @ts-ignore: decorator
@external("env", "seed")
declare function seed(): f64;

/* eslint-enable @typescript-eslint/no-unused-vars */
