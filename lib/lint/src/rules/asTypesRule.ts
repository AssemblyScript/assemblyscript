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
    var list = node.parent;
    if (list) {
      let stmt = list.parent;
      if (stmt && stmt.kind != ts.SyntaxKind.ForOfStatement) {
        this.checkTypeOrInitializer(node);
      }
    }
    super.visitVariableDeclaration(node);
  }

  visitPropertyDeclaration(node: ts.PropertyDeclaration) {
    this.checkTypeOrInitializer(node);
    super.visitPropertyDeclaration(node);
  }

  visitParameterDeclaration(node: ts.ParameterDeclaration) {
    this.checkTypeOrInitializer(node);
    super.visitParameterDeclaration(node);
  }

  private checkTypeOrInitializer(node: ts.NamedDeclaration & { type?: ts.TypeNode, initializer?: ts.Expression }) {
    if (!node.type && !node.initializer) {
      this.addFailureAtNode(node, Rule.MISSING_TYPE_OR_INITIALIZER);
    }
  }

  visitFunctionDeclaration(node: ts.FunctionDeclaration) {
    this.checkFunctionReturnType(node);
    super.visitFunctionDeclaration(node);
  }

  visitArrowFunction(node: ts.ArrowFunction) {
    this.checkFunctionReturnType(node);
    super.visitArrowFunction(node);
  }

  visitMethodDeclaration(node: ts.MethodDeclaration) {
    this.checkFunctionReturnType(node);
    super.visitMethodDeclaration(node);
  }

  visitGetAccessor(node: ts.GetAccessorDeclaration) {
    this.checkFunctionReturnType(node);
    super.visitGetAccessor(node);
  }

  private checkFunctionReturnType(node: ts.FunctionLikeDeclaration) {
    if (!node.type) {
      this.addFailureAtNode(node, Rule.MISSING_RETURN_TYPE);
    }
  }
}
