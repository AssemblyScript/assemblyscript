async function instantiate(module, imports = {}) {
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
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
    isString: {
      // bindings/noExportRuntime/isString: ~lib/string/String
      valueOf() { return this.value; },
      get value() {
        return __liftString(exports.isString.value >>> 0);
      }
    },
    returnsString() {
      // bindings/noExportRuntime/returnsString() => ~lib/string/String
      return __liftString(exports.returnsString() >>> 0);
    },
    isBuffer: {
      // bindings/noExportRuntime/isBuffer: ~lib/arraybuffer/ArrayBuffer
      valueOf() { return this.value; },
      get value() {
        return __liftBuffer(exports.isBuffer.value >>> 0);
      }
    },
    returnsBuffer() {
      // bindings/noExportRuntime/returnsBuffer() => ~lib/arraybuffer/ArrayBuffer
      return __liftBuffer(exports.returnsBuffer() >>> 0);
    },
    isTypedArray: {
      // bindings/noExportRuntime/isTypedArray: ~lib/typedarray/Int32Array
      valueOf() { return this.value; },
      get value() {
        return __liftTypedArray(Int32Array, exports.isTypedArray.value >>> 0);
      }
    },
    returnsTypedArray() {
      // bindings/noExportRuntime/returnsTypedArray() => ~lib/typedarray/Int32Array
      return __liftTypedArray(Int32Array, exports.returnsTypedArray() >>> 0);
    },
    isArrayOfBasic: {
      // bindings/noExportRuntime/isArrayOfBasic: ~lib/array/Array<i32>
      valueOf() { return this.value; },
      get value() {
        return __liftArray(__getI32, 2, exports.isArrayOfBasic.value >>> 0);
      }
    },
    returnsArrayOfBasic() {
      // bindings/noExportRuntime/returnsArrayOfBasic() => ~lib/array/Array<i32>
      return __liftArray(__getI32, 2, exports.returnsArrayOfBasic() >>> 0);
    },
    isArrayOfArray: {
      // bindings/noExportRuntime/isArrayOfArray: ~lib/array/Array<~lib/array/Array<i32>>
      valueOf() { return this.value; },
      get value() {
        return __liftArray(pointer => __liftArray(__getI32, 2, __getU32(pointer)), 2, exports.isArrayOfArray.value >>> 0);
      }
    },
    returnsArrayOfArray() {
      // bindings/noExportRuntime/returnsArrayOfArray() => ~lib/array/Array<~lib/array/Array<i32>>
      return __liftArray(pointer => __liftArray(__getI32, 2, __getU32(pointer)), 2, exports.returnsArrayOfArray() >>> 0);
    },
    takesNonPlainObject(obj) {
      // bindings/noExportRuntime/takesNonPlainObject(bindings/noExportRuntime/NonPlainObject) => void
      obj = __lowerInternref(obj) || __notnull();
      exports.takesNonPlainObject(obj);
    },
    takesFunction(fn) {
      // bindings/noExportRuntime/takesFunction(() => void) => void
      fn = __lowerInternref(fn) || __notnull();
      exports.takesFunction(fn);
    },
  }, exports);
  function __liftBuffer(pointer) {
    if (!pointer) return null;
    return memory.buffer.slice(pointer, pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2]);
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
  function __liftArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const
      dataStart = __getU32(pointer + 4),
      length = __dataview.getUint32(pointer + 12, true),
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(dataStart + (i << align >>> 0));
    return values;
  }
  function __liftTypedArray(constructor, pointer) {
    if (!pointer) return null;
    return new constructor(
      memory.buffer,
      __getU32(pointer + 4),
      __dataview.getUint32(pointer + 8, true) / constructor.BYTES_PER_ELEMENT
    ).slice();
  }
  class Internref extends Number {}
  function __lowerInternref(value) {
    if (value == null) return 0;
    if (value instanceof Internref) return value.valueOf();
    throw TypeError("internref expected");
  }
  function __notnull() {
    throw TypeError("value must not be null");
  }
  let __dataview = new DataView(memory.buffer);
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
  exports._start();
  return adaptedExports;
}
export const {
  memory,
  isBasic,
  takesReturnsBasic,
  isString,
  returnsString,
  isBuffer,
  returnsBuffer,
  isTypedArray,
  returnsTypedArray,
  isArrayOfBasic,
  returnsArrayOfBasic,
  isArrayOfArray,
  returnsArrayOfArray,
  takesNonPlainObject,
  takesFunction,
} = await (async url => instantiate(
  await (async () => {
    const isNodeOrBun = typeof process != "undefined" && process.versions != null && (process.versions.node != null || process.versions.bun != null);
    if (isNodeOrBun) { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)); }
    else { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)); }
  })(), {
  }
))(new URL("noExportRuntime.debug.wasm", import.meta.url));
