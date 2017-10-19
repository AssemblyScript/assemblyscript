/// <reference path="../assembly.d.ts" />

declare class Array<T> {
  length: i32;
  readonly capacity: i32;
  readonly data: usize;
  constructor(capacity: i32);
}

declare class Int8Array extends Array<i8> {}
declare class Int16Array extends Array<i16> {}
declare class Int32Array extends Array<i32> {}
declare class Uint8Array extends Array<u8> {}
declare class Uint16Array extends Array<u16> {}
declare class Uint32Array extends Array<u32> {}
declare class Float32Array extends Array<f32> {}
declare class Float64Array extends Array<f64> {}
