import * as ts from "typescript";
import * as Lint from "tslint";

export class Rule extends Lint.Rules.AbstractRule {

  static MISSING_TYPE_OR_INITIALIZER = "Missing type or initializer.";
  static MISSING_RETURN_TYPE = "Missing return type.";

  apply(sourceFile: ts.SourceFile): Lint.RuleFailure[] {
    return this.applyWithWalker(new DiagnosticsWalker(sourceFile, this.getOptions()));
  }
}

class DiagnosticsWalker extends Lint.RuleWalker {

  visitVariableDeclaration(node: ts.VariableDeclaration) {
    if (
      !node.type && !node.initializer &&
      node.parent.parent.kind != ts.SyntaxKind.ForOfStatement
    ) {
      this.addFailureAtNode(node, Rule.MISSING_TYPE_OR_INITIALIZER);
    }
  }

  visitPropertyDeclaration(node: ts.PropertyDeclaration) {
    if (!node.type && !node.initializer) {
      this.addFailureAtNode(node, Rule.MISSING_TYPE_OR_INITIALIZER);
    }
  }

  visitParameterDeclaration(node: ts.ParameterDeclaration) {
    if (!node.type && !node.initializer) {
      this.addFailureAtNode(node, Rule.MISSING_TYPE_OR_INITIALIZER);
    }
  }

  visitFunctionDeclaration(node: ts.FunctionDeclaration) {
    if (!node.type) {
      this.addFailureAtNode(node, Rule.MISSING_RETURN_TYPE);
    }
  }
}
