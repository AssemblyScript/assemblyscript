exports.preInstantiate = function(imports, exports) {
  imports.external = {
    foo: function() { /* nop */ },
    "foo.bar": function() { /* nop */ },
    bar: function() { /* nop */ }
  };
  imports.foo = {
    baz: function() { /* nop */ },
    "var": 3
  };
};
