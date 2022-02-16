const Transform = require("../../../dist/transform.cjs");

console.log("CommonJS transform loaded"); // TODO destroy CJS

class MyTransform extends Transform {
  constructor() {
    super();
    this.log("- constructor");
  }
  afterParse () {
    this.log("- afterParse");
  }
  afterInitialize() {
    this.log("- afterInitialize");
  }
  afterCompile() {
    this.log("- afterCompile");
  }
}

module.exports = MyTransform;
