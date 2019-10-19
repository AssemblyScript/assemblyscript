import { Transform } from "../../cli/transform"; // "assemblyscript/cli/transform"
import { Parser, Module, SourceKind } from "../.."; // "assemblyscript"
import * as binaryen from "binaryen";

class MyTransform extends Transform {
  afterParse(parser: Parser): void {
    this.log("[mytransform.ts] afterParse called, baseDir = " + this.baseDir);
    var sources = parser.program.sources;
    sources.forEach(source => this.log("  " + source.internalPath + " [" + SourceKind[source.sourceKind] + "]"));
  }
  afterCompile(asModule: Module): void {
    this.log("[mytransform.ts] afterCompile called");
    var module = binaryen.wrapModule(asModule.ref);
    this.log(module.emitBinary());
  }
}

export = MyTransform;
