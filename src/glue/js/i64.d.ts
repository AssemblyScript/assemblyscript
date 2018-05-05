/** @module glue/js *//***/

declare type I64 = { __Long__: true }; // opaque

declare const i64_zero: I64;
declare const i64_one: I64;

declare function i64_new(lo: i32, hi?: i32): I64;
declare function i64_low(value: I64): i32;
declare function i64_high(value: I64): i32;

declare function i64_add(left: I64, right: I64): I64;
declare function i64_sub(left: I64, right: I64): I64;
declare function i64_mul(left: I64, right: I64): I64;
declare function i64_div(left: I64, right: I64): I64;
declare function i64_div_u(left: I64, right: I64): I64;
declare function i64_rem(left: I64, right: I64): I64;
declare function i64_rem_u(left: I64, right: I64): I64;
declare function i64_and(left: I64, right: I64): I64;
declare function i64_or(left: I64, right: I64): I64;
declare function i64_xor(left: I64, right: I64): I64;
declare function i64_shl(left: I64, right: I64): I64;
declare function i64_shr(left: I64, right: I64): I64;
declare function i64_shr_u(left: I64, right: I64): I64;
declare function i64_not(value: I64): I64;

declare function i64_eq(left: I64, right: I64): bool;
declare function i64_ne(left: I64, right: I64): bool;

declare function i64_align(value: I64, alignment: i32): I64;

declare function i64_is_i8(value: I64): bool;
declare function i64_is_i16(value: I64): bool;
declare function i64_is_i32(value: I64): bool;
declare function i64_is_u8(value: I64): bool;
declare function i64_is_u16(value: I64): bool;
declare function i64_is_u32(value: I64): bool;
declare function i64_is_bool(value: I64): bool;
declare function i64_is_f32(value: I64): bool;
declare function i64_is_f64(value: I64): bool;

declare function i64_to_f32(value: I64): f64;
declare function i64_to_f64(value: I64): f64;
declare function i64_to_string(value: I64, unsigned?: bool): string;
