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
var ast_1 = require("../ast");
var PrinterVisitor = /** @class */ (function (_super) {
    __extends(PrinterVisitor, _super);
    function PrinterVisitor() {
        var _this = _super !== null && _super.apply(this, arguments) || this;
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXN0UHJpbnRlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uL3NyYy9pbnN0YW5jZXMvYXN0UHJpbnRlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBQUEsaURBMkV3QjtBQUN4Qiw4QkFBcUM7QUFFckM7SUFBb0Msa0NBQVc7SUFBL0M7UUFBQSxxRUErWkM7UUE5WkMsV0FBSyxHQUFXLENBQUMsQ0FBQztRQUNsQixRQUFFLEdBQWEsRUFBRSxDQUFDOztJQTZacEIsQ0FBQztJQTFaQyw4QkFBSyxHQUFMLFVBQU0sR0FBVyxFQUFFLE9BQXVCO1FBQXZCLHdCQUFBLEVBQUEsY0FBdUI7UUFDeEMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLEdBQUcsR0FBRyxHQUFHLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUM7SUFDNUUsQ0FBQztJQUVELDhCQUFLLEdBQUwsVUFBTSxTQUFpQjtRQUNyQixJQUFJLEdBQUcsR0FBRyxJQUFJLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztRQUNsQyxJQUFJLENBQUMsRUFBRSxDQUFDLE1BQU0sR0FBRyxDQUFDLENBQUM7UUFDbkIsT0FBTyxHQUFHLENBQUM7SUFDYixDQUFDO0lBRUQsb0NBQVcsR0FBWCxVQUFZLElBQVk7UUFDdEIsSUFBSSxDQUFDLEtBQUssQ0FBQyxVQUFVLEdBQUcsSUFBSSxDQUFDLGNBQWMsQ0FBQyxDQUFDO1FBQzdDLGlCQUFNLFdBQVcsWUFBQyxJQUFJLENBQUMsQ0FBQztJQUMxQixDQUFDO0lBRUQsc0NBQWEsR0FBYixVQUFjLElBQWM7UUFDMUIsSUFBSSxDQUFDLEtBQUssQ0FBQyxZQUFZLEdBQUcsSUFBSSxDQUFDLElBQUksQ0FBQyxRQUFRLEVBQUUsQ0FBQyxDQUFDO1FBQ2hELGlCQUFNLGFBQWEsWUFBQyxJQUFJLENBQUMsQ0FBQztJQUM1QixDQUFDO0lBRUQsOENBQXFCLEdBQXJCLFVBQXNCLElBQXNCOztRQUMxQyxJQUFJLENBQUMsS0FBSyxDQUFDLG9CQUFvQixFQUFFLEtBQUssQ0FBQyxDQUFDOztZQUN4QyxLQUFrQixJQUFBLEtBQUEsU0FBQSxJQUFJLENBQUMsVUFBVSxDQUFBLGdCQUFBLDRCQUFFO2dCQUE5QixJQUFJLEtBQUssV0FBQTtnQkFDWixLQUFLLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO2FBQ25COzs7Ozs7Ozs7UUFDRCxJQUFJLENBQUMsS0FBSyxDQUFDLEdBQUcsR0FBRyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxHQUFHLE9BQU8sQ0FBQyxDQUFDO1FBQzdDLElBQUksQ0FBQyxLQUFLLENBQUMsZUFBZSxFQUFFLEtBQUssQ0FBQyxDQUFDO1FBQ25DLElBQUksQ0FBQyxVQUFVLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO0lBQzlCLENBQUM7SUFFRCwyQ0FBa0IsR0FBbEIsVUFBbUIsSUFBdUI7UUFDeEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxnQkFBZ0IsRUFBRSxLQUFLLENBQUMsQ0FBQztRQUNwQyxJQUFJLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQztJQUN4QixDQUFDO0lBRUQsa0RBQXlCLEdBQXpCLFVBQTBCLElBQTBCO1FBQ2xELElBQUksQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxNQUFNLENBQUMsQ0FBQztRQUMxQixpQkFBTSx5QkFBeUIsWUFBQyxJQUFJLENBQUMsQ0FBQztJQUN4QyxDQUFDO0lBRUQsb0RBQTJCLEdBQTNCLFVBQTRCLElBQTRCO1FBQ3RELElBQUksQ0FBQyxLQUFLLENBQUMsMEJBQTBCLEVBQUUsS0FBSyxDQUFDLENBQUM7UUFDOUMsaUJBQU0sMkJBQTJCLFlBQUMsSUFBSSxDQUFDLENBQUM7UUFDeEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxHQUFHLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsR0FBRyxHQUFHLENBQUMsQ0FBQztJQUMzQyxDQUFDO0lBRUQscURBQTRCLEdBQTVCLFVBQTZCLElBQTZCO1FBQ3hELElBQUksQ0FBQyxLQUFLLENBQUMsMkJBQTJCLENBQUMsQ0FBQztRQUN4QyxpQkFBTSw0QkFBNEIsWUFBQyxJQUFJLENBQUMsQ0FBQztRQUN6QyxJQUFJLENBQUMsS0FBSyxFQUFFLENBQUM7UUFFYixJQUFJLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxDQUFDO1FBQ2hCLEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxJQUFJLENBQUMsRUFBRSxDQUFDLE1BQU0sRUFBRSxDQUFDLElBQUksQ0FBQyxFQUFFO1lBQzFDLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxHQUFHLElBQUksQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLEdBQUcsSUFBSSxHQUFHLElBQUksQ0FBQyxFQUFFLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUM7U0FDdkQ7UUFDRCxJQUFJLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxDQUFDO1FBQ2hCLElBQUksQ0FBQyxLQUFLLEVBQUUsQ0FBQztJQUNmLENBQUM7SUFFRCxpREFBd0IsR0FBeEIsVUFBeUIsSUFBeUI7UUFDaEQsSUFBSSxDQUFDLEtBQUssQ0FBQyx1QkFBdUIsRUFBRSxLQUFLLENBQUMsQ0FBQztRQUMzQyxpQkFBTSx3QkFBd0IsWUFBQyxJQUFJLENBQUMsQ0FBQztRQUNyQyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQztJQUM5QixDQUFDO0lBRUQsOENBQXFCLEdBQXJCLFVBQXNCLElBQXNCO1FBQzFDLElBQUksQ0FBQyxLQUFLLENBQUMsb0JBQW9CLEVBQUUsS0FBSyxDQUFDLENBQUM7UUFDeEMsaUJBQU0scUJBQXFCLFlBQUMsSUFBSSxDQUFDLENBQUM7UUFDbEMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxzQ0FBcUIsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQ2pFLENBQUM7SUFFRCw0Q0FBbUIsR0FBbkIsVUFBb0IsSUFBb0I7UUFDdEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDO1FBQzdCLGlCQUFNLG1CQUFtQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ2xDLENBQUM7SUFFRCw2Q0FBb0IsR0FBcEIsVUFBcUIsSUFBcUI7UUFDeEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxpQkFBaUIsQ0FBQyxDQUFDO1FBQzlCLGlCQUFNLG9CQUFvQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ25DLENBQUM7SUFFRCw2Q0FBb0IsR0FBcEIsVUFBcUIsSUFBcUI7UUFDeEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxpQkFBaUIsQ0FBQyxDQUFDO1FBQzlCLGlCQUFNLG9CQUFvQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ25DLENBQUM7SUFFRCxxREFBNEIsR0FBNUIsVUFBNkIsSUFBNkI7UUFDeEQsSUFBSSxDQUFDLEtBQUssQ0FBQyx5QkFBeUIsQ0FBQyxDQUFDO1FBQ3RDLGlCQUFNLDRCQUE0QixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQzNDLENBQUM7SUFFRCxnREFBdUIsR0FBdkIsVUFBd0IsSUFBd0I7UUFDOUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxvQkFBb0IsQ0FBQyxDQUFDO1FBQ2pDLGlCQUFNLHVCQUF1QixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ3RDLENBQUM7SUFFRCwrQ0FBc0IsR0FBdEIsVUFBdUIsSUFBdUI7UUFDNUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxtQkFBbUIsQ0FBQyxDQUFDO1FBQ2hDLGlCQUFNLHNCQUFzQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ3JDLENBQUM7SUFFRCxvREFBMkIsR0FBM0IsVUFBNEIsSUFBNEI7UUFDdEQsSUFBSSxDQUFDLEtBQUssQ0FBQyx3QkFBd0IsQ0FBQyxDQUFDO1FBQ3JDLGlCQUFNLDJCQUEyQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQzFDLENBQUM7SUFFRCxrREFBeUIsR0FBekIsVUFBMEIsSUFBMEI7UUFDbEQsSUFBSSxDQUFDLEtBQUssQ0FBQyxzQkFBc0IsQ0FBQyxDQUFDO1FBQ25DLGlCQUFNLHlCQUF5QixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ3hDLENBQUM7SUFFRCxzREFBNkIsR0FBN0IsVUFBOEIsSUFBOEI7UUFDMUQsSUFBSSxDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsYUFBYSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDO0lBQzFDLENBQUM7SUFFRCwyQ0FBa0IsR0FBbEIsVUFBbUIsR0FBVyxFQUFFLFlBQXNCO1FBQ3BELElBQUksQ0FBQyxLQUFLLENBQUMsZUFBZSxDQUFDLENBQUM7UUFDNUIsSUFBSSxDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLENBQUM7SUFDcEIsQ0FBQztJQUVELHFEQUE0QixHQUE1QixVQUE2QixJQUE2QjtRQUN4RCxJQUFJLENBQUMsS0FBSyxDQUFDLHlCQUF5QixDQUFDLENBQUM7UUFDdEMsaUJBQU0sNEJBQTRCLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDM0MsQ0FBQztJQUVELHFEQUE0QixHQUE1QixVQUE2QixJQUE2QjtRQUN4RCxJQUFJLENBQUMsS0FBSyxDQUFDLHlCQUF5QixDQUFDLENBQUM7UUFDdEMsaUJBQU0sNEJBQTRCLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDM0MsQ0FBQztJQUVELDJDQUFrQixHQUFsQixVQUFtQixJQUFtQjtRQUNwQyxJQUFJLENBQUMsS0FBSyxDQUFDLGVBQWUsQ0FBQyxDQUFDO1FBQzVCLGlCQUFNLGtCQUFrQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ2pDLENBQUM7SUFFRCxxREFBNEIsR0FBNUIsVUFBNkIsSUFBNkI7UUFDeEQsSUFBSSxDQUFDLEtBQUssQ0FBQyx5QkFBeUIsQ0FBQyxDQUFDO1FBQ3RDLGlCQUFNLDRCQUE0QixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQzNDLENBQUM7SUFFRCxzREFBNkIsR0FBN0IsVUFBOEIsSUFBOEI7UUFDMUQsSUFBSSxDQUFDLEtBQUssQ0FBQywwQkFBMEIsQ0FBQyxDQUFDO1FBQ3ZDLGlCQUFNLDZCQUE2QixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQzVDLENBQUM7SUFFRCwrQ0FBc0IsR0FBdEIsVUFBdUIsSUFBdUI7UUFDNUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxtQkFBbUIsQ0FBQyxDQUFDO1FBQ2hDLGlCQUFNLHNCQUFzQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ3JDLENBQUM7SUFFRCw2Q0FBb0IsR0FBcEIsVUFBcUIsSUFBcUI7UUFDeEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxpQkFBaUIsQ0FBQyxDQUFDO1FBQzlCLGlCQUFNLG9CQUFvQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ25DLENBQUM7SUFFRCxvREFBMkIsR0FBM0IsVUFBNEIsSUFBNEI7UUFDdEQsSUFBSSxDQUFDLEtBQUssQ0FBQyx3QkFBd0IsQ0FBQyxDQUFDO1FBQ3JDLGlCQUFNLDJCQUEyQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQzFDLENBQUM7SUFFRCxtREFBMEIsR0FBMUIsVUFBMkIsSUFBMkI7UUFDcEQsSUFBSSxDQUFDLEtBQUssQ0FBQyx1QkFBdUIsQ0FBQyxDQUFDO1FBQ3BDLGlCQUFNLDBCQUEwQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ3pDLENBQUM7SUFFRCw2Q0FBb0IsR0FBcEIsVUFBcUIsSUFBcUI7UUFDeEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxtQkFBbUIsR0FBRyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUM7UUFDOUMsaUJBQU0sb0JBQW9CLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDbkMsQ0FBQztJQUVELDZDQUFvQixHQUFwQixVQUFxQixJQUFxQjtRQUN4QyxJQUFJLENBQUMsS0FBSyxDQUFDLGlCQUFpQixDQUFDLENBQUM7UUFDOUIsaUJBQU0sb0JBQW9CLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDbkMsQ0FBQztJQUVELDRDQUFtQixHQUFuQixVQUFvQixJQUFvQjtRQUN0QyxJQUFJLENBQUMsS0FBSyxDQUFDLGdCQUFnQixDQUFDLENBQUM7UUFDN0IsaUJBQU0sbUJBQW1CLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDbEMsQ0FBQztJQUVELDRDQUFtQixHQUFuQixVQUFvQixJQUFvQjtRQUN0QyxJQUFJLENBQUMsS0FBSyxDQUFDLGdCQUFnQixDQUFDLENBQUM7UUFDN0IsaUJBQU0sbUJBQW1CLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDbEMsQ0FBQztJQUVELDRDQUFtQixHQUFuQixVQUFvQixJQUFvQjtRQUN0QyxJQUFJLENBQUMsS0FBSyxDQUFDLGdCQUFnQixDQUFDLENBQUM7UUFDN0IsaUJBQU0sbUJBQW1CLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDbEMsQ0FBQztJQUVELG1EQUEwQixHQUExQixVQUEyQixJQUEyQjtRQUNwRCxJQUFJLENBQUMsS0FBSyxDQUFDLHVCQUF1QixDQUFDLENBQUM7UUFDcEMsaUJBQU0sMEJBQTBCLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDekMsQ0FBQztJQUVELDhDQUFxQixHQUFyQixVQUFzQixTQUFvQjtRQUN4QyxJQUFJLENBQUMsS0FBSyxDQUFDLGtCQUFrQixDQUFDLENBQUM7SUFDakMsQ0FBQztJQUVELDRDQUFtQixHQUFuQixVQUFvQixJQUFvQjtRQUN0QyxJQUFJLENBQUMsS0FBSyxDQUFDLGdCQUFnQixDQUFDLENBQUM7UUFDN0IsSUFBSSxDQUFDLEtBQUssRUFBRSxDQUFDO1FBQ2IsaUJBQU0sbUJBQW1CLFlBQUMsSUFBSSxDQUFDLENBQUM7UUFDaEMsSUFBSSxDQUFDLEtBQUssRUFBRSxDQUFDO0lBQ2YsQ0FBQztJQUVELDRDQUFtQixHQUFuQixVQUFvQixJQUFvQjtRQUN0QyxJQUFJLENBQUMsS0FBSyxDQUFDLGdCQUFnQixDQUFDLENBQUM7UUFDN0IsaUJBQU0sbUJBQW1CLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDbEMsQ0FBQztJQUVELCtDQUFzQixHQUF0QixVQUF1QixJQUF1QjtRQUM1QyxJQUFJLENBQUMsS0FBSyxDQUFDLG1CQUFtQixDQUFDLENBQUM7UUFDaEMsaUJBQU0sc0JBQXNCLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDckMsQ0FBQztJQUVELDhDQUFxQixHQUFyQixVQUFzQixJQUFzQixFQUFFLFNBQW1COztRQUMvRCxJQUFJLENBQUMsS0FBSyxDQUFDLG9CQUFvQixHQUFHLElBQUksQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUM7O1lBQ3BELEtBQXFCLElBQUEsS0FBQSxTQUFBLElBQUksQ0FBQyxPQUFPLENBQUEsZ0JBQUEsNEJBQUU7Z0JBQTlCLElBQU0sTUFBTSxXQUFBO2dCQUNmLElBQUksQ0FBQyxLQUFLLEVBQUUsQ0FBQztnQkFDYixNQUFNLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO2dCQUNuQixJQUFJLENBQUMsS0FBSyxFQUFFLENBQUM7YUFDZDs7Ozs7Ozs7O0lBQ0gsQ0FBQztJQUVELHlDQUFnQixHQUFoQixVQUFpQixJQUFpQjtRQUNoQyxJQUFJLENBQUMsS0FBSyxDQUFDLGFBQWEsQ0FBQyxDQUFDO1FBQzFCLGlCQUFNLGdCQUFnQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQy9CLENBQUM7SUFFRCw0Q0FBbUIsR0FBbkIsVUFBb0IsSUFBb0I7UUFDdEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDO1FBQzdCLGlCQUFNLG1CQUFtQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ2xDLENBQUM7SUFFRCw2Q0FBb0IsR0FBcEIsVUFBcUIsSUFBcUIsRUFBRSxTQUFtQjtRQUM3RCxJQUFJLENBQUMsS0FBSyxDQUFDLG1CQUFtQixHQUFHLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUM1QyxpQkFBTSxvQkFBb0IsWUFBQyxJQUFJLENBQUMsQ0FBQztJQUNuQyxDQUFDO0lBRUQsa0RBQXlCLEdBQXpCLFVBQTBCLElBQTBCO1FBQ2xELElBQUksQ0FBQyxLQUFLLENBQUMsc0JBQXNCLENBQUMsQ0FBQztRQUNuQyxpQkFBTSx5QkFBeUIsWUFBQyxJQUFJLENBQUMsQ0FBQztJQUN4QyxDQUFDO0lBRUQsbURBQTBCLEdBQTFCLFVBQTJCLElBQTJCO1FBQ3BELElBQUksQ0FBQyxLQUFLLENBQUMsdUJBQXVCLENBQUMsQ0FBQztRQUNwQyxpQkFBTSwwQkFBMEIsWUFBQyxJQUFJLENBQUMsQ0FBQztJQUN6QyxDQUFDO0lBRUQsMENBQWlCLEdBQWpCLFVBQWtCLElBQWtCO1FBQ2xDLElBQUksQ0FBQyxLQUFLLENBQUMsY0FBYyxDQUFDLENBQUM7UUFDM0IsaUJBQU0saUJBQWlCLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDaEMsQ0FBQztJQUVELDZDQUFvQixHQUFwQixVQUFxQixJQUFxQjtRQUN4QyxJQUFJLENBQUMsS0FBSyxDQUFDLGlCQUFpQixDQUFDLENBQUM7UUFDOUIsaUJBQU0sb0JBQW9CLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDbkMsQ0FBQztJQUVELG9EQUEyQixHQUEzQixVQUE0QixJQUE0QjtRQUN0RCxJQUFJLENBQUMsS0FBSyxDQUFDLHdCQUF3QixDQUFDLENBQUM7UUFDckMsaUJBQU0sMkJBQTJCLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDMUMsQ0FBQztJQUVELGlEQUF3QixHQUF4QixVQUF5QixJQUF5QjtRQUNoRCxJQUFJLENBQUMsS0FBSyxDQUFDLHVCQUF1QixDQUFDLENBQUM7UUFDcEMsaUJBQU0sd0JBQXdCLFlBQUMsSUFBSSxDQUFDLENBQUM7UUFDckMsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUM7SUFDOUIsQ0FBQztJQUVELDhDQUFxQixHQUFyQixVQUFzQixJQUFzQjtRQUMxQyxJQUFJLENBQUMsS0FBSyxDQUFDLG9CQUFvQixFQUFFLEtBQUssQ0FBQyxDQUFDO1FBQ3hDLElBQUksQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ3RCLElBQUksQ0FBQyxJQUFLLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ3ZCLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDO0lBQy9CLENBQUM7SUFFRCwwQ0FBaUIsR0FBakIsVUFBa0IsSUFBa0I7UUFDbEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxjQUFjLENBQUMsQ0FBQztRQUMzQixpQkFBTSxpQkFBaUIsWUFBQyxJQUFJLENBQUMsQ0FBQztJQUNoQyxDQUFDO0lBRUQsaURBQXdCLEdBQXhCLFVBQ0UsSUFBeUIsRUFDekIsU0FBbUI7UUFFbkIsSUFBSSxDQUFDLEtBQUssQ0FBQyx1QkFBdUIsR0FBRyxJQUFJLENBQUMsSUFBSSxDQUFDLE1BQU0sRUFBRSxLQUFLLENBQUMsQ0FBQztRQUM5RCxJQUFJLENBQUMsU0FBUyxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQztJQUM3QixDQUFDO0lBRUQsNENBQW1CLEdBQW5CLFVBQW9CLElBQXlCO1FBQzNDLElBQUksQ0FBQyxLQUFLLENBQUMsZ0JBQWdCLENBQUMsQ0FBQztRQUM3QixpQkFBTSxtQkFBbUIsWUFBQyxJQUFJLENBQUMsQ0FBQztJQUNsQyxDQUFDO0lBQ0QseUNBQWdCLEdBQWhCLFVBQWlCLElBQWlCO1FBQ2hDLElBQUksQ0FBQyxLQUFLLENBQUMsYUFBYSxDQUFDLENBQUM7UUFDMUIsaUJBQU0sZ0JBQWdCLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDL0IsQ0FBQztJQUVELCtDQUFzQixHQUF0QixVQUF1QixJQUF1QjtRQUM1QyxJQUFJLENBQUMsS0FBSyxDQUFDLG1CQUFtQixDQUFDLENBQUM7UUFDaEMsaUJBQU0sc0JBQXNCLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDckMsQ0FBQztJQUVELDZDQUFvQixHQUFwQixVQUFxQixJQUFxQjtRQUN4QyxJQUFJLENBQUMsS0FBSyxDQUFDLG1CQUFtQixHQUFHLElBQUksQ0FBQyxZQUFZLENBQUMsQ0FBQztRQUNwRCxpQkFBTSxvQkFBb0IsWUFBQyxJQUFJLENBQUMsQ0FBQztJQUNuQyxDQUFDO0lBRUQsdURBQThCLEdBQTlCLFVBQStCLElBQStCO1FBQzVELElBQUksQ0FBQyxLQUFLLENBQUMsMkJBQTJCLENBQUMsQ0FBQztRQUN4QyxpQkFBTSw4QkFBOEIsWUFBQyxJQUFJLENBQUMsQ0FBQztJQUM3QyxDQUFDO0lBRUQsa0RBQXlCLEdBQXpCLFVBQ0UsSUFBMEIsRUFDMUIsU0FBbUI7UUFFbkIsSUFBSSxDQUFDLEtBQUssQ0FBQyxzQkFBc0IsRUFBRSxLQUFLLENBQUMsQ0FBQztRQUMxQyxJQUFJLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUN0QixJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsRUFBRSxDQUFDLEVBQUUsS0FBSyxDQUFDLENBQUM7UUFDbEMsSUFBSSxJQUFJLENBQUMsU0FBUyxFQUFFO1lBQ2xCLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLGNBQWMsQ0FBQyxDQUFDO1lBQ2hDLElBQUksQ0FBQyxLQUFLLENBQUMsR0FBRyxHQUFHLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLEdBQUcsSUFBSSxFQUFFLEtBQUssQ0FBQyxDQUFDO1NBQ2xEO1FBQ0QsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsZUFBZSxDQUFDLENBQUM7UUFDakMsSUFBSSxJQUFJLENBQUMsRUFBRSxDQUFDLE1BQU0sR0FBRyxDQUFDLEVBQUU7WUFDdEIsSUFBSSxDQUFDLEtBQUssQ0FBQyxhQUFhLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDO1NBQzlDO1FBQ0QsSUFBSSxJQUFJLENBQUMsV0FBVyxFQUFFO1lBQ3BCLElBQUksQ0FBQyxXQUFXLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO1lBQzdCLElBQUksQ0FBQyxLQUFLLENBQUMsVUFBVSxHQUFHLElBQUksQ0FBQyxLQUFLLENBQUMsRUFBRSxDQUFDLEVBQUUsS0FBSyxDQUFDLENBQUM7U0FDaEQ7UUFDRCxJQUFJLENBQUMsS0FBSyxDQUFDLEVBQUUsQ0FBQyxDQUFDO1FBQ2YsSUFBSSxDQUFDLEtBQUssRUFBRSxDQUFDO1FBQ2IsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDekIsSUFBSSxDQUFDLEtBQUssRUFBRSxDQUFDO0lBQ2YsQ0FBQztJQUVELCtDQUFzQixHQUF0QixVQUF1QixJQUF1QjtRQUM1QyxJQUFJLENBQUMsS0FBSyxDQUFDLHFCQUFxQixHQUFHLElBQUksQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUM7UUFDckQsSUFBSSxDQUFDLEtBQUssRUFBRSxDQUFDO1FBQ2IsSUFBSSxJQUFJLENBQUMsSUFBSTtZQUFFLElBQUksQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ3JDLElBQUksQ0FBQyxLQUFLLEVBQUUsQ0FBQztJQUNmLENBQUM7SUFDRCxrREFBeUIsR0FBekIsVUFDRSxJQUEwQixFQUMxQixTQUFtQjtRQUVuQixJQUFJLENBQUMsS0FBSyxDQUFDLHNCQUFzQixDQUFDLENBQUM7UUFDbkMsaUJBQU0seUJBQXlCLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDeEMsQ0FBQztJQUNELDZDQUFvQixHQUFwQixVQUFxQixJQUFxQjtRQUN4QyxJQUFJLENBQUMsS0FBSyxDQUFDLGlCQUFpQixDQUFDLENBQUM7UUFDOUIsaUJBQU0sb0JBQW9CLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDbkMsQ0FBQztJQUNELHdDQUFlLEdBQWYsVUFBZ0IsSUFBZ0I7UUFDOUIsSUFBSSxDQUFDLEtBQUssQ0FBQyxZQUFZLENBQUMsQ0FBQztRQUN6QixpQkFBTSxlQUFlLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDOUIsQ0FBQztJQUNELDZDQUFvQixHQUFwQixVQUFxQixJQUFxQjtRQUN4QyxJQUFJLENBQUMsS0FBSyxDQUFDLGlCQUFpQixDQUFDLENBQUM7UUFDOUIsaUJBQU0sb0JBQW9CLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDbkMsQ0FBQztJQUNELDRDQUFtQixHQUFuQixVQUFvQixJQUFvQjtRQUN0QyxJQUFJLENBQUMsS0FBSyxDQUFDLGdCQUFnQixDQUFDLENBQUM7UUFDN0IsaUJBQU0sbUJBQW1CLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDbEMsQ0FBQztJQUNELDBDQUFpQixHQUFqQixVQUFrQixJQUFrQjtRQUNsQyxJQUFJLENBQUMsS0FBSyxDQUFDLGNBQWMsQ0FBQyxDQUFDO1FBQzNCLGlCQUFNLGlCQUFpQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ2hDLENBQUM7SUFDRCw2Q0FBb0IsR0FBcEIsVUFBcUIsSUFBcUI7UUFDeEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxpQkFBaUIsQ0FBQyxDQUFDO1FBQzlCLGlCQUFNLG9CQUFvQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ25DLENBQUM7SUFDRCxpREFBd0IsR0FBeEIsVUFBeUIsSUFBeUI7UUFDaEQsSUFBSSxDQUFDLEtBQUssQ0FBQyx1QkFBdUIsRUFBRSxLQUFLLENBQUMsQ0FBQztRQUMzQyxJQUFJLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUN0QixJQUFJLElBQUksQ0FBQyxJQUFJO1lBQUUsSUFBSSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDckMsSUFBSSxJQUFJLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUM1QixJQUFJLElBQUksQ0FBQyxXQUFXO1lBQUUsSUFBSSxDQUFDLFdBQVcsQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDbkQsSUFBSSxXQUFXLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxHQUFHLENBQUMsQ0FBQztRQUNsQyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksR0FBRyxDQUFDLElBQUksQ0FBQyxXQUFXLENBQUMsQ0FBQyxDQUFDLEtBQUssR0FBRyxXQUFXLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxHQUFHLEdBQUcsQ0FBQyxDQUFDO0lBQ3pFLENBQUM7SUFDRCwrQ0FBc0IsR0FBdEIsVUFBdUIsSUFBdUI7UUFDNUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxtQkFBbUIsQ0FBQyxDQUFDO1FBQ2hDLGlCQUFNLHNCQUFzQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ3JDLENBQUM7SUFDRCw0Q0FBbUIsR0FBbkIsVUFBb0IsSUFBb0I7UUFDdEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDO1FBQzdCLGlCQUFNLG1CQUFtQixZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ2xDLENBQUM7SUFDRCwyQ0FBa0IsR0FBbEIsVUFBbUIsSUFBbUI7UUFDcEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxlQUFlLENBQUMsQ0FBQztRQUM1QixpQkFBTSxrQkFBa0IsWUFBQyxJQUFJLENBQUMsQ0FBQztJQUNqQyxDQUFDO0lBQ0QscUNBQVksR0FBWixVQUFhLElBQWlCO1FBQzVCLElBQUksQ0FBQyxLQUFLLENBQUMsU0FBUyxDQUFDLENBQUM7UUFDdEIsaUJBQU0sWUFBWSxZQUFDLElBQUksQ0FBQyxDQUFDO0lBQzNCLENBQUM7SUFDRCwyQ0FBa0IsR0FBbEIsVUFBbUIsSUFBbUI7UUFDcEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxlQUFlLENBQUMsQ0FBQztRQUM1QixpQkFBTSxrQkFBa0IsWUFBQyxJQUFJLENBQUMsQ0FBQztJQUNqQyxDQUFDO0lBQ0QsdUNBQWMsR0FBZCxVQUFlLElBQW1CO1FBQ2hDLElBQUksQ0FBQyxLQUFLLENBQUMsWUFBWSxHQUFHLElBQUksQ0FBQyxJQUFJLENBQUMsTUFBTSxHQUFHLEdBQUcsRUFBRSxLQUFLLENBQUMsQ0FBQztRQUN6RCxJQUFJLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQztJQUN4QixDQUFDO0lBQ0gscUJBQUM7QUFBRCxDQUFDLEFBL1pELENBQW9DLGlCQUFXLEdBK1o5QztBQS9aWSx3Q0FBYyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7XG4gIEFTVFZpc2l0b3IsXG4gIFNvdXJjZSxcbiAgVHlwZU5vZGUsXG4gIFR5cGVOYW1lLFxuICBOYW1lZFR5cGVOb2RlLFxuICBGdW5jdGlvblR5cGVOb2RlLFxuICBUeXBlUGFyYW1ldGVyTm9kZSxcbiAgSWRlbnRpZmllckV4cHJlc3Npb24sXG4gIEFycmF5TGl0ZXJhbEV4cHJlc3Npb24sXG4gIE9iamVjdExpdGVyYWxFeHByZXNzaW9uLFxuICBBc3NlcnRpb25FeHByZXNzaW9uLFxuICBCaW5hcnlFeHByZXNzaW9uLFxuICBDYWxsRXhwcmVzc2lvbixcbiAgQ2xhc3NFeHByZXNzaW9uLFxuICBDb21tYUV4cHJlc3Npb24sXG4gIEVsZW1lbnRBY2Nlc3NFeHByZXNzaW9uLFxuICBGdW5jdGlvbkV4cHJlc3Npb24sXG4gIExpdGVyYWxFeHByZXNzaW9uLFxuICBGbG9hdExpdGVyYWxFeHByZXNzaW9uLFxuICBJbnN0YW5jZU9mRXhwcmVzc2lvbixcbiAgSW50ZWdlckxpdGVyYWxFeHByZXNzaW9uLFxuICBTdHJpbmdMaXRlcmFsRXhwcmVzc2lvbixcbiAgUmVnZXhwTGl0ZXJhbEV4cHJlc3Npb24sXG4gIE5ld0V4cHJlc3Npb24sXG4gIFBhcmVudGhlc2l6ZWRFeHByZXNzaW9uLFxuICBQcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24sXG4gIFRlcm5hcnlFeHByZXNzaW9uLFxuICBVbmFyeUV4cHJlc3Npb24sXG4gIFVuYXJ5UG9zdGZpeEV4cHJlc3Npb24sXG4gIFVuYXJ5UHJlZml4RXhwcmVzc2lvbixcbiAgU3VwZXJFeHByZXNzaW9uLFxuICBGYWxzZUV4cHJlc3Npb24sXG4gIFRydWVFeHByZXNzaW9uLFxuICBUaGlzRXhwcmVzc2lvbixcbiAgTnVsbEV4cHJlc3Npb24sXG4gIENvbnN0cnVjdG9yRXhwcmVzc2lvbixcbiAgU3RhdGVtZW50LFxuICBCbG9ja1N0YXRlbWVudCxcbiAgQnJlYWtTdGF0ZW1lbnQsXG4gIENvbnRpbnVlU3RhdGVtZW50LFxuICBDbGFzc0RlY2xhcmF0aW9uLFxuICBEb1N0YXRlbWVudCxcbiAgRW1wdHlTdGF0ZW1lbnQsXG4gIEVudW1EZWNsYXJhdGlvbixcbiAgRW51bVZhbHVlRGVjbGFyYXRpb24sXG4gIEV4cG9ydEltcG9ydFN0YXRlbWVudCxcbiAgRXhwb3J0TWVtYmVyLFxuICBFeHBvcnRTdGF0ZW1lbnQsXG4gIEV4cG9ydERlZmF1bHRTdGF0ZW1lbnQsXG4gIEV4cHJlc3Npb25TdGF0ZW1lbnQsXG4gIEZpZWxkRGVjbGFyYXRpb24sXG4gIEZvclN0YXRlbWVudCxcbiAgRnVuY3Rpb25EZWNsYXJhdGlvbixcbiAgSWZTdGF0ZW1lbnQsXG4gIEltcG9ydERlY2xhcmF0aW9uLFxuICBJbXBvcnRTdGF0ZW1lbnQsXG4gIEluZGV4U2lnbmF0dXJlRGVjbGFyYXRpb24sXG4gIEludGVyZmFjZURlY2xhcmF0aW9uLFxuICBNZXRob2REZWNsYXJhdGlvbixcbiAgTmFtZXNwYWNlRGVjbGFyYXRpb24sXG4gIFJldHVyblN0YXRlbWVudCxcbiAgU3dpdGNoQ2FzZSxcbiAgU3dpdGNoU3RhdGVtZW50LFxuICBUaHJvd1N0YXRlbWVudCxcbiAgVHJ5U3RhdGVtZW50LFxuICBUeXBlRGVjbGFyYXRpb24sXG4gIFZhcmlhYmxlRGVjbGFyYXRpb24sXG4gIFZhcmlhYmxlU3RhdGVtZW50LFxuICBXaGlsZVN0YXRlbWVudCxcbiAgVm9pZFN0YXRlbWVudCxcbiAgQ29tbWVudE5vZGUsXG4gIERlY29yYXRvck5vZGUsXG4gIFBhcmFtZXRlck5vZGUsXG4gIG9wZXJhdG9yVG9rZW5Ub1N0cmluZ1xufSBmcm9tIFwiYXNzZW1ibHlzY3JpcHRcIjtcbmltcG9ydCB7IEJhc2VWaXNpdG9yIH0gZnJvbSBcIi4uL2FzdFwiO1xuXG5leHBvcnQgY2xhc3MgUHJpbnRlclZpc2l0b3IgZXh0ZW5kcyBCYXNlVmlzaXRvciBpbXBsZW1lbnRzIEFTVFZpc2l0b3Ige1xuICBkZXB0aDogbnVtYmVyID0gMDtcbiAgc2I6IHN0cmluZ1tdID0gW107XG5cblxuICB3cml0ZShzdHI6IHN0cmluZywgbmV3bGluZTogYm9vbGVhbiA9IHRydWUpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlci53cml0ZShcIiAgXCIucmVwZWF0KHRoaXMuZGVwdGgpICsgc3RyICsgKG5ld2xpbmUgPyBcIlxcblwiIDogXCIgXCIpKTtcbiAgfVxuXG4gIGZsdXNoKHNlcGVyYXRvcjogc3RyaW5nKTogc3RyaW5nIHtcbiAgICBsZXQgcmVzID0gdGhpcy5zYi5qb2luKHNlcGVyYXRvcik7XG4gICAgdGhpcy5zYi5sZW5ndGggPSAwO1xuICAgIHJldHVybiByZXM7XG4gIH1cblxuICB2aXNpdFNvdXJjZShub2RlOiBTb3VyY2UpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiU291cmNlOiBcIiArIG5vZGUubm9ybWFsaXplZFBhdGgpO1xuICAgIHN1cGVyLnZpc2l0U291cmNlKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRUeXBlTm9kZShub2RlOiBUeXBlTm9kZSk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJUeXBlTm9kZTogXCIgKyBub2RlLmtpbmQudG9TdHJpbmcoKSk7XG4gICAgc3VwZXIudmlzaXRUeXBlTm9kZShub2RlKTtcbiAgfVxuXG4gIHZpc2l0RnVuY3Rpb25UeXBlTm9kZShub2RlOiBGdW5jdGlvblR5cGVOb2RlKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkZ1bmN0aW9uVHlwZU5vZGU6IFwiLCBmYWxzZSk7XG4gICAgZm9yIChsZXQgcGFyYW0gb2Ygbm9kZS5wYXJhbWV0ZXJzKSB7XG4gICAgICBwYXJhbS52aXNpdCh0aGlzKTtcbiAgICB9XG4gICAgdGhpcy53cml0ZShcIihcIiArIHRoaXMuZmx1c2goXCIsIFwiKSArIFwiKSAtPiBcIik7XG4gICAgdGhpcy53cml0ZShcInJldHVybiB0eXBlOiBcIiwgZmFsc2UpO1xuICAgIG5vZGUucmV0dXJuVHlwZS52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0VHlwZVBhcmFtZXRlcihub2RlOiBUeXBlUGFyYW1ldGVyTm9kZSk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJUeXBlUGFyYW1ldGVyIFwiLCBmYWxzZSk7XG4gICAgbm9kZS5uYW1lLnZpc2l0KHRoaXMpO1xuICB9XG5cbiAgdmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlOiBJZGVudGlmaWVyRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMuc2IucHVzaChub2RlLnN5bWJvbCk7XG4gICAgc3VwZXIudmlzaXRJZGVudGlmaWVyRXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0QXJyYXlMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBBcnJheUxpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkFycmF5TGl0ZXJhbEV4cHJlc3Npb246IFwiLCBmYWxzZSk7XG4gICAgc3VwZXIudmlzaXRBcnJheUxpdGVyYWxFeHByZXNzaW9uKG5vZGUpO1xuICAgIHRoaXMud3JpdGUoXCJbXCIgKyB0aGlzLmZsdXNoKFwiLCBcIikgKyBcIl1cIik7XG4gIH1cblxuICB2aXNpdE9iamVjdExpdGVyYWxFeHByZXNzaW9uKG5vZGU6IE9iamVjdExpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIk9iamVjdExpdGVyYWxFeHByZXNzaW9uOiBcIik7XG4gICAgc3VwZXIudmlzaXRPYmplY3RMaXRlcmFsRXhwcmVzc2lvbihub2RlKTtcbiAgICB0aGlzLmRlcHRoKys7XG5cbiAgICB0aGlzLndyaXRlKFwie1wiKTtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IHRoaXMuc2IubGVuZ3RoOyBpICs9IDIpIHtcbiAgICAgIHRoaXMud3JpdGUoXCIgIFwiICsgdGhpcy5zYltpXSArIFwiOiBcIiArIHRoaXMuc2JbaSArIDFdKTtcbiAgICB9XG4gICAgdGhpcy53cml0ZShcIn1cIik7XG4gICAgdGhpcy5kZXB0aC0tO1xuICB9XG5cbiAgdmlzaXRBc3NlcnRpb25FeHByZXNzaW9uKG5vZGU6IEFzc2VydGlvbkV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiQXNzZXJ0aW9uRXhwcmVzc2lvbjogXCIsIGZhbHNlKTtcbiAgICBzdXBlci52aXNpdEFzc2VydGlvbkV4cHJlc3Npb24obm9kZSk7XG4gICAgdGhpcy53cml0ZSh0aGlzLmZsdXNoKFwiIFwiKSk7XG4gIH1cblxuICB2aXNpdEJpbmFyeUV4cHJlc3Npb24obm9kZTogQmluYXJ5RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJCaW5hcnlFeHByZXNzaW9uOiBcIiwgZmFsc2UpO1xuICAgIHN1cGVyLnZpc2l0QmluYXJ5RXhwcmVzc2lvbihub2RlKTtcbiAgICB0aGlzLnNiLnB1c2godGhpcy5mbHVzaChvcGVyYXRvclRva2VuVG9TdHJpbmcobm9kZS5vcGVyYXRvcikpKTtcbiAgfVxuXG4gIHZpc2l0Q2FsbEV4cHJlc3Npb24obm9kZTogQ2FsbEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiQ2FsbEV4cHJlc3Npb25cIik7XG4gICAgc3VwZXIudmlzaXRDYWxsRXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0Q2xhc3NFeHByZXNzaW9uKG5vZGU6IENsYXNzRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJDbGFzc0V4cHJlc3Npb25cIik7XG4gICAgc3VwZXIudmlzaXRDbGFzc0V4cHJlc3Npb24obm9kZSk7XG4gIH1cblxuICB2aXNpdENvbW1hRXhwcmVzc2lvbihub2RlOiBDb21tYUV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiQ29tbWFFeHByZXNzaW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0Q29tbWFFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRFbGVtZW50QWNjZXNzRXhwcmVzc2lvbihub2RlOiBFbGVtZW50QWNjZXNzRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJFbGVtZW50QWNjZXNzRXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdEVsZW1lbnRBY2Nlc3NFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRGdW5jdGlvbkV4cHJlc3Npb24obm9kZTogRnVuY3Rpb25FeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkZ1bmN0aW9uRXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdEZ1bmN0aW9uRXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0TGl0ZXJhbEV4cHJlc3Npb24obm9kZTogTGl0ZXJhbEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiTGl0ZXJhbEV4cHJlc3Npb25cIik7XG4gICAgc3VwZXIudmlzaXRMaXRlcmFsRXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0RmxvYXRMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBGbG9hdExpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkZsb2F0TGl0ZXJhbEV4cHJlc3Npb25cIik7XG4gICAgc3VwZXIudmlzaXRGbG9hdExpdGVyYWxFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRJbnN0YW5jZU9mRXhwcmVzc2lvbihub2RlOiBJbnN0YW5jZU9mRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJJbnN0YW5jZU9mRXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdEluc3RhbmNlT2ZFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRJbnRlZ2VyTGl0ZXJhbEV4cHJlc3Npb24obm9kZTogSW50ZWdlckxpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy5zYi5wdXNoKGk2NF90b19zdHJpbmcobm9kZS52YWx1ZSkpO1xuICB9XG5cbiAgdmlzaXRTdHJpbmdMaXRlcmFsKHN0cjogc3RyaW5nLCBzaW5nbGVRdW90ZWQ/OiBib29sZWFuKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlN0cmluZ0xpdGVyYWxcIik7XG4gICAgdGhpcy5zYi5wdXNoKHN0cik7XG4gIH1cblxuICB2aXNpdFN0cmluZ0xpdGVyYWxFeHByZXNzaW9uKG5vZGU6IFN0cmluZ0xpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlN0cmluZ0xpdGVyYWxFeHByZXNzaW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0U3RyaW5nTGl0ZXJhbEV4cHJlc3Npb24obm9kZSk7XG4gIH1cblxuICB2aXNpdFJlZ2V4cExpdGVyYWxFeHByZXNzaW9uKG5vZGU6IFJlZ2V4cExpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlJlZ2V4cExpdGVyYWxFeHByZXNzaW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0UmVnZXhwTGl0ZXJhbEV4cHJlc3Npb24obm9kZSk7XG4gIH1cblxuICB2aXNpdE5ld0V4cHJlc3Npb24obm9kZTogTmV3RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJOZXdFeHByZXNzaW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0TmV3RXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0UGFyZW50aGVzaXplZEV4cHJlc3Npb24obm9kZTogUGFyZW50aGVzaXplZEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiUGFyZW50aGVzaXplZEV4cHJlc3Npb25cIik7XG4gICAgc3VwZXIudmlzaXRQYXJlbnRoZXNpemVkRXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0UHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uKG5vZGU6IFByb3BlcnR5QWNjZXNzRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJQcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb25cIik7XG4gICAgc3VwZXIudmlzaXRQcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24obm9kZSk7XG4gIH1cblxuICB2aXNpdFRlcm5hcnlFeHByZXNzaW9uKG5vZGU6IFRlcm5hcnlFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlRlcm5hcnlFeHByZXNzaW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0VGVybmFyeUV4cHJlc3Npb24obm9kZSk7XG4gIH1cblxuICB2aXNpdFVuYXJ5RXhwcmVzc2lvbihub2RlOiBVbmFyeUV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiVW5hcnlFeHByZXNzaW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0VW5hcnlFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRVbmFyeVBvc3RmaXhFeHByZXNzaW9uKG5vZGU6IFVuYXJ5UG9zdGZpeEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiVW5hcnlQb3N0Zml4RXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdFVuYXJ5UG9zdGZpeEV4cHJlc3Npb24obm9kZSk7XG4gIH1cblxuICB2aXNpdFVuYXJ5UHJlZml4RXhwcmVzc2lvbihub2RlOiBVbmFyeVByZWZpeEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiVW5hcnlQcmVmaXhFeHByZXNzaW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0VW5hcnlQcmVmaXhFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRTdXBlckV4cHJlc3Npb24obm9kZTogU3VwZXJFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlN1cGVyRXhwcmVzc2lvbjogXCIgKyBub2RlLnN5bWJvbCk7XG4gICAgc3VwZXIudmlzaXRTdXBlckV4cHJlc3Npb24obm9kZSk7XG4gIH1cblxuICB2aXNpdEZhbHNlRXhwcmVzc2lvbihub2RlOiBGYWxzZUV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiRmFsc2VFeHByZXNzaW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0RmFsc2VFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRUcnVlRXhwcmVzc2lvbihub2RlOiBUcnVlRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJUcnVlRXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdFRydWVFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRUaGlzRXhwcmVzc2lvbihub2RlOiBUaGlzRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJUaGlzRXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdFRoaXNFeHByZXNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXROdWxsRXhwZXJzc2lvbihub2RlOiBOdWxsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJOdWxsRXhwZXJzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdE51bGxFeHBlcnNzaW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRDb25zdHJ1Y3RvckV4cHJlc3Npb24obm9kZTogQ29uc3RydWN0b3JFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkNvbnN0cnVjdG9yRXhwcmVzc2lvblwiKTtcbiAgICBzdXBlci52aXNpdENvbnN0cnVjdG9yRXhwcmVzc2lvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0Tm9kZUFuZFRlcm1pbmF0ZShzdGF0ZW1lbnQ6IFN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJOb2RlQW5kVGVybWluYXRlXCIpO1xuICB9XG5cbiAgdmlzaXRCbG9ja1N0YXRlbWVudChub2RlOiBCbG9ja1N0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJCbG9ja1N0YXRlbWVudFwiKTtcbiAgICB0aGlzLmRlcHRoKys7XG4gICAgc3VwZXIudmlzaXRCbG9ja1N0YXRlbWVudChub2RlKTtcbiAgICB0aGlzLmRlcHRoLS07XG4gIH1cblxuICB2aXNpdEJyZWFrU3RhdGVtZW50KG5vZGU6IEJyZWFrU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkJyZWFrU3RhdGVtZW50XCIpO1xuICAgIHN1cGVyLnZpc2l0QnJlYWtTdGF0ZW1lbnQobm9kZSk7XG4gIH1cblxuICB2aXNpdENvbnRpbnVlU3RhdGVtZW50KG5vZGU6IENvbnRpbnVlU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkNvbnRpbnVlU3RhdGVtZW50XCIpO1xuICAgIHN1cGVyLnZpc2l0Q29udGludWVTdGF0ZW1lbnQobm9kZSk7XG4gIH1cblxuICB2aXNpdENsYXNzRGVjbGFyYXRpb24obm9kZTogQ2xhc3NEZWNsYXJhdGlvbiwgaXNEZWZhdWx0PzogYm9vbGVhbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJDbGFzc0RlY2xhcmF0aW9uOiBcIiArIG5vZGUubmFtZS5zeW1ib2wpO1xuICAgIGZvciAoY29uc3QgbWVtYmVyIG9mIG5vZGUubWVtYmVycykge1xuICAgICAgdGhpcy5kZXB0aCsrO1xuICAgICAgbWVtYmVyLnZpc2l0KHRoaXMpO1xuICAgICAgdGhpcy5kZXB0aC0tO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0RG9TdGF0ZW1lbnQobm9kZTogRG9TdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiRG9TdGF0ZW1lbnRcIik7XG4gICAgc3VwZXIudmlzaXREb1N0YXRlbWVudChub2RlKTtcbiAgfVxuXG4gIHZpc2l0RW1wdHlTdGF0ZW1lbnQobm9kZTogRW1wdHlTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiRW1wdHlTdGF0ZW1lbnRcIik7XG4gICAgc3VwZXIudmlzaXRFbXB0eVN0YXRlbWVudChub2RlKTtcbiAgfVxuXG4gIHZpc2l0RW51bURlY2xhcmF0aW9uKG5vZGU6IEVudW1EZWNsYXJhdGlvbiwgaXNEZWZhdWx0PzogYm9vbGVhbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJFbnVtRGVjbGFyYXRpb246IFwiICsgbm9kZS5uYW1lKTtcbiAgICBzdXBlci52aXNpdEVudW1EZWNsYXJhdGlvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0RW51bVZhbHVlRGVjbGFyYXRpb24obm9kZTogRW51bVZhbHVlRGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiRW51bVZhbHVlRGVjbGFyYXRpb25cIik7XG4gICAgc3VwZXIudmlzaXRFbnVtVmFsdWVEZWNsYXJhdGlvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0RXhwb3J0SW1wb3J0U3RhdGVtZW50KG5vZGU6IEV4cG9ydEltcG9ydFN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJFeHBvcnRJbXBvcnRTdGF0ZW1lbnRcIik7XG4gICAgc3VwZXIudmlzaXRFeHBvcnRJbXBvcnRTdGF0ZW1lbnQobm9kZSk7XG4gIH1cblxuICB2aXNpdEV4cG9ydE1lbWJlcihub2RlOiBFeHBvcnRNZW1iZXIpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiRXhwb3J0TWVtYmVyXCIpO1xuICAgIHN1cGVyLnZpc2l0RXhwb3J0TWVtYmVyKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRFeHBvcnRTdGF0ZW1lbnQobm9kZTogRXhwb3J0U3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkV4cG9ydFN0YXRlbWVudFwiKTtcbiAgICBzdXBlci52aXNpdEV4cG9ydFN0YXRlbWVudChub2RlKTtcbiAgfVxuXG4gIHZpc2l0RXhwb3J0RGVmYXVsdFN0YXRlbWVudChub2RlOiBFeHBvcnREZWZhdWx0U3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkV4cG9ydERlZmF1bHRTdGF0ZW1lbnRcIik7XG4gICAgc3VwZXIudmlzaXRFeHBvcnREZWZhdWx0U3RhdGVtZW50KG5vZGUpO1xuICB9XG5cbiAgdmlzaXRFeHByZXNzaW9uU3RhdGVtZW50KG5vZGU6IEV4cHJlc3Npb25TdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiRXhwcmVzc2lvblN0YXRlbWVudDogXCIpO1xuICAgIHN1cGVyLnZpc2l0RXhwcmVzc2lvblN0YXRlbWVudChub2RlKTtcbiAgICB0aGlzLndyaXRlKHRoaXMuZmx1c2goXCIgXCIpKTtcbiAgfVxuXG4gIHZpc2l0RmllbGREZWNsYXJhdGlvbihub2RlOiBGaWVsZERlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkZpZWxkRGVjbGFyYXRpb246IFwiLCBmYWxzZSk7XG4gICAgbm9kZS5uYW1lLnZpc2l0KHRoaXMpO1xuICAgIG5vZGUudHlwZSEudmlzaXQodGhpcyk7XG4gICAgdGhpcy53cml0ZSh0aGlzLmZsdXNoKFwiOiBcIikpO1xuICB9XG5cbiAgdmlzaXRGb3JTdGF0ZW1lbnQobm9kZTogRm9yU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkZvclN0YXRlbWVudFwiKTtcbiAgICBzdXBlci52aXNpdEZvclN0YXRlbWVudChub2RlKTtcbiAgfVxuXG4gIHZpc2l0RnVuY3Rpb25EZWNsYXJhdGlvbihcbiAgICBub2RlOiBGdW5jdGlvbkRlY2xhcmF0aW9uLFxuICAgIGlzRGVmYXVsdD86IGJvb2xlYW5cbiAgKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkZ1bmN0aW9uRGVjbGFyYXRpb246IFwiICsgbm9kZS5uYW1lLnN5bWJvbCwgZmFsc2UpO1xuICAgIG5vZGUuc2lnbmF0dXJlLnZpc2l0KHRoaXMpO1xuICB9XG5cbiAgdmlzaXRGdW5jdGlvbkNvbW1vbihub2RlOiBGdW5jdGlvbkRlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkZ1bmN0aW9uQ29tbW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0RnVuY3Rpb25Db21tb24obm9kZSk7XG4gIH1cbiAgdmlzaXRJZlN0YXRlbWVudChub2RlOiBJZlN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJJZlN0YXRlbWVudFwiKTtcbiAgICBzdXBlci52aXNpdElmU3RhdGVtZW50KG5vZGUpO1xuICB9XG5cbiAgdmlzaXRJbXBvcnREZWNsYXJhdGlvbihub2RlOiBJbXBvcnREZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJJbXBvcnREZWNsYXJhdGlvblwiKTtcbiAgICBzdXBlci52aXNpdEltcG9ydERlY2xhcmF0aW9uKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRJbXBvcnRTdGF0ZW1lbnQobm9kZTogSW1wb3J0U3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkltcG9ydFN0YXRlbWVudDogXCIgKyBub2RlLmludGVybmFsUGF0aCk7XG4gICAgc3VwZXIudmlzaXRJbXBvcnRTdGF0ZW1lbnQobm9kZSk7XG4gIH1cblxuICB2aXNpdEluZGV4U2lnbmF0dXJlRGVjbGFyYXRpb24obm9kZTogSW5kZXhTaWduYXR1cmVEZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJJbmRleFNpZ25hdHVyZURlY2xhcmF0aW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0SW5kZXhTaWduYXR1cmVEZWNsYXJhdGlvbihub2RlKTtcbiAgfVxuXG4gIHZpc2l0SW50ZXJmYWNlRGVjbGFyYXRpb24oXG4gICAgbm9kZTogSW50ZXJmYWNlRGVjbGFyYXRpb24sXG4gICAgaXNEZWZhdWx0PzogYm9vbGVhblxuICApOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiSW50ZXJmYWNlRGVjbGFyYXRpb25cIiwgZmFsc2UpO1xuICAgIG5vZGUubmFtZS52aXNpdCh0aGlzKTtcbiAgICB0aGlzLndyaXRlKHRoaXMuZmx1c2goXCJcIiksIGZhbHNlKTtcbiAgICBpZiAobm9kZS5pc0dlbmVyaWMpIHtcbiAgICAgIHRoaXMudmlzaXQobm9kZS50eXBlUGFyYW1ldGVycyk7XG4gICAgICB0aGlzLndyaXRlKFwiPFwiICsgdGhpcy5mbHVzaChcIiwgXCIpICsgXCI+IFwiLCBmYWxzZSk7XG4gICAgfVxuICAgIHRoaXMudmlzaXQobm9kZS5pbXBsZW1lbnRzVHlwZXMpO1xuICAgIGlmICh0aGlzLnNiLmxlbmd0aCA+IDApIHtcbiAgICAgIHRoaXMud3JpdGUoXCJpbXBsZW1lbnRzIFwiICsgdGhpcy5mbHVzaChcIiwgXCIpKTtcbiAgICB9XG4gICAgaWYgKG5vZGUuZXh0ZW5kc1R5cGUpIHtcbiAgICAgIG5vZGUuZXh0ZW5kc1R5cGUudmlzaXQodGhpcyk7XG4gICAgICB0aGlzLndyaXRlKFwiZXh0ZW5kcyBcIiArIHRoaXMuZmx1c2goXCJcIiksIGZhbHNlKTtcbiAgICB9XG4gICAgdGhpcy53cml0ZShcIlwiKTtcbiAgICB0aGlzLmRlcHRoKys7XG4gICAgdGhpcy52aXNpdChub2RlLm1lbWJlcnMpO1xuICAgIHRoaXMuZGVwdGgtLTtcbiAgfVxuXG4gIHZpc2l0TWV0aG9kRGVjbGFyYXRpb24obm9kZTogTWV0aG9kRGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiTWV0aG9kRGVjbGFyYXRpb246IFwiICsgbm9kZS5uYW1lLnN5bWJvbCk7XG4gICAgdGhpcy5kZXB0aCsrO1xuICAgIGlmIChub2RlLmJvZHkpIG5vZGUuYm9keS52aXNpdCh0aGlzKTtcbiAgICB0aGlzLmRlcHRoLS07XG4gIH1cbiAgdmlzaXROYW1lc3BhY2VEZWNsYXJhdGlvbihcbiAgICBub2RlOiBOYW1lc3BhY2VEZWNsYXJhdGlvbixcbiAgICBpc0RlZmF1bHQ/OiBib29sZWFuXG4gICk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJOYW1lc3BhY2VEZWNsYXJhdGlvblwiKTtcbiAgICBzdXBlci52aXNpdE5hbWVzcGFjZURlY2xhcmF0aW9uKG5vZGUpO1xuICB9XG4gIHZpc2l0UmV0dXJuU3RhdGVtZW50KG5vZGU6IFJldHVyblN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJSZXR1cm5TdGF0ZW1lbnRcIik7XG4gICAgc3VwZXIudmlzaXRSZXR1cm5TdGF0ZW1lbnQobm9kZSk7XG4gIH1cbiAgdmlzaXRTd2l0Y2hDYXNlKG5vZGU6IFN3aXRjaENhc2UpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiU3dpdGNoQ2FzZVwiKTtcbiAgICBzdXBlci52aXNpdFN3aXRjaENhc2Uobm9kZSk7XG4gIH1cbiAgdmlzaXRTd2l0Y2hTdGF0ZW1lbnQobm9kZTogU3dpdGNoU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlN3aXRjaFN0YXRlbWVudFwiKTtcbiAgICBzdXBlci52aXNpdFN3aXRjaFN0YXRlbWVudChub2RlKTtcbiAgfVxuICB2aXNpdFRocm93U3RhdGVtZW50KG5vZGU6IFRocm93U3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlRocm93U3RhdGVtZW50XCIpO1xuICAgIHN1cGVyLnZpc2l0VGhyb3dTdGF0ZW1lbnQobm9kZSk7XG4gIH1cbiAgdmlzaXRUcnlTdGF0ZW1lbnQobm9kZTogVHJ5U3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlRyeVN0YXRlbWVudFwiKTtcbiAgICBzdXBlci52aXNpdFRyeVN0YXRlbWVudChub2RlKTtcbiAgfVxuICB2aXNpdFR5cGVEZWNsYXJhdGlvbihub2RlOiBUeXBlRGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiVHlwZURlY2xhcmF0aW9uXCIpO1xuICAgIHN1cGVyLnZpc2l0VHlwZURlY2xhcmF0aW9uKG5vZGUpO1xuICB9XG4gIHZpc2l0VmFyaWFibGVEZWNsYXJhdGlvbihub2RlOiBWYXJpYWJsZURlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIlZhcmlhYmxlRGVjbGFyYXRpb246IFwiLCBmYWxzZSk7XG4gICAgbm9kZS5uYW1lLnZpc2l0KHRoaXMpO1xuICAgIGlmIChub2RlLnR5cGUpIG5vZGUudHlwZS52aXNpdCh0aGlzKTtcbiAgICBsZXQgbmFtZSA9IHRoaXMuZmx1c2goXCI6IFwiKTtcbiAgICBpZiAobm9kZS5pbml0aWFsaXplcikgbm9kZS5pbml0aWFsaXplci52aXNpdCh0aGlzKTtcbiAgICBsZXQgaW5pdGlhbGl6ZXIgPSB0aGlzLmZsdXNoKFwiIFwiKTtcbiAgICB0aGlzLndyaXRlKG5hbWUgKyAobm9kZS5pbml0aWFsaXplciA/IFwiID0gXCIgKyBpbml0aWFsaXplciA6IFwiXCIpICsgXCI7XCIpO1xuICB9XG4gIHZpc2l0VmFyaWFibGVTdGF0ZW1lbnQobm9kZTogVmFyaWFibGVTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiVmFyaWFibGVTdGF0ZW1lbnRcIik7XG4gICAgc3VwZXIudmlzaXRWYXJpYWJsZVN0YXRlbWVudChub2RlKTtcbiAgfVxuICB2aXNpdFdoaWxlU3RhdGVtZW50KG5vZGU6IFdoaWxlU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIldoaWxlU3RhdGVtZW50XCIpO1xuICAgIHN1cGVyLnZpc2l0V2hpbGVTdGF0ZW1lbnQobm9kZSk7XG4gIH1cbiAgdmlzaXRWb2lkU3RhdGVtZW50KG5vZGU6IFZvaWRTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiVm9pZFN0YXRlbWVudFwiKTtcbiAgICBzdXBlci52aXNpdFZvaWRTdGF0ZW1lbnQobm9kZSk7XG4gIH1cbiAgdmlzaXRDb21tZW50KG5vZGU6IENvbW1lbnROb2RlKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkNvbW1lbnRcIik7XG4gICAgc3VwZXIudmlzaXRDb21tZW50KG5vZGUpO1xuICB9XG4gIHZpc2l0RGVjb3JhdG9yTm9kZShub2RlOiBEZWNvcmF0b3JOb2RlKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkRlY29yYXRvck5vZGVcIik7XG4gICAgc3VwZXIudmlzaXREZWNvcmF0b3JOb2RlKG5vZGUpO1xuICB9XG4gIHZpc2l0UGFyYW1ldGVyKG5vZGU6IFBhcmFtZXRlck5vZGUpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiUGFyYW1ldGVyIFwiICsgbm9kZS5uYW1lLnN5bWJvbCArIFwiOlwiLCBmYWxzZSk7XG4gICAgbm9kZS50eXBlLnZpc2l0KHRoaXMpO1xuICB9XG59XG4iXX0=