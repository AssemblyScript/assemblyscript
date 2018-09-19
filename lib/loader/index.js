"use strict";

const hasBigInt64 = typeof BigUint64Array !== "undefined";

/** Instantiates an AssemblyScript module using the specified imports. */
function instantiate(module, imports) {

  // Set up the imports object
  if (!imports) imports = {};
  if (!imports.env) imports.env = {};
  if (!imports.env.abort) imports.env.abort = function(mesg, file, line, colm) {
    mesg = mem ? getString(mesg) : "";
    file = mem ? getString(file) : "<instantiate>";
    throw Error("abort: " + mesg + " at " + file + ":" + line + ":" + colm);
  }

  // Instantiate the module and obtain its (flat) exports
  var instance = new WebAssembly.Instance(module, imports);
  var exports = instance.exports;
  var table = exports.table;
  var memory_allocate = exports["memory.allocate"];
  var memory_fill = exports["memory.fill"];
  var memory_free = exports["memory.free"];

  // Provide views for all sorts of basic values
  var mem, I8, U8, I16, U16, I32, U32, F32, F64, I64, U64;

  /** Updates memory views if memory has grown meanwhile. */
  function checkMem() {
    // see: https://github.com/WebAssembly/design/issues/1210
    if (mem !== exports.memory.buffer) {
      mem = exports.memory.buffer;
      I8  = new Int8Array(mem);
      U8  = new Uint8Array(mem);
      I16 = new Int16Array(mem);
      U16 = new Uint16Array(mem);
      I32 = new Int32Array(mem);
      U32 = new Uint32Array(mem);
      if (hasBigInt64) {
        I64 = new BigInt64Array(mem);
        U64 = new BigUint64Array(mem);
      }
      F32 = new Float32Array(mem);
      F64 = new Float64Array(mem);
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

  /** Gets a string from the module's memory by its pointer. */
  function getString(ptr) {
    checkMem();
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

  /** Frees a string in the module's memory by its pointer. */
  function freeString(ptr) {
    memory_free(ptr);
  }

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
      new ctor(mem, buf + 8, length).set(view);
      if (view.length < length && !unsafe) {
        let setLength = elementSize * view.length;
        memory_fill(buf + 8 + setLength, 0, byteLength - setLength);
      }
    } else if (!unsafe) {
      memory_fill(buf + 8, 0, byteLength);
    }
    return ptr;
  }

  /** Gets a view on a typed array in the module's memory by its pointer. */
  function getArray(ctor, ptr) {
    var elementSize = ctor.BYTES_PER_ELEMENT;
    if (!elementSize) throw Error("not a typed array");
    checkMem();
    var buf        = U32[ ptr      >>> 2];
    var byteOffset = U32[(ptr + 4) >>> 2];
    var byteLength = U32[(ptr + 8) >>> 2];
    return new ctor(mem, buf + 8 + byteOffset, (byteLength - byteOffset) / elementSize);
  }

  /** Frees a typed array in the module's memory. Must not be accessed anymore afterwards. */
  function freeArray(ptr) {
    checkMem();
    var buf = U32[ptr >>> 2];
    memory_free(buf);
    memory_free(ptr);
  }

  /** Gets a function from the module's memory by its pointer. Precising the nbArg will do a check. */
  function getFunction(ptr, nbArg) {
    var f = table.get(ptr);
    if (nbArg !== undefined && f.length !== nbArg)
      throw new Error("Unexpected number of arguments, expected " + nbArg + ", got " + f.length);
    return f;
  }

  // Demangle exports and provide the usual utility on the prototype
  return demangle(exports, {
    get I8() { checkMem(); return I8; },
    get U8() { checkMem(); return U8; },
    get I16() { checkMem(); return I16; },
    get U16() { checkMem(); return U16; },
    get I32() { checkMem(); return I32; },
    get U32() { checkMem(); return U32; },
    get I64() { checkMem(); return I64; },
    get U64() { checkMem(); return U64; },
    get F32() { checkMem(); return F32; },
    get F64() { checkMem(); return F64; },
    newString,
    getString,
    freeString,
    newArray,
    getArray,
    freeArray,
    getFunction
  });
}

exports.instantiate = instantiate;

/** Instantiates an AssemblyScript module from a buffer using the specified imports. */
function instantiateBuffer(buffer, imports) {
  var module = new WebAssembly.Module(buffer);
  return instantiate(module, imports);
}

exports.instantiateBuffer = instantiateBuffer;

/** Instantiates an AssemblyScript module from a response using the specified imports. */
async function instantiateStreaming(response, imports) {
  var module = await WebAssembly.compileStreaming(response);
  return instantiate(module, imports);
}

exports.instantiateStreaming = instantiateStreaming;

/** Demangles an AssemblyScript module's exports to a friendly object structure. */
function demangle(exports, baseModule) {
  var module = baseModule ? Object.create(baseModule) : {};
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
          return ctor.wrap(ctor.prototype.constructor(...args));
        };
        ctor.prototype = {};
        ctor.wrap = function(thisValue) {
          return Object.create(ctor.prototype, { "this": { value: thisValue, writable: false } });
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
            get: function() { return getter(this.this); },
            set: function(value) { setter(this.this, value); },
            enumerable: true
          });
        }
      } else curr[name] = function(...args) { return elem(this.this, ...args); };
    } else {
      if (/^(get|set):/.test(name)) {
        if (!hasOwnProperty(curr, name = name.substring(4))) {
          Object.defineProperty(curr, name, {
            get: exports[internalName.replace("set:", "get:")],
            set: exports[internalName.replace("get:", "set:")],
            enumerable: true
          });
        }
      } else curr[name] = elem;
    }
  }
  return module;
}

exports.demangle = demangle;
