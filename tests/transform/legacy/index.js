var Transform = require("../../../dist/transform.cjs");

function MyTransform() {
  this.log("Legacy transform loaded");
}

(MyTransform.prototype = Object.create(Transform.prototype)).constructor = Transform;

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
