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
  export function staticarrayFunction(a: Array<number>, b: Array<number>): Array<number>;
  /**
   * bindings/esm/arrayFunction
   * @param a `~lib/array/Array<i32>`
   * @param b `~lib/array/Array<i32>`
   * @returns `~lib/array/Array<i32>`
   */
  export function arrayFunction(a: Array<number>, b: Array<number>): Array<number>;
  /**
   * bindings/esm/setU8Function
   * @returns `~lib/set/Set<u8>`
   */
  export function setU8Function(): __Internref8;
  /**
   * bindings/esm/setI32Function
   * @returns `~lib/set/Set<i32>`
   */
  export function setI32Function(): __Internref9;
  /**
   * bindings/esm/setF64Function
   * @returns `~lib/set/Set<f64>`
   */
  export function setF64Function(): __Internref10;
  /**
   * bindings/esm/mapStringU8Function
   * @returns `~lib/map/Map<~lib/string/String,u8>`
   */
  export function mapStringU8Function(): __Internref11;
  /**
   * bindings/esm/mapI32F64Function
   * @returns `~lib/map/Map<i32,f64>`
   */
  export function mapI32F64Function(): __Internref12;
  /**
   * bindings/esm/mapU16I64Function
   * @returns `~lib/map/Map<u16,i64>`
   */
  export function mapU16I64Function(): __Internref13;
  /**
   * bindings/esm/objectFunction
   * @param a `bindings/esm/PlainObject`
   * @param b `bindings/esm/PlainObject`
   * @returns `bindings/esm/PlainObject`
   */
  export function objectFunction(a: __Record14<undefined>, b: __Record14<undefined>): __Record14<never>;
  /**
   * bindings/esm/newInternref
   * @returns `bindings/esm/NonPlainObject`
   */
  export function newInternref(): __Internref17;
  /**
   * bindings/esm/internrefFunction
   * @param a `bindings/esm/NonPlainObject`
   * @param b `bindings/esm/NonPlainObject`
   * @returns `bindings/esm/NonPlainObject`
   */
  export function internrefFunction(a: __Internref17, b: __Internref17): __Internref17;
}
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
/** ~lib/map/Map<~lib/string/String,u8> */
declare class __Internref11 extends Number {
  private __nominal11: symbol;
}
/** ~lib/map/Map<i32,f64> */
declare class __Internref12 extends Number {
  private __nominal12: symbol;
}
/** ~lib/map/Map<u16,i64> */
declare class __Internref13 extends Number {
  private __nominal13: symbol;
}
/** bindings/esm/PlainObject */
declare interface __Record14<TOmittable> {
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
declare class __Internref17 extends Number {
  private __nominal17: symbol;
}
/** Instantiates the compiled WebAssembly module with the given imports. */
export declare function instantiate(module: WebAssembly.Module, imports: {
  env: unknown,
}): Promise<typeof __AdaptedExports>;
