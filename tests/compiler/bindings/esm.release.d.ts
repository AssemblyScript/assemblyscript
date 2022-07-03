/** plainGlobal */
export declare const plainGlobal: {
  /** @type `i32` */
  get value(): number
};
/** plainMutableGlobal */
export declare const plainMutableGlobal: {
  /** @type `i32` */
  get value(): number;
  set value(value: number);
};
/** stringGlobal */
export declare const stringGlobal: {
  /** @type `string` */
  get value(): string
};
/** mutableStringGlobal */
export declare const mutableStringGlobal: {
  /** @type `string` */
  get value(): string;
  set value(value: string);
};
/** Enum */
export declare enum Enum {
  /** @type `i32` */
  ONE,
  /** @type `i32` */
  TWO,
  /** @type `i32` */
  THREE,
}
/** ConstEnum */
export declare enum ConstEnum {
  /** @type `i32` */
  ONE,
  /** @type `i32` */
  TWO,
  /** @type `i32` */
  THREE,
}
/**
 * plainFunction
 * @param a `i32`
 * @param b `i32`
 * @returns `i32`
 */
export declare function plainFunction(a: number, b: number): number;
/**
 * plainFunction64
 * @param a `i64`
 * @param b `i64`
 * @returns `i64`
 */
export declare function plainFunction64(a: bigint, b: bigint): bigint;
/**
 * bufferFunction
 * @param a `ArrayBuffer`
 * @param b `ArrayBuffer`
 * @returns `ArrayBuffer`
 */
export declare function bufferFunction(a: ArrayBuffer, b: ArrayBuffer): ArrayBuffer;
/**
 * stringFunction
 * @param a `string`
 * @param b `string`
 * @returns `string`
 */
export declare function stringFunction(a: string, b: string): string;
/**
 * stringFunctionOptional
 * @param a `string`
 * @param b `string`
 * @returns `string`
 */
export declare function stringFunctionOptional(a: string, b?: string): string;
/**
 * typedarrayFunction
 * @param a `Int16Array`
 * @param b `Float32Array`
 * @returns `Uint64Array`
 */
export declare function typedarrayFunction(a: Int16Array, b: Float32Array): BigUint64Array;
/**
 * staticarrayFunction
 * @param a `StaticArray`
 * @param b `StaticArray`
 * @returns `StaticArray`
 */
export declare function staticarrayFunction(a: Array<number>, b: Array<number>): Array<number>;
/**
 * arrayFunction
 * @param a `Array`
 * @param b `Array`
 * @returns `Array`
 */
export declare function arrayFunction(a: Array<number>, b: Array<number>): Array<number>;
/**
 * objectFunction
 * @param a `PlainObject`
 * @param b `PlainObject`
 * @returns `PlainObject`
 */
export declare function objectFunction(a: __Record8<undefined>, b: __Record8<undefined>): __Record8<never>;
/**
 * newInternref
 * @returns `NonPlainObject`
 */
export declare function newInternref(): __Internref11;
/**
 * internrefFunction
 * @param a `NonPlainObject`
 * @param b `NonPlainObject`
 * @returns `NonPlainObject`
 */
export declare function internrefFunction(a: __Internref11, b: __Internref11): __Internref11;
/** PlainObject */
declare interface __Record8<TOmittable> {
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
  /** @type `string | null` */
  n: string | null | TOmittable;
  /** @type `Uint8Array | null` */
  o: Uint8Array | null | TOmittable;
  /** @type `Array | null` */
  p: Array<string> | null | TOmittable;
}
/** NonPlainObject */
declare class __Internref11 extends Number {
  private __nominal11: symbol;
}
