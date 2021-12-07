const assert = require("assert");

exports.afterParse = function(parser) {
  assert(typeof parser === "object" && parser !== null);
  console.log("- afterParse");
};

exports.afterInitialize = function(program) {
  assert(typeof program === "object" && program !== null);
  console.log("- afterInitialize");
};

exports.afterCompile = function(module) {
  assert(typeof module === "object" && module !== null);
  console.log("- afterCompile");
};

console.log("Super duper legacy transform loaded");
