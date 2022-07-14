declare namespace __AdaptedExports {
  /** bindings/esm/plainGlobal */
  export const plainGlobal: {
    /** @type `i32` */
    get value(): number
  };
  /** bindings/esm/plainMutableGlobal */
  export const plainMutableGlobal: {
    /** @type `i32` */
    get value(): number;
    set value(value: number);
  };
  /** bindings/esm/stringGlobal */
  export const stringGlobal: {
    /** @type `~lib/string/String` */
    get value(): string
  };
  /** bindings/esm/mutableStringGlobal */
  export const mutableStringGlobal: {
    /** @type `~lib/string/String` */
    get value(): string;
    set value(value: string);
  };
  /** bindings/esm/Enum */
  export enum Enum {
    /** @type `i32` */
    ONE,
    /** @type `i32` */
    TWO,
    /** @type `i32` */
    THREE,
  }
  /** bindings/esm/ConstEnum */
  export enum ConstEnum {
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
  export function plainFunction(a: number, b: number): number;
  /**
   * bindings/esm/plainFunction64
   * @param a `i64`
   * @param b `i64`
   * @returns `i64`
   */
  export function plainFunction64(a: bigint, b: bigint): bigint;
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
  export function staticarrayFunction(a: ArrayLike<number>, b: ArrayLike<number>): ArrayLike<number>;
  /**
   * bindings/esm/staticarrayU16
   * @param a `~lib/staticarray/StaticArray<u16>`
   * @returns `~lib/staticarray/StaticArray<u16>`
   */
  export function staticarrayU16(a: ArrayLike<number>): ArrayLike<number>;
  /**
   * bindings/esm/staticarrayI64
   * @param a `~lib/staticarray/StaticArray<i64>`
   * @returns `~lib/staticarray/StaticArray<i64>`
   */
  export function staticarrayI64(a: ArrayLike<bigint>): ArrayLike<bigint>;
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
  export function objectFunction(a: __Record10<undefined>, b: __Record10<undefined>): __Record10<never>;
  /**
   * bindings/esm/newInternref
   * @returns `bindings/esm/NonPlainObject`
   */
  export function newInternref(): __Internref13;
  /**
   * bindings/esm/internrefFunction
   * @param a `bindings/esm/NonPlainObject`
   * @param b `bindings/esm/NonPlainObject`
   * @returns `bindings/esm/NonPlainObject`
   */
  export function internrefFunction(a: __Internref13, b: __Internref13): __Internref13;
}
/** bindings/esm/PlainObject */
declare interface __Record10<TOmittable> {
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
declare class __Internref13 extends Number {
  private __nominal13: symbol;
}
/** Instantiates the compiled WebAssembly module with the given imports. */
export declare function instantiate(module: WebAssembly.Module, imports: {
  env: unknown,
}): Promise<typeof __AdaptedExports>;
