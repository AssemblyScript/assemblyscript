"use strict";
/** AssemblyScript module loader. */
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const ORIG_REF = Symbol('original');
const SELF_REF = Symbol('self');
var utils;
(function (utils) {
    utils.hasBigInt64 = typeof BigUint64Array !== 'undefined';
    function readString(U32, U16, ptr) {
        const chunkSize = 1024;
        const dataLength = U32[ptr >>> 2];
        let dataOffset = (ptr + 4) >>> 1;
        let dataRemain = dataLength;
        const parts = [];
        while (dataRemain > chunkSize) {
            const last = U16[dataOffset + chunkSize - 1];
            const size = last >= 0xD800 && last < 0xDC00 ? chunkSize - 1 : chunkSize;
            const part = U16.subarray(dataOffset, dataOffset += size);
            parts.push(String.fromCharCode.apply(String, part));
            dataRemain -= size;
        }
        const lastPart = U16.subarray(dataOffset, dataOffset + dataRemain);
        parts.push(String.fromCharCode.apply(String, lastPart));
        return parts.join('');
    }
    utils.readString = readString;
    function computeBufferSize(byteLength) {
        const HEADER_SIZE = 8;
        return 1 << (32 - Math.clz32(byteLength + HEADER_SIZE - 1));
    }
    utils.computeBufferSize = computeBufferSize;
    function hasOwnProperty(obj, key) {
        return Object.prototype.hasOwnProperty.call(obj, key);
    }
    utils.hasOwnProperty = hasOwnProperty;
})(utils = exports.utils || (exports.utils = {}));
class MemoryWrapper {
    static resolve(value) {
        if (value instanceof MemoryWrapper) {
            return value;
        }
        else {
            return new MemoryWrapper(value);
        }
    }
    constructor(memory) {
        this.raw = memory;
    }
    // ASMemory conformance
    newString(str) {
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
    getString(ptr) {
        return utils.readString(this.U32, this.U16, ptr);
    }
    newArray(viewOrCtor, length, unsafe) {
        let ctor;
        let view;
        if (viewOrCtor.constructor === Function) { // TypedArray constructor created in memory
            ctor = viewOrCtor;
            view = null;
        }
        else { // TypedArray instance copied into memory
            ctor = viewOrCtor.constructor;
            view = viewOrCtor;
            if (length === undefined) {
                length = viewOrCtor.length;
            }
        }
        if (length === undefined) {
            throw new Error('Length missing');
        }
        const elementSize = ctor.BYTES_PER_ELEMENT;
        if (!elementSize) {
            throw Error('Not a typed array');
        }
        const byteLength = elementSize * length;
        const ptr = this.allocate(12); // TypedArray header
        const buf = this.allocate(utils.computeBufferSize(byteLength)); // ArrayBuffer
        const U32 = this.U32;
        U32[ptr >>> 2] = buf; // .buffer
        U32[(ptr + 4) >>> 2] = 0; // .byteOffset
        U32[(ptr + 8) >>> 2] = byteLength; // .byteLength
        U32[buf >>> 2] = byteLength; // .byteLength
        U32[(buf + 4) >>> 2] = 0; // 0
        if (view) {
            new ctor(this.buffer, buf + 8, length).set(view);
            if (view.length < length && !unsafe) {
                const setLength = elementSize * view.length;
                this.fill(buf + 8 + setLength, 0, byteLength - setLength);
            }
        }
        else if (!unsafe) {
            this.fill(buf + 8, 0, byteLength);
        }
        return ptr;
    }
    getArray(ctor, ptr) {
        const elementSize = ctor.BYTES_PER_ELEMENT;
        if (!elementSize) {
            throw Error('Not a typed array');
        }
        const U32 = this.U32;
        const buf = U32[ptr >>> 2];
        const byteOffset = U32[(ptr + 4) >>> 2];
        const byteLength = U32[(ptr + 8) >>> 2];
        return new ctor(this.buffer, buf + 8 + byteOffset, (byteLength - byteOffset) / elementSize);
    }
    freeArray(ptr) {
        const buf = this.U32[ptr >>> 2];
        this.free(buf);
        this.free(ptr);
    }
    get U8() {
        if (!this._U8 || this._U8.buffer !== this.raw.buffer) {
            this._U8 = new Uint8Array(this.raw.buffer);
        }
        return this._U8;
    }
    get U16() {
        if (!this._U16 || this._U16.buffer !== this.raw.buffer) {
            this._U16 = new Uint16Array(this.raw.buffer);
        }
        return this._U16;
    }
    get U32() {
        if (!this._U32 || this._U32.buffer !== this.raw.buffer) {
            this._U32 = new Uint32Array(this.raw.buffer);
        }
        return this._U32;
    }
    get U64() {
        if (!utils.hasBigInt64) {
            return;
        }
        if (!this._U64 || this._U64.buffer !== this.raw.buffer) {
            this._U64 = new BigUint64Array(this.raw.buffer);
        }
        return this._U64;
    }
    get I8() {
        if (!this._I8 || this._I8.buffer !== this.raw.buffer) {
            this._I8 = new Int8Array(this.raw.buffer);
        }
        return this._I8;
    }
    get I16() {
        if (!this._I16 || this._I16.buffer !== this.raw.buffer) {
            this._I16 = new Int16Array(this.raw.buffer);
        }
        return this._I16;
    }
    get I32() {
        if (!this._I32 || this._I32.buffer !== this.raw.buffer) {
            this._I32 = new Int32Array(this.raw.buffer);
        }
        return this._I32;
    }
    get I64() {
        if (!utils.hasBigInt64) {
            return;
        }
        if (!this._I64 || this._I64.buffer !== this.raw.buffer) {
            this._I64 = new BigInt64Array(this.raw.buffer);
        }
        return this._I64;
    }
    get F32() {
        if (!this._F32 || this._F32.buffer !== this.raw.buffer) {
            this._F32 = new Float32Array(this.raw.buffer);
        }
        return this._F32;
    }
    get F64() {
        if (!this._F64 || this._F64.buffer !== this.raw.buffer) {
            this._F64 = new Float64Array(this.raw.buffer);
        }
        return this._F64;
    }
    allocate(size) {
        throw new Error('Memory not initialized');
    }
    compare(vl, vr, n) {
        throw new Error('Memory not initialized');
    }
    copy(dest, src, n) {
        throw new Error('Memory not initialized');
    }
    fill(ptr, value, size) {
        throw new Error('Memory not initialized');
    }
    free(ptr) {
        throw new Error('Memory not initialized');
    }
    reset() {
        throw new Error('Memory not initialized');
    }
    // WebAssembly.Memory conformance
    grow(numPages) {
        return this.raw.grow(numPages);
    }
    get buffer() {
        return this.raw.buffer;
    }
    // Internal methods
    setExports(rawExports) {
        const methods = ['allocate', 'compare', 'copy', 'fill', 'free', 'reset'];
        for (const method of methods) {
            const exportedMethod = `memory.${method}`;
            if (rawExports[exportedMethod]) {
                this[method] = rawExports[exportedMethod];
            }
            else {
                this[method] = () => { throw new Error('Method not exported'); };
            }
        }
    }
}
class TableWrapper {
    constructor(table) {
        this.raw = table;
    }
    // ASTable conformance
    getFunction(ptr) {
        return this.wrapFunction(this.get(ptr));
    }
    newFunction(fn) {
        if (typeof fn[ORIG_REF] === 'function') {
            fn = fn[ORIG_REF];
        }
        const index = this.length;
        this.grow(1);
        this.set(index, fn);
        return index;
    }
    // WebAssembly.Table conformance
    grow(numElements) {
        return this.raw.grow(numElements);
    }
    set(index, value) {
        return this.raw.set(index, value);
    }
    get(index) {
        return this.raw.get(index);
    }
    get length() {
        return this.raw.length;
    }
    // Internal methods
    setargc(n) { }
    /** Wraps a WebAssembly function while also taking care of variable arguments. */
    wrapFunction(fn) {
        const wrap = (...args) => {
            this.setargc(args.length);
            return fn(...args);
        };
        // adding a function to the table with `newFunction` is limited to actual WebAssembly functions,
        // hence we can't use the wrapper and instead need to provide a reference to the original
        wrap[ORIG_REF] = fn;
        return wrap;
    }
    setExports(rawExports) {
        if (rawExports._setargc) {
            this.setargc = rawExports._setargc;
        }
    }
}
function createContext(imports = {}) {
    const ctx = {
        imports,
        memory: imports.memory ? MemoryWrapper.resolve(imports.memory) : null,
    };
    const env = (imports.env = imports.env || {});
    const getString = (ptr) => ctx.memory ? ctx.memory.getString(ptr) : '<unknown>';
    if (!env.abort) {
        env.abort = function abort(mesg, file, line, colm) {
            throw Error(`Abort: ${getString(mesg)} at ${getString(file)}: ${line}:${colm}`);
        };
    }
    if (!env.trace) {
        env.trace = function trace(mesg, n, ...args) {
            let msg = `trace: ${getString(mesg)}`;
            if (n) {
                msg += ` ${args.slice(0, n).join(', ')}`;
            }
            console.log(msg);
        };
    }
    if (env.memory instanceof MemoryWrapper) {
        env.memory = env.memory.raw;
    }
    return ctx;
}
function resolveContext(instance, ctx) {
    const table = new TableWrapper(instance.exports.table);
    table.setExports(instance.exports);
    ctx.memory = MemoryWrapper.resolve(instance.exports.memory);
    ctx.memory.setExports(instance.exports);
    const resolved = {};
    for (const internalName in instance.exports) {
        if (!utils.hasOwnProperty(instance.exports, internalName)) {
            continue;
        }
        // resolve nested objects
        const parts = internalName.split('.');
        let name = parts[0];
        // ignore internals
        if (name === 'memory' || name === 'table' || name === '_setargc') {
            continue;
        }
        let curr = resolved;
        while (parts.length > 1) {
            const part = parts.shift();
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
                const ctor = function (...args) {
                    return ctor.wrap(ctor.prototype.constructor(0, ...args));
                };
                ctor.prototype = {};
                ctor.wrap = function (thisValue) {
                    return Object.create(ctor.prototype, {
                        [SELF_REF]: { value: thisValue, writable: false },
                    });
                };
                if (classElem) {
                    Object.getOwnPropertyNames(classElem).forEach((propName) => {
                        Object.defineProperty(ctor, propName, Object.getOwnPropertyDescriptor(classElem, propName));
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
            }
            else {
                if (name === 'constructor') {
                    curr[name] = table.wrapFunction(elem);
                }
                else { // for methods
                    Object.defineProperty(curr, name, {
                        value(...args) {
                            table.setargc(args.length);
                            return elem(this[SELF_REF], ...args);
                        },
                    });
                }
            }
        }
        else {
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
            }
            else if (typeof elem === 'function') {
                curr[name] = table.wrapFunction(elem);
            }
            else {
                curr[name] = elem;
            }
        }
    }
    return Object.assign({ memory: ctx.memory, table }, resolved);
}
/** Instantiates an AssemblyScript module using the specified imports. */
function instantiate(module, imports = {}) {
    const ctx = createContext(imports);
    const instance = new WebAssembly.Instance(module, ctx.imports);
    return resolveContext(instance, ctx);
}
exports.instantiate = instantiate;
/** Instantiates an AssemblyScript module from a buffer using the specified imports. */
function instantiateBuffer(buffer, imports = {}) {
    return instantiate(new WebAssembly.Module(buffer), imports);
}
exports.instantiateBuffer = instantiateBuffer;
/** Instantiates an AssemblyScript module from a response using the specified imports. */
function instantiateStreaming(response, imports = {}) {
    return __awaiter(this, void 0, void 0, function* () {
        const ctx = createContext(imports);
        const { instance } = yield WebAssembly.instantiateStreaming(response, ctx.imports);
        return resolveContext(instance, ctx);
    });
}
/** Creates a wrapped memory instance. */
function createMemory(descriptor) {
    return new MemoryWrapper(new WebAssembly.Memory(descriptor));
}
exports.createMemory = createMemory;
/** Demangles an AssemblyScript module's exports to a friendly object structure. */
function demangle(instance) {
    return resolveContext(instance, createContext());
}
exports.demangle = demangle;
