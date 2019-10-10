import { Transform } from "../../cli/transform"; // "assemblyscript/cli/transform"
import { Parser, SourceKind } from "../.."; // "assemblyscript"

class MyTransform extends Transform {
  afterParse(parser: Parser): void {
    console.error("[mytransform.ts] afterParse called, baseDir = " + this.baseDir);
    var sources = parser.program.sources;
    sources.forEach(source => console.error("  " + source.internalPath + " [" + SourceKind[source.sourceKind] + "]"));
  }
}

export = MyTransform;
