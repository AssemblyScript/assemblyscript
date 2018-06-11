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
}

/** Instantiates an AssemblyScript module using the specified imports. */
export declare function instantiate<T extends {}>(module: WebAssembly.Module, imports?: ImportsObject): ASUtil & T;

/** Instantiates an AssemblyScript module from a buffer using the specified imports. */
export declare function instantiateBuffer<T extends {}>(buffer: Uint8Array, imports?: ImportsObject): ASUtil & T;

/** Instantiates an AssemblyScript module from a response using the sspecified imports. */
export declare function instantiateStreaming<T extends {}>(response: Response, imports?: ImportsObject): Promise<ASUtil & T>;

/** Demangles an AssemblyScript module's exports to a friendly object structure. */
export declare function demangle<T extends {}>(exports: {}): T;
