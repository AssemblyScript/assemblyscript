// Cases not depending on --exportRuntime, hence not automatically enabling it.
// Means: Fixture should not have exports for `__new` etc.

// basic types when either lifting or lowering

export var isBasic: i32 = 0;

export function takesReturnsBasic(a: i32): i32 {
  return isBasic;
}

// flat types when lifting

export const isString: string = "";

export function returnsString(): string {
  return isString;
}

export const isBuffer: ArrayBuffer = new ArrayBuffer(0);

export function returnsBuffer(): ArrayBuffer {
  return isBuffer;
}

// nested types with basic/flat elements when lifting

export const isTypedArray: Int32Array = new Int32Array(0);

export function returnsTypedArray(): Int32Array {
  return isTypedArray;
}

export const isArrayOfBasic: i32[] = [];

export function returnsArrayOfBasic(): i32[] {
  return isArrayOfBasic;
}

export const isArrayOfArray: i32[][] = [];

export function returnsArrayOfArray(): i32[][] {
  return isArrayOfArray;
}

// complex types when lowering

class NonPlainObject {
  constructor() {}
}

export function takesNonPlainObject(obj: NonPlainObject): void {
}

export function takesFunction(fn: () => void): void {
}
