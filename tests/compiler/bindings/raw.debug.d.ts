declare namespace __AdaptedExports {
  /**
   * bindings/esm/plainGlobal
   * @type `i32`
   */
  export const plainGlobal: {
    valueOf(): number;
    get value(): number
  };
  /**
   * bindings/esm/plainMutableGlobal
   * @type `i32`
   */
  export const plainMutableGlobal: {
    valueOf(): number;
    get value(): number;
    set value(value: number);
  };
  /**
   * bindings/esm/stringGlobal
   * @type `~lib/string/String`
   */
  export const stringGlobal: {
    valueOf(): string;
    get value(): string
  };
  /**
   * bindings/esm/mutableStringGlobal
   * @type `~lib/string/String`
   */
  export const mutableStringGlobal: {
    valueOf(): string;
    get value(): string;
    set value(value: string);
  };
  /**
   * bindings/esm/Enum
   * @type `i32`
   */
  export enum Enum {
    ONE,
    TWO,
    THREE,
  }
  /**
   * bindings/esm/ConstEnum
   * @type `i32`
   */
  export enum ConstEnum {
    ONE,
    TWO,
    THREE,
  }
  /**
    * bindings/esm/plainFunction
    * @param a `i32`
    * @param b `i32`
    * @returns `i32`
 */
  export function plainFunction(a: number, b: number): number;
  /**
    * bindings/esm/plainFunction64
    * @param a `i64`
    * @param b `i64`
    * @returns `i64`
 */
  export function plainFunction64(a: number, b: number): number;
  /**
    * bindings/esm/bufferFunction
    * @param a `~lib/arraybuffer/ArrayBuffer`
    * @param b `~lib/arraybuffer/ArrayBuffer`
    * @returns `~lib/arraybuffer/ArrayBuffer`
 */
  export function bufferFunction(a: ArrayBuffer, b: ArrayBuffer): ArrayBuffer;
  /**
    * bindings/esm/stringFunction
    * @param a `~lib/string/String`
    * @param b `~lib/string/String`
    * @returns `~lib/string/String`
 */
  export function stringFunction(a: string, b: string): string;
  /**
    * bindings/esm/stringFunctionOptional
    * @param a `~lib/string/String`
    * @param b `~lib/string/String`
    * @returns `~lib/string/String`
 */
  export function stringFunctionOptional(a: string, b?: string): string;
  /**
    * bindings/esm/typedarrayFunction
    * @param a `~lib/typedarray/Int16Array`
    * @param b `~lib/typedarray/Float32Array`
    * @returns `~lib/typedarray/Uint64Array`
 */
  export function typedarrayFunction(a: Int16Array, b: Float32Array): BigUint64Array;
  /**
    * bindings/esm/staticarrayFunction
    * @param a `~lib/staticarray/StaticArray<i32>`
    * @param b `~lib/staticarray/StaticArray<i32>`
    * @returns `~lib/staticarray/StaticArray<i32>`
 */
  export function staticarrayFunction(a: Array<number>, b: Array<number>): Array<number>;
  /**
    * bindings/esm/arrayFunction
    * @param a `~lib/array/Array<i32>`
    * @param b `~lib/array/Array<i32>`
    * @returns `~lib/array/Array<i32>`
 */
  export function arrayFunction(a: Array<number>, b: Array<number>): Array<number>;
  /**
    * bindings/esm/objectFunction
    * @param a `bindings/esm/PlainObject`
    * @param b `bindings/esm/PlainObject`
    * @returns `bindings/esm/PlainObject`
 */
  export function objectFunction(a: __Record8<undefined>, b: __Record8<undefined>): __Record8<never>;
  /**
    * bindings/esm/newInternref
    * @returns `bindings/esm/NonPlainObject`
 */
  export function newInternref(): __Internref11;
  /**
    * bindings/esm/internrefFunction
    * @param a `bindings/esm/NonPlainObject`
    * @param b `bindings/esm/NonPlainObject`
    * @returns `bindings/esm/NonPlainObject`
 */
  export function internrefFunction(a: __Internref11, b: __Internref11): __Internref11;
}
/** `bindings/esm/PlainObject` */
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
/** `bindings/esm/NonPlainObject` */
declare class __Internref11 extends Number {
  __id11: symbol;
}
export function instantiate(module: WebAssembly.Module, imports: {
  env: unknown,
}): Promise<typeof __AdaptedExports>;
