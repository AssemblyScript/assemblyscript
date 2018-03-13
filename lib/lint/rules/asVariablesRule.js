"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const Lint = require("tslint");
const tsutils_1 = require("tsutils");
class Rule extends Lint.Rules.AbstractRule {
    apply(sourceFile) {
        return this.applyWithWalker(new VariablesWalker(sourceFile, this.getOptions()));
    }
}
Rule.TOP_LEVEL_VAR = "Top-level variable should be 'var' (distinct local or global).";
Rule.BLOCK_LEVEL_LET = "Block-level variable should be 'let' (shared local).";
exports.Rule = Rule;
class VariablesWalker extends Lint.RuleWalker {
    visitVariableDeclarationList(node) {
        if (tsutils_1.isVariableStatement(node.parent)) {
            if (tsutils_1.isBlock(node.parent.parent)) {
                if (tsutils_1.isFunctionScopeBoundary(node.parent.parent.parent) ||
                    tsutils_1.isNamespaceDeclaration(node.parent.parent.parent)) {
                    if (tsutils_1.getVariableDeclarationKind(node) == 1 /* Let */) {
                        this.addFailureAtNode(node, Rule.TOP_LEVEL_VAR);
                    }
                }
                else if (tsutils_1.getVariableDeclarationKind(node) == 0 /* Var */) {
                    this.addFailureAtNode(node, Rule.BLOCK_LEVEL_LET);
                }
            }
            else if (tsutils_1.isSourceFile(node.parent.parent) ||
                tsutils_1.isModuleBlock(node.parent.parent)) {
                if (tsutils_1.getVariableDeclarationKind(node) == 1 /* Let */) {
                    this.addFailureAtNode(node, Rule.TOP_LEVEL_VAR);
                }
            }
            else if (tsutils_1.getVariableDeclarationKind(node) == 0 /* Var */) {
                this.addFailureAtNode(node, Rule.BLOCK_LEVEL_LET);
            }
        }
        else if (tsutils_1.getVariableDeclarationKind(node) == 0 /* Var */) {
            this.addFailureAtNode(node, Rule.BLOCK_LEVEL_LET);
        }
        super.visitVariableDeclarationList(node);
    }
}
