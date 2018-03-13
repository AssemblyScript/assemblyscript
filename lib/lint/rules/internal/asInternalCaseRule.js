"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const ts = require("typescript");
const Lint = require("tslint");
const tsutils_1 = require("tsutils");
class Rule extends Lint.Rules.AbstractRule {
    apply(sourceFile) {
        return this.applyWithWalker(new CaseWalker(sourceFile, this.getOptions()));
    }
}
Rule.NOT_BRACED = "Multi-line case clauses should be braced.";
exports.Rule = Rule;
class CaseWalker extends Lint.RuleWalker {
    visitDefaultClause(node) {
        this.checkDefaultOrCaseClause(node);
        super.visitDefaultClause(node);
    }
    visitCaseClause(node) {
        this.checkDefaultOrCaseClause(node);
        super.visitCaseClause(node);
    }
    checkDefaultOrCaseClause(node) {
        var count = node.statements.length;
        if (count > 1) {
            this.addFailureAtNode(node, Rule.NOT_BRACED);
        }
        else if (count == 1) {
            let stmt = node.statements[0];
            if (stmt.kind != ts.SyntaxKind.Block) {
                if (!tsutils_1.isSameLine(node.getSourceFile(), node.getStart(), stmt.getStart())) {
                    this.addFailureAtNode(node, Rule.NOT_BRACED);
                }
            }
        }
    }
}
