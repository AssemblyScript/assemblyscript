exports.preInstantiate = function(imports, exports) {
  imports.external = {
    foo: function() {},
    "foo.bar": function() {},
    bar: function() {}
  };
  imports.foo = {
    baz: function() {},
    "var": 3
  };
};
