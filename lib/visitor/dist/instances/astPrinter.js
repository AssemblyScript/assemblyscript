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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXN0UHJpbnRlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uL2luc3RhbmNlcy9hc3RQcmludGVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFBQSxpREEyRXdCO0FBQ3hCLGtDQUF5QztBQUV6QztJQUFvQyxrQ0FBVztJQUk3Qyx3QkFBb0IsTUFBYztRQUFsQyxZQUNFLGlCQUFPLFNBQ1I7UUFGbUIsWUFBTSxHQUFOLE1BQU0sQ0FBUTtRQUhsQyxXQUFLLEdBQVcsQ0FBQyxDQUFDO1FBQ2xCLFFBQUUsR0FBYSxFQUFFLENBQUM7O0lBSWxCLENBQUM7SUFFRCw4QkFBSyxHQUFMLFVBQU0sR0FBVyxFQUFFLE9BQXVCO1FBQXZCLHdCQUFBLEVBQUEsY0FBdUI7UUFDeEMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLEdBQUcsR0FBRyxHQUFHLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUM7SUFDNUUsQ0FBQztJQUVELDhCQUFLLEdBQUwsVUFBTSxTQUFpQjtRQUNyQixJQUFJLEdBQUcsR0FBRyxJQUFJLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztRQUNsQyxJQUFJLENBQUMsRUFBRSxDQUFDLE1BQU0sR0FBRyxDQUFDLENBQUM7UUFDbkIsT0FBTyxHQUFHLENBQUM7SUFDYixDQUFDO0lBRUQsb0NBQVcsR0FBWCxVQUFZLElBQVk7UUFDdEIsSUFBSSxDQUFDLEtBQUssQ0FBQyxVQUFVLEdBQUcsSUFBSSxDQUFDLGNBQWMsQ0FBQyxDQUFDO1FBQzdDLGlCQUFNLFdBQVcsWUFBQyxJQUFJLENBQUMsQ0FBQztJQUMxQixDQUFDO0lBRUQsc0NBQWEsR0FBYixVQUFjLElBQWM7UUFDMUIsSUFBSSxDQUFDLEtBQUssQ0FB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LEdBa2E5QztBQWxhWSx3Q0FBYyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7XG4gIEFTVFZpc2l0b3IsXG4gIFNvdXJjZSxcbiAgVHlwZU5vZGUsXG4gIFR5cGVOYW1lLFxuICBOYW1lZFR5cGVOb2RlLFxuICBGdW5jdGlvblR5cGVOb2RlLFxuICBUeXBlUGFyYW1ldGVyTm9kZSxcbiAgSWRlbnRpZmllckV4cHJlc3Npb24sXG4gIEFycmF5TGl0ZXJhbEV4cHJlc3Npb24sXG4gIE9iamVjdExpdGVyYWxFeHByZXNzaW9uLFxuICBBc3NlcnRpb25FeHByZXNzaW9uLFxuICBCaW5hcnlFeHByZXNzaW9uLFxuICBDYWxsRXhwcmVzc2lvbixcbiAgQ2xhc3NFeHByZXNzaW9uLFxuICBDb21tYUV4cHJlc3Npb24sXG4gIEVsZW1lbnRBY2Nlc3NFeHByZXNzaW9uLFxuICBGdW5jdGlvbkV4cHJlc3Npb24sXG4gIExpdGVyYWxFeHByZXNzaW9uLFxuICBGbG9hdExpdGVyYWxFeHByZXNzaW9uLFxuICBJbnN0YW5jZU9mRXhwcmVzc2lvbixcbiAgSW50ZWdlckxpdGVyYWxFeHByZXNzaW9uLFxuICBTdHJpbmdMaXRlcmFsRXhwcmVzc2lvbixcbiAgUmVnZXhwTGl0ZXJhbEV4cHJlc3Npb24sXG4gIE5ld0V4cHJlc3Npb24sXG4gIFBhcmVudGhlc2l6ZWRFeHByZXNzaW9uLFxuICBQcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24sXG4gIFRlcm5hcnlFeHByZXNzaW9uLFxuICBVbmFyeUV4cHJlc3Npb24sXG4gIFVuYXJ5UG9zdGZpeEV4cHJlc3Npb24sXG4gIFVuYXJ5UHJlZml4RXhwcmVzc2lvbixcbiAgU3VwZXJFeHByZXNzaW9uLFxuICBGYWxzZUV4cHJlc3Npb24sXG4gIFRydWVFeHByZXNzaW9uLFxuICBUaGlzRXhwcmVzc2lvbixcbiAgTnVsbEV4cHJlc3Npb24sXG4gIENvbnN0cnVjdG9yRXhwcmVzc2lvbixcbiAgU3RhdGVtZW50LFxuICBCbG9ja1N0YXRlbWVudCxcbiAgQnJlYWtTdGF0ZW1lbnQsXG4gIENvbnRpbnVlU3RhdGVtZW50LFxuICBDbGFzc0RlY2xhcmF0aW9uLFxuICBEb1N0YXRlbWVudCxcbiAgRW1wdHlTdGF0ZW1lbnQsXG4gIEVudW1EZWNsYXJhdGlvbixcbiAgRW51bVZhbHVlRGVjbGFyYXRpb24sXG4gIEV4cG9ydEltcG9ydFN0YXRlbWVudCxcbiAgRXhwb3J0TWVtYmVyLFxuICBFeHBvcnRTdGF0ZW1lbnQsXG4gIEV4cG9ydERlZmF1bHRTdGF0ZW1lbnQsXG4gIEV4cHJlc3Npb25TdGF0ZW1lbnQsXG4gIEZpZWxkRGVjbGFyYXRpb24sXG4gIEZvclN0YXRlbWVudCxcbiAgRnVuY3Rpb25EZWNsYXJhdGlvbixcbiAgSWZTdGF0ZW1lbnQsXG4gIEltcG9ydERlY2xhcmF0aW9uLFxuICBJbXBvcnRTdGF0ZW1lbnQsXG4gIEluZGV4U2lnbmF0dXJlRGVjbGFyYXRpb24sXG4gIEludGVyZmFjZURlY2xhcmF0aW9uLFxuICBNZXRob2REZWNsYXJhdGlvbixcbiAgTmFtZXNwYWNlRGVjbGFyYXRpb24sXG4gIFJldHVyblN0YXRlbWVudCxcbiAgU3dpdGNoQ2FzZSxcbiAgU3dpdGNoU3RhdGVtZW50LFxuICBUaHJvd1N0YXRlbWVudCxcbiAgVHJ5U3RhdGVtZW50LFxuICBUeXBlRGVjbGFyYXRpb24sXG4gIFZhcmlhYmxlRGVjbGFyYXRpb24sXG4gIFZhcmlhYmxlU3RhdGVtZW50LFxuICBXaGlsZVN0YXRlbWVudCxcbiAgVm9pZFN0YXRlbWVudCxcbiAgQ29tbWVudE5vZGUsXG4gIERlY29yYXRvck5vZGUsXG4gIFBhcmFtZXRlck5vZGUsXG4gIG9wZXJhdG9yVG9rZW5Ub1N0cmluZ1xufSBmcm9tIFwiYXNzZW1ibHlzY3JpcHRcIjtcbmltcG9ydCB7IEJhc2VWaXNpdG9yIH0gZnJvbSBcIi4uL3NyYy9hc3RcIjtcblxuZXhwb3J0IGNsYXNzIFByaW50ZXJWaXNpdG9yIGV4dGVuZHMgQmFzZVZpc2l0b3IgaW1wbGVtZW50cyBBU1RWaXNpdG9yIHtcbiAgZGVwdGg6IG51bWJlciA9IDA7XG4gIHNiOiBzdHJpbmdbXSA9IFtdO1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgd3JpdGVyOiBXcml0ZXIpIHtcbiAgICBzdXBlcigpO1xuICB9XG5cbiAgd3JpdGUoc3RyOiBzdHJpbmcsIG5ld2xpbmU6IGJvb2xlYW4gPSB0cnVlKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZXIud3JpdGUoXCIgIFwiLnJlcGVhdCh0aGlzLmRlcHRoKSArIHN0ciArIChuZXdsaW5lID8gXCJcXG5cIiA6IFwiIFwiKSk7XG4gIH1cblxuICBmbHVzaChzZXBlcmF0b3I6IHN0cmluZyk6IHN0cmluZyB7XG4gICAgbGV0IHJlcyA9IHRoaXMuc2Iuam9pbihzZXBlcmF0b3IpO1xuICAgIHRoaXMuc2IubGVuZ3RoID0gMDtcbiAgICByZXR1cm4gcmVzO1xuICB9XG5cbiAgdmlzaXRTb3VyY2Uobm9kZTogU291cmNlKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlNvdXJjZTogXCIgKyBub2RlLm5vcm1hbGl6ZWRQYXRoKTtcbiAgICBzdXBlci52aXNpdFNvdXJjZShub2RlKTtcbiAgfVxuXG4gIHZpc2l0VHlwZU5vZGUobm9kZTogVHlwZU5vZGUpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiVHlwZU5vZGU6IFwiICsgbm9kZS5raW5kLnRvU3RyaW5nKCkpO1xuICAgIHN1cGVyLnZpc2l0VHlwZU5vZGUobm9kZSk7XG4gIH1cblxuICB2aXNpdEZ1bmN0aW9uVHlwZU5vZGUobm9kZTogRnVuY3Rpb25UeXBlTm9kZSk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJGdW5jdGlvblR5cGVOb2RlOiBcIiwgZmFsc2UpO1xuICAgIGZvciAobGV0IHBhcmFtIG9mIG5vZGUucGFyYW1ldGVycykge1xuICAgICAgcGFyYW0udmlzaXQodGhpcyk7XG4gICAgfVxuICAgIHRoaXMud3JpdGUoXCIoXCIgKyB0aGlzLmZsdXNoKFwiLCBcIikgKyBcIikgLT4gXCIpO1xuICAgIHRoaXMud3JpdGUoXCJyZXR1cm4gdHlwZTogXCIsIGZhbHNlKTtcbiAgICBub2RlLnJldHVyblR5cGUudmlzaXQodGhpcyk7XG4gIH1cblxuICB2aXNpdFR5cGVQYXJhbWV0ZXIobm9kZTogVHlwZVBhcmFtZXRlck5vZGUpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiVHlwZVBhcmFtZXRlciBcIiwgZmFsc2UpO1xuICAgIG5vZGUubmFtZS52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obm9kZTogSWRlbnRpZmllckV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLnNiLnB1c2gobm9kZS5zeW1ib2wpO1xuICAgIHN1cGVyLnZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obm9kZSk7XG4gIH1cblxuICB2aXNpdEFycmF5TGl0ZXJhbEV4cHJlc3Npb24obm9kZTogQXJyYXlMaXRlcmFsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJBcnJheUxpdGVyYWxFeHByZXNzaW9uOiBcIiwgZmFsc2UpO1xuICAgIHN1cGVyLnZpc2l0QXJyYXlMaXRlcmFsRXhwcmVzc2lvbihub2RlKTtcbiAgICB0aGlzLndyaXRlKFwiW1wiICsgdGhpcy5mbHVzaChcIiwgXCIpICsgXCJdXCIpO1xuICB9XG5cbiAgdmlzaXRPYmplY3RMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBPYmplY3RMaXRlcmFsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJPYmplY3RMaXRlcmFsRXhwcmVzc2lvbjogXCIpO1xuICAgIHN1cGVyLnZpc2l0T2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24obm9kZSk7XG4gICAgdGhpcy5kZXB0aCsrO1xuXG4gICAgdGhpcy53cml0ZShcIntcIik7XG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCB0aGlzLnNiLmxlbmd0aDsgaSArPSAyKSB7XG4gICAgICB0aGlzLndyaXRlKFwiICBcIiArIHRoaXMuc2JbaV0gKyBcIjogXCIgKyB0aGlzLnNiW2kgKyAxXSk7XG4gICAgfVxuICAgIHRoaXMud3JpdGUoXCJ9XCIpO1xuICAgIHRoaXMuZGVwdGgtLTtcbiAgfVxuXG4gIHZpc2l0QXNzZXJ0aW9uRXhwcmVzc2lvbihub2RlOiBBc3NlcnRpb25FeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkFzc2VydGlvbkV4cHJlc3Npb246IFwiLCBmYWxzZSk7XG4gICAgc3VwZXIudmlzaXRBc3NlcnRpb25FeHByZXNzaW9uKG5vZGUpO1xuICAgIHRoaXMud3JpdGUodGhpcy5mbHVzaChcIiBcIikpO1xuICB9XG5cbiAgdmlzaXRCaW5hcnlFeHByZXNzaW9uKG5vZGU6IEJpbmFyeUV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiQmluYXJ5RXhwcmVzc2lvbjogXCIsIGZhbHNlKTtcbiAgICBzdXBlci52aXNpdEJpbmFyeUV4cHJlc3Npb24obm9kZSk7XG4gICAgdGhpcy5zYi5wdXNoKHRoaXMuZmx1c2gob3BlcmF0b3JUb2tlblRvU3RyaW5nKG5vZGUub3BlcmF0b3IpKSk7XG4gIH1cblxuICB2aXNpdENhbGxFeHByZXNzaW9uKG5vZGU6IENhbGxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkNhbGxFeHByZXNzaW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0Q2FsbEV4cHJlc3Npb24obm9kZSk7XG4gIH1cblxuICB2aXNpdENsYXNzRXhwcmVzc2lvbihub2RlOiBDbGFzc0V4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiQ2xhc3NFeHByZXNzaW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0Q2xhc3NFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRDb21tYUV4cHJlc3Npb24obm9kZTogQ29tbWFFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkNvbW1hRXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdENvbW1hRXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0RWxlbWVudEFjY2Vzc0V4cHJlc3Npb24obm9kZTogRWxlbWVudEFjY2Vzc0V4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiRWxlbWVudEFjY2Vzc0V4cHJlc3Npb25cIik7XG4gICAgc3VwZXIudmlzaXRFbGVtZW50QWNjZXNzRXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0RnVuY3Rpb25FeHByZXNzaW9uKG5vZGU6IEZ1bmN0aW9uRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJGdW5jdGlvbkV4cHJlc3Npb25cIik7XG4gICAgc3VwZXIudmlzaXRGdW5jdGlvbkV4cHJlc3Npb24obm9kZSk7XG4gIH1cblxuICB2aXNpdExpdGVyYWxFeHByZXNzaW9uKG5vZGU6IExpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkxpdGVyYWxFeHByZXNzaW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0TGl0ZXJhbEV4cHJlc3Npb24obm9kZSk7XG4gIH1cblxuICB2aXNpdEZsb2F0TGl0ZXJhbEV4cHJlc3Npb24obm9kZTogRmxvYXRMaXRlcmFsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJGbG9hdExpdGVyYWxFeHByZXNzaW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0RmxvYXRMaXRlcmFsRXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0SW5zdGFuY2VPZkV4cHJlc3Npb24obm9kZTogSW5zdGFuY2VPZkV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiSW5zdGFuY2VPZkV4cHJlc3Npb25cIik7XG4gICAgc3VwZXIudmlzaXRJbnN0YW5jZU9mRXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0SW50ZWdlckxpdGVyYWxFeHByZXNzaW9uKG5vZGU6IEludGVnZXJMaXRlcmFsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMuc2IucHVzaChpNjRfdG9fc3RyaW5nKG5vZGUudmFsdWUpKTtcbiAgfVxuXG4gIHZpc2l0U3RyaW5nTGl0ZXJhbChzdHI6IHN0cmluZywgc2luZ2xlUXVvdGVkPzogYm9vbGVhbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJTdHJpbmdMaXRlcmFsXCIpO1xuICAgIHRoaXMuc2IucHVzaChzdHIpO1xuICB9XG5cbiAgdmlzaXRTdHJpbmdMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBTdHJpbmdMaXRlcmFsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJTdHJpbmdMaXRlcmFsRXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdFN0cmluZ0xpdGVyYWxFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRSZWdleHBMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBSZWdleHBMaXRlcmFsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJSZWdleHBMaXRlcmFsRXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdFJlZ2V4cExpdGVyYWxFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXROZXdFeHByZXNzaW9uKG5vZGU6IE5ld0V4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiTmV3RXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdE5ld0V4cHJlc3Npb24obm9kZSk7XG4gIH1cblxuICB2aXNpdFBhcmVudGhlc2l6ZWRFeHByZXNzaW9uKG5vZGU6IFBhcmVudGhlc2l6ZWRFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlBhcmVudGhlc2l6ZWRFeHByZXNzaW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0UGFyZW50aGVzaXplZEV4cHJlc3Npb24obm9kZSk7XG4gIH1cblxuICB2aXNpdFByb3BlcnR5QWNjZXNzRXhwcmVzc2lvbihub2RlOiBQcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiUHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0UHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRUZXJuYXJ5RXhwcmVzc2lvbihub2RlOiBUZXJuYXJ5RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJUZXJuYXJ5RXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdFRlcm5hcnlFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRVbmFyeUV4cHJlc3Npb24obm9kZTogVW5hcnlFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlVuYXJ5RXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdFVuYXJ5RXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0VW5hcnlQb3N0Zml4RXhwcmVzc2lvbihub2RlOiBVbmFyeVBvc3RmaXhFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlVuYXJ5UG9zdGZpeEV4cHJlc3Npb25cIik7XG4gICAgc3VwZXIudmlzaXRVbmFyeVBvc3RmaXhFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRVbmFyeVByZWZpeEV4cHJlc3Npb24obm9kZTogVW5hcnlQcmVmaXhFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlVuYXJ5UHJlZml4RXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdFVuYXJ5UHJlZml4RXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0U3VwZXJFeHByZXNzaW9uKG5vZGU6IFN1cGVyRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJTdXBlckV4cHJlc3Npb246IFwiICsgbm9kZS5zeW1ib2wpO1xuICAgIHN1cGVyLnZpc2l0U3VwZXJFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRGYWxzZUV4cHJlc3Npb24obm9kZTogRmFsc2VFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkZhbHNlRXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdEZhbHNlRXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0VHJ1ZUV4cHJlc3Npb24obm9kZTogVHJ1ZUV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiVHJ1ZUV4cHJlc3Npb25cIik7XG4gICAgc3VwZXIudmlzaXRUcnVlRXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0VGhpc0V4cHJlc3Npb24obm9kZTogVGhpc0V4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiVGhpc0V4cHJlc3Npb25cIik7XG4gICAgc3VwZXIudmlzaXRUaGlzRXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0TnVsbEV4cGVyc3Npb24obm9kZTogTnVsbEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiTnVsbEV4cGVyc3Npb25cIik7XG4gICAgc3VwZXIudmlzaXROdWxsRXhwZXJzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0Q29uc3RydWN0b3JFeHByZXNzaW9uKG5vZGU6IENvbnN0cnVjdG9yRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJDb25zdHJ1Y3RvckV4cHJlc3Npb25cIik7XG4gICAgc3VwZXIudmlzaXRDb25zdHJ1Y3RvckV4cHJlc3Npb24obm9kZSk7XG4gIH1cblxuICB2aXNpdE5vZGVBbmRUZXJtaW5hdGUoc3RhdGVtZW50OiBTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiTm9kZUFuZFRlcm1pbmF0ZVwiKTtcbiAgfVxuXG4gIHZpc2l0QmxvY2tTdGF0ZW1lbnQobm9kZTogQmxvY2tTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiQmxvY2tTdGF0ZW1lbnRcIik7XG4gICAgdGhpcy5kZXB0aCsrO1xuICAgIHN1cGVyLnZpc2l0QmxvY2tTdGF0ZW1lbnQobm9kZSk7XG4gICAgdGhpcy5kZXB0aC0tO1xuICB9XG5cbiAgdmlzaXRCcmVha1N0YXRlbWVudChub2RlOiBCcmVha1N0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJCcmVha1N0YXRlbWVudFwiKTtcbiAgICBzdXBlci52aXNpdEJyZWFrU3RhdGVtZW50KG5vZGUpO1xuICB9XG5cbiAgdmlzaXRDb250aW51ZVN0YXRlbWVudChub2RlOiBDb250aW51ZVN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJDb250aW51ZVN0YXRlbWVudFwiKTtcbiAgICBzdXBlci52aXNpdENvbnRpbnVlU3RhdGVtZW50KG5vZGUpO1xuICB9XG5cbiAgdmlzaXRDbGFzc0RlY2xhcmF0aW9uKG5vZGU6IENsYXNzRGVjbGFyYXRpb24sIGlzRGVmYXVsdD86IGJvb2xlYW4pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiQ2xhc3NEZWNsYXJhdGlvbjogXCIgKyBub2RlLm5hbWUuc3ltYm9sKTtcbiAgICBmb3IgKGNvbnN0IG1lbWJlciBvZiBub2RlLm1lbWJlcnMpIHtcbiAgICAgIHRoaXMuZGVwdGgrKztcbiAgICAgIG1lbWJlci52aXNpdCh0aGlzKTtcbiAgICAgIHRoaXMuZGVwdGgtLTtcbiAgICB9XG4gIH1cblxuICB2aXNpdERvU3RhdGVtZW50KG5vZGU6IERvU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkRvU3RhdGVtZW50XCIpO1xuICAgIHN1cGVyLnZpc2l0RG9TdGF0ZW1lbnQobm9kZSk7XG4gIH1cblxuICB2aXNpdEVtcHR5U3RhdGVtZW50KG5vZGU6IEVtcHR5U3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkVtcHR5U3RhdGVtZW50XCIpO1xuICAgIHN1cGVyLnZpc2l0RW1wdHlTdGF0ZW1lbnQobm9kZSk7XG4gIH1cblxuICB2aXNpdEVudW1EZWNsYXJhdGlvbihub2RlOiBFbnVtRGVjbGFyYXRpb24sIGlzRGVmYXVsdD86IGJvb2xlYW4pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiRW51bURlY2xhcmF0aW9uOiBcIiArIG5vZGUubmFtZSk7XG4gICAgc3VwZXIudmlzaXRFbnVtRGVjbGFyYXRpb24obm9kZSk7XG4gIH1cblxuICB2aXNpdEVudW1WYWx1ZURlY2xhcmF0aW9uKG5vZGU6IEVudW1WYWx1ZURlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkVudW1WYWx1ZURlY2xhcmF0aW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0RW51bVZhbHVlRGVjbGFyYXRpb24obm9kZSk7XG4gIH1cblxuICB2aXNpdEV4cG9ydEltcG9ydFN0YXRlbWVudChub2RlOiBFeHBvcnRJbXBvcnRTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiRXhwb3J0SW1wb3J0U3RhdGVtZW50XCIpO1xuICAgIHN1cGVyLnZpc2l0RXhwb3J0SW1wb3J0U3RhdGVtZW50KG5vZGUpO1xuICB9XG5cbiAgdmlzaXRFeHBvcnRNZW1iZXIobm9kZTogRXhwb3J0TWVtYmVyKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkV4cG9ydE1lbWJlclwiKTtcbiAgICBzdXBlci52aXNpdEV4cG9ydE1lbWJlcihub2RlKTtcbiAgfVxuXG4gIHZpc2l0RXhwb3J0U3RhdGVtZW50KG5vZGU6IEV4cG9ydFN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJFeHBvcnRTdGF0ZW1lbnRcIik7XG4gICAgc3VwZXIudmlzaXRFeHBvcnRTdGF0ZW1lbnQobm9kZSk7XG4gIH1cblxuICB2aXNpdEV4cG9ydERlZmF1bHRTdGF0ZW1lbnQobm9kZTogRXhwb3J0RGVmYXVsdFN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJFeHBvcnREZWZhdWx0U3RhdGVtZW50XCIpO1xuICAgIHN1cGVyLnZpc2l0RXhwb3J0RGVmYXVsdFN0YXRlbWVudChub2RlKTtcbiAgfVxuXG4gIHZpc2l0RXhwcmVzc2lvblN0YXRlbWVudChub2RlOiBFeHByZXNzaW9uU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkV4cHJlc3Npb25TdGF0ZW1lbnQ6IFwiKTtcbiAgICBzdXBlci52aXNpdEV4cHJlc3Npb25TdGF0ZW1lbnQobm9kZSk7XG4gICAgdGhpcy53cml0ZSh0aGlzLmZsdXNoKFwiIFwiKSk7XG4gIH1cblxuICB2aXNpdEZpZWxkRGVjbGFyYXRpb24obm9kZTogRmllbGREZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJGaWVsZERlY2xhcmF0aW9uOiBcIiwgZmFsc2UpO1xuICAgIG5vZGUubmFtZS52aXNpdCh0aGlzKTtcbiAgICBub2RlLnR5cGUhLnZpc2l0KHRoaXMpO1xuICAgIHRoaXMud3JpdGUodGhpcy5mbHVzaChcIjogXCIpKTtcbiAgfVxuXG4gIHZpc2l0Rm9yU3RhdGVtZW50KG5vZGU6IEZvclN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJGb3JTdGF0ZW1lbnRcIik7XG4gICAgc3VwZXIudmlzaXRGb3JTdGF0ZW1lbnQobm9kZSk7XG4gIH1cblxuICB2aXNpdEZ1bmN0aW9uRGVjbGFyYXRpb24oXG4gICAgbm9kZTogRnVuY3Rpb25EZWNsYXJhdGlvbixcbiAgICBpc0RlZmF1bHQ/OiBib29sZWFuXG4gICk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJGdW5jdGlvbkRlY2xhcmF0aW9uOiBcIiArIG5vZGUubmFtZS5zeW1ib2wsIGZhbHNlKTtcbiAgICBub2RlLnNpZ25hdHVyZS52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0RnVuY3Rpb25Db21tb24obm9kZTogRnVuY3Rpb25EZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJGdW5jdGlvbkNvbW1vblwiKTtcbiAgICBzdXBlci52aXNpdEZ1bmN0aW9uQ29tbW9uKG5vZGUpO1xuICB9XG4gIHZpc2l0SWZTdGF0ZW1lbnQobm9kZTogSWZTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiSWZTdGF0ZW1lbnRcIik7XG4gICAgc3VwZXIudmlzaXRJZlN0YXRlbWVudChub2RlKTtcbiAgfVxuXG4gIHZpc2l0SW1wb3J0RGVjbGFyYXRpb24obm9kZTogSW1wb3J0RGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiSW1wb3J0RGVjbGFyYXRpb25cIik7XG4gICAgc3VwZXIudmlzaXRJbXBvcnREZWNsYXJhdGlvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0SW1wb3J0U3RhdGVtZW50KG5vZGU6IEltcG9ydFN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJJbXBvcnRTdGF0ZW1lbnQ6IFwiICsgbm9kZS5pbnRlcm5hbFBhdGgpO1xuICAgIHN1cGVyLnZpc2l0SW1wb3J0U3RhdGVtZW50KG5vZGUpO1xuICB9XG5cbiAgdmlzaXRJbmRleFNpZ25hdHVyZURlY2xhcmF0aW9uKG5vZGU6IEluZGV4U2lnbmF0dXJlRGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiSW5kZXhTaWduYXR1cmVEZWNsYXJhdGlvblwiKTtcbiAgICBzdXBlci52aXNpdEluZGV4U2lnbmF0dXJlRGVjbGFyYXRpb24obm9kZSk7XG4gIH1cblxuICB2aXNpdEludGVyZmFjZURlY2xhcmF0aW9uKFxuICAgIG5vZGU6IEludGVyZmFjZURlY2xhcmF0aW9uLFxuICAgIGlzRGVmYXVsdD86IGJvb2xlYW5cbiAgKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkludGVyZmFjZURlY2xhcmF0aW9uXCIsIGZhbHNlKTtcbiAgICBub2RlLm5hbWUudmlzaXQodGhpcyk7XG4gICAgdGhpcy53cml0ZSh0aGlzLmZsdXNoKFwiXCIpLCBmYWxzZSk7XG4gICAgaWYgKG5vZGUuaXNHZW5lcmljKSB7XG4gICAgICB0aGlzLnZpc2l0KG5vZGUudHlwZVBhcmFtZXRlcnMpO1xuICAgICAgdGhpcy53cml0ZShcIjxcIiArIHRoaXMuZmx1c2goXCIsIFwiKSArIFwiPiBcIiwgZmFsc2UpO1xuICAgIH1cbiAgICB0aGlzLnZpc2l0KG5vZGUuaW1wbGVtZW50c1R5cGVzKTtcbiAgICBpZiAodGhpcy5zYi5sZW5ndGggPiAwKSB7XG4gICAgICB0aGlzLndyaXRlKFwiaW1wbGVtZW50cyBcIiArIHRoaXMuZmx1c2goXCIsIFwiKSk7XG4gICAgfVxuICAgIGlmIChub2RlLmV4dGVuZHNUeXBlKSB7XG4gICAgICBub2RlLmV4dGVuZHNUeXBlLnZpc2l0KHRoaXMpO1xuICAgICAgdGhpcy53cml0ZShcImV4dGVuZHMgXCIgKyB0aGlzLmZsdXNoKFwiXCIpLCBmYWxzZSk7XG4gICAgfVxuICAgIHRoaXMud3JpdGUoXCJcIik7XG4gICAgdGhpcy5kZXB0aCsrO1xuICAgIHRoaXMudmlzaXQobm9kZS5tZW1iZXJzKTtcbiAgICB0aGlzLmRlcHRoLS07XG4gIH1cblxuICB2aXNpdE1ldGhvZERlY2xhcmF0aW9uKG5vZGU6IE1ldGhvZERlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIk1ldGhvZERlY2xhcmF0aW9uOiBcIiArIG5vZGUubmFtZS5zeW1ib2wpO1xuICAgIHRoaXMuZGVwdGgrKztcbiAgICBpZiAobm9kZS5ib2R5KSBub2RlLmJvZHkudmlzaXQodGhpcyk7XG4gICAgdGhpcy5kZXB0aC0tO1xuICB9XG4gIHZpc2l0TmFtZXNwYWNlRGVjbGFyYXRpb24oXG4gICAgbm9kZTogTmFtZXNwYWNlRGVjbGFyYXRpb24sXG4gICAgaXNEZWZhdWx0PzogYm9vbGVhblxuICApOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiTmFtZXNwYWNlRGVjbGFyYXRpb25cIik7XG4gICAgc3VwZXIudmlzaXROYW1lc3BhY2VEZWNsYXJhdGlvbihub2RlKTtcbiAgfVxuICB2aXNpdFJldHVyblN0YXRlbWVudChub2RlOiBSZXR1cm5TdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiUmV0dXJuU3RhdGVtZW50XCIpO1xuICAgIHN1cGVyLnZpc2l0UmV0dXJuU3RhdGVtZW50KG5vZGUpO1xuICB9XG4gIHZpc2l0U3dpdGNoQ2FzZShub2RlOiBTd2l0Y2hDYXNlKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlN3aXRjaENhc2VcIik7XG4gICAgc3VwZXIudmlzaXRTd2l0Y2hDYXNlKG5vZGUpO1xuICB9XG4gIHZpc2l0U3dpdGNoU3RhdGVtZW50KG5vZGU6IFN3aXRjaFN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJTd2l0Y2hTdGF0ZW1lbnRcIik7XG4gICAgc3VwZXIudmlzaXRTd2l0Y2hTdGF0ZW1lbnQobm9kZSk7XG4gIH1cbiAgdmlzaXRUaHJvd1N0YXRlbWVudChub2RlOiBUaHJvd1N0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJUaHJvd1N0YXRlbWVudFwiKTtcbiAgICBzdXBlci52aXNpdFRocm93U3RhdGVtZW50KG5vZGUpO1xuICB9XG4gIHZpc2l0VHJ5U3RhdGVtZW50KG5vZGU6IFRyeVN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJUcnlTdGF0ZW1lbnRcIik7XG4gICAgc3VwZXIudmlzaXRUcnlTdGF0ZW1lbnQobm9kZSk7XG4gIH1cbiAgdmlzaXRUeXBlRGVjbGFyYXRpb24obm9kZTogVHlwZURlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlR5cGVEZWNsYXJhdGlvblwiKTtcbiAgICBzdXBlci52aXNpdFR5cGVEZWNsYXJhdGlvbihub2RlKTtcbiAgfVxuICB2aXNpdFZhcmlhYmxlRGVjbGFyYXRpb24obm9kZTogVmFyaWFibGVEZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJWYXJpYWJsZURlY2xhcmF0aW9uOiBcIiwgZmFsc2UpO1xuICAgIG5vZGUubmFtZS52aXNpdCh0aGlzKTtcbiAgICBpZiAobm9kZS50eXBlKSBub2RlLnR5cGUudmlzaXQodGhpcyk7XG4gICAgbGV0IG5hbWUgPSB0aGlzLmZsdXNoKFwiOiBcIik7XG4gICAgaWYgKG5vZGUuaW5pdGlhbGl6ZXIpIG5vZGUuaW5pdGlhbGl6ZXIudmlzaXQodGhpcyk7XG4gICAgbGV0IGluaXRpYWxpemVyID0gdGhpcy5mbHVzaChcIiBcIik7XG4gICAgdGhpcy53cml0ZShuYW1lICsgKG5vZGUuaW5pdGlhbGl6ZXIgPyBcIiA9IFwiICsgaW5pdGlhbGl6ZXIgOiBcIlwiKSArIFwiO1wiKTtcbiAgfVxuICB2aXNpdFZhcmlhYmxlU3RhdGVtZW50KG5vZGU6IFZhcmlhYmxlU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlZhcmlhYmxlU3RhdGVtZW50XCIpO1xuICAgIHN1cGVyLnZpc2l0VmFyaWFibGVTdGF0ZW1lbnQobm9kZSk7XG4gIH1cbiAgdmlzaXRXaGlsZVN0YXRlbWVudChub2RlOiBXaGlsZVN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJXaGlsZVN0YXRlbWVudFwiKTtcbiAgICBzdXBlci52aXNpdFdoaWxlU3RhdGVtZW50KG5vZGUpO1xuICB9XG4gIHZpc2l0Vm9pZFN0YXRlbWVudChub2RlOiBWb2lkU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlZvaWRTdGF0ZW1lbnRcIik7XG4gICAgc3VwZXIudmlzaXRWb2lkU3RhdGVtZW50KG5vZGUpO1xuICB9XG4gIHZpc2l0Q29tbWVudChub2RlOiBDb21tZW50Tm9kZSk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJDb21tZW50XCIpO1xuICAgIHN1cGVyLnZpc2l0Q29tbWVudChub2RlKTtcbiAgfVxuICB2aXNpdERlY29yYXRvck5vZGUobm9kZTogRGVjb3JhdG9yTm9kZSk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJEZWNvcmF0b3JOb2RlXCIpO1xuICAgIHN1cGVyLnZpc2l0RGVjb3JhdG9yTm9kZShub2RlKTtcbiAgfVxuICB2aXNpdFBhcmFtZXRlcihub2RlOiBQYXJhbWV0ZXJOb2RlKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlBhcmFtZXRlciBcIiArIG5vZGUubmFtZS5zeW1ib2wgKyBcIjpcIiwgZmFsc2UpO1xuICAgIG5vZGUudHlwZS52aXNpdCh0aGlzKTtcbiAgfVxufVxuIl19