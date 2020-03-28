export { memory };

export const COLOR: string = "red";

export function strlen(str: string): i32 {
  return str.length;
}

export namespace math {
  export function add(a: i32, b: i32): i32 {
    return a + b;
  }
}

export class Car {
  static readonly MAX_DOORS: i32 = 5;
  static readonly usualDoors: i32 = 3;

  numDoors: i32;
  private doorsOpen: bool = false;

  get isDoorsOpen(): bool { return this.doorsOpen; }
  set isDoorsOpen(value: bool) { this.doorsOpen = value; }

  constructor(numDoors: i32) {
    this.numDoors = numDoors;
  }

  openDoors(): bool {
    if (this.doorsOpen) return false;
    this.doorsOpen = true;
    return true;
  }

  closeDoors(): bool {
    if (!this.doorsOpen) return false;
    this.doorsOpen = false;
    return true;
  }
}

export function sum(arr: Int32Array): i32 {
  var v = 0;
  for (let i = 0, k = arr.length; i < k; ++i) v += arr[i];
  return v;
}

export function sumStatic(arr: StaticArray<i32>): i32 {
  var v = 0;
  for (let i = 0, k = arr.length; i < k; ++i) v += arr[i];
  return v;
}

export function changeLength(arr: Array<i32>, length: i32): void {
  arr.length = length;
}

export function varadd(a: i32 = 1, b: i32 = 2): i32 {
  return a + b;
}

export const varadd_ref = varadd;

export function calladd(fn: (a: i32, b: i32) => i32, a: i32, b: i32): i32 {
  return fn(a, b);
}

export function dotrace(num: f64): void {
  trace("The answer is", 1, num);
}

export const UINT8ARRAY_ID = idof<Uint8Array>();
export const INT16ARRAY_ID = idof<Int16Array>();
export const UINT16ARRAY_ID = idof<Uint16Array>();
export const INT32ARRAY_ID = idof<Int32Array>();
export const UINT32ARRAY_ID = idof<Uint32Array>();
export const FLOAT32ARRAY_ID = idof<Float32Array>();
export const ARRAYI32_ID = idof<Array<i32>>();
export const STATICARRAYI32_ID = idof<StaticArray<i32>>();
export const STATICARRAYU32_ID = idof<StaticArray<u32>>();
export const STATICARRAYU8_ID = idof<StaticArray<u8>>();
export const STATICARRAYI16_ID = idof<StaticArray<i16>>();
export const STATICARRAYF32_ID = idof<StaticArray<f32>>();

export function newFloat32Array(size: i32): Float32Array {
  return new Float32Array(size);
}

export function modifyFloat32Array(array: Float32Array, index: i32, value: f32): void {
  array[index] = value;
}
