exports.preInstantiate = function(imports, exports) {
  imports.Math = Math;
  imports.math = {
    mod: function(a, b) { return a % b; }
  };
};
