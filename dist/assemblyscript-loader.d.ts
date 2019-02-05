/** AssemblyScript module loader. */
/// <reference types="webassembly-js-api" />
export declare type TypedArray = Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array | Float32Array | Float64Array;
export declare type TypedArrayConstructor = Int8ArrayConstructor | Uint8ArrayConstructor | Int16ArrayConstructor | Uint16ArrayConstructor | Int32ArrayConstructor | Uint32ArrayConstructor | Float32ArrayConstructor | Float32ArrayConstructor;
export interface ASExport {
    [key: string]: any;
}
export interface ASInstance extends WebAssembly.Instance {
    readonly memory: ASMemory;
    readonly table: ASTable;
}
export interface ASTable extends WebAssembly.Table {
    /** Gets a function by its pointer. */
    getFunction<R = any>(ptr: number): (...args: any[]) => R;
    /**
     * Creates a new function in the module's table and returns its pointer. Note that only actual
     * WebAssembly functions, i.e. as exported by the module, are supported.
     */
    newFunction(fn: (...args: any[]) => any): number;
}
export interface ASMemory extends WebAssembly.Memory {
    /** An 8-bit signed integer view on the memory. */
    readonly I8: Int8Array;
    /** An 8-bit unsigned integer view on the memory. */
    readonly U8: Uint8Array;
    /** A 16-bit signed integer view on the memory. */
    readonly I16: Int16Array;
    /** A 16-bit unsigned integer view on the memory. */
    readonly U16: Uint16Array;
    /** A 32-bit signed integer view on the memory. */
    readonly I32: Int32Array;
    /** A 32-bit unsigned integer view on the memory. */
    readonly U32: Uint32Array;
    /** A 64-bit signed integer view on the memory. */
    readonly I64?: BigInt64Array;
    /** A 64-bit unsigned integer vieww on the memory. */
    readonly U64?: BigUint64Array;
    /** A 32-bit float view on the memory. */
    readonly F32: Float32Array;
    /** A 64-bit float view on the memory. */
    readonly F64: Float64Array;
    /** Allocates a new string in the module's memory and returns its pointer. */
    newString(str: string): number;
    /** Gets a string from the module's memory by its pointer. Alias for memory.getString. */
    getString(ptr: number): string;
    /** Copies a typed array into the module's memory and returns its pointer. */
    newArray(view: TypedArray, length?: number): number;
    /** Creates a typed array in the module's memory and returns its pointer. */
    newArray(ctor: TypedArrayConstructor, length: number, unsafe?: boolean): number;
    /** Gets a view on a typed array in the module's memory by its pointer. Alias for memory.getArray. */
    getArray<T extends TypedArray = TypedArray>(ctor: TypedArrayConstructor, ptr: number): T;
    /** Frees a typed array in the module's memory. Must not be accessed anymore afterwards. */
    freeArray(ptr: number): void;
    allocate(size: number): number;
    compare(vl: number, vr: number, n: number): number;
    copy(dest: number, src: number, n: number): void;
    fill(ptr: number, value: number, size: number): void;
    free(ptr: number): void;
    reset(): void;
}
export declare namespace utils {
    const hasBigInt64: boolean;
    function readString(U32: Uint32Array, U16: Uint16Array, ptr: number): string;
    function computeBufferSize(byteLength: number): number;
    function hasOwnProperty(obj: any, key: any): boolean;
}
/** Instantiates an AssemblyScript module using the specified imports. */
export declare function instantiate<T = ASExport>(module: WebAssembly.Module, imports?: any): ASInstance & T;
/** Instantiates an AssemblyScript module from a buffer using the specified imports. */
export declare function instantiateBuffer<T = ASExport>(buffer: any, imports?: any): ASInstance & T;
/** Creates a wrapped memory instance. */
export declare function createMemory(descriptor: WebAssembly.MemoryDescriptor): ASMemory;
/** Demangles an AssemblyScript module's exports to a friendly object structure. */
export declare function demangle<T = ASExport>(instance: WebAssembly.Instance): ASInstance & ASExport;
