import { ASTBuilder } from "../ASTBuilder";
import { SourceKind } from "../ast";
import { Transformer } from "../transformer";

/**
 * Example of using a transformer to print the AST for each entry file
 */
export default class Printer extends Transformer {
  afterParse(): void {
    const files = this.parser.program.sources.filter(
      _source => _source.sourceKind == SourceKind.USER_ENTRY
    );
    files.forEach(source => {
      // Create a string of source rebuilt from the AST node `source`
      const sourceText: string = ASTBuilder.build(source);
      this.stdout(sourceText);
    });
  }
}
