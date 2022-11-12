/** Exported memory */
export declare const memory: WebAssembly.Memory;
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
 * bindings/esm/getMaxUnsigned32
 * @returns `u32`
 */
export declare function getMaxUnsigned32(): number;
/**
 * bindings/esm/getMaxUnsigned64
 * @returns `u64`
 */
export declare function getMaxUnsigned64(): bigint;
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
export declare function staticarrayFunction(a: ArrayLike<number>, b: ArrayLike<number>): ArrayLike<number>;
/**
 * bindings/esm/staticarrayU16
 * @param a `~lib/staticarray/StaticArray<u16>`
 * @returns `~lib/staticarray/StaticArray<u16>`
 */
export declare function staticarrayU16(a: ArrayLike<number>): ArrayLike<number>;
/**
 * bindings/esm/staticarrayI64
 * @param a `~lib/staticarray/StaticArray<i64>`
 * @returns `~lib/staticarray/StaticArray<i64>`
 */
export declare function staticarrayI64(a: ArrayLike<bigint>): ArrayLike<bigint>;
/**
 * bindings/esm/arrayFunction
 * @param a `~lib/array/Array<i32>`
 * @param b `~lib/array/Array<i32>`
 * @returns `~lib/array/Array<i32>`
 */
export declare function arrayFunction(a: Array<number>, b: Array<number>): Array<number>;
/**
 * bindings/esm/objectFunction
 * @param a `bindings/esm/PlainObject`
 * @param b `bindings/esm/PlainObject`
 * @returns `bindings/esm/PlainObject`
 */
export declare function objectFunction(a: __Internref12, b: __Internref12): __Internref12;
/**
 * bindings/esm/newInternref
 * @returns `bindings/esm/NonPlainObject`
 */
export declare function newInternref(): __Internref15;
/**
 * bindings/esm/internrefFunction
 * @param a `bindings/esm/NonPlainObject`
 * @param b `bindings/esm/NonPlainObject`
 * @returns `bindings/esm/NonPlainObject`
 */
export declare function internrefFunction(a: __Internref15, b: __Internref15): __Internref15;
/**
 * bindings/esm/functionFunction
 * @param fn `() => void`
 * @returns `() => void`
 */
export declare function functionFunction(fn: __Internref4): __Internref4;
/** bindings/esm/fn */
export declare const fn: {
  /** @type `() => void` */
  get value(): __Internref4
};
/** bindings/esm/PlainObject */
declare class __Internref12 extends Number {
  private __nominal12: symbol;
  private __nominal0: symbol;
}
/** bindings/esm/NonPlainObject */
declare class __Internref15 extends Number {
  private __nominal15: symbol;
  private __nominal0: symbol;
}
/** ~lib/function/Function<%28%29=>void> */
declare class __Internref4 extends Number {
  private __nominal4: symbol;
  private __nominal0: symbol;
}
