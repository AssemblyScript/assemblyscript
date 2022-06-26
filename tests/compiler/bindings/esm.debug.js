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
      "Math.log": (
        // ~lib/bindings/dom/Math.log(f64) => f64
        Math.log
      ),
      "globalThis.globalThis": (
        // bindings/esm/immutableGlobalNested: externref
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
      a = __retain(__lowerTypedArray(3, Int16Array, 1, a) || __notnull());
      b = __lowerTypedArray(4, Float32Array, 2, b) || __notnull();
      try {
        return __liftTypedArray(BigUint64Array, exports.typedarrayFunction(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    staticarrayFunction(a, b) {
      // bindings/esm/staticarrayFunction(~lib/staticarray/StaticArray<i32>, ~lib/staticarray/StaticArray<i32>) => ~lib/staticarray/StaticArray<i32>
      a = __retain(__lowerStaticArray(6, (ptr, value) => { new Int32Array(memory.buffer)[ptr >>> 2] = value; }, 2, a) || __notnull());
      b = __lowerStaticArray(6, (ptr, value) => { new Int32Array(memory.buffer)[ptr >>> 2] = value; }, 2, b) || __notnull();
      try {
        return __liftStaticArray(ptr => new Int32Array(memory.buffer)[ptr >>> 2], 2, exports.staticarrayFunction(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    arrayFunction(a, b) {
      // bindings/esm/arrayFunction(~lib/array/Array<i32>, ~lib/array/Array<i32>) => ~lib/array/Array<i32>
      a = __retain(__lowerArray(7, (ptr, value) => { new Int32Array(memory.buffer)[ptr >>> 2] = value; }, 2, a) || __notnull());
      b = __lowerArray(7, (ptr, value) => { new Int32Array(memory.buffer)[ptr >>> 2] = value; }, 2, b) || __notnull();
      try {
        return __liftArray(ptr => new Int32Array(memory.buffer)[ptr >>> 2], 2, exports.arrayFunction(a, b) >>> 0);
      } finally {
        __release(a);
      }
    },
    setU8Function() {
      // bindings/esm/setU8Function() => ~lib/set/Set<u8>
      return __liftSet(ptr => new Uint8Array(memory.buffer)[ptr >>> 0], 1, exports.setU8Function() >>> 0);
    },
    setI32Function() {
      // bindings/esm/setI32Function() => ~lib/set/Set<i32>
      return __liftSet(ptr => new Int32Array(memory.buffer)[ptr >>> 2], 4, exports.setI32Function() >>> 0);
    },
    setF64Function() {
      // bindings/esm/setF64Function() => ~lib/set/Set<f64>
      return __liftSet(ptr => new Float64Array(memory.buffer)[ptr >>> 3], 8, exports.setF64Function() >>> 0);
    },
    objectFunction(a, b) {
      // bindings/esm/objectFunction(bindings/esm/PlainObject, bindings/esm/PlainObject) => bindings/esm/PlainObject
      a = __retain(__lowerRecord11(a) || __notnull());
      b = __lowerRecord11(b) || __notnull();
      try {
        return __liftRecord11(exports.objectFunction(a, b) >>> 0);
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
  function __lowerRecord11(value) {
    // bindings/esm/PlainObject
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const ptr = exports.__pin(exports.__new(68, 11));
    new Int8Array(memory.buffer)[ptr + 0 >>> 0] = value.a;
    new Int16Array(memory.buffer)[ptr + 2 >>> 1] = value.b;
    new Int32Array(memory.buffer)[ptr + 4 >>> 2] = value.c;
    new BigInt64Array(memory.buffer)[ptr + 8 >>> 3] = value.d || 0n;
    new Uint8Array(memory.buffer)[ptr + 16 >>> 0] = value.e;
    new Uint16Array(memory.buffer)[ptr + 18 >>> 1] = value.f;
    new Uint32Array(memory.buffer)[ptr + 20 >>> 2] = value.g;
    new BigUint64Array(memory.buffer)[ptr + 24 >>> 3] = value.h || 0n;
    new Int32Array(memory.buffer)[ptr + 32 >>> 2] = value.i;
    new Uint32Array(memory.buffer)[ptr + 36 >>> 2] = value.j;
    new Uint8Array(memory.buffer)[ptr + 40 >>> 0] = value.k ? 1 : 0;
    new Float32Array(memory.buffer)[ptr + 44 >>> 2] = value.l;
    new Float64Array(memory.buffer)[ptr + 48 >>> 3] = value.m;
    new Uint32Array(memory.buffer)[ptr + 56 >>> 2] = __lowerString(value.n);
    new Uint32Array(memory.buffer)[ptr + 60 >>> 2] = __lowerTypedArray(12, Uint8Array, 0, value.o);
    new Uint32Array(memory.buffer)[ptr + 64 >>> 2] = __lowerArray(13, (ptr, value) => { new Uint32Array(memory.buffer)[ptr >>> 2] = __lowerString(value) || __notnull(); }, 2, value.p);
    exports.__unpin(ptr);
    return ptr;
  }
  function __liftRecord11(ptr) {
    // bindings/esm/PlainObject
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!ptr) return null;
    return {
      a: new Int8Array(memory.buffer)[ptr + 0 >>> 0],
      b: new Int16Array(memory.buffer)[ptr + 2 >>> 1],
      c: new Int32Array(memory.buffer)[ptr + 4 >>> 2],
      d: new BigInt64Array(memory.buffer)[ptr + 8 >>> 3],
      e: new Uint8Array(memory.buffer)[ptr + 16 >>> 0],
      f: new Uint16Array(memory.buffer)[ptr + 18 >>> 1],
      g: new Uint32Array(memory.buffer)[ptr + 20 >>> 2],
      h: new BigUint64Array(memory.buffer)[ptr + 24 >>> 3],
      i: new Int32Array(memory.buffer)[ptr + 32 >>> 2],
      j: new Uint32Array(memory.buffer)[ptr + 36 >>> 2],
      k: new Uint8Array(memory.buffer)[ptr + 40 >>> 0] != 0,
      l: new Float32Array(memory.buffer)[ptr + 44 >>> 2],
      m: new Float64Array(memory.buffer)[ptr + 48 >>> 3],
      n: __liftString(new Uint32Array(memory.buffer)[ptr + 56 >>> 2]),
      o: __liftTypedArray(Uint8Array, new Uint32Array(memory.buffer)[ptr + 60 >>> 2]),
      p: __liftArray(ptr => __liftString(new Uint32Array(memory.buffer)[ptr >>> 2]), 2, new Uint32Array(memory.buffer)[ptr + 64 >>> 2]),
    };
  }
  function __liftBuffer(ptr) {
    if (!ptr) return null;
    return memory.buffer.slice(ptr, ptr + new Uint32Array(memory.buffer)[ptr - 4 >>> 2]);
  }
  function __lowerBuffer(value) {
    if (value == null) return 0;
    const ptr = exports.__new(value.byteLength, 0) >>> 0;
    new Uint8Array(memory.buffer).set(new Uint8Array(value), ptr);
    return ptr;
  }
  function __liftString(ptr) {
    if (!ptr) return null;
    const
      end = ptr + new Uint32Array(memory.buffer)[ptr - 4 >>> 2] >>> 1,
      mem16 = new Uint16Array(memory.buffer);
    let
      start = ptr >>> 1,
      res = "";
    while (end - start > 1024) res += String.fromCharCode(...mem16.subarray(start, start += 1024));
    return res + String.fromCharCode(...mem16.subarray(start, end));
  }
  function __lowerString(value) {
    if (value == null) return 0;
    const
      len = value.length,
      ptr = exports.__new(len << 1, 1) >>> 0,
      mem16 = new Uint16Array(memory.buffer);
    for (let i = 0; i < len; ++i) mem16[(ptr >>> 1) + i] = value.charCodeAt(i);
    return ptr;
  }
  function __liftArray(liftElement, align, ptr) {
    if (!ptr) return null;
    const
      mem32 = new Uint32Array(memory.buffer),
      buf = mem32[ptr + 4 >>> 2],
      len = mem32[ptr + 12 >>> 2],
      res = new Array(len);
    for (let i = 0; i < len; ++i) res[i] = liftElement(buf + (i << align >>> 0));
    return res;
  }
  function __lowerArray(id, lowerElement, align, values) {
    if (values == null) return 0;
    const
      len = values.length,
      buf = exports.__pin(exports.__new(len << align, 0)) >>> 0,
      ptr = exports.__pin(exports.__new(16, id)) >>> 0,
      mem32 = new Uint32Array(memory.buffer);
    mem32[ptr + 0 >>> 2] = buf;
    mem32[ptr + 4 >>> 2] = buf;
    mem32[ptr + 8 >>> 2] = len << align;
    mem32[ptr + 12 >>> 2] = len;
    for (let i = 0; i < len; ++i) lowerElement(buf + (i << align >>> 0), values[i]);
    exports.__unpin(buf);
    exports.__unpin(ptr);
    return ptr;
  }
  function __liftTypedArray(Ctr, ptr) {
    if (!ptr) return null;
    const mem32 = new Uint32Array(memory.buffer);
    return new Ctr(
      memory.buffer,
      mem32[ptr + 4 >>> 2],
      mem32[ptr + 8 >>> 2] / Ctr.BYTES_PER_ELEMENT
    ).slice();
  }
  function __lowerTypedArray(id, Ctr, align, values) {
    if (values == null) return 0;
    const
      len = values.length,
      buf = exports.__pin(exports.__new(len << align, 0)) >>> 0,
      ptr = exports.__new(12, id) >>> 0,
      mem32 = new Uint32Array(memory.buffer);
    mem32[ptr + 0 >>> 2] = buf;
    mem32[ptr + 4 >>> 2] = buf;
    mem32[ptr + 8 >>> 2] = len << align;
    new Ctr(memory.buffer, buf, len).set(values);
    exports.__unpin(buf);
    return ptr;
  }
  function __liftStaticArray(liftElement, align, ptr) {
    if (!ptr) return null;
    const
      len = new Uint32Array(memory.buffer)[ptr - 4 >>> 2] >>> align,
      res = new Array(len);
    for (let i = 0; i < len; ++i) res[i] = liftElement(ptr + (i << align >>> 0));
    return res;
  }
  function __lowerStaticArray(id, lowerElement, align, values) {
    if (values == null) return 0;
    const
      len = values.length,
      buf = exports.__pin(exports.__new(len << align, id)) >>> 0;
    for (let i = 0; i < len; i++) lowerElement(buf + (i << align >>> 0), values[i]);
    exports.__unpin(buf);
    return buf;
  }
  function __liftSet(liftElement, byteSize, ptr) {
    if (!ptr) return null;
    const
      mem32 = new Uint32Array(memory.buffer),
      count = mem32[ptr + 16 >>> 2],
      entriesPtr = mem32[ptr + 8 >>> 2],
      tagOffset = Math.max(byteSize, 4),
      entryAlign = tagOffset - 1,
      entrySize = (byteSize + 4 + entryAlign) & ~entryAlign,
      res = new Set();
    for (let i = 0; i < count; ++i) {
      const
        entryPtr = entriesPtr + i * entrySize,
        tag = mem32[entryPtr + tagOffset >>> 2];
      if (!(tag & 1)) {
        res.add(liftElement(entryPtr >>> 0));
      }
    }
    return res;
  }
  const registry = new FinalizationRegistry(__release);
  class Internref extends Number {}
  function __liftInternref(ptr) {
    if (!ptr) return null;
    const sentinel = new Internref(__retain(ptr));
    registry.register(sentinel, ptr);
    return sentinel;
  }
  function __lowerInternref(value) {
    if (value == null) return 0;
    if (value instanceof Internref) return value.valueOf();
    throw TypeError("internref expected");
  }
  const refcounts = new Map();
  function __retain(ptr) {
    if (ptr) {
      const refs = refcounts.get(ptr);
      if (refs) refcounts.set(ptr, refs + 1);
      else refcounts.set(exports.__pin(ptr), 1);
    }
    return ptr;
  }
  function __release(ptr) {
    if (ptr) {
      const refs = refcounts.get(ptr);
      if (refs === 1) exports.__unpin(ptr), refcounts.delete(ptr);
      else if (refs) refcounts.set(ptr, refs - 1);
      else throw Error(`invalid refcount '${refs}' for reference '${ptr}'`);
    }
  }
  function __notnull() {
    throw TypeError("value must not be null");
  }
  exports._start();
  return adaptedExports;
}
export const {
  plainGlobal,
  plainMutableGlobal,
  stringGlobal,
  mutableStringGlobal,
  Enum,
  ConstEnum,
  plainFunction,
  plainFunction64,
  bufferFunction,
  stringFunction,
  stringFunctionOptional,
  typedarrayFunction,
  staticarrayFunction,
  arrayFunction,
  setU8Function,
  setI32Function,
  setF64Function,
  objectFunction,
  newInternref,
  internrefFunction
} = await (async url => instantiate(
  await (async () => {
    try { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)); }
    catch { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)); }
  })(), {
  }
))(new URL("esm.debug.wasm", import.meta.url));
