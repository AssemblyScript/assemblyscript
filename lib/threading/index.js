(function webpackUniversalModuleDefinition(root, factory) {
	if(typeof exports === 'object' && typeof module === 'object')
		module.exports = factory();
	else if(typeof define === 'function' && define.amd)
		define([], factory);
	else if(typeof exports === 'object')
		exports["thread"] = factory();
	else
		root["thread"] = factory();
})(typeof self !== 'undefined' ? self : this, function() {
return /******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 0);
/******/ })
/************************************************************************/
/******/ ({

/***/ "../loader/index.js":
/*!**************************!*\
  !*** ../loader/index.js ***!
  \**************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


const hasBigInt64 = typeof BigUint64Array !== "undefined";

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
      } else {
        curr[name] = wrapFunction(elem, setargc);
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


/***/ }),

/***/ "./src/index.ts":
/*!**********************!*\
  !*** ./src/index.ts ***!
  \**********************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

Object.defineProperty(exports, "__esModule", { value: true });
const loader = __webpack_require__(/*! ../../loader */ "../loader/index.js");
/** Cached compiled parser. */
var compiled = null;
async function fork(parent, worker) {
    let newWorker = new Worker("./webworker.js");
    newWorker.postMessage({ command: "fork", memory: parent.memory, worker });
    return newWorker;
}
let notify = Atomics.wake;
class Thread {
    constructor(address, wasm) {
        this.address = address;
        this.wasm = wasm;
        Thread.thread = this;
    }
    static async create(address, memory = Thread.defaultMemory) {
        let buf = await fetch(address);
        let wasm = await WebAssembly.compile(await buf.arrayBuffer());
        let thread = new Thread(address, wasm);
        thread.instance = await thread.load(memory, wasm);
        return thread;
    }
    static defaultMemory() {
        return new WebAssembly.Memory({
            initial: 256,
            shared: true,
            maximum: 256
        });
    }
    fork(worker) {
        let newWorker = new Worker("./webworker.js");
        let address = this.address;
        let lastdot = address.lastIndexOf(".");
        address = address.slice(0, lastdot) + ".wasm";
        newWorker.postMessage({ command: "fork", address: address, memory: this.memory, worker });
        return newWorker;
    }
    async load(memory, mod) {
        var wasm;
        let instance;
        if (typeof mod === "string") {
            let buf = await fetch(mod);
            wasm = await WebAssembly.compile(await buf.arrayBuffer());
        }
        else {
            wasm = mod;
        }
        // var w = new Worker('worker.js'); // Standard API
        var imports = {
            env: { memory },
            index: {
                log_str: (x) => { return console.log(instance.getString(x)); },
                fork: (worker) => {
                    console.log(`Worker is located at ${worker >> 2}`);
                    return this.fork(worker);
                },
                log: (type, x) => console.log(x),
                wait: (ptr, value, timeout) => {
                    if (timeout === -1) {
                        timeout = Infinity;
                    }
                    console.log(`About to wait on location: ${ptr >> 2}`);
                    let res = Atomics.wait(instance.I32, ptr >> 2, value, timeout);
                    console.log(`Woken waiting on ${ptr / 4} with result: ${res}`);
                },
                notify: (ptr, numAgents) => { return notify(instance.I32, ptr >> 2, numAgents); },
                print: console.log,
                printMemory: (start = 0) => console.log(instance.I32.slice(start)),
                debug: () => { let x = 1; debugger; },
                loc: (x) => {
                    console.log("getting location: " + x);
                    return x;
                }
            }
        };
        instance = await loader.instantiate(wasm, imports);
        return instance;
    }
    start() {
        this.instance.myStart();
    }
    startChild(id) {
        this.id = id;
        this.instance.startChild(id);
    }
    static onMessageReceived(e) {
        try {
            const data = e.data;
            debugger;
            switch (data.command) {
                case "start": {
                    (async (address) => {
                        let thread = await Thread.create(address);
                        thread.start();
                        debugger;
                    })(data.address);
                    break;
                }
                case "fork": {
                    (async function (address, memory, worker) {
                        debugger;
                        let thread = await Thread.create(address, memory);
                        thread.startChild(worker);
                    })(data.address, data.memory, data.worker);
                    break;
                }
            }
        }
        catch (e) {
            console.log(e);
        }
    }
    get memory() {
        return this.instance.memory;
    }
}
exports.default = Thread;
addEventListener("message", Thread.onMessageReceived, false);


/***/ }),

/***/ 0:
/*!****************************!*\
  !*** multi ./src/index.ts ***!
  \****************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! ./src/index.ts */"./src/index.ts");


/***/ })

/******/ });
});
//# sourceMappingURL=index.js.map