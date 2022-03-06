/** @module std/portable *//***/

var globalScope = typeof window !== "undefined" && window || typeof global !== "undefined" && global || self;
if (typeof globalScope.ASC_TARGET === "undefined") {

  globalScope.ASC_TARGET = 0; // Target.JS
  globalScope.ASC_RUNTIME = 0; // Runtime.Stub
  globalScope.ASC_NO_ASSERT = false;
  globalScope.ASC_MEMORY_BASE = 0;
  globalScope.ASC_OPTIMIZE_LEVEL = 3;
  globalScope.ASC_SHRINK_LEVEL = 0;
  globalScope.ASC_FEATURE_MUTABLE_GLOBAL = false;
  globalScope.ASC_FEATURE_SIGN_EXTENSION = false;
  globalScope.ASC_FEATURE_BULK_MEMORY = false;
  globalScope.ASC_FEATURE_SIMD = false;
  globalScope.ASC_FEATURE_THREADS = false;

  var F64 = new Float64Array(1);
  var U64 = new Uint32Array(F64.buffer);

  Object.defineProperties(
    globalScope["i8"] = function i8(value) { return value << 24 >> 24; },
    {
      "MIN_VALUE": { value: -128 },
      "MAX_VALUE": { value:  127 }
    }
  );

  Object.defineProperties(
    globalScope["i16"] = function i16(value) { return value << 16 >> 16; },
    {
      "MIN_VALUE": { value: -32768 },
      "MAX_VALUE": { value:  32767 }
    }
  );

  Object.defineProperties(
    globalScope["i32"] = globalScope["isize"] = function i32(value) { return value | 0; },
    {
      "MIN_VALUE": { value: -2147483648 },
      "MAX_VALUE": { value:  2147483647 }
    }
  );

  Object.defineProperties(
    globalScope["u8"] = function u8(value) { return value & 0xff; },
    {
      "MIN_VALUE": { value:   0 },
      "MAX_VALUE": { value: 255 }
    }
  );

  Object.defineProperties(
    globalScope["u16"] = function u16(value) { return value & 0xffff; },
    {
      "MIN_VALUE": { value:     0 },
      "MAX_VALUE": { value: 65535 }
    }
  );

  Object.defineProperties(
    globalScope["u32"] = globalScope["usize"] = function u32(value) { return value >>> 0; },
    {
      "MIN_VALUE": { value:          0 },
      "MAX_VALUE": { value: 4294967295 }
    }
  );

  Object.defineProperties(
    globalScope["bool"] = function bool(value) { return !!value; },
    {
      "MIN_VALUE": { value: false },
      "MAX_VALUE": { value: true }
    }
  );

  Object.defineProperties(
    globalScope["f32"] = function f32(value) { return Math.fround(value); },
    {
      "EPSILON":   { value: 1.1920928955078125e-07 },
      "MIN_VALUE": { value: 1.401298464324817e-45 },
      "MAX_VALUE": { value: 3.4028234663852886e+38 },
      "MIN_NORMAL_VALUE":  { value:  1.1754943508222875e-38 },
      "MIN_SAFE_INTEGER":  { value: -16777215 },
      "MAX_SAFE_INTEGER":  { value:  16777215 },
      "POSITIVE_INFINITY": { value:  Infinity },
      "NEGATIVE_INFINITY": { value: -Infinity },
      "NaN": { value: NaN }
    }
  );

  Object.defineProperties(
    globalScope["f64"] = function f64(value) { return +value; },
    {
      "EPSILON":   { value: 2.2204460492503131e-016 },
      "MIN_VALUE": { value:                  5e-324 },
      "MAX_VALUE": { value: 1.7976931348623157e+308 },
      "MIN_NORMAL_VALUE":  { value:  2.2250738585072014e-308 },
      "MIN_SAFE_INTEGER":  { value: -9007199254740991 },
      "MAX_SAFE_INTEGER":  { value:  9007199254740991 },
      "POSITIVE_INFINITY": { value:  Infinity },
      "NEGATIVE_INFINITY": { value: -Infinity },
      "NaN": { value: NaN }
    }
  );

  globalScope["clz"] = Math.clz32;

  globalScope["ctz"] = function ctz(value) {
    return 32 - Math.clz32(~value & (value - 1));
  };

  globalScope["popcnt"] = function popcnt(value) {
    value -= value >>> 1 & 0x55555555;
    value = (value & 0x33333333) + (value >>> 2 & 0x33333333);
    return (((value + (value >>> 4)) & 0x0F0F0F0F) * 0x01010101) >>> 24;
  };

  globalScope["rotl"] = function rotl(value, shift) {
    shift &= 31;
    return (value << shift) | (value >>> (32 - shift));
  };

  globalScope["rotr"] = function rotr(value, shift) {
    shift &= 31;
    return (value >>> shift) | (value << (32 - shift));
  };

  globalScope["abs"] = Math.abs;

  globalScope["max"] = Math.max;

  globalScope["min"] = Math.min;

  globalScope["ceil"] = Math.ceil;

  globalScope["floor"] = Math.floor;

  globalScope["nearest"] = function nearest(value) {
    const INV_EPS64 = 4503599627370496.0;
    const y = Math.abs(value);
    return y < INV_EPS64
      ? Math.abs(y + INV_EPS64 - INV_EPS64) * Math.sign(value)
      : value;
  };

  globalScope["select"] = function select(ifTrue, ifFalse, condition) {
    return condition ? ifTrue : ifFalse;
  };

  globalScope["sqrt"] = Math.sqrt;

  globalScope["trunc"] = Math.trunc;

  globalScope["copysign"] = function copysign(x, y) {
    return Math.abs(x) * Math.sign(y);
  };

  globalScope["bswap"] = function bswap(value) {
    var a = value >> 8 & 0x00FF00FF;
    var b = (value & 0x00FF00FF) << 8;
    value = a | b;
    a = value >> 16 & 0x0000FFFF;
    b = (value & 0x0000FFFF) << 16;
    return a | b;
  };

  globalScope["bswap16"] = function bswap16(value) {
    return ((value << 8) & 0xFF00) | ((value >> 8) & 0x00FF) | (value & 0xFFFF0000);
  };

  function UnreachableError() {
    if (Error.captureStackTrace) {
      Error.captureStackTrace(this, UnreachableError);
    } else {
      this.stack = this.name + ": " + this.message + "\n" + new Error().stack;
    }
  }
  UnreachableError.prototype = Object.create(Error.prototype);
  UnreachableError.prototype.name = "UnreachableError";
  UnreachableError.prototype.message = "unreachable";

  globalScope["unreachable"] = function unreachable() {
    throw new UnreachableError();
  };

  function AssertionError(message) {
    this.message = message || "assertion failed";
    if (Error.captureStackTrace) {
      Error.captureStackTrace(this, AssertionError);
    } else {
      this.stack = this.name + ": " + this.message + "\n" + new Error().stack;
    }
  }
  AssertionError.prototype = Object.create(Error.prototype);
  AssertionError.prototype.name = "AssertionError";

  globalScope["assert"] = function assert(isTrueish, message) {
    if (isTrueish) return isTrueish;
    throw new AssertionError(message);
  };

  globalScope["changetype"] = function changetype(value) {
    return value;
  };

  String["fromCharCodes"] = function fromCharCodes(arr) {
    const CHUNKSIZE = 1 << 13;
    const len = arr.length;
    if (len <= CHUNKSIZE) {
      return String.fromCharCode.apply(String, arr);
    }
    let index = 0;
    let parts = '';
    while (index < len) {
      parts += String.fromCharCode.apply(
        String,
        arr.slice(index, Math.min(index + CHUNKSIZE, len))
      );
      index += CHUNKSIZE;
    }
    return parts;
  };

  String["fromCodePoints"] = function fromCodePoints(arr) {
    const CHUNKSIZE = 1 << 13;
    const len = arr.length;
    if (len <= CHUNKSIZE) {
      return String.fromCodePoint.apply(String, arr);
    }
    let index = 0;
    let parts = '';
    while (index < len) {
      parts += String.fromCodePoint.apply(
        String,
        arr.slice(index, Math.min(index + CHUNKSIZE, len))
      );
      index += CHUNKSIZE;
    }
    return parts;
  };

  if (!String.prototype.at) {
    Object.defineProperty(String.prototype, "at", {
      value: function at(index) {
        return this.charAt(index >= 0 ? index : index + this.length);
      },
      configurable: true
    });
  }

  if (!String.prototype.replaceAll) {
    Object.defineProperty(String.prototype, "replaceAll", {
      value: function replaceAll(search, replacment) {
        var res = this.split(search).join(replacment);
        if (!search.length) res = replacment + res + replacment;
        return res;
      },
      configurable: true
    });
  }

  function defaultComparator(a, b) {
    if (a == b) {
      if (a != 0) return 0;
      a = 1 / a, b = 1 / b;
    } else {
      var nanA = a != a, nanB = b != b;
      if (nanA | nanB) return nanA - nanB;
      if (a == null) a = String(a);
      if (b == null) b = String(b);
    }
    return a > b ? 1 : -1;
  }

  const arraySort = Array.prototype.sort;
  Array.prototype.sort = function sort(comparator) {
    return arraySort.call(this, comparator || defaultComparator);
  };

  [ Array,
    Uint8ClampedArray,
    Uint8Array, Int8Array,
    Uint16Array, Int16Array,
    Uint32Array, Int32Array,
    Float32Array, Float64Array
  ].forEach(Ctr => {
    if (!Ctr.prototype.at) {
      Object.defineProperty(Ctr.prototype, "at", {
        value: function at(index) {
          return this[index >= 0 ? index : index + this.length];
        },
        configurable: true
      });
    }

    if (!Ctr.prototype.findLastIndex) {
      Object.defineProperty(Ctr.prototype, "findLastIndex", {
        value: function findLastIndex(fn) {
          for (let i = this.length - 1; i >= 0; --i) {
            if (fn(this[i], i, this)) return i;
          }
          return -1;
        },
        configurable: true
      });
    }

    if (Ctr != Array) {
      Object.defineProperty(Ctr, "wrap", {
        value: function wrap(buffer, byteOffset, length) {
          return new Ctr(buffer, byteOffset, length);
        },
        configurable: true
      });
    }
  });

  globalScope["isInteger"] = Number.isInteger;

  globalScope["isFloat"] = function isFloat(arg) {
    return typeof arg === "number";
  };

  globalScope["isNullable"] = function isNullable(arg) {
    return true;
  };

  globalScope["isReference"] = function isReference(arg) {
    return typeof arg === "object" || typeof arg === "string";
  };

  globalScope["isFunction"] = function isFunction(arg) {
    return typeof arg === "function";
  };

  globalScope["isString"] = function isString(arg) {
    return typeof arg === "string" || arg instanceof String;
  };

  globalScope["isArray"] = Array.isArray;
  globalScope["isArrayLike"] = function isArrayLike(expr) {
    return expr
      && typeof expr === 'object'
      && typeof expr.length === 'number'
      && expr.length >= 0
      && Math.trunc(expr.length) === expr.length;
  };

  globalScope["isDefined"] = function isDefined(expr) {
    return typeof expr !== "undefined";
  };

  globalScope["isConstant"] = function isConstant(expr) {
    return false;
  };

  globalScope["unchecked"] = function unchecked(expr) {
    return expr;
  };

  globalScope["fmod"] = function fmod(x, y) {
    return x % y;
  };

  globalScope["fmodf"] = function fmodf(x, y) {
    return Math.fround(x % y);
  };

  globalScope["JSMath"] = Math;

  Object.defineProperties(globalScope["JSMath"], {
    sincos_sin: { value: 0.0, writable: true },
    sincos_cos: { value: 0.0, writable: true },
    signbit: {
      value: function signbit(x) {
        F64[0] = x; return Boolean(U64[1] >>> 31);
      }
    },
    sincos: {
      value: function sincos(x) {
        this.sincos_sin = Math.sin(x);
        this.sincos_cos = Math.cos(x);
      }
    },
    exp2: {
      value: function exp2(x) {
        return Math.pow(2, x);
      }
    }
  });

  globalScope["unmanaged"] = function() { /* nop */ };

  globalScope["trace"] = function(message, n) {
    if (n) message += Array.prototype.slice.call(arguments, 2, 2 + n);
    console.error("trace: " + message);
  };
} else {
  console.warn("compiler mismatch: std/portable included twice");
}
