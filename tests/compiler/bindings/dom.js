const loader = require("../../../lib/loader");

exports.preInstantiate = function(imports, exports) {
  const DOM = imports["DOM"] = {
    newString(ptr) { return "hello world"; },
    newNumber(value) { return value; }
  };
  loader.bind("String", String, DOM);
  loader.bind("Object", Object, DOM);
  loader.bind("console", console, DOM);
};
