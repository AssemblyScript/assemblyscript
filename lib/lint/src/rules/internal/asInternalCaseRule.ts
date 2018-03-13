import * as ts from "typescript";
import * as Lint from "tslint";
import { isSameLine } from "tsutils";

export class Rule extends Lint.Rules.AbstractRule {

  static NOT_BRACED = "Multi-line case clauses should be braced.";

  apply(sourceFile: ts.SourceFile): Lint.RuleFailure[] {
    return this.applyWithWalker(new CaseWalker(sourceFile, this.getOptions()));
  }
}

class CaseWalker extends Lint.RuleWalker {

  visitDefaultClause(node: ts.DefaultClause) {
    this.checkDefaultOrCaseClause(node);
    super.visitDefaultClause(node);
  }

  visitCaseClause(node: ts.CaseClause) {
    this.checkDefaultOrCaseClause(node);
    super.visitCaseClause(node);
  }

  private checkDefaultOrCaseClause(node: ts.DefaultClause | ts.CaseClause) {
    var count = node.statements.length;
    if (count > 1) {
      this.addFailureAtNode(node, Rule.NOT_BRACED);
    } else if (count == 1) {
      let stmt = node.statements[0];
      if (stmt.kind != ts.SyntaxKind.Block) {
        if (!isSameLine(node.getSourceFile(), node.getStart(), stmt.getStart())) {
          this.addFailureAtNode(node, Rule.NOT_BRACED);
        }
      }
    }
  }
}
