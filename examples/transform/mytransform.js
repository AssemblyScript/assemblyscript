const { Transform } = require("../../cli/transform"); // "assemblyscript/cli/transform"
const { SourceKind } = require("../.."); // "assemblyscript"
const binaryen = require("binaryen");

class MyTransform extends Transform {
  afterParse(parser) {
    this.log("[mytransform.js] afterParse called, baseDir = " + this.baseDir);
    var sources = parser.program.sources;
    sources.forEach(source => this.log("  " + source.internalPath + " [" + SourceKind[source.sourceKind] + "]"));
  }
  afterCompile(asModule) {
    this.log("[mytransform.js] afterCompile called");
    var module = binaryen.wrapModule(asModule.ref);
    this.log(module.emitBinary());
  }
}

module.exports = MyTransform;
