async function instantiate(module, imports = {}) {
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      trace(message, n, a0, a1, a2, a3, a4) {
        // ~lib/builtins/trace(~lib/string/String, i32?, f64?, f64?, f64?, f64?, f64?) => void
        message = __liftString(message >>> 0);
        (() => {
          // @external.js
          console.log(message, ...[a0, a1, a2, a3, a4].slice(0, n));
        })();
      },
      "console.log"(text) {
        // ~lib/bindings/dom/console.log(~lib/string/String) => void
        text = __liftString(text >>> 0);
        console.log(text);
      },
      "Math.E": (
        // ~lib/bindings/dom/Math.E: f64
        Math.E
      ),
      "Math.log"(x) {
        // ~lib/bindings/dom/Math.log(f64) => f64
        return Math.log(x);
      },
      "globalThis.globalThis": (
        // bindings/esm/immutableGlobalNested: ref_extern | null
        globalThis.globalThis
      ),
      "Date.getTimezoneOffset"() {
        // bindings/esm/Date_getTimezoneOffset() => i32
        return (() => {
          // @external.js
          return new Date().getTimezoneOffset();
        })();
      },
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  const adaptedExports = Object.setPrototypeOf({
    stringGlobal: {
      // bindings/esm/stringGlobal: ~lib/string/String
      valueOf() { return this.value; },
      get value() {
        return __liftString(exports.stringGlobal.value >>> 0);
      }
    },
    mutableStringGlobal: {
      // bindings/esm/mutableStringGlobal: ~lib/string/String
      valueOf() { return this.value; },
      get value() {
        return __liftString(exports.mutableStringGlobal.value >>> 0);
      },
      set value(value) {
        exports.mutableStringGlobal.value = __lowerString(value) || __notnull();
      }
    },
    Enum: (values => (
      // bindings/esm/Enum
      values[values.ONE = exports["Enum.ONE"].valueOf()] = "ONE",
      values[values.TWO = exports["Enum.TWO"].valueOf()] = "TWO",
      values[values.THREE = exports["Enum.THREE"].valueOf()] = "THREE",
      values
    ))({}),
    ConstEnum: (values => (
      // bindings/esm/ConstEnum
      values[values.ONE = 1] = "ONE",
      values[values.TWO = 2] = "TWO",
      values[values.THREE = 3] = "THREE",
      values
    ))({}),
    plainFunction64(a, b) {
      // bindings/esm/plainFunction64(i64, i64) => i64
      a = a || 0n;
      b = b || 0n;
      return exports.plainFunction64(a, b);
    },
    getMaxUnsigned32() {
      // bindings/esm/getMaxUnsigned32() => u32
      return exports.getMaxUnsigned32() >>> 0;
    },
    getMaxUnsigned64() {
      // bindings/esm/getMaxUnsigned64() => u64
      return BigInt.asUintN(64, exports.getMaxUnsigned64());
    },
    bufferFunction(a, b) {
      // bindings/esm/bufferFunction(~lib/arraybuffer/ArrayBuffer, ~lib/arraybuffer/ArrayBuffer) => ~lib/arraybuffer/ArrayBuffer
      a = __retain(__lowerBuffer(a) || __notnull());
      b = __lowerBuffer(b) || __notnull();
      try {
        return __liftBuffer(exports.bufferFunction(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    stringFunction(a, b) {
      // bindings/esm/stringFunction(~lib/string/String, ~lib/string/String) => ~lib/string/String
      a = __retain(__lowerString(a) || __notnull());
      b = __lowerString(b) || __notnull();
      try {
        return __liftString(exports.stringFunction(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    stringFunctionOptional(a, b) {
      // bindings/esm/stringFunctionOptional(~lib/string/String, ~lib/string/String?) => ~lib/string/String
      a = __retain(__lowerString(a) || __notnull());
      b = __lowerString(b) || __notnull();
      try {
        exports.__setArgumentsLength(arguments.length);
        return __liftString(exports.stringFunctionOptional(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    typedarrayFunction(a, b) {
      // bindings/esm/typedarrayFunction(~lib/typedarray/Int16Array, ~lib/typedarray/Float32Array) => ~lib/typedarray/Uint64Array
      a = __retain(__lowerTypedArray(Int16Array, 5, 1, a) || __notnull());
      b = __lowerTypedArray(Float32Array, 6, 2, b) || __notnull();
      try {
        return __liftTypedArray(BigUint64Array, exports.typedarrayFunction(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    staticarrayFunction(a, b) {
      // bindings/esm/staticarrayFunction(~lib/staticarray/StaticArray<i32>, ~lib/staticarray/StaticArray<i32>) => ~lib/staticarray/StaticArray<i32>
      a = __retain(__lowerStaticArray(__setU32, 8, 2, a, Int32Array) || __notnull());
      b = __lowerStaticArray(__setU32, 8, 2, b, Int32Array) || __notnull();
      try {
        return __liftStaticArray(__getI32, 2, exports.staticarrayFunction(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    staticarrayU16(a) {
      // bindings/esm/staticarrayU16(~lib/staticarray/StaticArray<u16>) => ~lib/staticarray/StaticArray<u16>
      a = __lowerStaticArray(__setU16, 9, 1, a, Uint16Array) || __notnull();
      return __liftStaticArray(__getU16, 1, exports.staticarrayU16(a) >>> 0);
    },
    staticarrayI64(a) {
      // bindings/esm/staticarrayI64(~lib/staticarray/StaticArray<i64>) => ~lib/staticarray/StaticArray<i64>
      a = __lowerStaticArray(__setU64, 10, 3, a, BigInt64Array) || __notnull();
      return __liftStaticArray(__getI64, 3, exports.staticarrayI64(a) >>> 0);
    },
    arrayFunction(a, b) {
      // bindings/esm/arrayFunction(~lib/array/Array<i32>, ~lib/array/Array<i32>) => ~lib/array/Array<i32>
      a = __retain(__lowerArray(__setU32, 11, 2, a) || __notnull());
      b = __lowerArray(__setU32, 11, 2, b) || __notnull();
      try {
        return __liftArray(__getI32, 2, exports.arrayFunction(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    arrayOfStringsFunction(a, b) {
      // bindings/esm/arrayOfStringsFunction(~lib/array/Array<~lib/string/String>, ~lib/array/Array<~lib/string/String>) => ~lib/array/Array<~lib/string/String>
      a = __retain(__lowerArray((pointer, value) => { __setU32(pointer, __lowerString(value) || __notnull()); }, 12, 2, a) || __notnull());
      b = __lowerArray((pointer, value) => { __setU32(pointer, __lowerString(value) || __notnull()); }, 12, 2, b) || __notnull();
      try {
        return __liftArray(pointer => __liftString(__getU32(pointer)), 2, exports.arrayOfStringsFunction(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    objectFunction(a, b) {
      // bindings/esm/objectFunction(bindings/esm/PlainObject, bindings/esm/PlainObject) => bindings/esm/PlainObject
      a = __retain(__lowerRecord13(a) || __notnull());
      b = __lowerRecord13(b) || __notnull();
      try {
        return __liftRecord13(exports.objectFunction(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    newInternref() {
      // bindings/esm/newInternref() => bindings/esm/NonPlainObject
      return __liftInternref(exports.newInternref() >>> 0);
    },
    internrefFunction(a, b) {
      // bindings/esm/internrefFunction(bindings/esm/NonPlainObject, bindings/esm/NonPlainObject) => bindings/esm/NonPlainObject
      a = __retain(__lowerInternref(a) || __notnull());
      b = __lowerInternref(b) || __notnull();
      try {
        return __liftInternref(exports.internrefFunction(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    functionFunction(fn) {
      // bindings/esm/functionFunction(() => void) => () => void
      fn = __lowerInternref(fn) || __notnull();
      return __liftInternref(exports.functionFunction(fn) >>> 0);
    },
    fn: {
      // bindings/esm/fn: () => void
      valueOf() { return this.value; },
      get value() {
        return __liftInternref(exports.fn.value >>> 0);
      }
    },
  }, exports);
  function __lowerRecord13(value) {
    // bindings/esm/PlainObject
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(68, 13));
    __setU8(pointer + 0, value.a);
    __setU16(pointer + 2, value.b);
    __setU32(pointer + 4, value.c);
    __setU64(pointer + 8, value.d || 0n);
    __setU8(pointer + 16, value.e);
    __setU16(pointer + 18, value.f);
    __setU32(pointer + 20, value.g);
    __setU64(pointer + 24, value.h || 0n);
    __setU32(pointer + 32, value.i);
    __setU32(pointer + 36, value.j);
    __setU8(pointer + 40, value.k ? 1 : 0);
    __setF32(pointer + 44, value.l);
    __setF64(pointer + 48, value.m);
    __setU32(pointer + 56, __lowerString(value.n));
    __setU32(pointer + 60, __lowerTypedArray(Uint8Array, 14, 0, value.o));
    __setU32(pointer + 64, __lowerArray((pointer, value) => { __setU32(pointer, __lowerString(value) || __notnull()); }, 12, 2, value.p));
    exports.__unpin(pointer);
    return pointer;
  }
  function __liftRecord13(pointer) {
    // bindings/esm/PlainObject
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      a: __getI8(pointer + 0),
      b: __getI16(pointer + 2),
      c: __getI32(pointer + 4),
      d: __getI64(pointer + 8),
      e: __getU8(pointer + 16),
      f: __getU16(pointer + 18),
      g: __getU32(pointer + 20),
      h: __getU64(pointer + 24),
      i: __getI32(pointer + 32),
      j: __getU32(pointer + 36),
      k: __getU8(pointer + 40) != 0,
      l: __getF32(pointer + 44),
      m: __getF64(pointer + 48),
      n: __liftString(__getU32(pointer + 56)),
      o: __liftTypedArray(Uint8Array, __getU32(pointer + 60)),
      p: __liftArray(pointer => __liftString(__getU32(pointer)), 2, __getU32(pointer + 64)),
    };
  }
  function __liftBuffer(pointer) {
    if (!pointer) return null;
    return memory.buffer.slice(pointer, pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2]);
  }
  function __lowerBuffer(value) {
    if (value == null) return 0;
    const pointer = exports.__new(value.byteLength, 1) >>> 0;
    new Uint8Array(memory.buffer).set(new Uint8Array(value), pointer);
    return pointer;
  }
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  function __lowerString(value) {
    if (value == null) return 0;
    const
      length = value.length,
      pointer = exports.__new(length << 1, 2) >>> 0,
      memoryU16 = new Uint16Array(memory.buffer);
    for (let i = 0; i < length; ++i) memoryU16[(pointer >>> 1) + i] = value.charCodeAt(i);
    return pointer;
  }
  function __liftArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const
      dataStart = __getU32(pointer + 4),
      length = __dataview.getUint32(pointer + 12, true),
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(dataStart + (i << align >>> 0));
    return values;
  }
  function __lowerArray(lowerElement, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, 1)) >>> 0,
      header = exports.__pin(exports.__new(16, id)) >>> 0;
    __setU32(header + 0, buffer);
    __dataview.setUint32(header + 4, buffer, true);
    __dataview.setUint32(header + 8, length << align, true);
    __dataview.setUint32(header + 12, length, true);
    for (let i = 0; i < length; ++i) lowerElement(buffer + (i << align >>> 0), values[i]);
    exports.__unpin(buffer);
    exports.__unpin(header);
    return header;
  }
  function __liftTypedArray(constructor, pointer) {
    if (!pointer) return null;
    return new constructor(
      memory.buffer,
      __getU32(pointer + 4),
      __dataview.getUint32(pointer + 8, true) / constructor.BYTES_PER_ELEMENT
    ).slice();
  }
  function __lowerTypedArray(constructor, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, 1)) >>> 0,
      header = exports.__new(12, id) >>> 0;
    __setU32(header + 0, buffer);
    __dataview.setUint32(header + 4, buffer, true);
    __dataview.setUint32(header + 8, length << align, true);
    new constructor(memory.buffer, buffer, length).set(values);
    exports.__unpin(buffer);
    return header;
  }
  function __liftStaticArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const
      length = __getU32(pointer - 4) >>> align,
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(pointer + (i << align >>> 0));
    return values;
  }
  function __lowerStaticArray(lowerElement, id, align, values, typedConstructor) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, id)) >>> 0;
    if (typedConstructor) {
      new typedConstructor(memory.buffer, buffer, length).set(values);
    } else {
      for (let i = 0; i < length; i++) lowerElement(buffer + (i << align >>> 0), values[i]);
    }
    exports.__unpin(buffer);
    return buffer;
  }
  class Internref extends Number {}
  const registry = new FinalizationRegistry(__release);
  function __liftInternref(pointer) {
    if (!pointer) return null;
    const sentinel = new Internref(__retain(pointer));
    registry.register(sentinel, pointer);
    return sentinel;
  }
  function __lowerInternref(value) {
    if (value == null) return 0;
    if (value instanceof Internref) return value.valueOf();
    throw TypeError("internref expected");
  }
  const refcounts = new Map();
  function __retain(pointer) {
    if (pointer) {
      const refcount = refcounts.get(pointer);
      if (refcount) refcounts.set(pointer, refcount + 1);
      else refcounts.set(exports.__pin(pointer), 1);
    }
    return pointer;
  }
  function __release(pointer) {
    if (pointer) {
      const refcount = refcounts.get(pointer);
      if (refcount === 1) exports.__unpin(pointer), refcounts.delete(pointer);
      else if (refcount) refcounts.set(pointer, refcount - 1);
      else throw Error(`invalid refcount '${refcount}' for reference '${pointer}'`);
    }
  }
  function __notnull() {
    throw TypeError("value must not be null");
  }
  let __dataview = new DataView(memory.buffer);
  function __setU8(pointer, value) {
    try {
      __dataview.setUint8(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setUint8(pointer, value, true);
    }
  }
  function __setU16(pointer, value) {
    try {
      __dataview.setUint16(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setUint16(pointer, value, true);
    }
  }
  function __setU32(pointer, value) {
    try {
      __dataview.setUint32(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setUint32(pointer, value, true);
    }
  }
  function __setU64(pointer, value) {
    try {
      __dataview.setBigUint64(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setBigUint64(pointer, value, true);
    }
  }
  function __setF32(pointer, value) {
    try {
      __dataview.setFloat32(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setFloat32(pointer, value, true);
    }
  }
  function __setF64(pointer, value) {
    try {
      __dataview.setFloat64(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setFloat64(pointer, value, true);
    }
  }
  function __getI8(pointer) {
    try {
      return __dataview.getInt8(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getInt8(pointer, true);
    }
  }
  function __getU8(pointer) {
    try {
      return __dataview.getUint8(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getUint8(pointer, true);
    }
  }
  function __getI16(pointer) {
    try {
      return __dataview.getInt16(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getInt16(pointer, true);
    }
  }
  function __getU16(pointer) {
    try {
      return __dataview.getUint16(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getUint16(pointer, true);
    }
  }
  function __getI32(pointer) {
    try {
      return __dataview.getInt32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getInt32(pointer, true);
    }
  }
  function __getU32(pointer) {
    try {
      return __dataview.getUint32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getUint32(pointer, true);
    }
  }
  function __getI64(pointer) {
    try {
      return __dataview.getBigInt64(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getBigInt64(pointer, true);
    }
  }
  function __getU64(pointer) {
    try {
      return __dataview.getBigUint64(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getBigUint64(pointer, true);
    }
  }
  function __getF32(pointer) {
    try {
      return __dataview.getFloat32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getFloat32(pointer, true);
    }
  }
  function __getF64(pointer) {
    try {
      return __dataview.getFloat64(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getFloat64(pointer, true);
    }
  }
  exports._start();
  return adaptedExports;
}
export const {
  memory,
  __new,
  __pin,
  __unpin,
  __collect,
  __rtti_base,
  plainGlobal,
  plainMutableGlobal,
  stringGlobal,
  mutableStringGlobal,
  Enum,
  ConstEnum,
  plainFunction,
  plainFunction64,
  getMaxUnsigned32,
  getMaxUnsigned64,
  bufferFunction,
  stringFunction,
  stringFunctionOptional,
  typedarrayFunction,
  staticarrayFunction,
  staticarrayU16,
  staticarrayI64,
  arrayFunction,
  arrayOfStringsFunction,
  objectFunction,
  newInternref,
  internrefFunction,
  functionFunction,
  fn,
} = await (async url => instantiate(
  await (async () => {
    const isNodeOrBun = typeof process != "undefined" && process.versions != null && (process.versions.node != null || process.versions.bun != null);
    if (isNodeOrBun) { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)); }
    else { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)); }
  })(), {
  }
))(new URL("esm.debug.wasm", import.meta.url));
