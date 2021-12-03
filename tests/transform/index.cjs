/* global module */

function MyTransform() {
  this.log("CJS transform loaded");
}

MyTransform.prototype.afterParse = function() {
  this.log("- afterParse");
};

MyTransform.prototype.afterInitialize = function() {
  this.log("- afterInitialize");
};

MyTransform.prototype.afterCompile = function() {
  this.log("- afterCompile");
};

module.exports = MyTransform;
