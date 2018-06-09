import "allocator/arena";

export const arr_u32: u32[] = [10, 20, 30]; // ok
export const arr_i32: i32[] = [-10, 20, -30]; // ok

export const arr_u64: u64[] = [4294967296 + 10, 4294967296 + 20, 4294967296 + 30]; // not supported
export const arr_i64: i64[] = [-(4294967296 + 10), 4294967296 + 20, -(4294967296 + 30)]; // not supported

export const arr_f32: f32[] = [10.10, -20.20, 30.30]; // ok

export const arr_f64: f64[] = [10.10, -20.20, 30.30];

export const arr_string: string[] = ['hello', 'world']; // ok

export const arr_u8: u8[] = [1, 2, 3]; // ok
export const arr_i8: i8[] = [-1, 2, -3]; // ok

export const arr_u16: u16[] = [1, 2, 3]; // ok
export const arr_i16: i16[] = [-1, 2, -3]; // ok

export const arr_bool: boolean[] = [true, true, false];
