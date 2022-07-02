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
    /** @type `string` */
    get value(): string
  };
  /** bindings/esm/mutableStringGlobal */
  export const mutableStringGlobal: {
    /** @type `string` */
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
   * @param a `ArrayBuffer`
   * @param b `ArrayBuffer`
   * @returns `ArrayBuffer`
   */
  export function bufferFunction(a: ArrayBuffer, b: ArrayBuffer): ArrayBuffer;
  /**
   * bindings/esm/stringFunction
   * @param a `string`
   * @param b `string`
   * @returns `string`
   */
  export function stringFunction(a: string, b: string): string;
  /**
   * bindings/esm/stringFunctionOptional
   * @param a `string`
   * @param b `string`
   * @returns `string`
   */
  export function stringFunctionOptional(a: string, b?: string): string;
  /**
   * bindings/esm/typedarrayFunction
   * @param a `Int16Array`
   * @param b `Float32Array`
   * @returns `Uint64Array`
   */
  export function typedarrayFunction(a: Int16Array, b: Float32Array): BigUint64Array;
  /**
   * bindings/esm/staticarrayFunction
   * @param a `StaticArray<i32>`
   * @param b `StaticArray<i32>`
   * @returns `StaticArray<i32>`
   */
  export function staticarrayFunction(a: Array<number>, b: Array<number>): Array<number>;
  /**
   * bindings/esm/arrayFunction
   * @param a `Array<i32>`
   * @param b `Array<i32>`
   * @returns `Array<i32>`
   */
  export function arrayFunction(a: Array<number>, b: Array<number>): Array<number>;
  /**
   * bindings/esm/objectFunction
   * @param a `PlainObject`
   * @param b `PlainObject`
   * @returns `PlainObject`
   */
  export function objectFunction(a: __Record8<undefined>, b: __Record8<undefined>): __Record8<never>;
  /**
   * bindings/esm/newInternref
   * @returns `NonPlainObject`
   */
  export function newInternref(): __Internref11;
  /**
   * bindings/esm/internrefFunction
   * @param a `NonPlainObject`
   * @param b `NonPlainObject`
   * @returns `NonPlainObject`
   */
  export function internrefFunction(a: __Internref11, b: __Internref11): __Internref11;
}
/** bindings/esm/PlainObject */
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
  /** @type `Array<string> | null` */
  p: Array<string> | null | TOmittable;
}
/** bindings/esm/NonPlainObject */
declare class __Internref11 extends Number {
  private __nominal11: symbol;
}
/** Instantiates the compiled WebAssembly module with the given imports. */
export declare function instantiate(module: WebAssembly.Module, imports: {
  env: unknown,
}): Promise<typeof __AdaptedExports>;
