"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const ts = require("typescript");
const Lint = require("tslint");
class Rule extends Lint.Rules.AbstractRule {
    apply(sourceFile) {
        return this.applyWithWalker(new DiagnosticsWalker(sourceFile, this.getOptions()));
    }
}
Rule.MISSING_TYPE_OR_INITIALIZER = "Missing type or initializer.";
Rule.MISSING_RETURN_TYPE = "Missing return type.";
exports.Rule = Rule;
class DiagnosticsWalker extends Lint.RuleWalker {
    visitVariableDeclaration(node) {
        var list = node.parent;
        if (list) {
            let stmt = list.parent;
            if (stmt && stmt.kind != ts.SyntaxKind.ForOfStatement) {
                this.checkTypeOrInitializer(node);
            }
        }
        super.visitVariableDeclaration(node);
    }
    visitPropertyDeclaration(node) {
        this.checkTypeOrInitializer(node);
        super.visitPropertyDeclaration(node);
    }
    visitParameterDeclaration(node) {
        this.checkTypeOrInitializer(node);
        super.visitParameterDeclaration(node);
    }
    checkTypeOrInitializer(node) {
        if (!node.type && !node.initializer) {
            this.addFailureAtNode(node, Rule.MISSING_TYPE_OR_INITIALIZER);
        }
    }
    visitFunctionDeclaration(node) {
        this.checkFunctionReturnType(node);
        super.visitFunctionDeclaration(node);
    }
    visitArrowFunction(node) {
        this.checkFunctionReturnType(node);
        super.visitArrowFunction(node);
    }
    visitMethodDeclaration(node) {
        this.checkFunctionReturnType(node);
        super.visitMethodDeclaration(node);
    }
    visitGetAccessor(node) {
        this.checkFunctionReturnType(node);
        super.visitGetAccessor(node);
    }
    checkFunctionReturnType(node) {
        if (!node.type) {
            this.addFailureAtNode(node, Rule.MISSING_RETURN_TYPE);
        }
    }
}
