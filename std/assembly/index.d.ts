/**
 * Environment definitions for compiling AssemblyScript to WebAssembly using asc.
 * @module std/assembly
 *//***/

/// <reference no-default-lib="true"/>

// Types

/** An 8-bit signed integer. */
declare type i8 = number;
/** A 16-bit signed integer. */
declare type i16 = number;
/** A 32-bit signed integer. */
declare type i32 = number;
/** A 64-bit signed integer. */
declare type i64 = number;
/** A 32-bit signed integer when targeting 32-bit WebAssembly or a 64-bit signed integer when targeting 64-bit WebAssembly. */
declare type isize = number;
/** An 8-bit unsigned integer. */
declare type u8 = number;
/** A 16-bit unsigned integer. */
declare type u16 = number;
/** A 32-bit unsigned integer. */
declare type u32 = number;
/** A 64-bit unsigned integer. */
declare type u64 = number;
/** A 32-bit unsigned integer when targeting 32-bit WebAssembly or a 64-bit unsigned integer when targeting 64-bit WebAssembly. */
declare type usize = number;
/** A 1-bit unsigned integer. */
declare type bool = boolean | number;
/** A 32-bit float. */
declare type f32 = number;
/** A 64-bit float. */
declare type f64 = number;
/** A 128-bit vector. */
declare type v128 = object;
/** Function reference. */
declare type funcref = object | null;
/** External reference. */
declare type externref = object | null;
/** Any reference. */
declare type anyref = object | null;
/** Equatable reference. */
declare type eqref = object | null;
/** 31-bit integer reference. */
declare type i31ref = object | null;
/** Data reference. */
declare type dataref = object | null;

// Compiler hints

/** Compiler target. 0 = JS, 1 = WASM32, 2 = WASM64. */
declare const ASC_TARGET: i32;
/** Provided noAssert option. */
declare const ASC_NO_ASSERT: bool;
/** Provided memoryBase option. */
declare const ASC_MEMORY_BASE: i32;
/** Provided tableBase option. */
declare const ASC_TABLE_BASE: i32;
/** Provided optimizeLevel option. */
declare const ASC_OPTIMIZE_LEVEL: i32;
/** Provided shrinkLevel option. */
declare const ASC_SHRINK_LEVEL: i32;
/** Provided lowMemoryLimit option. */
declare const ASC_LOW_MEMORY_LIMIT: i32;
/** Provided noExportRuntime option. */
declare const ASC_NO_EXPORT_RUNTIME: i32;
/** Whether the sign extension feature is enabled. */
declare const ASC_FEATURE_SIGN_EXTENSION: bool;
/** Whether the mutable globals feature is enabled. */
declare const ASC_FEATURE_MUTABLE_GLOBALS: bool;
/** Whether the non-trapping float-to-int feature is enabled. */
declare const ASC_FEATURE_NONTRAPPING_F2I: bool;
/** Whether the bulk memory feature is enabled. */
declare const ASC_FEATURE_BULK_MEMORY: bool;
/** Whether the SIMD feature is enabled. */
declare const ASC_FEATURE_SIMD: bool;
/** Whether the threads feature is enabled. */
declare const ASC_FEATURE_THREADS: bool;
/** Whether the exception handling feature is enabled. */
declare const ASC_FEATURE_EXCEPTION_HANDLING: bool;
/** Whether the tail calls feature is enabled. */
declare const ASC_FEATURE_TAIL_CALLS: bool;
/** Whether the reference types feature is enabled. */
declare const ASC_FEATURE_REFERENCE_TYPES: bool;
/** Whether the multi value types feature is enabled. */
declare const ASC_FEATURE_MULTI_VALUE: bool;
/** Whether the garbage collection feature is enabled. */
declare const ASC_FEATURE_GC: bool;
/** Whether the memory64 feature is enabled. */
declare const ASC_FEATURE_MEMORY64: bool;
/** Major version of the compiler. */
declare const ASC_VERSION_MAJOR: i32;
/** Minor version of the compiler. */
declare const ASC_VERSION_MINOR: i32;
/** Patch version of the compiler. */
declare const ASC_VERSION_PATCH: i32;

// Builtins

/** Performs the sign-agnostic count leading zero bits operation on a 32-bit or 64-bit integer. All zero bits are considered leading if the value is zero. */
declare function clz<T = i32 | i64>(value: T): T;
/** Performs the sign-agnostic count tailing zero bits operation on a 32-bit or 64-bit integer. All zero bits are considered trailing if the value is zero. */
declare function ctz<T = i32 | i64>(value: T): T;
/** Performs the sign-agnostic count number of one bits operation on a 32-bit or 64-bit integer. */
declare function popcnt<T = i32 | i64>(value: T): T;
/** Performs the sign-agnostic rotate left operation on a 32-bit or 64-bit integer. */
declare function rotl<T = i32 | i64>(value: T, shift: T): T;
/** Performs the sign-agnostic rotate right operation on a 32-bit or 64-bit integer. */
declare function rotr<T = i32 | i64>(value: T, shift: T): T;
/** Computes the absolute value of an integer or float. */
declare function abs<T = i32 | i64 | f32 | f64>(value: T): T;
/** Determines the maximum of two integers or floats. If either operand is `NaN`, returns `NaN`. */
declare function max<T = i32 | i64 | f32 | f64>(left: T, right: T): T;
/** Determines the minimum of two integers or floats. If either operand is `NaN`, returns `NaN`. */
declare function min<T = i32 | i64 | f32 | f64>(left: T, right: T): T;
/** Performs the ceiling operation on a 32-bit or 64-bit float. */
declare function ceil<T = f32 | f64>(value: T): T;
/** Composes a 32-bit or 64-bit float from the magnitude of `x` and the sign of `y`. */
declare function copysign<T = f32 | f64>(x: T, y: T): T;
/** Performs the floor operation on a 32-bit or 64-bit float. */
declare function floor<T = f32 | f64>(value: T): T;
/** Rounds to the nearest integer tied to even of a 32-bit or 64-bit float. */
declare function nearest<T = f32 | f64>(value: T): T;
/** Reinterprets the bits of the specified value as type `T`. Valid reinterpretations are u32/i32 to/from f32 and u64/i64 to/from f64. */
declare function reinterpret<T = i32 | i64 | f32 | f64>(value: number): T;
/** Selects one of two pre-evaluated values depending on the condition. */
declare function select<T>(ifTrue: T, ifFalse: T, condition: bool): T;
/** Calculates the square root of a 32-bit or 64-bit float. */
declare function sqrt<T = f32 | f64>(value: T): T;
/** Rounds to the nearest integer towards zero of a 32-bit or 64-bit float. */
declare function trunc<T = f32 | f64>(value: T): T;
/** Computes the sum of two integers or floats. */
declare function add<T = i32 | i64 | f32 | f64>(left: T, right: T): T;
/** Computes the difference of two integers or floats. */
declare function sub<T = i32 | i64 | f32 | f64>(left: T, right: T): T;
/** Computes the product of two integers or floats. */
declare function mul<T = i32 | i64 | f32 | f64>(left: T, right: T): T;
/** Computes the quotient of two integers or floats. */
declare function div<T = i32 | i64 | f32 | f64>(left: T, right: T): T;
/** Loads a value of the specified type from memory. Equivalent to dereferncing a pointer in other languages. */
declare function load<T>(ptr: usize, immOffset?: usize, immAlign?: usize): T;
/** Stores a value of the specified type to memory. Equivalent to dereferencing a pointer in other languages when assigning a value. */
declare function store<T>(ptr: usize, value: T, immOffset?: usize, immAlign?: usize): void;
/** Emits an unreachable operation that results in a runtime error when executed. Both a statement and an expression. */
declare function unreachable(): never;

/** NaN (not a number) as a 32-bit or 64-bit float depending on context. */
declare const NaN: f32 | f64;
/** Positive infinity as a 32-bit or 64-bit float depending on context. */
declare const Infinity: f32 | f64;
/** Data end offset. */
declare const __data_end: usize;
/** Stack pointer offset. */
declare var __stack_pointer: usize;
/** Heap base offset. */
declare const __heap_base: usize;
/** Determines the byte size of the specified underlying core type. Compiles to a constant. */
declare function sizeof<T>(): usize;
/** Determines the alignment (log2) of the specified underlying core type. Compiles to a constant. */
declare function alignof<T>(): usize;
/** Determines the end offset of the given class type. Compiles to a constant. */
declare function offsetof<T>(): usize;
/** Determines the offset of the specified field within the given class type. Compiles to a constant. */
declare function offsetof<T>(fieldName: keyof T | string): usize;
/** Determines the offset of the specified field within the given class type. Returns the class type's end offset if field name has been omitted. Compiles to a constant. */
declare function offsetof<T>(fieldName?: string): usize;
/** Determines the name of a given type. */
declare function nameof<T>(value?: T): string;
/** Determines the unique runtime id of a class type. Compiles to a constant. */
declare function idof<T>(): u32;
/** Changes the type of any value of `usize` kind to another one of `usize` kind. Useful for casting class instances to their pointer values and vice-versa. Beware that this is unsafe.*/
declare function changetype<T>(value: any): T;
/** Explicitly requests no bounds checks on the provided expression. Useful for array accesses. */
declare function unchecked<T>(value: T): T;
/** Emits a `call_indirect` instruction, calling the specified function in the function table by index with the specified arguments. Does result in a runtime error if the arguments do not match the called function. */
declare function call_indirect<T>(index: u32, ...args: unknown[]): T;
/** Instantiates a new instance of `T` using the specified constructor arguments. */
declare function instantiate<T>(...args: any[]): T;
/** Tests if a 32-bit or 64-bit float is `NaN`. */
declare function isNaN<T = f32 | f64>(value: T): bool;
/** Tests if a 32-bit or 64-bit float is finite, that is not `NaN` or +/-`Infinity`. */
declare function isFinite<T = f32 | f64>(value: T): bool;
/** Tests if the specified type *or* expression is of an integer type and not a reference. Compiles to a constant. */
declare function isInteger<T>(value?: any): value is number;
/** Tests if the specified type *or* expression is of a float type. Compiles to a constant. */
declare function isFloat<T>(value?: any): value is number;
/** Tests if the specified type *or* expression is of a boolean type. */
declare function isBoolean<T>(value?: any): value is number;
/** Tests if the specified type *or* expression can represent negative numbers. Compiles to a constant. */
declare function isSigned<T>(value?: any): value is number;
/** Tests if the specified type *or* expression is of a reference type. Compiles to a constant. */
declare function isReference<T>(value?: any): value is object | string;
/** Tests if the specified type *or* expression can be used as a string. Compiles to a constant. */
declare function isString<T>(value?: any): value is string | String;
/** Tests if the specified type *or* expression can be used as an array. Compiles to a constant. */
declare function isArray<T>(value?: any): value is Array<any>;
/** Tests if the specified type *or* expression can be used as an array like object. Compiles to a constant. */
declare function isArrayLike<T>(value?: any): value is ArrayLike<any>;
/** Tests if the specified type *or* expression is of a function type. Compiles to a constant. */
declare function isFunction<T>(value?: any): value is (...args: any) => any;
/** Tests if the specified type *or* expression is of a nullable reference type. Compiles to a constant. */
declare function isNullable<T>(value?: any): bool;
/** Tests if the specified expression resolves to a defined element. Compiles to a constant. */
declare function isDefined(expression: any): bool;
/** Tests if the specified expression evaluates to a constant value. Compiles to a constant. */
declare function isConstant(expression: any): bool;
/** Tests if the specified type *or* expression is of a managed type. Compiles to a constant. */
declare function isManaged<T>(value?: any): bool;
/** Tests if the specified type is void. Compiles to a constant. */
declare function isVoid<T>(): bool;
/** Traps if the specified value is not true-ish, otherwise returns the (non-nullable) value. */
declare function assert<T>(isTrueish: T, message?: string): T & (object | string | number); // any better way to model `: T != null`?
/** Parses an integer string to a 64-bit float. */
declare function parseInt(str: string, radix?: i32): f64;
/** Parses a string to a 64-bit float. */
declare function parseFloat(str: string): f64;
/** Returns the 64-bit floating-point remainder of `x/y`. */
declare function fmod(x: f64, y: f64): f64;
/** Returns the 32-bit floating-point remainder of `x/y`. */
declare function fmodf(x: f32, y: f32): f32;
/** Returns the number of parameters in the given function signature type. */
declare function lengthof<T extends (...args: any[]) => any>(func?: T): i32;
/** Encodes a text string as a valid Uniform Resource Identifier (URI). */
declare function encodeURI(str: string): string;
/** Encodes a text string as a valid component of a Uniform Resource Identifier (URI). */
declare function encodeURIComponent(str: string): string;
/** Decodes a Uniform Resource Identifier (URI) previously created by encodeURI. */
declare function decodeURI(str: string): string;
/** Decodes a Uniform Resource Identifier (URI) component previously created by encodeURIComponent. */
declare function decodeURIComponent(str: string): string;

/** Atomic operations. */
declare namespace atomic {
  /** Atomically loads an integer value from memory and returns it. */
  export function load<T>(ptr: usize, immOffset?: usize): T;
  /** Atomically stores an integer value to memory. */
  export function store<T>(ptr: usize, value: T, immOffset?: usize): void;
  /** Atomically adds an integer value in memory. */
  export function add<T>(ptr: usize, value: T, immOffset?: usize): T;
  /** Atomically subtracts an integer value in memory. */
  export function sub<T>(ptr: usize, value: T, immOffset?: usize): T;
  /** Atomically performs a bitwise AND operation on an integer value in memory. */
  export function and<T>(ptr: usize, value: T, immOffset?: usize): T;
  /** Atomically performs a bitwise OR operation on an integer value in memory. */
  export function or<T>(ptr: usize, value: T, immOffset?: usize): T;
  /** Atomically performs a bitwise XOR operation on an integer value in memory. */
  export function xor<T>(ptr: usize, value: T, immOffset?: usize): T;
  /** Atomically exchanges an integer value in memory. */
  export function xchg<T>(ptr: usize, value: T, immOffset?: usize): T;
  /** Atomically compares and exchanges an integer value in memory if the condition is met. */
  export function cmpxchg<T>(ptr: usize, expected: T, replacement: T, immOffset?: usize): T;
  /** Performs a wait operation on an address in memory suspending this agent if the integer condition is met. */
  export function wait<T>(ptr: usize, expected: T, timeout: i64): AtomicWaitResult;
  /** Performs a notify operation on an address in memory waking up suspended agents. */
  export function notify(ptr: usize, count: i32): i32;
  /** Performs a fence operation, preserving synchronization guarantees of higher level languages. */
  export function fence(): void;
}

/** Describes the result of an atomic wait operation. */
declare enum AtomicWaitResult {
  /** Woken by another agent. */
  OK,
  /** Loaded value did not match the expected value. */
  NOT_EQUAL,
  /** Not woken before the timeout expired. */
  TIMED_OUT
}

/** Converts any other numeric value to an 8-bit signed integer. */
declare function i8(value: any): i8;
declare namespace i8 {
  /** Smallest representable value. */
  export const MIN_VALUE: i8;
  /** Largest representable value. */
  export const MAX_VALUE: i8;
}
/** Converts any other numeric value to a 16-bit signed integer. */
declare function i16(value: any): i8;
declare namespace i16 {
  /** Smallest representable value. */
  export const MIN_VALUE: i16;
  /** Largest representable value. */
  export const MAX_VALUE: i16;
}
/** Converts any other numeric value to a 32-bit signed integer. */
declare function i32(value: any): i32;
declare namespace i32 {
  /** Smallest representable value. */
  export const MIN_VALUE: i32;
  /** Largest representable value. */
  export const MAX_VALUE: i32;
  /** Loads an 8-bit signed integer value from memory and returns it as a 32-bit integer. */
  export function load8_s(ptr: usize, immOffset?: usize, immAlign?: usize): i32;
  /** Loads an 8-bit unsigned integer value from memory and returns it as a 32-bit integer. */
  export function load8_u(ptr: usize, immOffset?: usize, immAlign?: usize): i32;
  /** Loads a 16-bit signed integer value from memory and returns it as a 32-bit integer. */
  export function load16_s(ptr: usize, immOffset?: usize, immAlign?: usize): i32;
  /** Loads a 16-bit unsigned integer value from memory and returns it as a 32-bit integer. */
  export function load16_u(ptr: usize, immOffset?: usize, immAlign?: usize): i32;
  /** Loads a 32-bit integer value from memory. */
  export function load(ptr: usize, immOffset?: usize, immAlign?: usize): i32;
  /** Stores a 32-bit integer value to memory as an 8-bit integer. */
  export function store8(ptr: usize, value: i32, immOffset?: usize, immAlign?: usize): void;
  /** Stores a 32-bit integer value to memory as a 16-bit integer. */
  export function store16(ptr: usize, value: i32, immOffset?: usize, immAlign?: usize): void;
  /** Stores a 32-bit integer value to memory. */
  export function store(ptr: usize, value: i32, immOffset?: usize, immAlign?: usize): void;
  /** Performs the sign-agnostic count leading zero bits operation on a 32-bit integer. All zero bits are considered leading if the value is zero. */
  export function clz(value: i32): i32;
  /** Performs the sign-agnostic count tailing zero bits operation on a 32-bit integer. All zero bits are considered trailing if the value is zero. */
  export function ctz(value: i32): i32;
  /** Performs the sign-agnostic count number of one bits operation on a 32-bit integer. */
  export function popcnt(value: i32): i32;
  /** Performs the sign-agnostic rotate left operation on a 32-bit integer. */
  export function rotl(value: i32, shift: i32): i32;
  /** Performs the sign-agnostic rotate right operation on a 32-bit integer. */
  export function rotr(value: i32, shift: i32): i32;
  /** Reinterprets the bits of the specified 32-bit float as a 32-bit integer. */
  export function reinterpret_f32(value: f32): i32;
  /** Computes the sum of two 32-bit integers. */
  export function add(left: i32, right: i32): i32;
  /** Computes the difference of two 32-bit integers. */
  export function sub(left: i32, right: i32): i32;
  /** Computes the product of two 32-bit integers. */
  export function mul(left: i32, right: i32): i32;
  /** Computes the signed quotient of two 32-bit integers. */
  export function div_s(left: i32, right: i32): i32;
  /** Computes the unsigned quotient of two 32-bit integers. */
  export function div_u(left: i32, right: i32): i32;
  /** Atomic 32-bit integer operations. */
  export namespace atomic {
    /** Atomically loads an 8-bit unsigned integer value from memory and returns it as a 32-bit integer. */
    export function load8_u(ptr: usize, immOffset?: usize): i32;
    /** Atomically loads a 16-bit unsigned integer value from memory and returns it as a 32-bit integer. */
    export function load16_u(ptr: usize, immOffset?: usize): i32;
    /** Atomically loads a 32-bit integer value from memory and returns it. */
    export function load(ptr: usize, immOffset?: usize): i32;
    /** Atomically stores a 32-bit integer value to memory as an 8-bit integer. */
    export function store8(ptr: usize, value: i32, immOffset?: usize): void;
    /** Atomically stores a 32-bit integer value to memory as a 16-bit integer. */
    export function store16(ptr: usize, value: i32, immOffset?: usize): void;
    /** Atomically stores a 32-bit integer value to memory. */
    export function store(ptr: usize, value: i32, immOffset?: usize): void;
    /** Performs a wait operation on a 32-bit integer value in memory suspending this agent if the condition is met. */
    export function wait(ptr: usize, expected: i32, timeout: i64): AtomicWaitResult;
    /** Atomic 32-bit integer read-modify-write operations on 8-bit values. */
    export namespace rmw8 {
      /** Atomically adds an 8-bit unsigned integer value in memory. */
      export function add_u(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically subtracts an 8-bit unsigned integer value in memory. */
      export function sub_u(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically performs a bitwise AND operation an 8-bit unsigned integer value in memory. */
      export function and_u(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically performs a bitwise OR operation an 8-bit unsigned integer value in memory. */
      export function or_u(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically performs a bitwise XOR operation an 8-bit unsigned integer value in memory. */
      export function xor_u(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically exchanges an 8-bit unsigned integer value in memory. */
      export function xchg_u(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically compares and exchanges an 8-bit unsigned integer value in memory if the condition is met. */
      export function cmpxchg_u(ptr: usize, expected: i32, replacement: i32, immOffset?: usize): i32;
    }
    /** Atomic 32-bit integer read-modify-write operations on 16-bit values. */
    export namespace rmw16 {
      /** Atomically adds a 16-bit unsigned integer value in memory. */
      export function add_u(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically adds a 16-bit unsigned integer value in memory. */
      export function sub_u(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically performs a bitwise AND operation a 16-bit unsigned integer value in memory. */
      export function and_u(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically performs a bitwise OR operation a 16-bit unsigned integer value in memory. */
      export function or_u(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically performs a bitwise XOR operation a 16-bit unsigned integer value in memory. */
      export function xor_u(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically exchanges a 16-bit unsigned integer value in memory. */
      export function xchg_u(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically compares and exchanges a 16-bit unsigned integer value in memory if the condition is met. */
      export function cmpxchg_u(ptr: usize, expected: i32, replacement: i32, immOffset?: usize): i32;
    }
    /** Atomic 32-bit integer read-modify-write operations. */
    export namespace rmw {
      /** Atomically adds a 32-bit integer value in memory. */
      export function add(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically subtracts a 32-bit integer value in memory. */
      export function sub(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically performs a bitwise AND operation a 32-bit integer value in memory. */
      export function and(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically performs a bitwise OR operation a 32-bit integer value in memory. */
      export function or(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically performs a bitwise XOR operation a 32-bit integer value in memory. */
      export function xor(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically exchanges a 32-bit integer value in memory. */
      export function xchg(ptr: usize, value: i32, immOffset?: usize): i32;
      /** Atomically compares and exchanges a 32-bit integer value in memory if the condition is met. */
      export function cmpxchg(ptr: usize, expected: i32, replacement: i32, immOffset?: usize): i32;
    }
  }
}
/** Converts any other numeric value to a 64-bit signed integer. */
declare function i64(value: any): i64;
declare namespace i64 {
  /** Smallest representable value. */
  export const MIN_VALUE: i64;
  /** Largest representable value. */
  export const MAX_VALUE: i64;
  /** Loads an 8-bit signed integer value from memory and returns it as a 64-bit integer. */
  export function load8_s(ptr: usize, immOffset?: usize, immAlign?: usize): i64;
  /** Loads an 8-bit unsigned integer value from memory and returns it as a 64-bit integer. */
  export function load8_u(ptr: usize, immOffset?: usize, immAlign?: usize): i64;
  /** Loads a 16-bit signed integer value from memory and returns it as a 64-bit integer. */
  export function load16_s(ptr: usize, immOffset?: usize, immAlign?: usize): i64;
  /** Loads a 16-bit unsigned integer value from memory and returns it as a 64-bit integer. */
  export function load16_u(ptr: usize, immOffset?: usize, immAlign?: usize): i64;
  /** Loads a 32-bit signed integer value from memory and returns it as a 64-bit integer. */
  export function load32_s(ptr: usize, immOffset?: usize, immAlign?: usize): i64;
  /** Loads a 32-bit unsigned integer value from memory and returns it as a 64-bit integer. */
  export function load32_u(ptr: usize, immOffset?: usize, immAlign?: usize): i64;
  /** Loads a 64-bit unsigned integer value from memory. */
  export function load(ptr: usize, immOffset?: usize, immAlign?: usize): i64;
  /** Stores a 64-bit integer value to memory as an 8-bit integer. */
  export function store8(ptr: usize, value: i64, immOffset?: usize, immAlign?: usize): void;
  /** Stores a 64-bit integer value to memory as a 16-bit integer. */
  export function store16(ptr: usize, value: i64, immOffset?: usize, immAlign?: usize): void;
  /** Stores a 64-bit integer value to memory as a 32-bit integer. */
  export function store32(ptr: usize, value: i64, immOffset?: usize, immAlign?: usize): void;
  /** Stores a 64-bit integer value to memory. */
  export function store(ptr: usize, value: i64, immOffset?: usize, immAlign?: usize): void;
  /** Performs the sign-agnostic count leading zero bits operation on a 64-bit integer. All zero bits are considered leading if the value is zero. */
  export function clz(value: i64): i64;
  /** Performs the sign-agnostic count tailing zero bits operation on a 64-bit integer. All zero bits are considered trailing if the value is zero. */
  export function ctz(value: i64): i64;
  /** Performs the sign-agnostic count number of one bits operation on a 64-bit integer. */
  export function popcnt(value: i64): i64;
  /** Performs the sign-agnostic rotate left operation on a 64-bit integer. */
  export function rotl(value: i64, shift: i64): i64;
  /** Performs the sign-agnostic rotate right operation on a 64-bit integer. */
  export function rotr(value: i64, shift: i64): i64;
  /** Reinterprets the bits of the specified 64-bit float as a 64-bit integer. */
  export function reinterpret_f64(value: f64): i64;
  /** Computes the sum of two 64-bit integers. */
  export function add(left: i64, right: i64): i64;
  /** Computes the difference of two 64-bit integers. */
  export function sub(left: i64, right: i64): i64;
  /** Computes the product of two 64-bit integers. */
  export function mul(left: i64, right: i64): i64;
  /** Computes the signed quotient of two 64-bit integers. */
  export function div_s(left: i64, right: i64): i64;
  /** Computes the unsigned quotient of two 64-bit integers. */
  export function div_u(left: i64, right: i64): i64;
  /** Atomic 64-bit integer operations. */
  export namespace atomic {
    /** Atomically loads an 8-bit unsigned integer value from memory and returns it as a 64-bit integer. */
    export function load8_u(ptr: usize, immOffset?: usize): i64;
    /** Atomically loads a 16-bit unsigned integer value from memory and returns it as a 64-bit integer. */
    export function load16_u(ptr: usize, immOffset?: usize): i64;
    /** Atomically loads a 32-bit unsigned integer value from memory and returns it as a 64-bit integer. */
    export function load32_u(ptr: usize, immOffset?: usize): i64;
    /** Atomically loads a 64-bit integer value from memory and returns it. */
    export function load(ptr: usize, immOffset?: usize): i64;
    /** Atomically stores a 64-bit integer value to memory as an 8-bit integer. */
    export function store8(ptr: usize, value: i64, immOffset?: usize): void;
    /** Atomically stores a 64-bit integer value to memory as a 16-bit integer. */
    export function store16(ptr: usize, value: i64, immOffset?: usize): void;
    /** Atomically stores a 64-bit integer value to memory as a 32-bit integer. */
    export function store32(ptr: usize, value: i64, immOffset?: usize): void;
    /** Atomically stores a 64-bit integer value to memory. */
    export function store(ptr: usize, value: i64, immOffset?: usize): void;
    /** Performs a wait operation on a 64-bit integer value in memory suspending this agent if the condition is met. */
    export function wait(ptr: usize, expected: i64, timeout: i64): AtomicWaitResult;
    /** Atomic 64-bit integer read-modify-write operations on 8-bit values. */
    export namespace rmw8 {
      /** Atomically adds an 8-bit unsigned integer value in memory. */
      export function add_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically subtracts an 8-bit unsigned integer value in memory. */
      export function sub_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically performs a bitwise AND operation on an 8-bit unsigned integer value in memory. */
      export function and_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically performs a bitwise OR operation on an 8-bit unsigned integer value in memory. */
      export function or_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically performs a bitwise XOR operation on an 8-bit unsigned integer value in memory. */
      export function xor_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically exchanges an 8-bit unsigned integer value in memory. */
      export function xchg_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically compares and exchanges an 8-bit unsigned integer value in memory if the condition is met. */
      export function cmpxchg_u(ptr: usize, expected: i64, replacement: i64, immOffset?: usize): i64;
    }
    /** Atomic 64-bit integer read-modify-write operations on 16-bit values. */
    export namespace rmw16 {
      /** Atomically adds a 16-bit unsigned integer value in memory. */
      export function add_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically subtracts a 16-bit unsigned integer value in memory. */
      export function sub_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically performs a bitwise AND operation on a 16-bit unsigned integer value in memory. */
      export function and_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically performs a bitwise OR operation on a 16-bit unsigned integer value in memory. */
      export function or_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically performs a bitwise XOR operation on a 16-bit unsigned integer value in memory. */
      export function xor_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically exchanges a 16-bit unsigned integer value in memory. */
      export function xchg_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically compares and exchanges a 16-bit unsigned integer value in memory if the condition is met. */
      export function cmpxchg_u(ptr: usize, expected: i64, replacement: i64, immOffset?: usize): i64;
    }
    /** Atomic 64-bit integer read-modify-write operations on 32-bit values. */
    export namespace rmw32 {
      /** Atomically adds a 32-bit unsigned integer value in memory. */
      export function add_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically subtracts a 32-bit unsigned integer value in memory. */
      export function sub_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically performs a bitwise AND operation on a 32-bit unsigned integer value in memory. */
      export function and_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically performs a bitwise OR operation on a 32-bit unsigned integer value in memory. */
      export function or_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically performs a bitwise XOR operation on a 32-bit unsigned integer value in memory. */
      export function xor_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically exchanges a 32-bit unsigned integer value in memory. */
      export function xchg_u(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically compares and exchanges a 32-bit unsigned integer value in memory if the condition is met. */
      export function cmpxchg_u(ptr: usize, expected: i64, replacement: i64, immOffset?: usize): i64;
    }
    /** Atomic 64-bit integer read-modify-write operations. */
    export namespace rmw {
      /** Atomically adds a 64-bit integer value in memory. */
      export function add(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically subtracts a 64-bit integer value in memory. */
      export function sub(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically performs a bitwise AND operation on a 64-bit integer value in memory. */
      export function and(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically performs a bitwise OR operation on a 64-bit integer value in memory. */
      export function or(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically performs a bitwise XOR operation on a 64-bit integer value in memory. */
      export function xor(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically exchanges a 64-bit integer value in memory. */
      export function xchg(ptr: usize, value: i64, immOffset?: usize): i64;
      /** Atomically compares and exchanges a 64-bit integer value in memory if the condition is met. */
      export function cmpxchg(ptr: usize, expected: i64, replacement: i64, immOffset?: usize): i64;
    }
  }
}
/** Converts any other numeric value to a 32-bit (in WASM32) respectivel 64-bit (in WASM64) signed integer. */
declare var isize: typeof i32 | typeof i64;
/** Converts any other numeric value to an 8-bit unsigned integer. */
declare function u8(value: any): i8;
declare namespace u8 {
  /** Smallest representable value. */
  export const MIN_VALUE: u8;
  /** Largest representable value. */
  export const MAX_VALUE: u8;
}
/** Converts any other numeric value to a 16-bit unsigned integer. */
declare function u16(value: any): i8;
declare namespace u16 {
  /** Smallest representable value. */
  export const MIN_VALUE: u16;
  /** Largest representable value. */
  export const MAX_VALUE: u16;
}
/** Converts any other numeric value to a 32-bit unsigned integer. */
declare function u32(value: any): i32;
declare namespace u32 {
  /** Smallest representable value. */
  export const MIN_VALUE: u32;
  /** Largest representable value. */
  export const MAX_VALUE: u32;
}
/** Converts any other numeric value to a 64-bit unsigned integer. */
declare function u64(value: any): i64;
declare namespace u64 {
  /** Smallest representable value. */
  export const MIN_VALUE: u64;
  /** Largest representable value. */
  export const MAX_VALUE: u64;
}
/** Converts any other numeric value to a 32-bit (in WASM32) respectivel 64-bit (in WASM64) unsigned integer. */
declare var usize: typeof u32 | typeof u64;
/** Converts any other numeric value to a 1-bit unsigned integer. */
declare function bool(value: any): bool;
declare namespace bool {
  /** Smallest representable value. */
  export const MIN_VALUE: bool;
  /** Largest representable value. */
  export const MAX_VALUE: bool;
}
/** Converts any other numeric value to a 32-bit float. */
declare function f32(value: any): f32;
declare namespace f32 {
  /** Smallest representable value. */
  export const MIN_VALUE: f32;
  /** Largest representable value. */
  export const MAX_VALUE: f32;
  /** Smallest normalized positive value. */
  export const MIN_NORMAL_VALUE: f32;
  /** Smallest safely representable integer value. */
  export const MIN_SAFE_INTEGER: f32;
  /** Largest safely representable integer value. */
  export const MAX_SAFE_INTEGER: f32;
  /** Positive infinity value. */
  export const POSITIVE_INFINITY: f32;
  /** Negative infinity value. */
  export const NEGATIVE_INFINITY: f32;
  /** Not a number value. */
  export const NaN: f32;
  /** Difference between 1 and the smallest representable value greater than 1. */
  export const EPSILON: f32;
  /** Loads a 32-bit float from memory. */
  export function load(ptr: usize, immOffset?: usize, immAlign?: usize): f32;
  /** Stores a 32-bit float to memory. */
  export function store(ptr: usize, value: f32, immOffset?: usize, immAlign?: usize): void;
  /** Computes the sum of two 32-bit floats. */
  export function add(left: f32, right: f32): f32;
  /** Computes the difference of two 32-bit floats. */
  export function sub(left: f32, right: f32): f32;
  /** Computes the product of two 32-bit floats. */
  export function mul(left: f32, right: f32): f32;
  /** Computes the quotient of two 32-bit floats. */
  export function div(left: f32, right: f32): f32;
  /** Computes the absolute value of a 32-bit float. */
  export function abs(value: f32): f32;
  /** Determines the maximum of two 32-bit floats. If either operand is `NaN`, returns `NaN`. */
  export function max(left: f32, right: f32): f32;
  /** Determines the minimum of two 32-bit floats. If either operand is `NaN`, returns `NaN`. */
  export function min(left: f32, right: f32): f32;
  /** Performs the ceiling operation on a 32-bit float. */
  export function ceil(value: f32): f32;
  /** Composes a 32-bit float from the magnitude of `x` and the sign of `y`. */
  export function copysign(x: f32, y: f32): f32;
  /** Performs the floor operation on a 32-bit float. */
  export function floor(value: f32): f32;
  /** Rounds to the nearest integer tied to even of a 32-bit float. */
  export function nearest(value: f32): f32;
  /** Reinterprets the bits of the specified 32-bit integer as a 32-bit float. */
  export function reinterpret_i32(value: i32): f32;
  /** Calculates the square root of a 32-bit float. */
  export function sqrt(value: f32): f32;
  /** Rounds to the nearest integer towards zero of a 32-bit float. */
  export function trunc(value: f32): f32;
}
/** Converts any other numeric value to a 64-bit float. */
declare function f64(value: any): f64;
declare namespace f64 {
  /** Smallest representable value. */
  export const MIN_VALUE: f64;
  /** Largest representable value. */
  export const MAX_VALUE: f64;
  /** Smallest normalized positive value. */
  export const MIN_NORMAL_VALUE: f64;
  /** Smallest safely representable integer value. */
  export const MIN_SAFE_INTEGER: f64;
  /** Largest safely representable integer value. */
  export const MAX_SAFE_INTEGER: f64;
  /** Positive infinity value. */
  export const POSITIVE_INFINITY: f64;
  /** Negative infinity value. */
  export const NEGATIVE_INFINITY: f64;
  /** Not a number value. */
  export const NaN: f64;
  /** Difference between 1 and the smallest representable value greater than 1. */
  export const EPSILON: f64;
  /** Loads a 64-bit float from memory. */
  export function load(ptr: usize, immOffset?: usize, immAlign?: usize): f64;
  /** Stores a 64-bit float to memory. */
  export function store(ptr: usize, value: f64, immOffset?: usize, immAlign?: usize): void;
  /** Computes the sum of two 64-bit floats. */
  export function add(left: f64, right: f64): f64;
  /** Computes the difference of two 64-bit floats. */
  export function sub(left: f64, right: f64): f64;
  /** Computes the product of two 64-bit floats. */
  export function mul(left: f64, right: f64): f64;
  /** Computes the quotient of two 64-bit floats. */
  export function div(left: f64, right: f64): f64;
  /** Computes the absolute value of a 64-bit float. */
  export function abs(value: f64): f64;
  /** Determines the maximum of two 64-bit floats. If either operand is `NaN`, returns `NaN`. */
  export function max(left: f64, right: f64): f64;
  /** Determines the minimum of two 64-bit floats. If either operand is `NaN`, returns `NaN`. */
  export function min(left: f64, right: f64): f64;
  /** Performs the ceiling operation on a 64-bit float. */
  export function ceil(value: f64): f64;
  /** Composes a 64-bit float from the magnitude of `x` and the sign of `y`. */
  export function copysign(x: f64, y: f64): f64;
  /** Performs the floor operation on a 64-bit float. */
  export function floor(value: f64): f64;
  /** Rounds to the nearest integer tied to even of a 64-bit float. */
  export function nearest(value: f64): f64;
  /** Reinterprets the bits of the specified 64-bit integer as a 64-bit float. */
  export function reinterpret_i64(value: i64): f64;
  /** Calculates the square root of a 64-bit float. */
  export function sqrt(value: f64): f64;
  /** Rounds to the nearest integer towards zero of a 64-bit float. */
  export function trunc(value: f64): f64;
}
/** Initializes a 128-bit vector from sixteen 8-bit integer values. Arguments must be compile-time constants. */
declare function v128(a: i8, b: i8, c: i8, d: i8, e: i8, f: i8, g: i8, h: i8, i: i8, j: i8, k: i8, l: i8, m: i8, n: i8, o: i8, p: i8): v128;
declare namespace v128 {
  /** Creates a vector with identical lanes. */
  export function splat<T>(x: T): v128;
  /** Extracts one lane as a scalar. */
  export function extract_lane<T>(x: v128, idx: u8): T;
  /** Replaces one lane. */
  export function replace_lane<T>(x: v128, idx: u8, value: T): v128;
  /** Selects lanes from either vector according to the specified lane indexes. */
  export function shuffle<T>(a: v128, b: v128, ...lanes: u8[]): v128;
  /** Selects 8-bit lanes from the first vector according to the indexes [0-15] specified by the 8-bit lanes of the second vector. */
  export function swizzle(a: v128, s: v128): v128;
  /** Loads a vector from memory. */
  export function load(ptr: usize, immOffset?: usize, immAlign?: usize): v128;
  /** Creates a vector by loading the lanes of the specified type and extending each to the next larger type. */
  export function load_ext<TFrom>(ptr: usize, immOffset?: usize, immAlign?: usize): v128;
  /** Creates a vector with eight 16-bit integer lanes by loading and sign extending eight 8-bit integers. */
  export function load8x8_s(ptr: usize, immOffset?: u32, immAlign?: u32): v128;
  /** Creates a vector with eight 16-bit integer lanes by loading and zero extending eight 8-bit integers. */
  export function load8x8_u(ptr: usize, immOffset?: u32, immAlign?: u32): v128;
  /** Creates a vector with four 32-bit integer lanes by loading and sign extending four 16-bit integers. */
  export function load16x4_s(ptr: usize, immOffset?: u32, immAlign?: u32): v128;
  /** Creates a vector with four 32-bit integer lanes by loading and zero extending four 16-bit integers. */
  export function load16x4_u(ptr: usize, immOffset?: u32, immAlign?: u32): v128;
  /** Creates a vector with two 64-bit integer lanes by loading and sign extending two 32-bit integers. */
  export function load32x2_s(ptr: usize, immOffset?: u32, immAlign?: u32): v128;
  /** Creates a vector with two 64-bit integer lanes by loading and zero extending two 32-bit integers. */
  export function load32x2_u(ptr: usize, immOffset?: u32, immAlign?: u32): v128;
  /** Creates a vector with identical lanes by loading the splatted value. */
  export function load_splat<T>(ptr: usize, immOffset?: usize, immAlign?: usize): v128;
  /** Loads an 8-bit integer and splats it sixteen times forming a new vector. */
  export function load8_splat(ptr: usize, immOffset?: usize, immAlign?: usize): v128;
  /** Loads a 16-bit integer and splats it eight times forming a new vector. */
  export function load16_splat(ptr: usize, immOffset?: usize, immAlign?: usize): v128;
  /** Loads a 32-bit integer and splats it four times forming a new vector. */
  export function load32_splat(ptr: usize, immOffset?: usize, immAlign?: usize): v128;
  /** Loads a 64-bit integer and splats it two times forming a new vector. */
  export function load64_splat(ptr: usize, immOffset?: usize, immAlign?: usize): v128;
  /** Stores a vector to memory. */
  export function store(ptr: usize, value: v128, immOffset?: usize, immAlign?: usize): void;
  /** Adds each lane. */
  export function add<T>(a: v128, b: v128): v128;
  /** Subtracts each lane. */
  export function sub<T>(a: v128, b: v128): v128;
  /** Multiplies each lane. */
  export function mul<T>(a: v128, b: v128): v128; // except i64
  /** Divides each lane. */
  export function div<T = f32 | f64>(a: v128, b: v128): v128;
  /** Negates each lane of a vector. */
  export function neg<T>(a: v128): v128;
  /** Adds each lane using saturation. */
  export function add_sat<T>(a: v128, b: v128): v128;
  /** Subtracts each lane using saturation. */
  export function sub_sat<T>(a: v128, b: v128): v128;
  /** Performs a bitwise left shift on each lane of a vector by a scalar. */
  export function shl<T>(a: v128, b: i32): v128;
  /** Performs a bitwise right shift on each lane of a vector by a scalar. */
  export function shr<T>(a: v128, b: i32): v128;
  /** Performs the bitwise AND operation on two vectors. */
  export function and(a: v128, b: v128): v128;
  /** Performs the bitwise OR operation on two vectors. */
  export function or(a: v128, b: v128): v128;
  /** Performs the bitwise XOR operation on two vectors. */
  export function xor(a: v128, b: v128): v128;
  /** Performs the bitwise ANDNOT operation on two vectors. */
  export function andnot(a: v128, b: v128): v128;
  /** Performs the bitwise NOT operation on a vector. */
  export function not(a: v128): v128;
  /** Selects bits of either vector according to the specified mask. */
  export function bitselect(v1: v128, v2: v128, mask: v128): v128;
  /** Reduces a vector to a scalar indicating whether any lane is considered `true`. */
  export function any_true(a: v128): bool;
  /** Reduces a vector to a scalar indicating whether all lanes are considered `true`. */
  export function all_true<T>(a: v128): bool;
  /** Extracts the high bit of each lane and produces a scalar mask with all bits concatenated. */
  export function bitmask<T>(a: v128): i32;
  /** Counts the number of bits set to one within each lane. */
  export function popcnt<T>(a: v128): v128;
  /** Computes the minimum of each lane. */
  export function min<T>(a: v128, b: v128): v128;
  /** Computes the maximum of each lane. */
  export function max<T>(a: v128, b: v128): v128;
  /** Computes the pseudo-minimum of each lane. */
  export function pmin<T>(a: v128, b: v128): v128;
  /** Computes the pseudo-maximum of each lane. */
  export function pmax<T>(a: v128, b: v128): v128;
  /** Computes the dot product of two lanes each, yielding lanes one size wider than the input. */
  export function dot<T = i16>(a: v128, b: v128): v128;
  /** Computes the average of each lane. */
  export function avgr<T = u8 | u16>(a: v128, b: v128): v128;
  /** Computes the absolute value of each lane. */
  export function abs<T = f32 | f64>(a: v128): v128;
  /** Computes the square root of each lane. */
  export function sqrt<T = f32 | f64>(a: v128): v128;
  /** Performs the ceiling operation on each lane. */
  export function ceil<T = f32 | f64>(a: v128): v128;
  /** Performs the floor operation on each lane. */
  export function floor<T = f32 | f64>(a: v128): v128;
  /** Rounds to the nearest integer towards zero of each lane. */
  export function trunc<T = f32 | f64>(a: v128): v128;
  /** Rounds to the nearest integer tied to even of each lane. */
  export function nearest<T = f32 | f64>(a: v128): v128;
  /** Computes which lanes are equal. */
  export function eq<T>(a: v128, b: v128): v128;
  /** Computes which lanes are not equal. */
  export function ne<T>(a: v128, b: v128): v128;
  /** Computes which lanes of the first vector are less than those of the second. */
  export function lt<T>(a: v128, b: v128): v128;
  /** Computes which lanes of the first vector are less than or equal those of the second. */
  export function le<T>(a: v128, b: v128): v128;
  /** Computes which lanes of the first vector are greater than those of the second. */
  export function gt<T>(a: v128, b: v128): v128;
  /** Computes which lanes of the first vector are greater than or equal those of the second. */
  export function ge<T>(a: v128, b: v128): v128;
  /** Converts each lane of a vector from integer to floating point. */
  export function convert<TFrom = i32 | u32>(a: v128): v128;
  /** Truncates each lane of a vector from floating point to integer with saturation. Takes the target type. */
  export function trunc_sat<TTo = i32 | u32>(a: v128): v128;
  /** Narrows each lane to their respective narrower lanes. */
  export function narrow<TFrom = i16 | i32>(a: v128, b: v128): v128;
  /** Extends the low lanes of a vector to their respective wider lanes. */
  export function extend_low<TFrom = i8 | u8 | i16 | u16 | i32 | u32>(a: v128): v128;
  /** Extends the high lanes of a vector to their respective wider lanes. */
  export function extend_high<TFrom = i8 | u8 | i16 | u16 | i32 | u32>(a: v128): v128;
}
/** Initializes a 128-bit vector from sixteen 8-bit integer values. Arguments must be compile-time constants. */
declare function i8x16(a: i8, b: i8, c: i8, d: i8, e: i8, f: i8, g: i8, h: i8, i: i8, j: i8, k: i8, l: i8, m: i8, n: i8, o: i8, p: i8): v128;
declare namespace i8x16 {
  /** Creates a vector with sixteen identical 8-bit integer lanes. */
  export function splat(x: i8): v128;
  /** Extracts one 8-bit integer lane as a signed scalar. */
  export function extract_lane_s(x: v128, idx: u8): i8;
  /** Extracts one 8-bit integer lane as an unsigned scalar. */
  export function extract_lane_u(x: v128, idx: u8): u8;
  /** Replaces one 8-bit integer lane. */
  export function replace_lane(x: v128, idx: u8, value: i8): v128;
  /** Adds each 8-bit integer lane. */
  export function add(a: v128, b: v128): v128;
  /** Subtracts each 8-bit integer lane. */
  export function sub(a: v128, b: v128): v128;
  /** Computes the signed minimum of each 8-bit integer lane. */
  export function min_s(a: v128, b: v128): v128;
  /** Computes the unsigned minimum of each 8-bit integer lane. */
  export function min_u(a: v128, b: v128): v128;
  /** Computes the signed maximum of each 8-bit integer lane. */
  export function max_s(a: v128, b: v128): v128;
  /** Computes the unsigned maximum of each 8-bit integer lane. */
  export function max_u(a: v128, b: v128): v128;
  /** Computes the unsigned average of each 8-bit integer lane. */
  export function avgr_u(a: v128, b: v128): v128;
  /** Computes the absolute value of each 8-bit integer lane. */
  export function abs(a: v128): v128;
  /** Negates each 8-bit integer lane. */
  export function neg(a: v128): v128;
  /** Adds each 8-bit integer lane using signed saturation. */
  export function add_sat_s(a: v128, b: v128): v128;
  /** Adds each 8-bit integer lane using unsigned saturation. */
  export function add_sat_u(a: v128, b: v128): v128;
  /** Subtracts each 8-bit integer lane using signed saturation. */
  export function sub_sat_s(a: v128, b: v128): v128;
  /** Subtracts each 8-bit integer lane using unsigned saturation. */
  export function sub_sat_u(a: v128, b: v128): v128;
  /** Performs a bitwise left shift on each 8-bit integer lane by a scalar. */
  export function shl(a: v128, b: i32): v128;
  /** Performs a bitwise arithmetic right shift on each 8-bit integer lane by a scalar. */
  export function shr_s(a: v128, b: i32): v128;
  /** Performs a bitwise logical right shift on each 8-bit integer lane by a scalar. */
  export function shr_u(a: v128, b: i32): v128;
  /** Reduces a vector to a scalar indicating whether all 8-bit integer lanes are considered `true`. */
  export function all_true(a: v128): bool;
  /** Extracts the high bit of each 8-bit integer lane and produces a scalar mask with all bits concatenated. */
  export function bitmask(a: v128): i32;
  /** Counts the number of bits set to one within each 8-bit integer lane. */
  export function popcnt(a: v128): v128;
  /** Computes which 8-bit integer lanes are equal. */
  export function eq(a: v128, b: v128): v128;
  /** Computes which 8-bit integer lanes are not equal. */
  export function ne(a: v128, b: v128): v128;
  /** Computes which 8-bit signed integer lanes of the first vector are less than those of the second. */
  export function lt_s(a: v128, b: v128): v128;
  /** Computes which 8-bit unsigned integer lanes of the first vector are less than those of the second. */
  export function lt_u(a: v128, b: v128): v128;
  /** Computes which 8-bit signed integer lanes of the first vector are less than or equal those of the second. */
  export function le_s(a: v128, b: v128): v128;
  /** Computes which 8-bit unsigned integer lanes of the first vector are less than or equal those of the second. */
  export function le_u(a: v128, b: v128): v128;
  /** Computes which 8-bit signed integer lanes of the first vector are greater than those of the second. */
  export function gt_s(a: v128, b: v128): v128;
  /** Computes which 8-bit unsigned integer lanes of the first vector are greater than those of the second. */
  export function gt_u(a: v128, b: v128): v128;
  /** Computes which 8-bit signed integer lanes of the first vector are greater than or equal those of the second. */
  export function ge_s(a: v128, b: v128): v128;
  /** Computes which 8-bit unsigned integer lanes of the first vector are greater than or equal those of the second. */
  export function ge_u(a: v128, b: v128): v128;
  /** Narrows each 16-bit signed integer lane to 8-bit signed integer lanes. */
  export function narrow_i16x8_s(a: v128, b: v128): v128;
  /** Narrows each 16-bit signed integer lane to 8-bit unsigned integer lanes. */
  export function narrow_i16x8_u(a: v128, b: v128): v128;
  /** Selects 8-bit lanes from either vector according to the specified [0-15] respectively [16-31] lane indexes. */
  export function shuffle(a: v128, b: v128, l0: u8, l1: u8, l2: u8, l3: u8, l4: u8, l5: u8, l6: u8, l7: u8, l8: u8, l9: u8, l10: u8, l11: u8, l12: u8, l13: u8, l14: u8, l15: u8): v128;
  /** Selects 8-bit lanes from the first vector according to the indexes [0-15] specified by the 8-bit lanes of the second vector. */
  export function swizzle(a: v128, s: v128): v128;
}
/** Initializes a 128-bit vector from eight 16-bit integer values. Arguments must be compile-time constants. */
declare function i16x8(a: i16, b: i16, c: i16, d: i16, e: i16, f: i16, g: i16, h: i16): v128;
declare namespace i16x8 {
  /** Creates a vector with eight identical 16-bit integer lanes. */
  export function splat(x: i16): v128;
  /** Extracts one 16-bit integer lane as a signed scalar. */
  export function extract_lane_s(x: v128, idx: u8): i16;
  /** Extracts one 16-bit integer lane as an unsigned scalar. */
  export function extract_lane_u(x: v128, idx: u8): u16;
  /** Replaces one 16-bit integer lane. */
  export function replace_lane(x: v128, idx: u8, value: i16): v128;
  /** Adds each 16-bit integer lane. */
  export function add(a: v128, b: v128): v128;
  /** Subtracts each 16-bit integer lane. */
  export function sub(a: v128, b: v128): v128;
  /** Multiplies each 16-bit integer lane. */
  export function mul(a: v128, b: v128): v128;
  /** Computes the signed minimum of each 16-bit integer lane. */
  export function min_s(a: v128, b: v128): v128;
  /** Computes the unsigned minimum of each 16-bit integer lane. */
  export function min_u(a: v128, b: v128): v128;
  /** Computes the signed maximum of each 16-bit integer lane. */
  export function max_s(a: v128, b: v128): v128;
  /** Computes the unsigned maximum of each 16-bit integer lane. */
  export function max_u(a: v128, b: v128): v128;
  /** Computes the unsigned average of each 16-bit integer lane. */
  export function avgr_u(a: v128, b: v128): v128;
  /** Computes the absolute value of each 16-bit integer lane. */
  export function abs(a: v128): v128;
  /** Negates each 16-bit integer lane. */
  export function neg(a: v128): v128;
  /** Adds each 16-bit integer lane using signed saturation. */
  export function add_sat_s(a: v128, b: v128): v128;
  /** Adds each 16-bit integer lane using unsigned saturation. */
  export function add_sat_u(a: v128, b: v128): v128;
  /** Subtracts each 16-bit integer lane using signed saturation. */
  export function sub_sat_s(a: v128, b: v128): v128;
  /** Subtracts each 16-bit integer lane using unsigned saturation. */
  export function sub_sat_u(a: v128, b: v128): v128;
  /** Performs a bitwise left shift on each 16-bit integer lane by a scalar. */
  export function shl(a: v128, b: i32): v128;
  /** Performs a bitwise arithmetic right shift each 16-bit integer lane by a scalar. */
  export function shr_s(a: v128, b: i32): v128;
  /** Performs a bitwise logical right shift on each 16-bit integer lane by a scalar. */
  export function shr_u(a: v128, b: i32): v128;
  /** Reduces a vector to a scalar indicating whether all 16-bit integer lanes are considered `true`. */
  export function all_true(a: v128): bool;
  /** Extracts the high bit of each 16-bit integer lane and produces a scalar mask with all bits concatenated. */
  export function bitmask(a: v128): i32;
  /** Computes which 16-bit integer lanes are equal. */
  export function eq(a: v128, b: v128): v128;
  /** Computes which 16-bit integer lanes are not equal. */
  export function ne(a: v128, b: v128): v128;
  /** Computes which 16-bit signed integer lanes of the first vector are less than those of the second. */
  export function lt_s(a: v128, b: v128): v128;
  /** Computes which 16-bit unsigned integer lanes of the first vector are less than those of the second. */
  export function lt_u(a: v128, b: v128): v128;
  /** Computes which 16-bit signed integer lanes of the first vector are less than or equal those of the second. */
  export function le_s(a: v128, b: v128): v128;
  /** Computes which 16-bit unsigned integer lanes of the first vector are less than or equal those of the second. */
  export function le_u(a: v128, b: v128): v128;
  /** Computes which 16-bit signed integer lanes of the first vector are greater than those of the second. */
  export function gt_s(a: v128, b: v128): v128;
  /** Computes which 16-bit unsigned integer lanes of the first vector are greater than those of the second. */
  export function gt_u(a: v128, b: v128): v128;
  /** Computes which 16-bit signed integer lanes of the first vector are greater than or equal those of the second. */
  export function ge_s(a: v128, b: v128): v128;
  /** Computes which 16-bit unsigned integer lanes of the first vector are greater than or equal those of the second. */
  export function ge_u(a: v128, b: v128): v128;
  /** Narrows each 32-bit signed integer lane to 16-bit signed integer lanes. */
  export function narrow_i32x4_s(a: v128, b: v128): v128;
  /** Narrows each 32-bit signed integer lane to 16-bit unsigned integer lanes. */
  export function narrow_i32x4_u(a: v128, b: v128): v128;
  /** Extends the low 8-bit signed integer lanes to 16-bit signed integer lanes. */
  export function extend_low_i8x16_s(a: v128): v128;
  /** Extends the low 8-bit unsigned integer lanes to 16-bit unsigned integer lanes. */
  export function extend_low_i8x16_u(a: v128): v128;
  /** Extends the high 8-bit signed integer lanes to 16-bit signed integer lanes. */
  export function extend_high_i8x16_s(a: v128): v128;
  /** Extends the high 8-bit unsigned integer lanes to 16-bit unsigned integer lanes. */
  export function extend_high_i8x16_u(a: v128): v128;
}
/** Initializes a 128-bit vector from four 32-bit integer values. Arguments must be compile-time constants. */
declare function i32x4(a: i32, b: i32, c: i32, d: i32): v128;
declare namespace i32x4 {
  /** Creates a vector with four identical 32-bit integer lanes. */
  export function splat(x: i32): v128;
  /** Extracts one 32-bit integer lane as a scalar. */
  export function extract_lane(x: v128, idx: u8): i32;
  /** Replaces one 32-bit integer lane. */
  export function replace_lane(x: v128, idx: u8, value: i32): v128;
  /** Adds each 32-bit integer lane. */
  export function add(a: v128, b: v128): v128;
  /** Subtracts each 32-bit integer lane. */
  export function sub(a: v128, b: v128): v128;
  /** Multiplies each 32-bit integer lane. */
  export function mul(a: v128, b: v128): v128;
  /** Computes the signed minimum of each 32-bit integer lane. */
  export function min_s(a: v128, b: v128): v128;
  /** Computes the unsigned minimum of each 32-bit integer lane. */
  export function min_u(a: v128, b: v128): v128;
  /** Computes the signed maximum of each 32-bit integer lane. */
  export function max_s(a: v128, b: v128): v128;
  /** Computes the unsigned maximum of each 32-bit integer lane. */
  export function max_u(a: v128, b: v128): v128;
  /** Computes the dot product of two 16-bit integer lanes each, yielding 32-bit integer lanes. */
  export function dot_i16x8_s(a: v128, b: v128): v128;
  /** Computes the absolute value of each 32-bit integer lane. */
  export function abs(a: v128): v128;
  /** Negates each 32-bit integer lane. */
  export function neg(a: v128): v128;
  /** Performs a bitwise left shift on each 32-bit integer lane by a scalar. */
  export function shl(a: v128, b: i32): v128;
  /** Performs a bitwise arithmetic right shift on each 32-bit integer lane by a scalar. */
  export function shr_s(a: v128, b: i32): v128;
  /** Performs a bitwise logical right shift on each 32-bit integer lane by a scalar. */
  export function shr_u(a: v128, b: i32): v128;
  /** Reduces a vector to a scalar indicating whether all 32-bit integer lanes are considered `true`. */
  export function all_true(a: v128): bool;
  /** Extracts the high bit of each 32-bit integer lane and produces a scalar mask with all bits concatenated. */
  export function bitmask(a: v128): i32;
  /** Computes which 32-bit integer lanes are equal. */
  export function eq(a: v128, b: v128): v128;
  /** Computes which 32-bit integer lanes are not equal. */
  export function ne(a: v128, b: v128): v128;
  /** Computes which 32-bit signed integer lanes of the first vector are less than those of the second. */
  export function lt_s(a: v128, b: v128): v128;
  /** Computes which 32-bit unsigned integer lanes of the first vector are less than those of the second. */
  export function lt_u(a: v128, b: v128): v128;
  /** Computes which 32-bit signed integer lanes of the first vector are less than or equal those of the second. */
  export function le_s(a: v128, b: v128): v128;
  /** Computes which 32-bit unsigned integer lanes of the first vector are less than or equal those of the second. */
  export function le_u(a: v128, b: v128): v128;
  /** Computes which 32-bit signed integer lanes of the first vector are greater than those of the second. */
  export function gt_s(a: v128, b: v128): v128;
  /** Computes which 32-bit unsigned integer lanes of the first vector are greater than those of the second. */
  export function gt_u(a: v128, b: v128): v128;
  /** Computes which 32-bit signed integer lanes of the first vector are greater than or equal those of the second. */
  export function ge_s(a: v128, b: v128): v128;
  /** Computes which 32-bit unsigned integer lanes of the first vector are greater than or equal those of the second. */
  export function ge_u(a: v128, b: v128): v128;
  /** Truncates each 32-bit float lane to a signed integer with saturation. */
  export function trunc_sat_f32x4_s(a: v128): v128;
  /** Truncates each 32-bit float lane to an unsigned integer with saturation. */
  export function trunc_sat_f32x4_u(a: v128): v128;
  /** Extends the low 16-bit signed integer lanes to 32-bit signed integer lanes. */
  export function extend_low_i16x8_s(a: v128): v128;
  /** Extends the low 16-bit unsigned integer lane to 32-bit unsigned integer lanes. */
  export function extend_low_i16x8_u(a: v128): v128;
  /** Extends the high 16-bit signed integer lanes to 32-bit signed integer lanes. */
  export function extend_high_i16x8_s(a: v128): v128;
  /** Extends the high 16-bit unsigned integer lanes to 32-bit unsigned integer lanes. */
  export function extend_high_i16x8_u(a: v128): v128;
}
/** Initializes a 128-bit vector from two 64-bit integer values. Arguments must be compile-time constants. */
declare function i64x2(a: i64, b: i64): v128;
declare namespace i64x2 {
  /** Creates a vector with two identical 64-bit integer lanes. */
  export function splat(x: i64): v128;
  /** Extracts one 64-bit integer lane as a scalar. */
  export function extract_lane(x: v128, idx: u8): i64;
  /** Replaces one 64-bit integer lane. */
  export function replace_lane(x: v128, idx: u8, value: i64): v128;
  /** Adds each 64-bit integer lane. */
  export function add(a: v128, b: v128): v128;
  /** Subtracts each 64-bit integer lane. */
  export function sub(a: v128, b: v128): v128;
  /** Multiplies each 64-bit integer lane. */
  export function mul(a: v128, b: v128): v128;
  /** Computes the absolute value of each 64-bit integer lane. */
  export function abs(a: v128): v128;
  /** Negates each 64-bit integer lane. */
  export function neg(a: v128): v128;
  /** Performs a bitwise left shift on each 64-bit integer lane by a scalar. */
  export function shl(a: v128, b: i32): v128;
  /** Performs a bitwise arithmetic right shift on each 64-bit integer lane by a scalar. */
  export function shr_s(a: v128, b: i32): v128;
  /** Performs a bitwise logical right shift on each 64-bit integer lane by a scalar. */
  export function shr_u(a: v128, b: i32): v128;
  /** Reduces a vector to a scalar indicating whether all 64-bit integer lanes are considered `true`. */
  export function all_true(a: v128): bool;
  /** Extracts the high bit of each 64-bit integer lane and produces a scalar mask with all bits concatenated. */
  export function bitmask(a: v128): i32;
  /** Computes which 64-bit integer lanes are equal. */
  export function eq(a: v128, b: v128): v128;
  /** Computes which 64-bit integer lanes are not equal. */
  export function ne(a: v128, b: v128): v128;
  /** Computes which 64-bit signed integer lanes of the first vector are less than those of the second. */
  export function lt_s(a: v128, b: v128): v128;
  /** Computes which 64-bit signed integer lanes of the first vector are less than or equal those of the second. */
  export function le_s(a: v128, b: v128): v128;
  /** Computes which 64-bit signed integer lanes of the first vector are greater than those of the second. */
  export function gt_s(a: v128, b: v128): v128;
  /** Computes which 64-bit signed integer lanes of the first vector are greater than or equal those of the second. */
  export function ge_s(a: v128, b: v128): v128;
  /** Extends the low 32-bit signed integer lanes to 64-bit signed integer lanes. */
  export function extend_low_i32x4_s(a: v128): v128;
  /** Extends the low 32-bit unsigned integer lane to 64-bit unsigned integer lanes. */
  export function extend_low_i32x4_u(a: v128): v128;
  /** Extends the high 32-bit signed integer lanes to 64-bit signed integer lanes. */
  export function extend_high_i32x4_s(a: v128): v128;
  /** Extends the high 32-bit unsigned integer lanes to 64-bit unsigned integer lanes. */
  export function extend_high_i32x4_u(a: v128): v128;
}
/** Initializes a 128-bit vector from four 32-bit float values. Arguments must be compile-time constants. */
declare function f32x4(a: f32, b: f32, c: f32, d: f32): v128;
declare namespace f32x4 {
  /** Creates a vector with four identical 32-bit float lanes. */
  export function splat(x: f32): v128;
  /** Extracts one 32-bit float lane as a scalar. */
  export function extract_lane(x: v128, idx: u8): f32;
  /** Replaces one 32-bit float lane. */
  export function replace_lane(x: v128, idx: u8, value: f32): v128;
  /** Adds each 32-bit float lane. */
  export function add(a: v128, b: v128): v128;
  /** Subtracts each 32-bit float lane. */
  export function sub(a: v128, b: v128): v128;
  /** Multiplies each 32-bit float lane. */
  export function mul(a: v128, b: v128): v128;
  /** Divides each 32-bit float lane. */
  export function div(a: v128, b: v128): v128;
  /** Negates each 32-bit float lane. */
  export function neg(a: v128): v128;
  /** Computes the minimum of each 32-bit float lane. */
  export function min(a: v128, b: v128): v128;
  /** Computes the maximum of each 32-bit float lane. */
  export function max(a: v128, b: v128): v128;
  /** Computes the pseudo-minimum of each 32-bit float lane. */
  export function pmin(a: v128, b: v128): v128;
  /** Computes the pseudo-maximum of each 32-bit float lane. */
  export function pmax(a: v128, b: v128): v128;
  /** Computes the absolute value of each 32-bit float lane. */
  export function abs(a: v128): v128;
  /** Computes the square root of each 32-bit float lane. */
  export function sqrt(a: v128): v128;
  /** Performs the ceiling operation on each 32-bit float lane. */
  export function ceil(a: v128): v128;
  /** Performs the floor operation on each each 32-bit float lane. */
  export function floor(a: v128): v128;
  /** Rounds to the nearest integer towards zero of each 32-bit float lane. */
  export function trunc(a: v128): v128;
  /** Rounds to the nearest integer tied to even of each 32-bit float lane. */
  export function nearest(a: v128): v128;
  /** Computes which 32-bit float lanes are equal. */
  export function eq(a: v128, b: v128): v128;
  /** Computes which 32-bit float lanes are not equal. */
  export function ne(a: v128, b: v128): v128;
  /** Computes which 32-bit float lanes of the first vector are less than those of the second. */
  export function lt(a: v128, b: v128): v128;
  /** Computes which 32-bit float lanes of the first vector are less than or equal those of the second. */
  export function le(a: v128, b: v128): v128;
  /** Computes which 32-bit float lanes of the first vector are greater than those of the second. */
  export function gt(a: v128, b: v128): v128;
  /** Computes which 32-bit float lanes of the first vector are greater than or equal those of the second. */
  export function ge(a: v128, b: v128): v128;
  /** Converts each 32-bit signed integer lane of a vector to floating point. */
  export function convert_i32x4_s(a: v128): v128;
  /** Converts each 32-bit unsigned integer lane of a vector to floating point. */
  export function convert_i32x4_u(a: v128): v128;
}
/** Initializes a 128-bit vector from two 64-bit float values. Arguments must be compile-time constants. */
declare function f64x2(a: f64, b: f64): v128;
declare namespace f64x2 {
  /** Creates a vector with two identical 64-bit float lanes. */
  export function splat(x: f64): v128;
  /** Extracts one 64-bit float lane as a scalar. */
  export function extract_lane(x: v128, idx: u8): f64;
  /** Replaces one 64-bit float lane. */
  export function replace_lane(x: v128, idx: u8, value: f64): v128;
  /** Adds each 64-bit float lane. */
  export function add(a: v128, b: v128): v128;
  /** Subtracts each 64-bit float lane. */
  export function sub(a: v128, b: v128): v128;
  /** Multiplies each 64-bit float lane. */
  export function mul(a: v128, b: v128): v128;
  /** Divides each 64-bit float lane. */
  export function div(a: v128, b: v128): v128;
  /** Negates each 64-bit float lane. */
  export function neg(a: v128): v128;
  /** Computes the minimum of each 64-bit float lane. */
  export function min(a: v128, b: v128): v128;
  /** Computes the maximum of each 64-bit float lane. */
  export function max(a: v128, b: v128): v128;
  /** Computes the pseudo-minimum of each 64-bit float lane. */
  export function pmin(a: v128, b: v128): v128;
  /** Computes the pseudo-maximum of each 64-bit float lane. */
  export function pmax(a: v128, b: v128): v128;
  /** Computes the absolute value of each 64-bit float lane. */
  export function abs(a: v128): v128;
  /** Computes the square root of each 64-bit float lane. */
  export function sqrt(a: v128): v128;
  /** Performs the ceiling operation on each 64-bit float lane. */
  export function ceil(a: v128): v128;
  /** Performs the floor operation on each each 64-bit float lane. */
  export function floor(a: v128): v128;
  /** Rounds to the nearest integer towards zero of each 64-bit float lane. */
  export function trunc(a: v128): v128;
  /** Rounds to the nearest integer tied to even of each 64-bit float lane. */
  export function nearest(a: v128): v128;
  /** Computes which 64-bit float lanes are equal. */
  export function eq(a: v128, b: v128): v128;
  /** Computes which 64-bit float lanes are not equal. */
  export function ne(a: v128, b: v128): v128;
  /** Computes which 64-bit float lanes of the first vector are less than those of the second. */
  export function lt(a: v128, b: v128): v128;
  /** Computes which 64-bit float lanes of the first vector are less than or equal those of the second. */
  export function le(a: v128, b: v128): v128;
  /** Computes which 64-bit float lanes of the first vector are greater than those of the second. */
  export function gt(a: v128, b: v128): v128;
  /** Computes which 64-bit float lanes of the first vector are greater than or equal those of the second. */
  export function ge(a: v128, b: v128): v128;
}

declare abstract class i31 {
  /** Creates a new i31ref from the specified integer value. */
  static new(value: i32): i31ref;
  /** Gets the integer value of an i31ref. */
  static get(i31expr: i31ref): i32;
}

/** Macro type evaluating to the underlying native WebAssembly type. */
declare type native<T> = T;
/** Special type evaluating the indexed access index type. */
declare type indexof<T extends unknown[]> = keyof T;
/** Special type evaluating the indexed access value type. */
declare type valueof<T extends unknown[]> = T[0];
/** A special type evaluated to the return type of T if T is a callable function. */
declare type ReturnType<T extends (...args: any) => any> = T extends (...args: any) => infer R ? R : any;
/** A special type evaluated to the return type of T if T is a callable function. */
declare type returnof<T extends (...args: any) => any> = ReturnType<T>;

/** Pseudo-class representing the backing class of integer types. */
declare class _Integer {
  /** Smallest representable value. */
  static readonly MIN_VALUE: number;
  /** Largest representable value. */
  static readonly MAX_VALUE: number;
  /** Converts a string to an integer of this type. */
  static parseInt(value: string, radix?: number): number;
  /** Converts this integer to a string. */
  toString(radix?: number): string;
}

/** Pseudo-class representing the backing class of floating-point types. */
declare class _Float {
  /** Difference between 1 and the smallest representable value greater than 1. */
  static readonly EPSILON: f32 | f64;
  /** Smallest representable value. */
  static readonly MIN_VALUE: f32 | f64;
  /** Largest representable value. */
  static readonly MAX_VALUE: f32 | f64;
  /** Smallest safely representable integer value. */
  static readonly MIN_SAFE_INTEGER: f32 | f64;
  /** Largest safely representable integer value. */
  static readonly MAX_SAFE_INTEGER: f32 | f64;
  /** Value representing positive infinity. */
  static readonly POSITIVE_INFINITY: f32 | f64;
  /** Value representing negative infinity. */
  static readonly NEGATIVE_INFINITY: f32 | f64;
  /** Value representing 'not a number'. */
  static readonly NaN: f32 | f64;
  /** Returns a boolean value that indicates whether a value is the reserved value NaN (not a number). */
  static isNaN(value: f32 | f64): bool;
  /** Returns true if passed value is finite. */
  static isFinite(value: f32 | f64): bool;
  /** Returns true if the value passed is a safe integer. */
  static isSafeInteger(value: f32 | f64): bool;
  /** Returns true if the value passed is an integer, false otherwise. */
  static isInteger(value: f32 | f64): bool;
  /** Converts a string to an integer. */
  static parseInt(value: string, radix?: i32): f32 | f64;
  /** Converts a string to a floating-point number. */
  static parseFloat(value: string): f32 | f64;
  /** Converts this floating-point number to a string. */
  toString(radix?: number): string;
}

/** Backing class of signed 8-bit integers. */
declare const I8: typeof _Integer;
/** Backing class of signed 16-bit integers. */
declare const I16: typeof _Integer;
/** Backing class of signed 32-bit integers. */
declare const I32: typeof _Integer;
/** Backing class of signed 64-bit integers. */
declare const I64: typeof _Integer;
/** Backing class of signed size integers. */
declare const Isize: typeof _Integer;
/** Backing class of unsigned 8-bit integers. */
declare const U8: typeof _Integer;
/** Backing class of unsigned 16-bit integers. */
declare const U16: typeof _Integer;
/** Backing class of unsigned 32-bit integers. */
declare const U32: typeof _Integer;
/** Backing class of unsigned 64-bit integers. */
declare const U64: typeof _Integer;
/** Backing class of unsigned size integers. */
declare const Usize: typeof _Integer;
/** Backing class of 32-bit floating-point values. */
declare const F32: typeof _Float;
/** Backing class of 64-bit floating-point values. */
declare const F64: typeof _Float;

// User-defined diagnostic macros

/** Emits a user-defined diagnostic error when encountered. */
declare function ERROR(message?: any): void;
/** Emits a user-defined diagnostic warning when encountered. */
declare function WARNING(message?: any): void;
/** Emits a user-defined diagnostic info when encountered. */
declare function INFO(message?: any): void;

// Polyfills

/** Performs the sign-agnostic reverse bytes **/
declare function bswap<T = i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64 | isize | usize>(value: T): T;
/** Performs the sign-agnostic reverse bytes only for last 16-bit **/
declare function bswap16<T = i8 | u8 | i16 | u16 | i32 | u32>(value: T): T;

// Standard library

/** Memory operations. */
declare namespace memory {
  /** Whether the memory managed interface is implemented. */
  export const implemented: bool;
  /** Returns the current memory size in units of pages. One page is 64kb. */
  export function size(): i32;
  /** Grows linear memory by a given unsigned delta of pages. One page is 64kb. Returns the previous memory size in units of pages or `-1` on failure. */
  export function grow(value: i32): i32;
  /** Sets n bytes beginning at the specified destination in memory to the specified byte value. */
  export function fill(dst: usize, value: u8, count: usize): void;
  /** Copies n bytes from the specified source to the specified destination in memory. These regions may overlap. */
  export function copy(dst: usize, src: usize, n: usize): void;
  /** Repeats `src` of length `srcLength` `count` times at `dst`. */
  export function repeat(dst: usize, src: usize, srcLength: usize, count: usize): void;
  /** Copies elements from a passive element segment to a table. */
  export function init(segmentIndex: u32, srcOffset: usize, dstOffset: usize, n: usize): void;
  /** Prevents further use of a passive element segment. */
  export function drop(segmentIndex: u32): void;
  /** Compares two chunks of memory. Returns `0` if equal, otherwise the difference of the first differing bytes. */
  export function compare(vl: usize, vr: usize, n: usize): i32;
  /** Gets a pointer to a zeroed static chunk of memory of the given size. Alignment defaults to `16`. Arguments must be compile-time constants. */
  export function data(size: i32, align?: i32): usize;
  /** Gets a pointer to a pre-initialized static chunk of memory. Alignment defaults to the size of `T`. Arguments must be compile-time constants. */
  export function data<T>(values: T[], align?: i32): usize;
}

/** Heap memory interface. */
declare namespace heap {
  /** Allocates a chunk of memory of at least the specified size. */
  export function alloc(size: usize): usize;
  /** Reallocates a chunk of memory to have at least the specified size. */
  export function realloc(ptr: usize, size: usize): usize;
  /** Frees a chunk of memory. Does hardly anything (most recent block only) with the stub/none runtime. */
  export function free(ptr: usize): void;
}

/** Table operations. */
declare namespace table {
  /** Copies elements from a passive element segment to a table. */
  export function init(elementIndex: u32, srcOffset: u32, dstOffset: u32, n: u32): void;
  /** Prevents further use of a passive element segment. */
  export function drop(elementIndex: u32): void;
  /** Copies elements from one region of a table to another region. */
  export function copy(dest: u32, src: u32, n: u32): void;
}

declare namespace Atomics {
  export function load<T = i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64>(array: TypedArray<T>, index: i32): T;
  export function store<T = i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64>(array: TypedArray<T>, index: i32, value: T): void;
  export function add<T = i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64>(array: TypedArray<T>, index: i32, value: T): T;
  export function sub<T = i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64>(array: TypedArray<T>, index: i32, value: T): T;
  export function and<T = i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64>(array: TypedArray<T>, index: i32, value: T): T;
  export function or<T = i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64>(array: TypedArray<T>, index: i32, value: T): T;
  export function xor<T = i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64>(array: TypedArray<T>, index: i32, value: T): T;
  export function exchange<T = i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64>(array: TypedArray<T>, index: i32, value: T): T;
  export function compareExchange<T = i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64>(array: TypedArray<T>, index: i32, expectedValue: T, replacementValue: T): T;
  export function wait<T = i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64>(array: TypedArray<T>, value: T, timeout?: i64): AtomicWaitResult;
  export function notify<T = i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64>(array: TypedArray<T>, index: i32, count?: i32): i32;
  /** The static Atomics.isLockFree() method is used to determine whether to use locks or atomic operations. It returns true, if the given size is one of the BYTES_PER_ELEMENT */
  export function isLockFree(size: usize): bool;
}

/** Class representing a generic, fixed-length raw binary data buffer. */
declare class ArrayBuffer {
  /** The size, in bytes, of the array. */
  readonly byteLength: i32;
  /** Returns true if value is one of the ArrayBuffer views, such as typed array or a DataView **/
  static isView<T>(value: T): bool;
  /** Constructs a new array buffer of the given length in bytes. */
  constructor(length: i32);
  /** Returns a copy of this array buffer's bytes from begin, inclusive, up to end, exclusive. */
  slice(begin?: i32, end?: i32): ArrayBuffer;
  /** Returns a string representation of ArrayBuffer. */
  toString(): string;
}

/** The `DataView` view provides a low-level interface for reading and writing multiple number types in a binary `ArrayBuffer`, without having to care about the platform's endianness. */
declare class DataView {
  /** The `buffer` accessor property represents the `ArrayBuffer` or `SharedArrayBuffer` referenced by the `DataView` at construction time. */
  readonly buffer: ArrayBuffer;
  /** The `byteLength` accessor property represents the length (in bytes) of this view from the start of its `ArrayBuffer` or `SharedArrayBuffer`. */
  readonly byteLength: i32;
  /** The `byteOffset` accessor property represents the offset (in bytes) of this view from the start of its `ArrayBuffer` or `SharedArrayBuffer`. */
  readonly byteOffset: i32;
  /** Constructs a new `DataView` with the given properties */
  constructor(buffer: ArrayBuffer, byteOffset?: i32, byteLength?: i32);
  /** The `getFloat32()` method gets a signed 32-bit float (float) at the specified byte offset from the start of the `DataView`. */
  getFloat32(byteOffset: i32, littleEndian?: bool): f32;
  /** The `getFloat64()` method gets a signed 64-bit float (double) at the specified byte offset from the start of the `DataView`. */
  getFloat64(byteOffset: i32, littleEndian?: bool): f64;
  /** The `getInt8()` method gets a signed 8-bit integer (byte) at the specified byte offset from the start of the `DataView`. */
  getInt8(byteOffset: i32): i8;
  /** The `getInt16()` method gets a signed 16-bit integer (short) at the specified byte offset from the start of the `DataView`. */
  getInt16(byteOffset: i32, littleEndian?: bool): i16;
  /** The `getInt32()` method gets a signed 32-bit integer (long) at the specified byte offset from the start of the `DataView`. */
  getInt32(byteOffset: i32, littleEndian?: bool): i32;
  /** The `getInt64()` method gets a signed 64-bit integer (long long) at the specified byte offset from the start of the `DataView`. */
  getInt64(byteOffset: i32, littleEndian?: bool): i64;
  /** The `getUint8()` method gets an unsigned 8-bit integer (unsigned byte) at the specified byte offset from the start of the `DataView`. */
  getUint8(byteOffset: i32): u8;
  /** The `getUint16()` method gets an unsigned 16-bit integer (unsigned short) at the specified byte offset from the start of the `DataView`. */
  getUint16(byteOffset: i32, littleEndian?: bool): u16;
  /** The `getUint32()` method gets an unsigned 32-bit integer (unsigned long) at the specified byte offset from the start of the `DataView`. */
  getUint32(byteOffset: i32, littleEndian?: bool): u32;
  /** The `getUint64()` method gets an unsigned 64-bit integer (unsigned long long) at the specified byte offset from the start of the `DataView`. */
  getUint64(byteOffset: i32, littleEndian?: bool): u64;
  /** The `setFloat32()` method stores a signed 32-bit float (float) value at the specified byte offset from the start of the `DataView`. */
  setFloat32(byteOffset: i32, value: f32, littleEndian?: bool): void;
  /** The `setFloat64()` method stores a signed 64-bit float (double) value at the specified byte offset from the start of the `DataView`. */
  setFloat64(byteOffset: i32, value: f64, littleEndian?: bool): void;
  /** The `setInt8()` method stores a signed 8-bit integer (byte) value at the specified byte offset from the start of the `DataView`. */
  setInt8(byteOffset: i32, value: i8): void;
  /** The `setInt16()` method stores a signed 16-bit integer (short) value at the specified byte offset from the start of the `DataView`. */
  setInt16(byteOffset: i32, value: i16, littleEndian?: bool): void;
  /** The `setInt32()` method stores a signed 32-bit integer (long) value at the specified byte offset from the start of the `DataView`. */
  setInt32(byteOffset: i32, value: i32, littleEndian?: bool): void;
  /** The `setInt64()` method stores a signed 64-bit integer (long long) value at the specified byte offset from the start of the `DataView`. */
  setInt64(byteOffset: i32, value: i64, littleEndian?: bool): void;
  /** The `setUint8()` method stores an unsigned 8-bit integer (byte) value at the specified byte offset from the start of the `DataView`. */
  setUint8(byteOffset: i32, value: u8): void;
  /** The `setUint16()` method stores an unsigned 16-bit integer (unsigned short) value at the specified byte offset from the start of the `DataView`. */
  setUint16(byteOffset: i32, value: u16, littleEndian?: bool): void;
  /** The `setUint32()` method stores an unsigned 32-bit integer (unsigned long) value at the specified byte offset from the start of the `DataView`. */
  setUint32(byteOffset: i32, value: u32, littleEndian?: bool): void;
  /** The `setUint64()` method stores an unsigned 64-bit integer (unsigned long long) value at the specified byte offset from the start of the `DataView`. */
  setUint64(byteOffset: i32, value: u64, littleEndian?: bool): void;
  /** Returns a string representation of DataView. */
  toString(): string;
}

interface ArrayLike<T> {
  [key: number]: T;
  length: i32;
}

/** Interface for a typed view on an array buffer. */
interface ArrayBufferView {
  /** The {@link ArrayBuffer} referenced by this view. */
  readonly buffer: ArrayBuffer;
  /** The offset in bytes from the start of the referenced {@link ArrayBuffer}. */
  readonly byteOffset: i32;
  /** The length in bytes from the start of the referenced {@link ArrayBuffer}. */
  readonly byteLength: i32;
  /** Returns raw pointer to data storage including offset (unsafe). */
  readonly dataStart: usize;
}

/* @internal */
declare abstract class TypedArray<T> implements ArrayBufferView {
  [key: number]: T;
  /** Number of bytes per element. */
  static readonly BYTES_PER_ELEMENT: usize;
  /** Constructs a new typed array. */
  constructor(length: i32);
  /** The {@link ArrayBuffer} referenced by this view. */
  readonly buffer: ArrayBuffer;
  /** The offset in bytes from the start of the referenced {@link ArrayBuffer}. */
  readonly byteOffset: i32;
  /** The length in bytes from the start of the referenced {@link ArrayBuffer}. */
  readonly byteLength: i32;
  /** Returns raw pointer to data storage including offset (unsafe). */
  readonly dataStart: usize;
  /** The length (in elements). */
  readonly length: i32;
  /** Returns value using relative indexing. Index may be negative */
  at(index: i32): T;
  /** The includes() method determines whether a typed array includes a certain element, returning true or false as appropriate. */
  includes(searchElement: T, fromIndex?: i32): bool;
  /** The indexOf() method returns the first index at which a given element can be found in the typed array, or -1 if it is not present. */
  indexOf(searchElement: T, fromIndex?: i32): i32;
  /** The lastIndexOf() method returns the last index at which a given element can be found in the typed array, or -1 if it is not present. The typed array is searched backwards, starting at fromIndex. */
  lastIndexOf(searchElement: T, fromIndex?: i32): i32;
  /** Returns copied section of an TypedArray from begin inclusive to end exclusive */
  slice(begin?: i32, end?: i32): TypedArray<T>;
  /** Returns a new TypedArray of this type on the same ArrayBuffer from begin inclusive to end exclusive. */
  subarray(begin?: i32, end?: i32): TypedArray<T>;
  /** The copyWithin() method copies the sequence of array elements within the array to the position starting at target. The copy is taken from the index positions of the second and third arguments start and end. The end argument is optional and defaults to the length of the array. */
  copyWithin(target: i32, start: i32, end?: i32): this;
  /**  The reduce() method applies a function against an accumulator and each value of the typed array (from left-to-right) has to reduce it to a single value. This method has the same algorithm as Array.prototype.reduce(). */
  reduce<U>(callbackfn: (accumulator: U, value: T, index: i32, self: this) => U, initialValue: U): U;
  /**  The reduceRight() method applies a function against an accumulator and each value of the typed array (from left-to-right) has to reduce it to a single value, starting from the end of the array. This method has the same algorithm as Array.prototype.reduceRight(). */
  reduceRight<U>(callbackfn: (accumulator: U, value: T, index: i32, self: this) => U, initialValue: U): U;
  /** The some() method tests whether some element in the typed array passes the test implemented by the provided function. This method has the same algorithm as Array.prototype.some().*/
  some(callbackfn: (value: T, index: i32, self: this) => bool): bool;
  /** The map() method creates a new typed array with the results of calling a provided function on every element in this typed array. This method has the same algorithm as Array.prototype.map().*/
  map(callbackfn: (value: T, index: i32, self: this) => T): TypedArray<T>;
  /** The filter() method creates a new typed array with all elements that pass the test implemented by the provided function. This method has the same algorithm as Array.prototype.filter(). */
  filter(callbackfn: (value: T, index: i32, self: this) => bool): TypedArray<T>;
  /** The sort() method sorts the elements of a typed array numerically in place and returns the typed array. This method has the same algorithm as Array.prototype.sort(), except that sorts the values numerically instead of as strings. TypedArray is one of the typed array types here. */
  sort(callback?: (a: T, b: T) => i32): this;
  /** The fill() method fills all the elements of a typed array from a start index to an end index with a static value. This method has the same algorithm as Array.prototype.fill(). */
  fill(value: T, start?: i32, end?: i32): this;
  /** The findIndex() method returns an index in the typed array, if an element in the typed array satisfies the provided testing function. Otherwise -1 is returned. See also the find() [not implemented] method, which returns the value of a found element in the typed array instead of its index. */
  findIndex(callbackfn: (value: T, index: i32, self: this) => bool): i32;
  /** The every() method tests whether all elements in the typed array pass the test implemented by the provided function. This method has the same algorithm as Array.prototype.every(). */
  every(callbackfn: (value: T, index: i32, self: this) => bool): bool;
  /** The forEach() method executes a provided function once per array element. This method has the same algorithm as Array.prototype.forEach().*/
  forEach(callbackfn: (value: T, index: i32, self: this) => void): void;
  /** The reverse() method reverses a typed array in place. The first typed array element becomes the last and the last becomes the first. This method has the same algorithm as Array.prototype.reverse(). */
  reverse(): this;
  /** The join() method joins all elements of an array into a string. This method has the same algorithm as Array.prototype.join(). */
  join(separator?: string): string;
  /** The set() method stores multiple values in the typed array, reading input values from a specified array. */
  set<U extends ArrayBufferView>(source: U, offset?: i32): void
  /** The toString() method returns a string representing the specified array and its elements. This method has the same algorithm as Array.prototype.toString() */
  toString(): string;
}

/** An array of twos-complement 8-bit signed integers. */
declare class Int8Array extends TypedArray<i8> {
  /** Wrap an ArrayBuffer */
  static wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Int8Array;
}
/** An array of 8-bit unsigned integers. */
declare class Uint8Array extends TypedArray<u8> {
  /** Wrap an ArrayBuffer */
  static wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Uint8Array;
}
/** A clamped array of 8-bit unsigned integers. */
declare class Uint8ClampedArray extends TypedArray<u8> {
  /** Wrap an ArrayBuffer */
  static wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Uint8ClampedArray;
}
/** An array of twos-complement 16-bit signed integers. */
declare class Int16Array extends TypedArray<i16> {
  /** Wrap an ArrayBuffer */
  static wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Int16Array;
}
/** An array of 16-bit unsigned integers. */
declare class Uint16Array extends TypedArray<u16> {
  /** Wrap an ArrayBuffer */
  static wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Uint16Array;
}
/** An array of twos-complement 32-bit signed integers. */
declare class Int32Array extends TypedArray<i32> {
  /** Wrap an ArrayBuffer */
  static wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Int32Array;
}
/** An array of 32-bit unsigned integers. */
declare class Uint32Array extends TypedArray<u32> {
  /** Wrap an ArrayBuffer */
  static wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Uint32Array;
}
/** An array of twos-complement 64-bit signed integers. */
declare class Int64Array extends TypedArray<i64> {
  /** Wrap an ArrayBuffer */
  static wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Int64Array;
}
/** An array of 64-bit unsigned integers. */
declare class Uint64Array extends TypedArray<u64> {
  /** Wrap an ArrayBuffer */
  static wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Uint64Array;
}
/** An array of 32-bit floating point numbers. */
declare class Float32Array extends TypedArray<f32> {
  /** Wrap an ArrayBuffer */
  static wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Float32Array;
}
/** An array of 64-bit floating point numbers. */
declare class Float64Array extends TypedArray<f64> {
  /** Wrap an ArrayBuffer */
  static wrap(buffer: ArrayBuffer, byteOffset?: i32, length?: i32): Float64Array;
}

/** Class representing a sequence of values of type `T`. */
declare class Array<T> {

  /** Tests if a value is an array. */
  static isArray<U>(value: any): value is Array<any>;

  [key: number]: T;
  /** Current length of the array. */
  length: i32;
  /** Returns raw pointer to data storage (unsafe). */
  readonly dataStart: usize;
  /** Constructs a new array. */
  constructor(length?: i32);
  at(index: i32): T;
  fill(value: T, start?: i32, end?: i32): this;
  every(callbackfn: (element: T, index: i32, array?: Array<T>) => bool): bool;
  findIndex(predicate: (element: T, index: i32, array?: Array<T>) => bool): i32;
  includes(searchElement: T, fromIndex?: i32): bool;
  indexOf(searchElement: T, fromIndex?: i32): i32;
  lastIndexOf(searchElement: T, fromIndex?: i32): i32;
  push(element: T): i32;
  concat(items: T[]): T[];
  copyWithin(target: i32, start: i32, end?: i32): this;
  pop(): T;
  forEach(callbackfn: (value: T, index: i32, array: Array<T>) => void): void;
  map<U>(callbackfn: (value: T, index: i32, array: Array<T>) => U): Array<U>;
  filter(callbackfn: (value: T, index: i32, array: Array<T>) => bool): Array<T>;
  reduce<U>(callbackfn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U, initialValue: U): U;
  reduceRight<U>(callbackfn: (previousValue: U, currentValue: T, currentIndex: i32, array: Array<T>) => U, initialValue: U): U;
  shift(): T;
  some(callbackfn: (element: T, index: i32, array?: Array<T>) => bool): bool;
  unshift(element: T): i32;
  slice(from: i32, to?: i32): Array<T>;
  splice(start: i32, deleteCount?: i32): Array<T>;
  sort(comparator?: (a: T, b: T) => i32): this;
  join(separator?: string): string;
  reverse(): T[];
  /** Flattens an array of arrays. If any null entries exist in the array, they are ignored, unlike JavaScript's version of Array#flat(). */
  flat(): T extends unknown[] ? T : never;
  toString(): string;
}

/** Class representing a static (not resizable) sequence of values of type `T`. This class is @final. */
declare class StaticArray<T> {
  [key: number]: T;
  static fromArray<T>(source: Array<T>): StaticArray<T>;
  static concat<T>(source: StaticArray<T>, other: StaticArray<T>): StaticArray<T>;
  static slice<T>(source: StaticArray<T>, start?: i32, end?: i32): StaticArray<T>;
  readonly length: i32;
  constructor(length?: i32);
  at(index: i32): T;
  includes(searchElement: T, fromIndex?: i32): bool;
  indexOf(searchElement: T, fromIndex?: i32): i32;
  lastIndexOf(searchElement: T, fromIndex?: i32): i32;
  concat(items: Array<T>): Array<T>;
  slice(from: i32, to?: i32): Array<T>;
  join(separator?: string): string;
  toString(): string;
}

/** Class representing a sequence of characters. */
declare class String {
  static fromCharCode(ls: i32, hs?: i32): string;
  static fromCharCodes(arr: u16[]): string;
  static fromCodePoint(code: i32): string;
  static fromCodePoints(arr: i32[]): string;
  static raw(parts: TemplateStringsArray, ...args: any[]): string;
  readonly length: i32;
  at(index: i32): string;
  charAt(index: i32): string;
  charCodeAt(index: i32): i32;
  codePointAt(index: i32): i32;
  concat(other: string): string;
  endsWith(other: string): bool;
  indexOf(other: string, fromIndex?: i32): i32;
  lastIndexOf(other: string, fromIndex?: i32): i32;
  localeCompare(other: string): i32;
  includes(other: string): bool;
  startsWith(other: string): bool;
  substr(start: i32, length?: i32): string;
  substring(start: i32, end?: i32): string;
  trim(): string;
  trimLeft(): string;
  trimRight(): string;
  trimStart(): string;
  trimEnd(): string;
  padStart(targetLength: i32, padString?: string): string;
  padEnd(targetLength: i32, padString?: string): string;
  repeat(count?: i32): string;
  replace(search: string, replacement: string): string;
  replaceAll(search: string, replacement: string): string;
  slice(beginIndex: i32, endIndex?: i32): string;
  split(separator?: string, limit?: i32): string[];
  toLowerCase(): string;
  toUpperCase(): string;
  toString(): string;
}

declare namespace String {
  /** Encoding helpers for UTF-8. */
  export namespace UTF8 {
    /** Calculates the byte length of the specified string when encoded as UTF-8, optionally null terminated. */
    export function byteLength(str: string, nullTerminated?: bool): i32;
    /** Encodes the specified string to UTF-8 bytes, optionally null terminated. */
    export function encode(str: string, nullTerminated?: bool): ArrayBuffer;
    /** Encodes the specified raw string to UTF-8 bytes, opionally null terminated. Returns the number of bytes written. */
    export function encodeUnsafe(str: usize, len: i32, buf: usize, nullTerminated?: bool): usize;
    /** Decodes the specified buffer from UTF-8 bytes to a string, optionally null terminated. */
    export function decode(buf: ArrayBuffer, nullTerminated?: bool): string;
    /** Decodes raw UTF-8 bytes to a string, optionally null terminated. */
    export function decodeUnsafe(buf: usize, len: usize, nullTerminated?: bool): string;
  }
  /** Encoding helpers for UTF-16. */
  export namespace UTF16 {
    /** Calculates the byte length of the specified string when encoded as UTF-16. */
    export function byteLength(str: string): i32;
    /** Encodes the specified string to UTF-16 bytes. */
    export function encode(str: string): ArrayBuffer;
    /** Encodes the specified raw string to UTF-16 bytes. Returns the number of bytes written. */
    export function encodeUnsafe(str: usize, len: i32, buf: usize): usize;
    /** Decodes the specified buffer from UTF-16 bytes to a string. */
    export function decode(buf: ArrayBuffer): string;
    /** Decodes raw UTF-16 bytes to a string. */
    export function decodeUnsafe(buf: usize, len: usize): string;
  }
}

declare class TemplateStringsArray extends Array<string> {
  readonly raw: string[];
}

declare class Object {
  /** The Object.is() method determines whether two values are the same value. */
  static is<T>(value1: T, value2: T): bool;
}

declare class Date {
  /** Returns the UTC timestamp in milliseconds of the specified date. */
  static UTC(
    year: i32,
    month: i32,
    day: i32,
    hour: i32,
    minute: i32,
    second: i32,
    millisecond: i32
  ): i64;
  /** Returns the current UTC timestamp in milliseconds. */
  static now(): i64;
  /** Parses a string representation of a date, and returns the number of milliseconds since January 1, 1970, 00:00:00 UTC. */
  static parse(dateString: string): Date;
  static fromString(dateString: string): Date;
  /** Constructs a new date object from an UTC timestamp in milliseconds. */
  constructor(value: i64);
  /** Returns the UTC timestamp of this date in milliseconds. */
  getTime(): i64;
  /** Sets the UTC timestamp of this date in milliseconds. */
  setTime(value: i64): i64;

  getUTCFullYear(): i32;
  getUTCMonth(): i32;
  getUTCDate(): i32;
  getUTCDay(): i32;
  getUTCHours(): i32;
  getUTCMinutes(): i32;
  getUTCSeconds(): i32;
  getUTCMilliseconds(): i32;

  setUTCFullYear(value: i32): void;
  setUTCMonth(value: i32): void;
  setUTCDate(value: i32): void;
  setUTCHours(value: i32): void;
  setUTCMinutes(value: i32): void;
  setUTCSeconds(value: i32): void;
  setUTCMilliseconds(value: i32): void;

  toString(): string;
  toISOString(): string;
  toUTCString(): string;
  toDateString(): string;
  toTimeString(): string;
}

/** Class for representing a runtime error. Base class of all errors. */
declare class Error {

  /** Error name. */
  name: string;

  /** Message provided on construction. */
  message: string;

  /** Stack trace. */
  stack?: string;

  /** Constructs a new error, optionally with a message. */
  constructor(message?: string);

  /** Method returns a string representing the specified Error class. */
  toString(): string;
}

/** Class for indicating an error when a value is not in the set or range of allowed values. */
declare class RangeError extends Error { }

/** Class for indicating an error when a value is not of the expected type. */
declare class TypeError extends Error { }

/** Class for indicating an error when trying to interpret syntactically invalid code. */
declare class SyntaxError extends Error { }

/** Class for indicating an error when a global URI handling function was used in a wrong way. */
declare class URIError extends Error { }

interface Boolean {
  toString(radix?: number): string;
}

interface Number {
  toString(radix?: number): string;
}

interface Function {
  /** Function table index. */
  readonly index: u32;
  /** Function name. Always an empty string. */
  readonly name: string;
  /** Number of expected parameters. */
  readonly length: u32;
  /** Calls this function indirectly with the specified arguments. */
  call(thisArg: unknown, ...args: unknown[]): any;
  /** Returns a string representation of this function. */
  toString(): string;
}
interface IArguments {}
interface RegExp {}

declare class Map<K,V> {
  readonly size: i32;
  has(key: K): bool;
  set(key: K, value: V): this;
  get(key: K): V;
  delete(key: K): bool;
  clear(): void;
  keys(): K[]; // preliminary
  values(): V[]; // preliminary
  toString(): string;
}

declare class Set<K> {
  readonly size: i32;
  has(value: K): bool;
  add(value: K): this;
  delete(value: K): bool;
  clear(): void;
  values(): K[]; // preliminary
  toString(): string;
}

interface SymbolConstructor {
  readonly hasInstance: symbol;
  readonly isConcatSpreadable: symbol;
  readonly isRegExp: symbol;
  readonly iterator: symbol;
  readonly match: symbol;
  readonly replace: symbol;
  readonly search: symbol;
  readonly species: symbol;
  readonly split: symbol;
  readonly toPrimitive: symbol;
  readonly toStringTag: symbol;
  readonly unscopables: symbol;
  (description?: string | null): symbol;
  for(key: string): symbol;
  keyFor(sym: symbol): string | null;
}

declare const Symbol: SymbolConstructor;

interface IMath<T> {
  /** The base of natural logarithms, e, approximately 2.718. */
  readonly E: T;
  /** The natural logarithm of 2, approximately 0.693. */
  readonly LN2: T;
  /** The natural logarithm of 10, approximately 2.302. */
  readonly LN10: T;
  /** The base 2 logarithm of e, approximately 1.442. */
  readonly LOG2E: T;
  /** The base 10 logarithm of e, approximately 0.434. */
  readonly LOG10E: T;
  /** The ratio of the circumference of a circle to its diameter, approximately 3.14159. */
  readonly PI: T;
  /** The square root of 1/2, approximately 0.707. */
  readonly SQRT1_2: T;
  /** The square root of 2, approximately 1.414. */
  readonly SQRT2: T;
  /** Returns the absolute value of `x`. */
  abs(x: T): T;
  /** Returns the arccosine (in radians) of `x`. */
  acos(x: T): T;
  /** Returns the hyperbolic arc-cosine of `x`. */
  acosh(x: T): T;
  /** Returns the arcsine (in radians) of `x`. */
  asin(x: T): T;
  /** Returns the hyperbolic arcsine of `x`. */
  asinh(x: T): T;
  /** Returns the arctangent (in radians) of `x`. */
  atan(x: T): T;
  /** Returns the arctangent of the quotient of its arguments. */
  atan2(y: T, x: T): T;
  /** Returns the hyperbolic arctangent of `x`. */
  atanh(x: T): T;
  /** Returns the cube root of `x`. */
  cbrt(x: T): T;
  /** Returns the smallest integer greater than or equal to `x`. */
  ceil(x: T): T;
  /** Returns the number of leading zero bits in the 32-bit binary representation of `x`. */
  clz32(x: T): T;
  /** Returns the cosine (in radians) of `x`. */
  cos(x: T): T;
  /** Returns the hyperbolic cosine of `x`. */
  cosh(x: T): T;
  /** Returns e to the power of `x`. */
  exp(x: T): T;
  /** Returns e to the power of `x`, minus 1. */
  expm1(x: T): T;
  /** Returns the largest integer less than or equal to `x`. */
  floor(x: T): T;
  /** Returns the nearest 32-bit single precision float representation of `x`. */
  fround(x: T): T;
  /** Returns the square root of the sum of squares of its arguments. */
  hypot(value1: T, value2: T): T; // TODO: rest
  /** Returns the result of the C-like 32-bit multiplication of `a` and `b`. */
  imul(a: T, b: T): T;
  /** Returns the natural logarithm (base e) of `x`. */
  log(x: T): T;
  /** Returns the base 10 logarithm of `x`. */
  log10(x: T): T;
  /** Returns the natural logarithm (base e) of 1 + `x`. */
  log1p(x: T): T;
  /** Returns the base 2 logarithm of `x`. */
  log2(x: T): T;
  /** Returns the largest-valued number of its arguments. */
  max(value1: T, value2: T): T; // TODO: rest
  /** Returns the lowest-valued number of its arguments. */
  min(value1: T, value2: T): T; // TODO: rest
  /** Returns `base` to the power of `exponent`. */
  pow(base: T, exponent: T): T;
  /** Returns a pseudo-random number in the range from 0.0 inclusive up to but not including 1.0. */
  random(): T;
  /** Returns the value of `x` rounded to the nearest integer. */
  round(x: T): T;
  /** Returns the sign of `x`, indicating whether the number is positive, negative or zero. */
  sign(x: T): T;
  /** Returns whether the sign bit of `x` is set. */
  signbit(x: T): bool;
  /** Returns the sine of `x`. */
  sin(x: T): T;
  /** Returns the hyperbolic sine of `x`. */
  sinh(x: T): T;
  /** Returns the square root of `x`. */
  sqrt(x: T): T;
  /** Returns the tangent of `x`. */
  tan(x: T): T;
  /** Returns the hyperbolic tangent of `x`. */
  tanh(x: T): T;
  /** Returns the integer part of `x` by removing any fractional digits. */
  trunc(x: T): T;
}

interface INativeMath<T> extends IMath<T> {
  /** Contains sin value produced after Math/Mathf.sincos */
  sincos_sin: T;
  /** Contains cos value produced after Math/Mathf.sincos */
  sincos_cos: T;
  /** Seeds the random number generator. */
  seedRandom(value: i64): void;
  /** Multiplies a floating point `x` by 2 raised to power exp `n`. */
  scalbn(x: T, n: i32): T;
  /** Returns the floating-point remainder of `x / y` (rounded towards zero). */
  mod(x: T, y: T): T;
  /** Returns the floating-point remainder of `x / y` (rounded to nearest). */
  rem(x: T, y: T): T;
  /** Returns sin and cos simultaneously for same angle. Results stored to `sincos_s32/64` and `sincos_c32/64` globals */
  sincos(x: T): void;
  /** Returns 2 raised to the given power x. Equivalent to 2 ** x. */
  exp2(x: T): T;
}

/** Double precision math imported from JavaScript. */
declare const JSMath: IMath<f64>;
/** Double precision math implemented natively. */
declare const NativeMath: INativeMath<f64>;
/** Single precision math implemented natively. */
declare const NativeMathf: INativeMath<f32>;
/** Alias of {@link NativeMath} or {@link JSMath} respectively. Defaults to `NativeMath`. */
declare const Math: IMath<f64>;
/** Alias of {@link NativeMathf} or {@link JSMath} respectively. Defaults to `NativeMathf`. */
declare const Mathf: IMath<f32>;

/** Environmental abort function. */
declare function abort(msg?: string | null, fileName?: string | null, lineNumber?: i32, columnNumber?: i32): never;
/** Environmental tracing function. */
declare function trace(msg: string, n?: i32, a0?: f64, a1?: f64, a2?: f64, a3?: f64, a4?: f64): void;
/** Environmental seeding function. */
declare function seed(): f64;

/** Node-like process on top of WASI. */
declare namespace process {
  /** String representing the CPU architecture for which the binary was compiled. Either `wasm32` or `wasm64`. */
  export const arch: string;
  /** String representing the operating system platform for which the binary was compiled. Always `wasm`. */
  export const platform: string;
  /** Array of command line arguments passed to the binary upon instantiation. */
  export const argv: string[];
  /** Map of variables in the binary's user environment. */
  export const env: Map<string,string>;
  /** Process exit code to use when the process exits gracefully. Defaults to `0`. */
  export var exitCode: i32;
  /** Terminates the process with either the given exit code, or `process.exitCode` if omitted. */
  export function exit(code?: i32): void;
  /** Stream connected to `stdin` (fd `0`). */
  export const stdin: ReadableStream;
  /** Stream connected to `stdout` (fd `1`). */
  export const stdout: WritableStream;
  /** Stream connected to `stderr` (fd `2`). */
  export const stderr: WritableStream;
  /** Obtains the system's current time of day, in milliseconds since Unix epoch. */
  export function time(): i64;
  /** Obtains the system's monotonic high resolution time, in nanoseconds since an arbitrary time in the past. */
  export function hrtime(): u64;

  interface Stream {
    /** Closes the stream. Throws if already closed or if the stream cannot be closed. */
    close(): void;
  }
  interface ReadableStream extends Stream {
    /** Reads available data from the stream, into `buffer` at offset `offset`, returning the number of bytes read. */
    read(buffer: ArrayBuffer, offset?: isize): i32;
  }
  interface WritableStream extends Stream {
    /** Writes string or buffer to the stream. */
    write<T extends string | ArrayBuffer>(data: T): void;
  }
}

/** Browser-like console on top of WASI. */
declare namespace console {
  /** Logs `message` to console if `assertion` is false-ish. */
  export function assert<T>(assertion: T, message: string): void;
  /** Outputs `message` to the console. */
  export function log(message: string): void;
  /** Outputs `message` to the console, prefixed with "Debug:". */
  export function debug(message: string): void;
  /** Outputs `message` to the console, prefixed with "Info:". */
  export function info(message: string): void;
  /** Outputs `message` to the console, prefixed with "Warning:". */
  export function warn(message: string): void;
  /** Outputs `message` to the console, prefixed with "Error:". */
  export function error(message: string): void;
  /** Starts a new timer using the specified `label`. */
  export function time(label: string): void;
  /** Logs the current value of a timer previously started with `console.time`. */
  export function timeLog(label: string): void;
  /** Logs the current value of a timer previously started with `console.time` and discards the timer. */
  export function timeEnd(label: string): void;
}

/** Browser-like crypto utilities on top of WASI. */
declare namespace crypto {
  /** Fills `array` with cryptographically strong random values. */
  export function getRandomValues(array: Uint8Array): void;
}

// Decorators

interface TypedPropertyDescriptor<T> {
  configurable?: boolean;
  enumerable?: boolean;
  writable?: boolean;
  value?: T;
  get?(): T;
  set?(value: T): void;
}

/** Annotates a method as a binary operator overload for the specified `token`. */
declare function operator(token:
  "[]" | "[]=" | "{}" | "{}=" | "==" | "!=" | ">" | "<" | "<=" | ">=" |
  ">>" | ">>>" | "<<" |  "&"  | "|"  | "^"  | "+" | "-" | "*"  | "**" | "/"  | "%"
): (
  target: any,
  propertyKey: string,
  descriptor: TypedPropertyDescriptor<any>
) => TypedPropertyDescriptor<any> | void;

declare namespace operator {
  /** Annotates a method as a binary operator overload for the specified `token`. */
  export function binary(token:
    "[]" | "[]=" | "{}" | "{}=" | "==" | "!=" | ">" | "<" | "<=" | ">=" |
    ">>" | ">>>" | "<<" |  "&"  | "|"  | "^"  | "+" | "-" | "*"  | "**" | "/"  | "%"
  ): (
    target: any,
    propertyKey: string,
    descriptor: TypedPropertyDescriptor<any>
  ) => TypedPropertyDescriptor<any> | void;
  /** Annotates a method as an unary prefix operator overload for the specified `token`. */
  export function prefix(token: "!" | "~" | "+" | "-" | "++" | "--"): (
    target: any,
    propertyKey: string,
    descriptor: TypedPropertyDescriptor<any>
  ) => TypedPropertyDescriptor<any> | void;
  /** Annotates a method as an unary postfix operator overload for the specified `token`. */
  export function postfix(token: "++" | "--"): (
    target: any,
    propertyKey: string,
    descriptor: TypedPropertyDescriptor<any>
  ) => TypedPropertyDescriptor<any> | void;
}

/** Annotates an element as a program global. */
declare function global(...args: any[]): any;

/** Annotates a class as being unmanaged with limited capabilities. */
declare function unmanaged(constructor: Function): void;

/** Annotates a class as being final / non-derivable. */
declare function final(constructor: Function): void;

/** Annotates a method, function or constant global as always inlined. */
declare function inline(...args: any[]): any;

/** Annotates a method, function or constant global as unsafe. */
declare function unsafe(...args: any[]): any;

/** Annotates an explicit external name of a function or global. */
declare function external(...args: any[]): any;

/** Annotates a global for lazy compilation. */
declare function lazy(...args: any[]): any;
