"use strict";

const hasBigInt64 = typeof BigUint64Array !== "undefined";
const thisPtr = Symbol();

/** Gets a string from an U32 and an U16 view on a memory. */
function getStringImpl(U32, U16, ptr) {
  var dataLength = U32[ptr >>> 2];
  var dataOffset = (ptr + 4) >>> 1;
  var dataRemain = dataLength;
  var parts = [];
  const chunkSize = 1024;
  while (dataRemain > chunkSize) {
    let last = U16[dataOffset + chunkSize - 1];
    let size = last >= 0xD800 && last < 0xDC00 ? chunkSize - 1 : chunkSize;
    let part = U16.subarray(dataOffset, dataOffset += size);
    parts.push(String.fromCharCode.apply(String, part));
    dataRemain -= size;
  }
  return parts.join("") + String.fromCharCode.apply(String, U16.subarray(dataOffset, dataOffset + dataRemain));
}

/** Prepares the base module prior to instantiation. */
function preInstantiate(imports) {
  var baseModule = {};

  function getString(memory, ptr) {
    if (!memory) return "<yet unknown>";
    var buffer = memory.buffer;
    return getStringImpl(new Uint32Array(buffer), new Uint16Array(buffer), ptr);
  }

  // add common imports used by stdlib for convenience
  var env = (imports.env = imports.env || {});
  env.abort = env.abort || function abort(mesg, file, line, colm) {
    var memory = baseModule.memory || env.memory; // prefer exported, otherwise try imported
    throw Error("abort: " + getString(memory, mesg) + " at " + getString(memory, file) + ":" + line + ":" + colm);
  }
  env.trace = env.trace || function trace(mesg, n) {
    var memory = baseModule.memory || env.memory;
    console.log("trace: " + getString(memory, mesg) + (n ? " " : "") + Array.prototype.slice.call(arguments, 2, 2 + n).join(", "));
  }
  imports.Math = imports.Math || Math;
  imports.Date = imports.Date || Date;

  return baseModule;
}

/** Prepares the final module once instantiation is complete. */
function postInstantiate(baseModule, instance) {
  var rawExports = instance.exports;
  var memory = rawExports.memory;
  var memory_allocate = rawExports["memory.allocate"];
  var memory_fill = rawExports["memory.fill"];
  var memory_free = rawExports["memory.free"];
  var table = rawExports.table;
  var setargc = rawExports._setargc || function() {};

  // Provide views for all sorts of basic values
  var buffer, I8, U8, I16, U16, I32, U32, F32, F64, I64, U64;

  /** Updates memory views if memory has grown meanwhile. */
  function checkMem() {
    // see: https://github.com/WebAssembly/design/issues/1210
    if (buffer !== memory.buffer) {
      buffer = memory.buffer;
      I8  = new Int8Array(buffer);
      U8  = new Uint8Array(buffer);
      I16 = new Int16Array(buffer);
      U16 = new Uint16Array(buffer);
      I32 = new Int32Array(buffer);
      U32 = new Uint32Array(buffer);
      if (hasBigInt64) {
        I64 = new BigInt64Array(buffer);
        U64 = new BigUint64Array(buffer);
      }
      F32 = new Float32Array(buffer);
      F64 = new Float64Array(buffer);
    }
  }
  checkMem();

  /** Allocates a new string in the module's memory and returns its pointer. */
  function newString(str) {
    var dataLength = str.length;
    var ptr = memory_allocate(4 + (dataLength << 1));
    var dataOffset = (4 + ptr) >>> 1;
    checkMem();
    U32[ptr >>> 2] = dataLength;
    for (let i = 0; i < dataLength; ++i) U16[dataOffset + i] = str.charCodeAt(i);
    return ptr;
  }

  baseModule.newString = newString;

  /** Gets a string from the module's memory by its pointer. */
  function getString(ptr) {
    checkMem();
    return getStringImpl(U32, U16, ptr);
  }

  baseModule.getString = getString;

  function computeBufferSize(byteLength) {
    const HEADER_SIZE = 8;
    return 1 << (32 - Math.clz32(byteLength + HEADER_SIZE - 1));
  }

  /** Creates a new typed array in the module's memory and returns its pointer. */
  function newArray(view, length, unsafe) {
    var ctor = view.constructor;
    if (ctor === Function) { // TypedArray constructor created in memory
      ctor = view;
      view = null;
    } else { // TypedArray instance copied into memory
      if (length === undefined) length = view.length;
    }
    var elementSize = ctor.BYTES_PER_ELEMENT;
    if (!elementSize) throw Error("not a typed array");
    var byteLength = elementSize * length;
    var ptr = memory_allocate(12); // TypedArray header
    var buf = memory_allocate(computeBufferSize(byteLength)); // ArrayBuffer
    checkMem();
    U32[ ptr      >>> 2] = buf;        // .buffer
    U32[(ptr + 4) >>> 2] = 0;          // .byteOffset
    U32[(ptr + 8) >>> 2] = byteLength; // .byteLength
    U32[ buf      >>> 2] = byteLength; // .byteLength
    U32[(buf + 4) >>> 2] = 0;          // 0
    if (view) {
      new ctor(buffer, buf + 8, length).set(view);
      if (view.length < length && !unsafe) {
        let setLength = elementSize * view.length;
        memory_fill(buf + 8 + setLength, 0, byteLength - setLength);
      }
    } else if (!unsafe) {
      memory_fill(buf + 8, 0, byteLength);
    }
    return ptr;
  }

  baseModule.newArray = newArray;

  /** Gets a view on a typed array in the module's memory by its pointer. */
  function getArray(ctor, ptr) {
    var elementSize = ctor.BYTES_PER_ELEMENT;
    if (!elementSize) throw Error("not a typed array");
    checkMem();
    var buf        = U32[ ptr      >>> 2];
    var byteOffset = U32[(ptr + 4) >>> 2];
    var byteLength = U32[(ptr + 8) >>> 2];
    return new ctor(buffer, buf + 8 + byteOffset, (byteLength - byteOffset) / elementSize);
  }

  baseModule.getArray = getArray;

  /** Frees a typed array in the module's memory. Must not be accessed anymore afterwards. */
  function freeArray(ptr) {
    checkMem();
    var buf = U32[ptr >>> 2];
    memory_free(buf);
    memory_free(ptr);
  }

  baseModule.freeArray = freeArray;

  /**
   * Creates a new function in the module's table and returns its pointer. Note that only actual
   * WebAssembly functions, i.e. as exported by the module, are supported.
   */
  function newFunction(fn) {
    if (typeof fn.original === "function") fn = fn.original;
    var index = table.length;
    table.grow(1);
    table.set(index, fn);
    return index;
  }

  baseModule.newFunction = newFunction;

  /** Gets a function by its pointer. */
  function getFunction(ptr) {
    return wrapFunction(table.get(ptr), setargc);
  }

  baseModule.getFunction = getFunction;

  // Pull basic exports to baseModule so code in preInstantiate can use them
  baseModule.memory = baseModule.memory || memory;
  baseModule.table = baseModule.table || table;

  // Demangle exports and provide the usual utility on the prototype
  return demangle(rawExports, Object.defineProperties(baseModule, {
    I8: { get: function() { checkMem(); return I8; } },
    U8: { get: function() { checkMem(); return U8; } },
    I16: { get: function() { checkMem(); return I16; } },
    U16: { get: function() { checkMem(); return U16; } },
    I32: { get: function() { checkMem(); return I32; } },
    U32: { get: function() { checkMem(); return U32; } },
    I64: { get: function() { checkMem(); return I64; } },
    U64: { get: function() { checkMem(); return U64; } },
    F32: { get: function() { checkMem(); return F32; } },
    F64: { get: function() { checkMem(); return F64; } }
  }));
}

/** Wraps a WebAssembly function while also taking care of variable arguments. */
function wrapFunction(fn, setargc) {
  var wrap = (...args) => {
    setargc(args.length);
    return fn(...args);
  }
  // adding a function to the table with `newFunction` is limited to actual WebAssembly functions,
  // hence we can't use the wrapper and instead need to provide a reference to the original
  wrap.original = fn;
  return wrap;
}

/** Instantiates an AssemblyScript module using the specified imports. */
function instantiate(module, imports) {
  return postInstantiate(
    preInstantiate(imports || (imports = {})),
    new WebAssembly.Instance(module, imports)
  );
}

exports.instantiate = instantiate;

/** Instantiates an AssemblyScript module from a buffer using the specified imports. */
function instantiateBuffer(buffer, imports) {
  return instantiate(new WebAssembly.Module(buffer), imports);
}

exports.instantiateBuffer = instantiateBuffer;

/** Instantiates an AssemblyScript module from a response using the specified imports. */
async function instantiateStreaming(response, imports) {
  return postInstantiate(
    preInstantiate(imports || (imports = {})),
    (await WebAssembly.instantiateStreaming(response, imports)).instance
  );
}

exports.instantiateStreaming = instantiateStreaming;

/** Demangles an AssemblyScript module's exports to a friendly object structure. */
function demangle(exports, baseModule) {
  var module = baseModule ? Object.create(baseModule) : {};
  var setargc = exports._setargc || function() {};
  function hasOwnProperty(elem, prop) {
    return Object.prototype.hasOwnProperty.call(elem, prop);
  }
  for (let internalName in exports) {
    if (!hasOwnProperty(exports, internalName)) continue;
    let elem = exports[internalName];
    let parts = internalName.split(".");
    let curr = module;
    while (parts.length > 1) {
      let part = parts.shift();
      if (!hasOwnProperty(curr, part)) curr[part] = {};
      curr = curr[part];
    }
    let name = parts[0];
    let hash = name.indexOf("#");
    if (hash >= 0) {
      let className = name.substring(0, hash);
      let classElem = curr[className];
      if (typeof classElem === "undefined" || !classElem.prototype) {
        let ctor = function(...args) {
          return ctor.wrap(ctor.prototype.constructor(0, ...args));
        };
        ctor.prototype = {};
        ctor.wrap = function(thisValue) {
          return Object.create(ctor.prototype, { [thisPtr]: { value: thisValue, writable: false } });
        };
        if (classElem) Object.getOwnPropertyNames(classElem).forEach(name =>
          Object.defineProperty(ctor, name, Object.getOwnPropertyDescriptor(classElem, name))
        );
        curr[className] = ctor;
      }
      name = name.substring(hash + 1);
      curr = curr[className].prototype;
      if (/^(get|set):/.test(name)) {
        if (!hasOwnProperty(curr, name = name.substring(4))) {
          let getter = exports[internalName.replace("set:", "get:")];
          let setter = exports[internalName.replace("get:", "set:")];
          Object.defineProperty(curr, name, {
            get: function() { return getter(this[thisPtr]); },
            set: function(value) { setter(this[thisPtr], value); },
            enumerable: true
          });
        }
      } else {
        if (name === 'constructor') {
          curr[name] = wrapFunction(elem, setargc);
        } else { // for methods
          Object.defineProperty(curr, name, {
            value: function (...args) {
              setargc(args.length);
              return elem(this[thisPtr], ...args);
            }
          });
        }
      }
    } else {
      if (/^(get|set):/.test(name)) {
        if (!hasOwnProperty(curr, name = name.substring(4))) {
          Object.defineProperty(curr, name, {
            get: exports[internalName.replace("set:", "get:")],
            set: exports[internalName.replace("get:", "set:")],
            enumerable: true
          });
        }
      } else if (typeof elem === "function") {
        curr[name] = wrapFunction(elem, setargc);
      } else {
        curr[name] = elem;
      }
    }
  }

  return module;
}

exports.demangle = demangle;
