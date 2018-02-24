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
var ts = require("typescript");
var Lint = require("tslint");
var Rule = /** @class */ (function (_super) {
    __extends(Rule, _super);
    function Rule() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    Rule.prototype.apply = function (sourceFile) {
        return this.applyWithWalker(new DiagnosticsWalker(sourceFile, this.getOptions()));
    };
    Rule.MISSING_TYPE_OR_INITIALIZER = "Missing type or initializer.";
    Rule.MISSING_RETURN_TYPE = "Missing return type.";
    return Rule;
}(Lint.Rules.AbstractRule));
exports.Rule = Rule;
var DiagnosticsWalker = /** @class */ (function (_super) {
    __extends(DiagnosticsWalker, _super);
    function DiagnosticsWalker() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    DiagnosticsWalker.prototype.visitVariableDeclaration = function (node) {
        if (!node.type && !node.initializer &&
            node.parent.parent.kind != ts.SyntaxKind.ForOfStatement) {
            this.addFailureAtNode(node, Rule.MISSING_TYPE_OR_INITIALIZER);
        }
    };
    DiagnosticsWalker.prototype.visitPropertyDeclaration = function (node) {
        if (!node.type && !node.initializer) {
            this.addFailureAtNode(node, Rule.MISSING_TYPE_OR_INITIALIZER);
        }
    };
    DiagnosticsWalker.prototype.visitParameterDeclaration = function (node) {
        if (!node.type && !node.initializer) {
            this.addFailureAtNode(node, Rule.MISSING_TYPE_OR_INITIALIZER);
        }
    };
    DiagnosticsWalker.prototype.visitFunctionDeclaration = function (node) {
        if (!node.type) {
            this.addFailureAtNode(node, Rule.MISSING_RETURN_TYPE);
        }
    };
    return DiagnosticsWalker;
}(Lint.RuleWalker));
