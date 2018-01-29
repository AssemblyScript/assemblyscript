module.exports = function(module) {
  return {
    getI32: function(ptr) {
      return new Int32Array(module.memory.buffer, ptr, 4)[0];
    },
    getU32: function(ptr) {
      return new Uint32Array(module.memory.buffer, ptr, 4)[0];
    },
    getF32: function(ptr) {
      return new Float32Array(module.memory.buffer, ptr, 4)[0];
    },
    getF64: function(ptr) {
      return new Float64Array(module.memory.buffer, ptr, 8)[0];
    },
    getString: function(ptr) {
      var len = new Uint32Array(module.memory.buffer, ptr, 4)[0];
      var str = new Uint16Array(module.memory.buffer, ptr + 4, len << 1);
      return String.fromCharCode.apply(String, str);
    }
  }
};
