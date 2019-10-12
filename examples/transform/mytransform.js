const { Transform } = require("../../cli/transform"); // "assemblyscript/cli/transform"
const { SourceKind } = require("../.."); // "assemblyscript"

class MyTransform extends Transform {
  afterParse(parser) {
    this.log("[mytransform.js] afterParse called, baseDir = " + this.baseDir);
    var sources = parser.program.sources;
    sources.forEach(source => this.log("  " + source.internalPath + " [" + SourceKind[source.sourceKind] + "]"));
  }
}

module.exports = MyTransform;
