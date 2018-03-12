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
var tsutils_1 = require("tsutils");
var Rule = /** @class */ (function (_super) {
    __extends(Rule, _super);
    function Rule() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    Rule.prototype.apply = function (sourceFile) {
        return this.applyWithWalker(new DiagnosticsWalker(sourceFile, this.getOptions()));
    };
    Rule.NOT_ON_SEPARATE_LINE = "Diagnostic message not on a separate line.";
    return Rule;
}(Lint.Rules.AbstractRule));
exports.Rule = Rule;
var DiagnosticsWalker = /** @class */ (function (_super) {
    __extends(DiagnosticsWalker, _super);
    function DiagnosticsWalker() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    DiagnosticsWalker.prototype.visitPropertyAccessExpression = function (node) {
        if (node.expression.kind === ts.SyntaxKind.Identifier) {
            if (node.expression.text == "DiagnosticCode" &&
                tsutils_1.isSameLine(node.getSourceFile(), node.parent.getStart(), node.getStart())) {
                this.addFailureAtNode(node, Rule.NOT_ON_SEPARATE_LINE);
            }
        }
        _super.prototype.visitPropertyAccessExpression.call(this, node);
    };
    return DiagnosticsWalker;
}(Lint.RuleWalker));
