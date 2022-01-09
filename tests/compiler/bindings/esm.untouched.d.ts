/** bindings/esm/plainGlobal: i32 */
export declare const plainGlobal: {
  valueOf(): number;
  get value(): number
};
/** bindings/esm/plainMutableGlobal: i32 */
export declare const plainMutableGlobal: {
  valueOf(): number;
  get value(): number;
  set value(value: number);
};
/** bindings/esm/stringGlobal: ~lib/string/String */
export declare const stringGlobal: {
  valueOf(): string;
  get value(): string
};
/** bindings/esm/mutableStringGlobal: ~lib/string/String */
export declare const mutableStringGlobal: {
  valueOf(): string;
  get value(): string;
  set value(value: string);
};
/** bindings/esm/Enum */
export declare enum Enum {
  ONE,
  TWO,
  THREE,
}
/** bindings/esm/ConstEnum */
export declare enum ConstEnum {
  ONE,
  TWO,
  THREE,
}
/** bindings/esm/plainFunction(i32, i32) => i32 */
export declare function plainFunction(a: number, b: number): number;
/** bindings/esm/plainFunction64(i64, i64) => i64 */
export declare function plainFunction64(a: number, b: number): number;
/** bindings/esm/bufferFunction(~lib/arraybuffer/ArrayBuffer, ~lib/arraybuffer/ArrayBuffer) => ~lib/arraybuffer/ArrayBuffer */
export declare function bufferFunction(a: ArrayBuffer, b: ArrayBuffer): ArrayBuffer;
/** bindings/esm/stringFunction(~lib/string/String, ~lib/string/String) => ~lib/string/String */
export declare function stringFunction(a: string, b: string): string;
/** bindings/esm/stringFunctionOptional(~lib/string/String, ~lib/string/String?) => ~lib/string/String */
export declare function stringFunctionOptional(a: string, b?: string): string;
/** bindings/esm/typedarrayFunction(~lib/typedarray/Int16Array, ~lib/typedarray/Float32Array) => ~lib/typedarray/Uint64Array */
export declare function typedarrayFunction(a: Int16Array, b: Float32Array): BigUint64Array;
/** bindings/esm/staticarrayFunction(~lib/staticarray/StaticArray<i32>, ~lib/staticarray/StaticArray<i32>) => ~lib/staticarray/StaticArray<i32> */
export declare function staticarrayFunction(a: Array<number>, b: Array<number>): Array<number>;
/** bindings/esm/arrayFunction(~lib/array/Array<i32>, ~lib/array/Array<i32>) => ~lib/array/Array<i32> */
export declare function arrayFunction(a: Array<number>, b: Array<number>): Array<number>;
/** bindings/esm/objectFunction(bindings/esm/PlainObject, bindings/esm/PlainObject) => bindings/esm/PlainObject */
export declare function objectFunction(a: __Record8<undefined>, b: __Record8<undefined>): __Record8<never>;
/** bindings/esm/newInternref() => bindings/esm/NonPlainObject */
export declare function newInternref(): __Internref11;
/** bindings/esm/internrefFunction(bindings/esm/NonPlainObject, bindings/esm/NonPlainObject) => bindings/esm/NonPlainObject */
export declare function internrefFunction(a: __Internref11, b: __Internref11): __Internref11;
/** bindings/esm/PlainObject */
declare interface __Record8<TUndefined> {
  a: number | TUndefined;
  b: number | TUndefined;
  c: number | TUndefined;
  d: number | TUndefined;
  e: number | TUndefined;
  f: number | TUndefined;
  g: number | TUndefined;
  h: number | TUndefined;
  i: number | TUndefined;
  j: number | TUndefined;
  k: boolean | TUndefined;
  l: number | TUndefined;
  m: number | TUndefined;
  n: string | null | TUndefined;
  o: Uint8Array | null | TUndefined;
  p: Array<string> | null | TUndefined;
}
/** bindings/esm/NonPlainObject */
declare class __Internref11 extends Number {
  __id11: symbol;
}
