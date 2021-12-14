exports.preInstantiate = function(imports, exports) {
  imports["mutable-globals"] = {
    external: new WebAssembly.Global({ value: "i32", mutable: true }, 123)
  };
};
exports.postStart = function(instance) {
  // adds 10 to both
  const exports = instance.exports;
  if (exports.external.valueOf() != 133) throw Error("unexpected value");
  if (exports.internal.valueOf() != 134) throw Error("unexpected value");
};
