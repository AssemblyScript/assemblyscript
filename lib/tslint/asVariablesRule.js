"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
exports.__esModule = true;
var Lint = require("tslint");
var tsutils_1 = require("tsutils");
var Rule = /** @class */ (function (_super) {
    __extends(Rule, _super);
    function Rule() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    Rule.prototype.apply = function (sourceFile) {
        return this.applyWithWalker(new DiagnosticsWalker(sourceFile, this.getOptions()));
    };
    Rule.TOP_LEVEL_VAR = "Top-level variable should be 'var' (distinct local or global).";
    Rule.BLOCK_LEVEL_LET = "Block-level variable should be 'let' (shared local).";
    return Rule;
}(Lint.Rules.AbstractRule));
exports.Rule = Rule;
var DiagnosticsWalker = /** @class */ (function (_super) {
    __extends(DiagnosticsWalker, _super);
    function DiagnosticsWalker() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    DiagnosticsWalker.prototype.visitVariableDeclarationList = function (node) {
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
        _super.prototype.visitVariableDeclarationList.call(this, node);
    };
    return DiagnosticsWalker;
}(Lint.RuleWalker));
