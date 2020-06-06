exports.preInstantiate = function(imports, exports) {
  imports.declare = {
    externalFunction: function() { /* nop */ },
    externalConstant: 1,
    "my.externalFunction": function() { /* nop */ },
    "my.externalConstant": 2
  };
};
