const Transform = require("../../../dist/transform.cjs");

console.log("CommonJS transform loaded");

class MyTransform extends Transform {
  constructor() {
    super();
    this.log("- constructor");
  }
  afterRead () {
    this.log("- afterRead");
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
