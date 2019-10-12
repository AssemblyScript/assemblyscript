import { Transform } from "../../cli/transform"; // "assemblyscript/cli/transform"
import { Parser, SourceKind } from "../.."; // "assemblyscript"

class MyTransform extends Transform {
  afterParse(parser: Parser): void {
    this.log("[mytransform.ts] afterParse called, baseDir = " + this.baseDir);
    var sources = parser.program.sources;
    sources.forEach(source => this.log("  " + source.internalPath + " [" + SourceKind[source.sourceKind] + "]"));
  }
}

export = MyTransform;
