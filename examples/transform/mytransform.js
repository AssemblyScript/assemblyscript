const { Transform } = require("../../cli/transform"); // "assemblyscript/cli/transform"
const { SourceKind } = require("../.."); // "assemblyscript"

class MyTransform extends Transform {
  afterParse(parser) {
    console.error("[mytransform.js] afterParse called, baseDir = " + this.baseDir);
    var sources = parser.program.sources;
    sources.forEach(source => console.error("  " + source.internalPath + " [" + SourceKind[source.sourceKind] + "]"));
  }
}

module.exports = MyTransform;
