/** AssemblyScript module loader. */

export type TypedArray = Int8Array
                       | Uint8Array
                       | Int16Array
                       | Uint16Array
                       | Int32Array
                       | Uint32Array
                       | Float32Array
                       | Float64Array;

export type TypedArrayConstructor = Int8ArrayConstructor
                                  | Uint8ArrayConstructor
                                  | Int16ArrayConstructor
                                  | Uint16ArrayConstructor
                                  | Int32ArrayConstructor
                                  | Uint32ArrayConstructor
                                  | Float32ArrayConstructor
                                  | Float32ArrayConstructor;

export interface ASExport { [key: string]: any }

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
    // exported methods
    allocate(size: number): number;
    compare(vl: number, vr: number, n: number): number;
    copy(dest: number, src: number, n: number): void;
    fill(ptr: number, value: number, size: number): void;
    free(ptr: number): void;
    reset(): void;
}

const ORIG_REF = Symbol('original');
const SELF_REF = Symbol('self');

export namespace utils {
    export const hasBigInt64 = typeof BigUint64Array !== 'undefined';
    export function readString(U32: Uint32Array, U16: Uint16Array, ptr: number): string {
        const chunkSize = 1024;
        const dataLength = U32[ptr >>> 2];
        let dataOffset = (ptr + 4) >>> 1;
        let dataRemain = dataLength;
        const parts: string[] = [];
        while (dataRemain > chunkSize) {
            const last = U16[dataOffset + chunkSize - 1];
            const size = last >= 0xD800 && last < 0xDC00 ? chunkSize - 1 : chunkSize;
            const part: any = U16.subarray(dataOffset, dataOffset += size);
            parts.push(String.fromCharCode.apply(String, part));
            dataRemain -= size;
        }
        const lastPart: any = U16.subarray(dataOffset, dataOffset + dataRemain);
        parts.push(String.fromCharCode.apply(String, lastPart));
        return parts.join('');
    }
    export function computeBufferSize(byteLength: number) {
        const HEADER_SIZE = 8;
        return 1 << (32 - Math.clz32(byteLength + HEADER_SIZE - 1));
    }
    export function hasOwnProperty(obj: any, key: any): boolean {
        return Object.prototype.hasOwnProperty.call(obj, key);
    }
}

class MemoryWrapper implements ASMemory {

    public static resolve(value: MemoryWrapper | WebAssembly.Memory): MemoryWrapper {
        if (value instanceof MemoryWrapper) {
            return value;
        } else {
            return new MemoryWrapper(value);
        }
    }

    /** The underlying memory instance. */
    public raw: WebAssembly.Memory;

    private _U8?: Uint8Array;
    private _U16?: Uint16Array;
    private _U32?: Uint32Array;
    private _U64?: BigUint64Array;

    private _I8?: Int8Array;
    private _I16?: Int16Array;
    private _I32?: Int32Array;
    private _I64?: BigInt64Array;

    private _F32?: Float32Array;
    private _F64?: Float64Array;

    constructor(memory: WebAssembly.Memory) {
        this.raw = memory;
    }

    // ASMemory conformance

    public newString(str: string): number {
        const dataLength = str.length;
        const ptr = this.allocate(4 + (dataLength << 1));
        const dataOffset = (4 + ptr) >>> 1;
        const U32 = this.U32, U16 = this.U16;
        U32[ptr >>> 2] = dataLength;
        for (let i = 0; i < dataLength; ++i) {
            U16[dataOffset + i] = str.charCodeAt(i);
        }
        return ptr;
    }

    public getString(ptr: number): string {
        return utils.readString(this.U32, this.U16, ptr);
    }

    public newArray(viewOrCtor: TypedArray | TypedArrayConstructor, length?: number, unsafe?: boolean): number {
        let ctor: TypedArrayConstructor;
        let view: TypedArray | null;
        if (viewOrCtor.constructor === Function) { // TypedArray constructor created in memory
            ctor = viewOrCtor as TypedArrayConstructor;
            view = null;
        } else { // TypedArray instance copied into memory
            ctor = viewOrCtor.constructor as TypedArrayConstructor;
            view = viewOrCtor as TypedArray;
            if (length === undefined) {
                length = viewOrCtor.length;
            }
        }
        if (length === undefined) {
            throw new Error('Length missing');
        }
        const elementSize = ctor.BYTES_PER_ELEMENT;
        if (!elementSize) { throw Error('Not a typed array'); }
        const byteLength = elementSize * length;
        const ptr = this.allocate(12); // TypedArray header
        const buf = this.allocate(utils.computeBufferSize(byteLength)); // ArrayBuffer
        const U32 = this.U32;
        U32[ ptr      >>> 2] = buf;        // .buffer
        U32[(ptr + 4) >>> 2] = 0;          // .byteOffset
        U32[(ptr + 8) >>> 2] = byteLength; // .byteLength
        U32[ buf      >>> 2] = byteLength; // .byteLength
        U32[(buf + 4) >>> 2] = 0;          // 0
        if (view) {
            new ctor(this.buffer, buf + 8, length).set(view as TypedArray);
            if (view.length < length && !unsafe) {
                const setLength = elementSize * view.length;
                this.fill(buf + 8 + setLength, 0, byteLength - setLength);
            }
        } else if (!unsafe) {
            this.fill(buf + 8, 0, byteLength);
        }
        return ptr;
    }

    public getArray<T extends TypedArray = TypedArray>(ctor: TypedArrayConstructor, ptr: number): T {
        const elementSize = ctor.BYTES_PER_ELEMENT;
        if (!elementSize) { throw Error('Not a typed array'); }
        const U32 = this.U32;
        const buf        = U32[ ptr      >>> 2];
        const byteOffset = U32[(ptr + 4) >>> 2];
        const byteLength = U32[(ptr + 8) >>> 2];
        return new ctor(
            this.buffer,
            buf + 8 + byteOffset,
            (byteLength - byteOffset) / elementSize,
        ) as T;
    }

    public freeArray(ptr: number) {
        const buf = this.U32[ptr >>> 2];
        this.free(buf);
        this.free(ptr);
    }

    get U8(): Uint8Array {
        if (!this._U8 || this._U8.buffer !== this.raw.buffer) {
            this._U8 = new Uint8Array(this.raw.buffer);
        }
        return this._U8;
    }

    get U16(): Uint16Array {
        if (!this._U16 || this._U16.buffer !== this.raw.buffer) {
            this._U16 = new Uint16Array(this.raw.buffer);
        }
        return this._U16;
    }

    get U32(): Uint32Array {
        if (!this._U32 || this._U32.buffer !== this.raw.buffer) {
            this._U32 = new Uint32Array(this.raw.buffer);
        }
        return this._U32;
    }

    get U64(): BigUint64Array | undefined {
        if (!utils.hasBigInt64) { return; }
        if (!this._U64 || this._U64.buffer !== this.raw.buffer) {
            this._U64 = new BigUint64Array(this.raw.buffer);
        }
        return this._U64;
    }

    get I8(): Int8Array {
        if (!this._I8 || this._I8.buffer !== this.raw.buffer) {
            this._I8 = new Int8Array(this.raw.buffer);
        }
        return this._I8;
    }

    get I16(): Int16Array {
        if (!this._I16 || this._I16.buffer !== this.raw.buffer) {
            this._I16 = new Int16Array(this.raw.buffer);
        }
        return this._I16;
    }

    get I32(): Int32Array {
        if (!this._I32 || this._I32.buffer !== this.raw.buffer) {
            this._I32 = new Int32Array(this.raw.buffer);
        }
        return this._I32;
    }

    get I64(): BigInt64Array | undefined {
        if (!utils.hasBigInt64) { return; }
        if (!this._I64 || this._I64.buffer !== this.raw.buffer) {
            this._I64 = new BigInt64Array(this.raw.buffer);
        }
        return this._I64;
    }

    get F32(): Float32Array {
        if (!this._F32 || this._F32.buffer !== this.raw.buffer) {
            this._F32 = new Float32Array(this.raw.buffer);
        }
        return this._F32;
    }

    get F64(): Float64Array {
        if (!this._F64 || this._F64.buffer !== this.raw.buffer) {
            this._F64 = new Float64Array(this.raw.buffer);
        }
        return this._F64;
    }

    public allocate(size: number): number {
        throw new Error('Memory not initialized');
    }

    public compare(vl: number, vr: number, n: number): number {
        throw new Error('Memory not initialized');
    }

    public copy(dest: number, src: number, n: number) {
        throw new Error('Memory not initialized');
    }

    public fill(ptr: number, value: number, size: number) {
        throw new Error('Memory not initialized');
    }

    public free(ptr: number) {
        throw new Error('Memory not initialized');
    }

    public reset() {
        throw new Error('Memory not initialized');
    }

    // WebAssembly.Memory conformance

    public grow(numPages: number): number {
        return this.raw.grow(numPages);
    }

    get buffer(): ArrayBuffer {
        return this.raw.buffer;
    }

    // Internal methods

    public setExports(rawExports: any) {
        const methods = ['allocate', 'compare', 'copy', 'fill', 'free', 'reset'];
        for (const method of methods) {
            const exportedMethod = `memory.${ method }`;
            if (rawExports[exportedMethod]) {
                (this as any)[method] = rawExports[exportedMethod];
            } else {
                (this as any)[method] = () => { throw new Error('Method not exported'); };
            }
        }
    }
}

class TableWrapper implements ASTable {

    /** The underlying table instance. */
    public raw: WebAssembly.Table;

    constructor(table: WebAssembly.Table) {
        this.raw = table;
    }

    // ASTable conformance

    public getFunction<R = any>(ptr: number): (...args: any[]) => R {
        return this.wrapFunction(this.get(ptr));
    }

    public newFunction(fn: (...args: any[]) => any): number {
        if (typeof (fn as any)[ORIG_REF] === 'function') { fn = (fn as any)[ORIG_REF]; }
        const index = this.length;
        this.grow(1);
        this.set(index, fn);
        return index;
    }

    // WebAssembly.Table conformance

    public grow(numElements: number): number {
        return this.raw.grow(numElements);
    }

    public set(index: number, value: (args: any[]) => any) {
        return this.raw.set(index, value);
    }

    public get(index: number): (args: any[]) => any {
        return this.raw.get(index);
    }

    get length(): number {
        return this.raw.length;
    }

    // Internal methods

    public setargc(n: number) {}

    /** Wraps a WebAssembly function while also taking care of variable arguments. */
    public wrapFunction(fn: any) {
        const wrap: any = (...args: any[]) => {
            this.setargc(args.length);
            return fn(...args);
        };
        // adding a function to the table with `newFunction` is limited to actual WebAssembly functions,
        // hence we can't use the wrapper and instead need to provide a reference to the original
        wrap[ORIG_REF] = fn;
        return wrap;
    }

    public setExports(rawExports: any) {
        if (rawExports._setargc) {
            this.setargc = rawExports._setargc;
        }
    }
}

interface InstanceContext {
    memory: MemoryWrapper | null;
    imports: any;
}

function createContext(imports: any = {}) {
    const ctx: InstanceContext = {
        imports,
        memory: imports.memory ? MemoryWrapper.resolve(imports.memory) : null,
    };
    const env = (imports.env = imports.env || {});
    const getString = (ptr: number) => ctx.memory ? ctx.memory.getString(ptr) : '<unknown>';
    if (!env.abort) {
        env.abort = function abort(mesg: number, file: number, line: number, colm: number) {
            throw Error(`Abort: ${ getString(mesg) } at ${ getString(file) }: ${ line }:${ colm }`);
        };
    }
    if (!env.trace) {
        env.trace = function trace(mesg: number, n: number, ...args: number[]) {
            let msg = `trace: ${ getString(mesg) }`;
            if (n) { msg += ` ${ args.slice(0, n).join(', ') }`; }
            console.log(msg);
        };
    }
    if (env.memory instanceof MemoryWrapper) {
        env.memory = env.memory.raw;
    }
    return ctx;
}

function resolveContext<T = ASExport>(instance: WebAssembly.Instance, ctx: InstanceContext): ASInstance & T {
    const table = new TableWrapper(instance.exports.table);
    table.setExports(instance.exports);

    ctx.memory = MemoryWrapper.resolve(instance.exports.memory);
    ctx.memory.setExports(instance.exports);

    const resolved: any = {};
    for (const internalName in instance.exports) {
        if (!utils.hasOwnProperty(instance.exports, internalName)) { continue; }
        // resolve nested objects
        const parts = internalName.split('.');
        let name = parts[0];
        // ignore internals
        if (name === 'memory' || name === 'table' || name === '_setargc') { continue; }
        let curr = resolved;
        while (parts.length > 1) {
            const part = parts.shift()!;
            if (!utils.hasOwnProperty(curr, part)) {
                curr[part] = {};
            }
            curr = curr[part];
        }
        const elem = instance.exports[internalName];
        const hash = name.indexOf('#');
        if (hash >= 0) {
            // resolve classes
            const className = name.substring(0, hash);
            const classElem = curr[className];
            if (typeof classElem === 'undefined' || !classElem.prototype) {
                const ctor: any = function(...args: any[]) {
                    return ctor.wrap(ctor.prototype.constructor(0, ...args));
                };
                ctor.prototype = {};
                ctor.wrap = function(thisValue: any) {
                    return Object.create(ctor.prototype, {
                        [SELF_REF]: {value: thisValue, writable: false},
                    });
                };
                if (classElem) {
                    Object.getOwnPropertyNames(classElem).forEach((propName) => {
                        Object.defineProperty(ctor, propName, Object.getOwnPropertyDescriptor(classElem, propName)!);
                    });
                }
                curr[className] = ctor;
            }
            name = name.substring(hash + 1);
            curr = curr[className].prototype;
            if (/^(get|set):/.test(name)) {
                name = name.substring(4);
                if (!utils.hasOwnProperty(curr, name)) {
                    const getter = instance.exports[internalName.replace('set:', 'get:')];
                    const setter = instance.exports[internalName.replace('get:', 'set:')];
                    Object.defineProperty(curr, name, {
                        get() { return getter(this[SELF_REF]); },
                        set(value) { setter(this[SELF_REF], value); },
                        enumerable: true,
                    });
                }
            } else {
                if (name === 'constructor') {
                    curr[name] = table.wrapFunction(elem);
                } else { // for methods
                    Object.defineProperty(curr, name, {
                        value(...args: any[]) {
                            table.setargc(args.length);
                            return elem(this[SELF_REF], ...args);
                        },
                    });
                }
            }
        } else {
            // resolve props
            if (/^(get|set):/.test(name)) {
                name = name.substring(4);
                if (!utils.hasOwnProperty(curr, name)) {
                    Object.defineProperty(curr, name, {
                        get: instance.exports[internalName.replace('set:', 'get:')],
                        set: instance.exports[internalName.replace('get:', 'set:')],
                        enumerable: true,
                    });
                }
            } else if (typeof elem === 'function') {
                curr[name] = table.wrapFunction(elem);
            } else {
                curr[name] = elem;
            }
        }
    }
    return {
        memory: ctx.memory,
        table,
        ...resolved,
    };
}

type idFunc<T> = (t: T) => T

type postResolve<T> = idFunc<ASInstance & T>;
type preResolve = idFunc<ArrayBuffer | Uint8Array>;
type postArr<T> = Array<postResolve<T>>;



/** Instantiates an AssemblyScript module using the specified imports. */
export function instantiate<T = ASExport>(module: WebAssembly.Module, imports: {post?: postArr<T>} = {}): ASInstance & T {
    const ctx = createContext(imports);
    const instance = new WebAssembly.Instance(module, ctx.imports);
    var res = resolveContext<T>(instance, ctx);
    if (imports.post){
      imports.post.map((fn)=>{
        res = fn(res);
      })
    }
    return res;
}

/** Instantiates an AssemblyScript module from a buffer using the specified imports. */
export function instantiateBuffer<T = ASExport>(buffer: any, imports: {pre?:Array<preResolve>, post?:postArr<T>} = {}): ASInstance & T {
   var _buffer = buffer;
    if (imports.pre){
      imports.pre.map((fn)=>{
        _buffer = fn(_buffer);
      })
    }
    return instantiate(new WebAssembly.Module(_buffer), imports);
}

/** Instantiates an AssemblyScript module from a response using the specified imports. */
async function instantiateStreaming<T = ASExport>(response: any, imports: any = {}): Promise<ASInstance & T> {
    const ctx = createContext(imports);
    const {instance} = await (WebAssembly as any).instantiateStreaming(response, ctx.imports);
    return resolveContext(instance, ctx);
}

/** Creates a wrapped memory instance. */
export function createMemory(descriptor: WebAssembly.MemoryDescriptor): ASMemory {
    return new MemoryWrapper(new WebAssembly.Memory(descriptor));
}

/** Demangles an AssemblyScript module's exports to a friendly object structure. */
export function demangle<T = ASExport>(instance: WebAssembly.Instance) {
    return resolveContext(instance, createContext());
}
