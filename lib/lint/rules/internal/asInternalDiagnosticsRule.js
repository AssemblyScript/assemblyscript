"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const ts = require("typescript");
const Lint = require("tslint");
const tsutils_1 = require("tsutils");
class Rule extends Lint.Rules.AbstractRule {
    apply(sourceFile) {
        return this.applyWithWalker(new DiagnosticsWalker(sourceFile, this.getOptions()));
    }
}
Rule.NOT_ON_SEPARATE_LINE = "Diagnostic message not on a separate line.";
exports.Rule = Rule;
class DiagnosticsWalker extends Lint.RuleWalker {
    visitPropertyAccessExpression(node) {
        if (node.expression.kind === ts.SyntaxKind.Identifier) {
            if (node.expression.text == "DiagnosticCode" &&
                tsutils_1.isSameLine(node.getSourceFile(), node.parent.getStart(), node.getStart())) {
                this.addFailureAtNode(node, Rule.NOT_ON_SEPARATE_LINE);
            }
        }
        super.visitPropertyAccessExpression(node);
    }
}
