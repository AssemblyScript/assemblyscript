/// <reference lib="esnext.bigint" />

/** WebAssembly imports with two levels of nesting. */
interface ImportsObject extends Record<string, any> {
  env?: {
    memory?: WebAssembly.Memory,
    table?: WebAssembly.Table,
    abort?(msg: number, file: number, line: number, column: number): void,
    trace?(msg: number, numArgs?: number, ...args: number[]): void
  };
}

/** Utility mixed in by the loader. */
interface ASUtil {
  memory?: WebAssembly.Memory;
  table?: WebAssembly.Table;

  /** Explicit start function, if requested. */
  _start(): void;
  /** Allocates a new string in the module's memory and returns a reference (pointer) to it. */
  __allocString(str: string): number;
  /** Allocates a new array in the module's memory and returns a reference (pointer) to it. */
  __allocArray(id: number, values: ArrayLike<number>): number;

  /** Copies a string's value from the module's memory. */
  __getString(ptr: number): string;
  /** Copies an ArrayBuffer's value from the module's memory. */
  __getArrayBuffer(ptr: number): ArrayBuffer;

  /** Copies an array's values from the module's memory. Infers the array type from RTTI. */
  __getArray(ptr: number): number[];
  /** Copies an Int8Array's values from the module's memory. */
  __getInt8Array(ptr: number): Int8Array;
  /** Copies an Uint8Array's values from the module's memory. */
  __getUint8Array(ptr: number): Uint8Array;
  /** Copies an Uint8ClampedArray's values from the module's memory. */
  __getUint8ClampedArray(ptr: number): Uint8ClampedArray;
  /** Copies an Int16Array's values from the module's memory. */
  __getInt16Array(ptr: number): Int16Array;
  /** Copies an Uint16Array's values from the module's memory. */
  __getUint16Array(ptr: number): Uint16Array;
  /** Copies an Int32Array's values from the module's memory. */
  __getInt32Array(ptr: number): Int32Array;
  /** Copies an Uint32Array's values from the module's memory. */
  __getUint32Array(ptr: number): Uint32Array;
  /** Copies an Int32Array's values from the module's memory. */
  __getInt64Array?(ptr: number): BigInt64Array;
  /** Copies an Uint32Array's values from the module's memory. */
  __getUint64Array?(ptr: number): BigUint64Array;
  /** Copies a Float32Array's values from the module's memory. */
  __getFloat32Array(ptr: number): Float32Array;
  /** Copies a Float64Array's values from the module's memory. */
  __getFloat64Array(ptr: number): Float64Array;

  /** Gets a live view on an array's values in the module's memory. Infers the array type from RTTI. */
  __getArrayView(ptr: number): ArrayBufferView;
  /** Gets a live view on an Int8Array's values in the module's memory. */
  __getInt8ArrayView(ptr: number): Int8Array;
  /** Gets a live view on an Uint8Array's values in the module's memory. */
  __getUint8ArrayView(ptr: number): Uint8Array;
  /** Gets a live view on an Uint8ClampedArray's values in the module's memory. */
  __getUint8ClampedArrayView(ptr: number): Uint8ClampedArray;
  /** Gets a live view on an Int16Array's values in the module's memory. */
  __getInt16ArrayView(ptr: number): Int16Array;
  /** Gets a live view on an Uint16Array's values in the module's memory. */
  __getUint16ArrayView(ptr: number): Uint16Array;
  /** Gets a live view on an Int32Array's values in the module's memory. */
  __getInt32ArrayView(ptr: number): Int32Array;
  /** Gets a live view on an Uint32Array's values in the module's memory. */
  __getUint32ArrayView(ptr: number): Uint32Array;
  /** Gets a live view on an Int32Array's values in the module's memory. */
  __getInt64ArrayView?(ptr: number): BigInt64Array;
  /** Gets a live view on an Uint32Array's values in the module's memory. */
  __getUint64ArrayView?(ptr: number): BigUint64Array;
  /** Gets a live view on a Float32Array's values in the module's memory. */
  __getFloat32ArrayView(ptr: number): Float32Array;
  /** Gets a live view on a Float64Array's values in the module's memory. */
  __getFloat64ArrayView(ptr: number): Float64Array;

  /** Retains a reference to a managed object externally, making sure that it doesn't become collected prematurely. Returns the pointer. */
  __retain(ptr: number): number;
  /** Releases a previously retained reference to a managed object, allowing the runtime to collect it once its reference count reaches zero. */
  __release(ptr: number): void;
  /** Forcefully resets the heap to its initial offset, effectively clearing dynamic memory. Stub runtime only. */
  __reset?(): void;
  /** Allocates an instance of the class represented by the specified id. */
  __alloc(size: number, id: number): number;
  /** Tests whether a managed object is an instance of the class represented by the specified base id. */
  __instanceof(ptr: number, baseId: number): boolean;
  /** Forces a cycle collection. Only relevant if objects potentially forming reference cycles are used. */
  __collect(): void;
}

/** Asynchronously instantiates an AssemblyScript module from anything that can be instantiated. */
export declare function instantiate<T extends {}>(source: WebAssembly.Module | BufferSource | Response | PromiseLike<WebAssembly.Module | BufferSource | Response>, imports?: ImportsObject): Promise<ASUtil & T>;

/** Synchronously instantiates an AssemblyScript module from a WebAssembly.Module or binary buffer. */
export declare function instantiateSync<T extends {}>(source: WebAssembly.Module | BufferSource, imports?: ImportsObject): ASUtil & T;

/** Asynchronously instantiates an AssemblyScript module from a response, i.e. as obtained by `fetch`. */
export declare function instantiateStreaming<T extends {}>(source: Response | PromiseLike<Response>, imports?: ImportsObject): Promise<ASUtil & T>;

/** Demangles an AssemblyScript module's exports to a friendly object structure. */
export declare function demangle<T extends {}>(exports: {}, baseModule?: {}): T;
