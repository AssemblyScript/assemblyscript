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
    Rule.NOT_BRACED = "Multi-line case clauses should be braced.";
    return Rule;
}(Lint.Rules.AbstractRule));
exports.Rule = Rule;
var DiagnosticsWalker = /** @class */ (function (_super) {
    __extends(DiagnosticsWalker, _super);
    function DiagnosticsWalker() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    DiagnosticsWalker.prototype.visitDefaultClause = function (node) {
        this.checkDefaultOrCaseClause(node);
        _super.prototype.visitDefaultClause.call(this, node);
    };
    DiagnosticsWalker.prototype.visitCaseClause = function (node) {
        this.checkDefaultOrCaseClause(node);
        _super.prototype.visitCaseClause.call(this, node);
    };
    DiagnosticsWalker.prototype.checkDefaultOrCaseClause = function (node) {
        var count = node.statements.length;
        if (count > 1) {
            this.addFailureAtNode(node, Rule.NOT_BRACED);
        }
        else if (count == 1) {
            var stmt = node.statements[0];
            if (stmt.kind != ts.SyntaxKind.Block) {
                if (!tsutils_1.isSameLine(node.getSourceFile(), node.getStart(), stmt.getStart())) {
                    this.addFailureAtNode(node, Rule.NOT_BRACED);
                }
            }
        }
    };
    return DiagnosticsWalker;
}(Lint.RuleWalker));
