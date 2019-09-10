exports.preInstantiate = function(imports, exports) {
  imports.mod = {
    mod: function(a, b) { return a % b; }
  };
};
