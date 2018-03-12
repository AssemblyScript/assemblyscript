import * as ts from "typescript";
import * as Lint from "tslint";
import { isSameLine } from "tsutils";

export class Rule extends Lint.Rules.AbstractRule {

  static NOT_ON_SEPARATE_LINE = "Diagnostic message not on a separate line.";

  apply(sourceFile: ts.SourceFile): Lint.RuleFailure[] {
    return this.applyWithWalker(new DiagnosticsWalker(sourceFile, this.getOptions()));
  }
}

class DiagnosticsWalker extends Lint.RuleWalker {

  visitPropertyAccessExpression(node: ts.PropertyAccessExpression) {
    if (node.expression.kind === ts.SyntaxKind.Identifier) {
      if (
        (node.expression as ts.Identifier).text == "DiagnosticCode" &&
        isSameLine(node.getSourceFile(), node.parent.getStart(), node.getStart())
      ) {
        this.addFailureAtNode(node, Rule.NOT_ON_SEPARATE_LINE);
      }
    }
    super.visitPropertyAccessExpression(node);
  }
}
