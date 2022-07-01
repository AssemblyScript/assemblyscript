const assert = require("assert");

console.log("Simple CommonJS transform loaded");

exports.afterRead = (file) => {
  assert(typeof file === "object" && file !== null);
  assert(typeof file.sourceText === "string" && typeof file.sourceContent === "string");
  console.log("- afterRead");
};

exports.afterParse = (parser) => {
  assert(typeof parser === "object" && parser !== null);
  console.log("- afterParse");
};

exports.afterInitialize = (program) => {
  assert(typeof program === "object" && program !== null);
  console.log("- afterInitialize");
};

exports.afterCompile = (module) => {
  assert(typeof module === "object" && module !== null);
  console.log("- afterCompile");
};
