"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const ts = require("typescript");
const Lint = require("tslint");
class Rule extends Lint.Rules.AbstractRule {
    apply(sourceFile) {
        return this.applyWithWalker(new DiagnosticsWalker(sourceFile, this.getOptions()));
    }
}
exports.Rule = Rule;
Rule.MISSING_TYPE_OR_INITIALIZER = "Missing type or initializer.";
Rule.MISSING_RETURN_TYPE = "Missing return type.";
Rule.UNNECESSARY_RETURN_TYPE = "Unnecessary return type.";
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
        if (requiresReturnType(node)) {
            this.checkFunctionReturnType(node);
        }
        else if (node.type) {
            this.addFailureAtNode(node.type, Rule.UNNECESSARY_RETURN_TYPE);
        }
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
function requiresReturnType(node) {
    if (ts.isCallExpression(node.parent) && ts.isIdentifier(node.parent.expression)
        && ["lengthof", "nameof"].includes(node.parent.expression.text)) {
        return true;
    }
    return !ts.isCallLikeExpression(node.parent);
}
