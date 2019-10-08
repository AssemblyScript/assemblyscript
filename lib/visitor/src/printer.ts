import { ASTBuilder } from "./sourceBuilder";
import { SourceKind } from "./ast";
import { Transformer } from "./transformer";

export default class Printer extends Transformer {
  afterParse(): void {
    const files = this.parser.program.sources.filter(
      _source => _source.sourceKind == SourceKind.USER_ENTRY
    );
    files.forEach(source => {
      // Create a string of source rebuilt from the AST node `source`
      let sourceText = ASTBuilder.build(source);
      console.log(sourceText);
    });
  }
}
