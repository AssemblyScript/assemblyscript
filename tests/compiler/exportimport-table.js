exports.preInstantiate = function(imports, exports) {
  imports.env = {
    table: new WebAssembly.Table({ element: "anyfunc", initial: 2 })
  };
};
