import * as ts from "typescript";
import * as Lint from "tslint";
import {
  getVariableDeclarationKind,
  VariableDeclarationKind,
  isVariableStatement,
  isBlock,
  isFunctionScopeBoundary,
  isSourceFile,
  isNamespaceDeclaration,
  isExportSpecifier,
  isModuleBlock
} from "tsutils";

export class Rule extends Lint.Rules.AbstractRule {

  static TOP_LEVEL_VAR = "Top-level variable should be 'var' (distinct local or global).";
  static BLOCK_LEVEL_LET = "Block-level variable should be 'let' (shared local).";

  apply(sourceFile: ts.SourceFile): Lint.RuleFailure[] {
    return this.applyWithWalker(new VariablesWalker(sourceFile, this.getOptions()));
  }
}

class VariablesWalker extends Lint.RuleWalker {

  visitVariableDeclarationList(node: ts.VariableDeclarationList): void {
    if (isVariableStatement(node.parent)) {
      if (isBlock(node.parent.parent)) {
        if (
          isFunctionScopeBoundary(node.parent.parent.parent) ||
          isNamespaceDeclaration(node.parent.parent.parent)
        ) {
          if (getVariableDeclarationKind(node) == VariableDeclarationKind.Let) {
            this.addFailureAtNode(node, Rule.TOP_LEVEL_VAR);
          }
        } else if (getVariableDeclarationKind(node) == VariableDeclarationKind.Var) {
          this.addFailureAtNode(node, Rule.BLOCK_LEVEL_LET);
        }
      } else if (
        isSourceFile(node.parent.parent) ||
        isModuleBlock(node.parent.parent)
      ) {
        if (getVariableDeclarationKind(node) == VariableDeclarationKind.Let) {
          this.addFailureAtNode(node, Rule.TOP_LEVEL_VAR);
        }
      } else if (getVariableDeclarationKind(node) == VariableDeclarationKind.Var) {
        this.addFailureAtNode(node, Rule.BLOCK_LEVEL_LET);
      }
    } else if (getVariableDeclarationKind(node) == VariableDeclarationKind.Var) {
      this.addFailureAtNode(node, Rule.BLOCK_LEVEL_LET);
    }
    super.visitVariableDeclarationList(node);
  }
}
