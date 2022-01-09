export function preInstantiate(imports, exports) {
  imports.Math = Math;
  imports.math = {
    mod: function(a, b) { return a % b; }
  };
}
