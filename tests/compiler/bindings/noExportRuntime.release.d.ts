/** Exported memory */
export declare const memory: WebAssembly.Memory;
/** bindings/noExportRuntime/isBasic */
export declare const isBasic: {
  /** @type `i32` */
  get value(): number;
  set value(value: number);
};
/**
 * bindings/noExportRuntime/takesReturnsBasic
 * @param a `i32`
 * @returns `i32`
 */
export declare function takesReturnsBasic(a: number): number;
/** bindings/noExportRuntime/isString */
export declare const isString: {
  /** @type `~lib/string/String` */
  get value(): string
};
/**
 * bindings/noExportRuntime/returnsString
 * @returns `~lib/string/String`
 */
export declare function returnsString(): string;
/** bindings/noExportRuntime/isBuffer */
export declare const isBuffer: {
  /** @type `~lib/arraybuffer/ArrayBuffer` */
  get value(): ArrayBuffer
};
/**
 * bindings/noExportRuntime/returnsBuffer
 * @returns `~lib/arraybuffer/ArrayBuffer`
 */
export declare function returnsBuffer(): ArrayBuffer;
/** bindings/noExportRuntime/isTypedArray */
export declare const isTypedArray: {
  /** @type `~lib/typedarray/Int32Array` */
  get value(): Int32Array
};
/**
 * bindings/noExportRuntime/returnsTypedArray
 * @returns `~lib/typedarray/Int32Array`
 */
export declare function returnsTypedArray(): Int32Array;
/** bindings/noExportRuntime/isArrayOfBasic */
export declare const isArrayOfBasic: {
  /** @type `~lib/array/Array<i32>` */
  get value(): Array<number>
};
/**
 * bindings/noExportRuntime/returnsArrayOfBasic
 * @returns `~lib/array/Array<i32>`
 */
export declare function returnsArrayOfBasic(): Array<number>;
/** bindings/noExportRuntime/isArrayOfArray */
export declare const isArrayOfArray: {
  /** @type `~lib/array/Array<~lib/array/Array<i32>>` */
  get value(): Array<Array<number>>
};
/**
 * bindings/noExportRuntime/returnsArrayOfArray
 * @returns `~lib/array/Array<~lib/array/Array<i32>>`
 */
export declare function returnsArrayOfArray(): Array<Array<number>>;
/**
 * bindings/noExportRuntime/takesNonPlainObject
 * @param obj `bindings/noExportRuntime/NonPlainObject`
 */
export declare function takesNonPlainObject(obj: __Internref6): void;
/**
 * bindings/noExportRuntime/takesFunction
 * @param fn `() => void`
 */
export declare function takesFunction(fn: __Internref7): void;
/** bindings/noExportRuntime/NonPlainObject */
declare class __Internref6 extends Number {
  private __nominal6: symbol;
}
/** ~lib/function/Function<%28%29=>void> */
declare class __Internref7 extends Number {
  private __nominal7: symbol;
}
