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
  __start(): void;
  /** Allocates a new string in the module's memory and returns a reference (pointer) to it. */
  __allocString(str: string): number;
  /** Reads (copies) the value of a string from the module's memory. */
  __getString(ptr: number): string;
  /** Allocates a new array in the module's memory and returns a reference (pointer) to it. */
  __allocArray(id: number, values: ArrayLike<number>): number;
  /** Reads (copies) the values of an array from the module's memory. */
  __getArray(ptr: number): number[];
  /** Gets a view on the values of an array in the module's memory. */
  __getArrayView(ptr: number): ArrayBufferView;
  /** Reads the values of Int8Array from the module's memory. */
  __getInt8Array(ptr: number): Int8Array;
  /** Reads the values of Uint8Array from the module's memory. */
  __getUint8Array(ptr: number): Uint8Array;
  /** Reads the values of Uint8Array from the module's memory. */
  __getUint8ClampedArray(ptr: number): Uint8ClampedArray;
  /** Reads the values of Int16Array from the module's memory. */
  __getInt16Array(ptr: number): Int16Array;
  /** Reads the values of Uint16Array from the module's memory. */
  __getUint16Array(ptr: number): Uint16Array;
  /** Reads the values of Int32Array from the module's memory. */
  __getInt32Array(ptr: number): Int32Array;
  /** Reads the values of Uint32Array from the module's memory. */
  __getUint32Array(ptr: number): Uint32Array;
  /** Reads the values of Int32Array from the module's memory. */
  __getInt64Array?(ptr: number): BigInt64Array;
  /** Reads the values of Uint32Array from the module's memory. */
  __getUint64Array?(ptr: number): BigUint64Array;
  /** Reads the values of Float32Array from the module's memory. */
  __getFloat32Array(ptr: number): Float32Array;
    /** Reads the values of Float64Array from the module's memory. */
  __getFloat64Array(ptr: number): Float64Array;
  /** Reads (copies) the data of an ArrayBuffer from the module's memory. */
  __getArrayBuffer(ptr: number): ArrayBuffer;
  /** Retains a reference to a managed object externally, making sure that it doesn't become collected prematurely. Returns the pointer. */
  __retain(ptr: number): number;
  /** Releases a previously retained reference to a managed object, allowing the runtime to collect it once its reference count reaches zero. */
  __release(ptr: number): void;
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
