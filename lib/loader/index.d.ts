import "@types/webassembly-js-api";

/** WebAssembly imports with two levels of nesting. */
interface ImportsObject {
  [key: string]: {},
  env: {
    memory?: WebAssembly.Memory,
    table?: WebAssembly.Table,
    abort?: (msg: number, file: number, line: number, column: number) => void
  }
}

type TypedArray
  = Int8Array
  | Uint8Array
  | Int16Array
  | Uint16Array
  | Int32Array
  | Uint32Array
  | Float32Array
  | Float64Array;

type TypedArrayConstructor
  = Int8ArrayConstructor
  | Uint8ArrayConstructor
  | Int16ArrayConstructor
  | Uint16ArrayConstructor
  | Int32ArrayConstructor
  | Uint32ArrayConstructor
  | Float32ArrayConstructor
  | Float32ArrayConstructor;

/** Utility mixed in by the loader. */
interface ASUtil {
  /** An 8-bit signed integer view on the memory. */
  readonly I8: Uint8Array;
  /** An 8-bit unsigned integer view on the memory. */
  readonly U8: Uint8Array;
  /** A 16-bit signed integer view on the memory. */
  readonly I16: Uint16Array;
  /** A 16-bit unsigned integer view on the memory. */
  readonly U16: Uint16Array;
  /** A 32-bit signed integer view on the memory. */
  readonly I32: Uint32Array;
  /** A 32-bit unsigned integer view on the memory. */
  readonly U32: Uint32Array;
  /** A 64-bit signed integer view on the memory. */
  readonly I64: any; // BigInt64Array
  /** A 64-bit unsigned integer vieww on the memory. */
  readonly U64: any; // BigUint64Array
  /** A 32-bit float view on the memory. */
  readonly F32: Float32Array;
  /** A 64-bit float view on the memory. */
  readonly F64: Float64Array;
  /** Allocates a new string in the module's memory and returns its pointer. */
  newString(str: string): number;
  /** Gets a string from the module's memory by its pointer. */
  getString(ptr: number): string;
  /** Copies a typed array into the module's memory and returns its pointer. */
  newArray(view: TypedArray, length?: number): number;
  /** Creates a typed array in the module's memory and returns its pointer. */
  newArray(ctor: TypedArrayConstructor, length: number, unsafe?: boolean): number;
  /** Gets a view on a typed array in the module's memory by its pointer. */
  getArray<T extends TypedArray = TypedArray>(ctor: TypedArrayConstructor, ptr: number): T;
  /** Frees a typed array in the module's memory. Must not be accessed anymore afterwards. */
  freeArray(ptr: number): void;
  /** Gets a function by its pointer. */
  getFunction<R = any>(ptr: number): (...args: any[]) => R;
  /**
   * Creates a new function in the module's table and returns its pointer. Note that only actual
   * WebAssembly functions, i.e. as exported by the module, are supported.
   */
  newFunction(fn: (...args: any[]) => any): number;
}

/** Instantiates an AssemblyScript module using the specified imports. */
export declare function instantiate<T extends {}>(module: WebAssembly.Module, imports?: ImportsObject): ASUtil & T;

/** Instantiates an AssemblyScript module from a buffer using the specified imports. */
export declare function instantiateBuffer<T extends {}>(buffer: Uint8Array, imports?: ImportsObject): ASUtil & T;

/** Instantiates an AssemblyScript module from a response using the specified imports. */
export declare function instantiateStreaming<T extends {}>(result: Promise<Response>, imports?: ImportsObject): Promise<ASUtil & T>;

/** Demangles an AssemblyScript module's exports to a friendly object structure. */
export declare function demangle<T extends {}>(exports: {}, baseModule?: {}): T;
