export function preInstantiate(imports, exports) {
  imports.mod = {
    mod: function(a, b) { return a % b; }
  };
}
