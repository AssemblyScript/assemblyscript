exports.preInstantiate = function(imports, exports) {
  imports.wasi_snapshot = {
    random_get: function(buf, len) {
      var len32 = len >>> 2;
      var view = new Uint32Array(exports.memory.buffer, buf, len32);
      for (let i = 0; i < len32; ++i) {
        view[i] = (Math.random() * 0xffffffff) >>> 0;
      }
      return 0;
    }
  };
};
