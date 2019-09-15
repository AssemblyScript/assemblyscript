exports.preInstantiate = function(imports, exports) {
  imports.declare = {
    externalFunction: function() { },
    externalConstant: 1,
    "my.externalFunction": function() { },
    "my.externalConstant": 2
  };
};
