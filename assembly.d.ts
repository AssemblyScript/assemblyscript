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
declare type bool = any; // sic
/** A 32-bit float. */
declare type f32 = number;
/** A 64-bit float. */
declare type f64 = number;

/** A decorator marking a function or class as global. */
declare function global(name?: string): any;
/** A decorator marking a function as ideally being inlined. */
declare function inline(): any;
/** A decorator marking a class that manually manages its memory. */
declare function allocates(): any;

declare function operator(token: string, fn: any): any;

/// <reference path="./std/builtins.d.ts" />
/// <reference path="./std/array.d.ts" />
/// <reference path="./std/map.d.ts" />
/// <reference path="./std/math.d.ts" />
/// <reference path="./std/memory.d.ts" />
/// <reference path="./std/set.d.ts" />
/// <reference path="./std/string.d.ts" />
