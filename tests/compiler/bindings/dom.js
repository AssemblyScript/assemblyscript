const loader = require("../../../lib/loader");

var extendedExports;

exports.preInstantiate = function(imports, exports) {
  const DOM = imports["DOM"] = {
    newString(ptr) { return extendedExports.__getString(ptr); }
  };
  loader.bind("Object", Object, DOM);
  loader.bind("Number", Number, DOM);
  loader.bind("Boolean", Boolean, DOM);
  loader.bind("String", String, DOM);
  loader.bind("Array", Array, DOM);
  loader.bind("Function", Function, DOM);
  loader.bind("RegExp", RegExp, DOM);
  loader.bind("console", console, DOM);
  extendedExports = loader.preInstantiate(imports);
};

exports.postInstantiate = function(instance) {
  loader.postInstantiate(extendedExports, instance);
};
