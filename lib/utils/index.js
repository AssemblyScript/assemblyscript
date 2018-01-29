function utils(module) {

  var i8,
      u8 = new Uint8Array(0),
      i16,
      u16,
      i32,
      u32,
      f32,
      f64;

  function maybeUpdate() {
    var mem = module.memory.buffer;
    if (mem.byteLength === u8.length)
      return;
    i8 = Int8Array(mem);
    u8 = Uint8Array(mem);
    i16 = Int16Array(mem);
    u16 = Uint16Array(mem);
    i32 = Int32Array(mem);
    u32 = Uint32Array(mem);
    f32 = Float32Array(mem);
    f64 = Float64Array(mem);
  }

  var helpers = {

    i8: function(ptr) {
      maybeUpdate();
      return i8[ptr];
    },

    u8: function(ptr) {
      maybeUpdate();
      return u8[ptr];
    },

    i16: function(ptr) {
      maybeUpdate();
      return i16[ptr >>> 1];
    },

    u16: function(ptr) {
      maybeUpdate();
      return u16[ptr >>> 1];
    },

    i32: function(ptr) {
      maybeUpdate();
      return i32[ptr >>> 2];
    },

    u32: function(ptr) {
      maybeUpdate();
      return u32[ptr >>> 2];
    },

    i64: function(ptr) {
      maybeUpdate();
      return {
        low: i32[ptr >>> 2],
        high: i32[(ptr >>> 2) + 1]
      };
    },

    u64: function(ptr) {
      maybeUpdate();
      return {
        low: u32[ptr >>> 2],
        high: u32[(ptr >>> 2) + 1]
      };
    },

    bool: function(ptr) {
      maybeUpdate();
      return u8[ptr] === 1;
    },

    f32: function(ptr) {
      maybeUpdate();
      return f32[ptr >>> 2];
    },

    f64: function(ptr) {
      maybeUpdate();
      return f64[ptr >>> 3];
    },

    string: function(ptr) {
      maybeUpdate();
      var len = u32[ptr >>> 2];
      var off = (ptr >>> 1) + 2;
      return String.fromCharCode.apply(String, u16.subarray(off, off + len));
    }
  };

  return helpers;
};

Object.defineProperties(module.exports = utils, {
  __esModule: { value: true },
  default: { value: utils }
});
