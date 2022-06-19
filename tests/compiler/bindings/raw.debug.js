export async function instantiate(module, imports = {}) {
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
      "Math.log": (
        // ~lib/bindings/dom/Math.log(f64) => f64
        Math.log
      ),
      "globalThis.globalThis": (
        // bindings/esm/immutableGlobalNested: anyref
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
      a = __retain(__lowerTypedArray(Int16Array, 3, 1, a) || __notnull());
      b = __lowerTypedArray(Float32Array, 4, 2, b) || __notnull();
      try {
        return __liftTypedArray(BigUint64Array, exports.typedarrayFunction(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    staticarrayFunction(a, b) {
      // bindings/esm/staticarrayFunction(~lib/staticarray/StaticArray<i32>, ~lib/staticarray/StaticArray<i32>) => ~lib/staticarray/StaticArray<i32>
      a = __retain(__lowerStaticArray((pointer, value) => { new Int32Array(memory.buffer)[pointer >>> 2] = value; }, 6, 2, a) || __notnull());
      b = __lowerStaticArray((pointer, value) => { new Int32Array(memory.buffer)[pointer >>> 2] = value; }, 6, 2, b) || __notnull();
      try {
        return __liftStaticArray(pointer => new Int32Array(memory.buffer)[pointer >>> 2], 2, exports.staticarrayFunction(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    arrayFunction(a, b) {
      // bindings/esm/arrayFunction(~lib/array/Array<i32>, ~lib/array/Array<i32>) => ~lib/array/Array<i32>
      a = __retain(__lowerArray((pointer, value) => { new Int32Array(memory.buffer)[pointer >>> 2] = value; }, 7, 2, a) || __notnull());
      b = __lowerArray((pointer, value) => { new Int32Array(memory.buffer)[pointer >>> 2] = value; }, 7, 2, b) || __notnull();
      try {
        return __liftArray(pointer => new Int32Array(memory.buffer)[pointer >>> 2], 2, exports.arrayFunction(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    objectFunction(a, b) {
      // bindings/esm/objectFunction(bindings/esm/PlainObject, bindings/esm/PlainObject) => bindings/esm/PlainObject
      a = __retain(__lowerRecord8(a) || __notnull());
      b = __lowerRecord8(b) || __notnull();
      try {
        return __liftRecord8(exports.objectFunction(a, b) >>> 0);
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
  }, exports);
  function __lowerRecord8(value) {
    // bindings/esm/PlainObject
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(68, 8));
    new Int8Array(memory.buffer)[pointer + 0 >>> 0] = value.a;
    new Int16Array(memory.buffer)[pointer + 2 >>> 1] = value.b;
    new Int32Array(memory.buffer)[pointer + 4 >>> 2] = value.c;
    new BigInt64Array(memory.buffer)[pointer + 8 >>> 3] = value.d || 0n;
    new Uint8Array(memory.buffer)[pointer + 16 >>> 0] = value.e;
    new Uint16Array(memory.buffer)[pointer + 18 >>> 1] = value.f;
    new Uint32Array(memory.buffer)[pointer + 20 >>> 2] = value.g;
    new BigUint64Array(memory.buffer)[pointer + 24 >>> 3] = value.h || 0n;
    new Int32Array(memory.buffer)[pointer + 32 >>> 2] = value.i;
    new Uint32Array(memory.buffer)[pointer + 36 >>> 2] = value.j;
    new Uint8Array(memory.buffer)[pointer + 40 >>> 0] = value.k ? 1 : 0;
    new Float32Array(memory.buffer)[pointer + 44 >>> 2] = value.l;
    new Float64Array(memory.buffer)[pointer + 48 >>> 3] = value.m;
    new Uint32Array(memory.buffer)[pointer + 56 >>> 2] = __lowerString(value.n);
    new Uint32Array(memory.buffer)[pointer + 60 >>> 2] = __lowerTypedArray(Uint8Array, 9, 0, value.o);
    new Uint32Array(memory.buffer)[pointer + 64 >>> 2] = __lowerArray((pointer, value) => { new Uint32Array(memory.buffer)[pointer >>> 2] = __lowerString(value) || __notnull(); }, 10, 2, value.p);
    exports.__unpin(pointer);
    return pointer;
  }
  function __liftRecord8(pointer) {
    // bindings/esm/PlainObject
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      a: new Int8Array(memory.buffer)[pointer + 0 >>> 0],
      b: new Int16Array(memory.buffer)[pointer + 2 >>> 1],
      c: new Int32Array(memory.buffer)[pointer + 4 >>> 2],
      d: new BigInt64Array(memory.buffer)[pointer + 8 >>> 3],
      e: new Uint8Array(memory.buffer)[pointer + 16 >>> 0],
      f: new Uint16Array(memory.buffer)[pointer + 18 >>> 1],
      g: new Uint32Array(memory.buffer)[pointer + 20 >>> 2],
      h: new BigUint64Array(memory.buffer)[pointer + 24 >>> 3],
      i: new Int32Array(memory.buffer)[pointer + 32 >>> 2],
      j: new Uint32Array(memory.buffer)[pointer + 36 >>> 2],
      k: new Uint8Array(memory.buffer)[pointer + 40 >>> 0] != 0,
      l: new Float32Array(memory.buffer)[pointer + 44 >>> 2],
      m: new Float64Array(memory.buffer)[pointer + 48 >>> 3],
      n: __liftString(new Uint32Array(memory.buffer)[pointer + 56 >>> 2]),
      o: __liftTypedArray(Uint8Array, new Uint32Array(memory.buffer)[pointer + 60 >>> 2]),
      p: __liftArray(pointer => __liftString(new Uint32Array(memory.buffer)[pointer >>> 2]), 2, new Uint32Array(memory.buffer)[pointer + 64 >>> 2]),
    };
  }
  function __liftBuffer(pointer) {
    if (!pointer) return null;
    return memory.buffer.slice(pointer, pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2]);
  }
  function __lowerBuffer(value) {
    if (value == null) return 0;
    const pointer = exports.__new(value.byteLength, 0) >>> 0;
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
      pointer = exports.__new(length << 1, 1) >>> 0,
      memoryU16 = new Uint16Array(memory.buffer);
    for (let i = 0; i < length; ++i) memoryU16[(pointer >>> 1) + i] = value.charCodeAt(i);
    return pointer;
  }
  function __liftArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const
      memoryU32 = new Uint32Array(memory.buffer),
      dataStart = memoryU32[pointer + 4 >>> 2],
      length = memoryU32[pointer + 12 >>> 2],
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(dataStart + (i << align >>> 0));
    return values;
  }
  function __lowerArray(lowerElement, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, 0)) >>> 0,
      header = exports.__pin(exports.__new(16, id)) >>> 0,
      memoryU32 = new Uint32Array(memory.buffer);
    memoryU32[header + 0 >>> 2] = buffer;
    memoryU32[header + 4 >>> 2] = buffer;
    memoryU32[header + 8 >>> 2] = length << align;
    memoryU32[header + 12 >>> 2] = length;
    for (let i = 0; i < length; ++i) lowerElement(buffer + (i << align >>> 0), values[i]);
    exports.__unpin(buffer);
    exports.__unpin(header);
    return header;
  }
  function __liftTypedArray(constructor, pointer) {
    if (!pointer) return null;
    const memoryU32 = new Uint32Array(memory.buffer);
    return new constructor(
      memory.buffer,
      memoryU32[pointer + 4 >>> 2],
      memoryU32[pointer + 8 >>> 2] / constructor.BYTES_PER_ELEMENT
    ).slice();
  }
  function __lowerTypedArray(constructor, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, 0)) >>> 0,
      header = exports.__new(12, id) >>> 0,
      memoryU32 = new Uint32Array(memory.buffer);
    memoryU32[header + 0 >>> 2] = buffer;
    memoryU32[header + 4 >>> 2] = buffer;
    memoryU32[header + 8 >>> 2] = length << align;
    new constructor(memory.buffer, buffer, length).set(values);
    exports.__unpin(buffer);
    return header;
  }
  function __liftStaticArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const
      length = new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> align,
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(pointer + (i << align >>> 0));
    return values;
  }
  function __lowerStaticArray(lowerElement, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, id)) >>> 0;
    for (let i = 0; i < length; i++) lowerElement(buffer + (i << align >>> 0), values[i]);
    exports.__unpin(buffer);
    return buffer;
  }
  const registry = new FinalizationRegistry(__release);
  class Internref extends Number {}
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
  exports._start();
  return adaptedExports;
}
