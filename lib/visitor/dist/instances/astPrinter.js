"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var __values = (this && this.__values) || function (o) {
    var m = typeof Symbol === "function" && o[Symbol.iterator], i = 0;
    if (m) return m.call(o);
    return {
        next: function () {
            if (o && i >= o.length) o = void 0;
            return { value: o && o[i++], done: !o };
        }
    };
};
Object.defineProperty(exports, "__esModule", { value: true });
var assemblyscript_1 = require("assemblyscript");
var ast_1 = require("../src/ast");
var PrinterVisitor = /** @class */ (function (_super) {
    __extends(PrinterVisitor, _super);
    function PrinterVisitor(writer) {
        var _this = _super.call(this) || this;
        _this.writer = writer;
        _this.depth = 0;
        _this.sb = [];
        return _this;
    }
    PrinterVisitor.prototype.write = function (str, newline) {
        if (newline === void 0) { newline = true; }
        this.writer.write("  ".repeat(this.depth) + str + (newline ? "\n" : " "));
    };
    PrinterVisitor.prototype.flush = function (seperator) {
        var res = this.sb.join(seperator);
        this.sb.length = 0;
        return res;
    };
    PrinterVisitor.prototype.visitSource = function (node) {
        this.write("Source: " + node.normalizedPath);
        _super.prototype.visitSource.call(this, node);
    };
    PrinterVisitor.prototype.visitTypeNode = function (node) {
        this.write("TypeNode: " + node.kind.toString());
        _super.prototype.visitTypeNode.call(this, node);
    };
    PrinterVisitor.prototype.visitFunctionTypeNode = function (node) {
        var e_1, _a;
        this.write("FunctionTypeNode: ", false);
        try {
            for (var _b = __values(node.parameters), _c = _b.next(); !_c.done; _c = _b.next()) {
                var param = _c.value;
                param.visit(this);
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_1) throw e_1.error; }
        }
        this.write("(" + this.flush(", ") + ") -> ");
        this.write("return type: ", false);
        node.returnType.visit(this);
    };
    PrinterVisitor.prototype.visitTypeParameter = function (node) {
        this.write("TypeParameter ", false);
        node.name.visit(this);
    };
    PrinterVisitor.prototype.visitIdentifierExpression = function (node) {
        this.sb.push(node.symbol);
        _super.prototype.visitIdentifierExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitArrayLiteralExpression = function (node) {
        this.write("ArrayLiteralExpression: ", false);
        _super.prototype.visitArrayLiteralExpression.call(this, node);
        this.write("[" + this.flush(", ") + "]");
    };
    PrinterVisitor.prototype.visitObjectLiteralExpression = function (node) {
        this.write("ObjectLiteralExpression: ");
        _super.prototype.visitObjectLiteralExpression.call(this, node);
        this.depth++;
        this.write("{");
        for (var i = 0; i < this.sb.length; i += 2) {
            this.write("  " + this.sb[i] + ": " + this.sb[i + 1]);
        }
        this.write("}");
        this.depth--;
    };
    PrinterVisitor.prototype.visitAssertionExpression = function (node) {
        this.write("AssertionExpression: ", false);
        _super.prototype.visitAssertionExpression.call(this, node);
        this.write(this.flush(" "));
    };
    PrinterVisitor.prototype.visitBinaryExpression = function (node) {
        this.write("BinaryExpression: ", false);
        _super.prototype.visitBinaryExpression.call(this, node);
        this.sb.push(this.flush(assemblyscript_1.operatorTokenToString(node.operator)));
    };
    PrinterVisitor.prototype.visitCallExpression = function (node) {
        this.write("CallExpression");
        _super.prototype.visitCallExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitClassExpression = function (node) {
        this.write("ClassExpression");
        _super.prototype.visitClassExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitCommaExpression = function (node) {
        this.write("CommaExpression");
        _super.prototype.visitCommaExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitElementAccessExpression = function (node) {
        this.write("ElementAccessExpression");
        _super.prototype.visitElementAccessExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitFunctionExpression = function (node) {
        this.write("FunctionExpression");
        _super.prototype.visitFunctionExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitLiteralExpression = function (node) {
        this.write("LiteralExpression");
        _super.prototype.visitLiteralExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitFloatLiteralExpression = function (node) {
        this.write("FloatLiteralExpression");
        _super.prototype.visitFloatLiteralExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitInstanceOfExpression = function (node) {
        this.write("InstanceOfExpression");
        _super.prototype.visitInstanceOfExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitIntegerLiteralExpression = function (node) {
        this.sb.push(i64_to_string(node.value));
    };
    PrinterVisitor.prototype.visitStringLiteral = function (str, singleQuoted) {
        this.write("StringLiteral");
        this.sb.push(str);
    };
    PrinterVisitor.prototype.visitStringLiteralExpression = function (node) {
        this.write("StringLiteralExpression");
        _super.prototype.visitStringLiteralExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitRegexpLiteralExpression = function (node) {
        this.write("RegexpLiteralExpression");
        _super.prototype.visitRegexpLiteralExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitNewExpression = function (node) {
        this.write("NewExpression");
        _super.prototype.visitNewExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitParenthesizedExpression = function (node) {
        this.write("ParenthesizedExpression");
        _super.prototype.visitParenthesizedExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitPropertyAccessExpression = function (node) {
        this.write("PropertyAccessExpression");
        _super.prototype.visitPropertyAccessExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitTernaryExpression = function (node) {
        this.write("TernaryExpression");
        _super.prototype.visitTernaryExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitUnaryExpression = function (node) {
        this.write("UnaryExpression");
        _super.prototype.visitUnaryExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitUnaryPostfixExpression = function (node) {
        this.write("UnaryPostfixExpression");
        _super.prototype.visitUnaryPostfixExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitUnaryPrefixExpression = function (node) {
        this.write("UnaryPrefixExpression");
        _super.prototype.visitUnaryPrefixExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitSuperExpression = function (node) {
        this.write("SuperExpression: " + node.symbol);
        _super.prototype.visitSuperExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitFalseExpression = function (node) {
        this.write("FalseExpression");
        _super.prototype.visitFalseExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitTrueExpression = function (node) {
        this.write("TrueExpression");
        _super.prototype.visitTrueExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitThisExpression = function (node) {
        this.write("ThisExpression");
        _super.prototype.visitThisExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitNullExperssion = function (node) {
        this.write("NullExperssion");
        _super.prototype.visitNullExperssion.call(this, node);
    };
    PrinterVisitor.prototype.visitConstructorExpression = function (node) {
        this.write("ConstructorExpression");
        _super.prototype.visitConstructorExpression.call(this, node);
    };
    PrinterVisitor.prototype.visitNodeAndTerminate = function (statement) {
        this.write("NodeAndTerminate");
    };
    PrinterVisitor.prototype.visitBlockStatement = function (node) {
        this.write("BlockStatement");
        this.depth++;
        _super.prototype.visitBlockStatement.call(this, node);
        this.depth--;
    };
    PrinterVisitor.prototype.visitBreakStatement = function (node) {
        this.write("BreakStatement");
        _super.prototype.visitBreakStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitContinueStatement = function (node) {
        this.write("ContinueStatement");
        _super.prototype.visitContinueStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitClassDeclaration = function (node, isDefault) {
        var e_2, _a;
        this.write("ClassDeclaration: " + node.name.symbol);
        try {
            for (var _b = __values(node.members), _c = _b.next(); !_c.done; _c = _b.next()) {
                var member = _c.value;
                this.depth++;
                member.visit(this);
                this.depth--;
            }
        }
        catch (e_2_1) { e_2 = { error: e_2_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_2) throw e_2.error; }
        }
    };
    PrinterVisitor.prototype.visitDoStatement = function (node) {
        this.write("DoStatement");
        _super.prototype.visitDoStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitEmptyStatement = function (node) {
        this.write("EmptyStatement");
        _super.prototype.visitEmptyStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitEnumDeclaration = function (node, isDefault) {
        this.write("EnumDeclaration: " + node.name);
        _super.prototype.visitEnumDeclaration.call(this, node);
    };
    PrinterVisitor.prototype.visitEnumValueDeclaration = function (node) {
        this.write("EnumValueDeclaration");
        _super.prototype.visitEnumValueDeclaration.call(this, node);
    };
    PrinterVisitor.prototype.visitExportImportStatement = function (node) {
        this.write("ExportImportStatement");
        _super.prototype.visitExportImportStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitExportMember = function (node) {
        this.write("ExportMember");
        _super.prototype.visitExportMember.call(this, node);
    };
    PrinterVisitor.prototype.visitExportStatement = function (node) {
        this.write("ExportStatement");
        _super.prototype.visitExportStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitExportDefaultStatement = function (node) {
        this.write("ExportDefaultStatement");
        _super.prototype.visitExportDefaultStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitExpressionStatement = function (node) {
        this.write("ExpressionStatement: ");
        _super.prototype.visitExpressionStatement.call(this, node);
        this.write(this.flush(" "));
    };
    PrinterVisitor.prototype.visitFieldDeclaration = function (node) {
        this.write("FieldDeclaration: ", false);
        node.name.visit(this);
        node.type.visit(this);
        this.write(this.flush(": "));
    };
    PrinterVisitor.prototype.visitForStatement = function (node) {
        this.write("ForStatement");
        _super.prototype.visitForStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitFunctionDeclaration = function (node, isDefault) {
        this.write("FunctionDeclaration: " + node.name.symbol, false);
        node.signature.visit(this);
    };
    PrinterVisitor.prototype.visitFunctionCommon = function (node) {
        this.write("FunctionCommon");
        _super.prototype.visitFunctionCommon.call(this, node);
    };
    PrinterVisitor.prototype.visitIfStatement = function (node) {
        this.write("IfStatement");
        _super.prototype.visitIfStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitImportDeclaration = function (node) {
        this.write("ImportDeclaration");
        _super.prototype.visitImportDeclaration.call(this, node);
    };
    PrinterVisitor.prototype.visitImportStatement = function (node) {
        this.write("ImportStatement: " + node.internalPath);
        _super.prototype.visitImportStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitIndexSignatureDeclaration = function (node) {
        this.write("IndexSignatureDeclaration");
        _super.prototype.visitIndexSignatureDeclaration.call(this, node);
    };
    PrinterVisitor.prototype.visitInterfaceDeclaration = function (node, isDefault) {
        this.write("InterfaceDeclaration", false);
        node.name.visit(this);
        this.write(this.flush(""), false);
        if (node.isGeneric) {
            this.visit(node.typeParameters);
            this.write("<" + this.flush(", ") + "> ", false);
        }
        this.visit(node.implementsTypes);
        if (this.sb.length > 0) {
            this.write("implements " + this.flush(", "));
        }
        if (node.extendsType) {
            node.extendsType.visit(this);
            this.write("extends " + this.flush(""), false);
        }
        this.write("");
        this.depth++;
        this.visit(node.members);
        this.depth--;
    };
    PrinterVisitor.prototype.visitMethodDeclaration = function (node) {
        this.write("MethodDeclaration: " + node.name.symbol);
        this.depth++;
        if (node.body)
            node.body.visit(this);
        this.depth--;
    };
    PrinterVisitor.prototype.visitNamespaceDeclaration = function (node, isDefault) {
        this.write("NamespaceDeclaration");
        _super.prototype.visitNamespaceDeclaration.call(this, node);
    };
    PrinterVisitor.prototype.visitReturnStatement = function (node) {
        this.write("ReturnStatement");
        _super.prototype.visitReturnStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitSwitchCase = function (node) {
        this.write("SwitchCase");
        _super.prototype.visitSwitchCase.call(this, node);
    };
    PrinterVisitor.prototype.visitSwitchStatement = function (node) {
        this.write("SwitchStatement");
        _super.prototype.visitSwitchStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitThrowStatement = function (node) {
        this.write("ThrowStatement");
        _super.prototype.visitThrowStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitTryStatement = function (node) {
        this.write("TryStatement");
        _super.prototype.visitTryStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitTypeDeclaration = function (node) {
        this.write("TypeDeclaration");
        _super.prototype.visitTypeDeclaration.call(this, node);
    };
    PrinterVisitor.prototype.visitVariableDeclaration = function (node) {
        this.write("VariableDeclaration: ", false);
        node.name.visit(this);
        if (node.type)
            node.type.visit(this);
        var name = this.flush(": ");
        if (node.initializer)
            node.initializer.visit(this);
        var initializer = this.flush(" ");
        this.write(name + (node.initializer ? " = " + initializer : "") + ";");
    };
    PrinterVisitor.prototype.visitVariableStatement = function (node) {
        this.write("VariableStatement");
        _super.prototype.visitVariableStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitWhileStatement = function (node) {
        this.write("WhileStatement");
        _super.prototype.visitWhileStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitVoidStatement = function (node) {
        this.write("VoidStatement");
        _super.prototype.visitVoidStatement.call(this, node);
    };
    PrinterVisitor.prototype.visitComment = function (node) {
        this.write("Comment");
        _super.prototype.visitComment.call(this, node);
    };
    PrinterVisitor.prototype.visitDecoratorNode = function (node) {
        this.write("DecoratorNode");
        _super.prototype.visitDecoratorNode.call(this, node);
    };
    PrinterVisitor.prototype.visitParameter = function (node) {
        this.write("Parameter " + node.name.symbol + ":", false);
        node.type.visit(this);
    };
    return PrinterVisitor;
}(ast_1.BaseVisitor));
exports.PrinterVisitor = PrinterVisitor;
