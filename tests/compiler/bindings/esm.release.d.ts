/** bindings/esm/plainGlobal */
export declare const plainGlobal: {
  /** @type `i32` */
  get value(): number
};
/** bindings/esm/plainMutableGlobal */
export declare const plainMutableGlobal: {
  /** @type `i32` */
  get value(): number;
  set value(value: number);
};
/** bindings/esm/stringGlobal */
export declare const stringGlobal: {
  /** @type `~lib/string/String` */
  get value(): string
};
/** bindings/esm/mutableStringGlobal */
export declare const mutableStringGlobal: {
  /** @type `~lib/string/String` */
  get value(): string;
  set value(value: string);
};
/** bindings/esm/Enum */
export declare enum Enum {
  /** @type `i32` */
  ONE,
  /** @type `i32` */
  TWO,
  /** @type `i32` */
  THREE,
}
/** bindings/esm/ConstEnum */
export declare enum ConstEnum {
  /** @type `i32` */
  ONE,
  /** @type `i32` */
  TWO,
  /** @type `i32` */
  THREE,
}
/**
 * bindings/esm/plainFunction
 * @param a `i32`
 * @param b `i32`
 * @returns `i32`
 */
export declare function plainFunction(a: number, b: number): number;
/**
 * bindings/esm/plainFunction64
 * @param a `i64`
 * @param b `i64`
 * @returns `i64`
 */
export declare function plainFunction64(a: bigint, b: bigint): bigint;
/**
 * bindings/esm/bufferFunction
 * @param a `~lib/arraybuffer/ArrayBuffer`
 * @param b `~lib/arraybuffer/ArrayBuffer`
 * @returns `~lib/arraybuffer/ArrayBuffer`
 */
export declare function bufferFunction(a: ArrayBuffer, b: ArrayBuffer): ArrayBuffer;
/**
 * bindings/esm/stringFunction
 * @param a `~lib/string/String`
 * @param b `~lib/string/String`
 * @returns `~lib/string/String`
 */
export declare function stringFunction(a: string, b: string): string;
/**
 * bindings/esm/stringFunctionOptional
 * @param a `~lib/string/String`
 * @param b `~lib/string/String`
 * @returns `~lib/string/String`
 */
export declare function stringFunctionOptional(a: string, b?: string): string;
/**
 * bindings/esm/typedarrayFunction
 * @param a `~lib/typedarray/Int16Array`
 * @param b `~lib/typedarray/Float32Array`
 * @returns `~lib/typedarray/Uint64Array`
 */
export declare function typedarrayFunction(a: Int16Array, b: Float32Array): BigUint64Array;
/**
 * bindings/esm/staticarrayFunction
 * @param a `~lib/staticarray/StaticArray<i32>`
 * @param b `~lib/staticarray/StaticArray<i32>`
 * @returns `~lib/staticarray/StaticArray<i32>`
 */
export declare function staticarrayFunction(a: Array<number>, b: Array<number>): Array<number>;
/**
 * bindings/esm/arrayFunction
 * @param a `~lib/array/Array<i32>`
 * @param b `~lib/array/Array<i32>`
 * @returns `~lib/array/Array<i32>`
 */
export declare function arrayFunction(a: Array<number>, b: Array<number>): Array<number>;
/**
 * bindings/esm/setU8Function
 * @returns `~lib/set/Set<u8>`
 */
export declare function setU8Function(): __Internref8;
/**
 * bindings/esm/setI32Function
 * @returns `~lib/set/Set<i32>`
 */
export declare function setI32Function(): __Internref9;
/**
 * bindings/esm/setF64Function
 * @returns `~lib/set/Set<f64>`
 */
export declare function setF64Function(): __Internref10;
/**
 * bindings/esm/objectFunction
 * @param a `bindings/esm/PlainObject`
 * @param b `bindings/esm/PlainObject`
 * @returns `bindings/esm/PlainObject`
 */
export declare function objectFunction(a: __Record11<undefined>, b: __Record11<undefined>): __Record11<never>;
/**
 * bindings/esm/newInternref
 * @returns `bindings/esm/NonPlainObject`
 */
export declare function newInternref(): __Internref14;
/**
 * bindings/esm/internrefFunction
 * @param a `bindings/esm/NonPlainObject`
 * @param b `bindings/esm/NonPlainObject`
 * @returns `bindings/esm/NonPlainObject`
 */
export declare function internrefFunction(a: __Internref14, b: __Internref14): __Internref14;
/** ~lib/set/Set<u8> */
declare class __Internref8 extends Number {
  private __nominal8: symbol;
}
/** ~lib/set/Set<i32> */
declare class __Internref9 extends Number {
  private __nominal9: symbol;
}
/** ~lib/set/Set<f64> */
declare class __Internref10 extends Number {
  private __nominal10: symbol;
}
/** bindings/esm/PlainObject */
declare interface __Record11<TOmittable> {
  /** @type `i8` */
  a: number | TOmittable;
  /** @type `i16` */
  b: number | TOmittable;
  /** @type `i32` */
  c: number | TOmittable;
  /** @type `i64` */
  d: bigint | TOmittable;
  /** @type `u8` */
  e: number | TOmittable;
  /** @type `u16` */
  f: number | TOmittable;
  /** @type `u32` */
  g: number | TOmittable;
  /** @type `u64` */
  h: bigint | TOmittable;
  /** @type `isize` */
  i: number | TOmittable;
  /** @type `usize` */
  j: number | TOmittable;
  /** @type `bool` */
  k: boolean | TOmittable;
  /** @type `f32` */
  l: number | TOmittable;
  /** @type `f64` */
  m: number | TOmittable;
  /** @type `~lib/string/String | null` */
  n: string | null | TOmittable;
  /** @type `~lib/typedarray/Uint8Array | null` */
  o: Uint8Array | null | TOmittable;
  /** @type `~lib/array/Array<~lib/string/String> | null` */
  p: Array<string> | null | TOmittable;
}
/** bindings/esm/NonPlainObject */
declare class __Internref14 extends Number {
  private __nominal14: symbol;
}
