"use strict";
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
var BaseVisitor = /** @class */ (function () {
    function BaseVisitor() {
        this.depth = 0;
    }
    /** Visits each node in an array if array exists. */
    BaseVisitor.prototype.visitArray = function (array) {
        var _this = this;
        if (array) {
            array.map(function (node) {
                if (node)
                    node.visit(_this);
            });
        }
    };
    BaseVisitor.prototype.visitSource = function (node) {
        var e_1, _a;
        try {
            for (var _b = __values(node.statements), _c = _b.next(); !_c.done; _c = _b.next()) {
                var stmt = _c.value;
                this.depth++;
                stmt.visit(this);
                this.depth--;
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_1) throw e_1.error; }
        }
    };
    BaseVisitor.prototype.visitTypeNode = function (node) { };
    BaseVisitor.prototype.visitTypeName = function (node) {
        node.identifier.visit(this);
        if (node.next) {
            node.visit(this);
        }
    };
    BaseVisitor.prototype.visitNamedTypeNode = function (node) {
        node.name.visit(this);
        this.visitArray(node.typeArguments);
    };
    BaseVisitor.prototype.visitFunctionTypeNode = function (node) {
        var e_2, _a;
        try {
            for (var _b = __values(node.parameters), _c = _b.next(); !_c.done; _c = _b.next()) {
                var param = _c.value;
                param.visit(this);
            }
        }
        catch (e_2_1) { e_2 = { error: e_2_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_2) throw e_2.error; }
        }
        node.returnType.visit(this);
    };
    BaseVisitor.prototype.visitTypeParameter = function (node) {
        node.name.visit(this);
        if (node.extendsType)
            node.extendsType.visit(this);
        if (node.defaultType)
            node.defaultType.visit(this);
    };
    BaseVisitor.prototype.visitIdentifierExpression = function (node) { };
    BaseVisitor.prototype.visitArrayLiteralExpression = function (node) {
        var _this = this;
        node.elementExpressions.map(function (e) {
            if (e)
                e.visit(_this);
        });
    };
    BaseVisitor.prototype.visitObjectLiteralExpression = function (node) {
        if (node.values && node.names) {
            assert(node.values.length == node.names.length);
            for (var i = 0; i < node.values.length; i++) {
                node.names[i].visit(this);
                node.values[i].visit(this);
            }
        }
    };
    BaseVisitor.prototype.visitAssertionExpression = function (node) {
        if (node.toType)
            node.toType.visit(this);
        node.expression.visit(this);
    };
    BaseVisitor.prototype.visitBinaryExpression = function (node) {
        node.left.visit(this);
        node.right.visit(this);
    };
    BaseVisitor.prototype.visitCallExpression = function (node) {
        node.expression.visit(this);
        this.visitArray(node.typeArguments);
        this.visitArray(node.arguments);
    };
    BaseVisitor.prototype.visitClassExpression = function (node) {
        node.declaration.visit(this);
    };
    BaseVisitor.prototype.visitCommaExpression = function (node) {
        this.visitArray(node.expressions);
    };
    BaseVisitor.prototype.visitElementAccessExpression = function (node) {
        node.elementExpression.visit(this);
        node.expression.visit(this);
    };
    BaseVisitor.prototype.visitFunctionExpression = function (node) {
        node.declaration.visit(this);
    };
    BaseVisitor.prototype.visitLiteralExpression = function (node) {
        // node.
    };
    BaseVisitor.prototype.visitFloatLiteralExpression = function (node) { };
    BaseVisitor.prototype.visitInstanceOfExpression = function (node) {
        node.expression.visit(this);
        node.isType.visit(this);
    };
    BaseVisitor.prototype.visitIntegerLiteralExpression = function (node) { };
    BaseVisitor.prototype.visitStringLiteral = function (str, singleQuoted) { };
    BaseVisitor.prototype.visitStringLiteralExpression = function (node) { };
    BaseVisitor.prototype.visitRegexpLiteralExpression = function (node) { };
    BaseVisitor.prototype.visitNewExpression = function (node) {
        node.expression.visit(this);
        this.visitArray(node.typeArguments);
        this.visitArray(node.arguments);
    };
    BaseVisitor.prototype.visitParenthesizedExpression = function (node) {
        node.expression.visit(this);
    };
    BaseVisitor.prototype.visitPropertyAccessExpression = function (node) {
        node.property.visit(this);
        node.expression.visit(this);
    };
    BaseVisitor.prototype.visitTernaryExpression = function (node) {
        node.condition.visit(this);
        node.ifThen.visit(this);
        node.ifElse.visit(this);
    };
    BaseVisitor.prototype.visitUnaryExpression = function (node) {
        node.operand.visit(this);
    };
    BaseVisitor.prototype.visitUnaryPostfixExpression = function (node) {
        node.operand.visit(this);
    };
    BaseVisitor.prototype.visitUnaryPrefixExpression = function (node) {
        node.operand.visit(this);
    };
    BaseVisitor.prototype.visitSuperExpression = function (node) { };
    BaseVisitor.prototype.visitFalseExpression = function (node) { };
    BaseVisitor.prototype.visitTrueExpression = function (node) { };
    BaseVisitor.prototype.visitThisExpression = function (node) { };
    BaseVisitor.prototype.visitNullExperssion = function (node) { };
    BaseVisitor.prototype.visitConstructorExpression = function (node) { };
    BaseVisitor.prototype.visitNodeAndTerminate = function (statement) { };
    BaseVisitor.prototype.visitBlockStatement = function (node) {
        this.depth++;
        this.visitArray(node.statements);
        this.depth--;
    };
    BaseVisitor.prototype.visitBreakStatement = function (node) {
        if (node.label) {
            node.label.visit(this);
        }
    };
    BaseVisitor.prototype.visitContinueStatement = function (node) {
        if (node.label) {
            node.label.visit(this);
        }
    };
    BaseVisitor.prototype.visitClassDeclaration = function (node, isDefault) {
        node.name.visit(this);
        this.depth++;
        this.visitArray(node.decorators);
        assert(node.isGeneric ? node.typeParameters != null : node.typeParameters == null);
        if (node.isGeneric) {
            this.visitArray(node.typeParameters);
        }
        if (node.extendsType) {
            node.extendsType.visit(this);
        }
        this.visitArray(node.implementsTypes);
        this.visitArray(node.members);
        this.depth--;
    };
    BaseVisitor.prototype.visitDoStatement = function (node) {
        node.condition.visit(this);
        node.statement.visit(this);
    };
    BaseVisitor.prototype.visitEmptyStatement = function (node) { };
    BaseVisitor.prototype.visitEnumDeclaration = function (node, isDefault) {
        node.name.visit(this);
        this.visitArray(node.decorators);
        this.visitArray(node.values);
    };
    BaseVisitor.prototype.visitEnumValueDeclaration = function (node) {
        node.name.visit(this);
        if (node.initializer) {
            node.initializer.visit(this);
        }
    };
    BaseVisitor.prototype.visitExportImportStatement = function (node) {
        node.name.visit(this);
        node.externalName.visit(this);
    };
    BaseVisitor.prototype.visitExportMember = function (node) {
        node.localName.visit(this);
        node.exportedName.visit(this);
    };
    BaseVisitor.prototype.visitExportStatement = function (node) {
        if (node.path) {
            node.path.visit(this);
        }
        this.visitArray(node.members);
    };
    BaseVisitor.prototype.visitExportDefaultStatement = function (node) {
        node.declaration.visit(this);
    };
    BaseVisitor.prototype.visitExpressionStatement = function (node) {
        node.expression.visit(this);
    };
    BaseVisitor.prototype.visitFieldDeclaration = function (node) {
        node.name.visit(this);
        if (node.type) {
            node.type.visit(this);
        }
        if (node.initializer) {
            node.initializer.visit(this);
        }
        this.visitArray(node.decorators);
    };
    BaseVisitor.prototype.visitForStatement = function (node) {
        if (node.initializer)
            node.initializer.visit(this);
        if (node.condition)
            node.condition.visit(this);
        if (node.incrementor)
            node.incrementor.visit(this);
        node.statement.visit(this);
    };
    BaseVisitor.prototype.visitFunctionDeclaration = function (node, isDefault) {
        node.name.visit(this);
        this.visitArray(node.decorators);
        if (node.isGeneric) {
            this.visitArray(node.typeParameters);
        }
        node.signature.visit(this);
        this.depth++;
        if (node.body)
            node.body.visit(this);
        this.depth--;
    };
    BaseVisitor.prototype.visitFunctionCommon = function (node) {
        // node.name.visit(this)
    };
    BaseVisitor.prototype.visitIfStatement = function (node) {
        node.condition.visit(this);
        node.ifTrue.visit(this);
        if (node.ifFalse)
            node.ifFalse.visit(this);
    };
    BaseVisitor.prototype.visitImportDeclaration = function (node) {
        node.foreignName.visit(this);
        node.name.visit(this);
        this.visitArray(node.decorators);
    };
    BaseVisitor.prototype.visitImportStatement = function (node) {
        if (node.namespaceName)
            node.namespaceName.visit(this);
        this.visitArray(node.declarations);
    };
    BaseVisitor.prototype.visitIndexSignatureDeclaration = function (node) {
        // node.name.visit(this);
        // node.keyType.visit(this);
        // node.valueType.visit(this);
    };
    BaseVisitor.prototype.visitInterfaceDeclaration = function (node, isDefault) {
        node.name.visit(this);
        if (node.isGeneric) {
            this.visitArray(node.typeParameters);
        }
        this.visitArray(node.implementsTypes);
        if (node.extendsType)
            node.extendsType.visit(this);
        this.depth++;
        this.visitArray(node.members);
        this.depth--;
    };
    BaseVisitor.prototype.visitMethodDeclaration = function (node) {
        node.name.visit(this);
        if (node.isGeneric) {
            this.visitArray(node.typeParameters);
        }
        node.signature.visit(this);
        this.visitArray(node.decorators);
        this.depth++;
        if (node.body)
            node.body.visit(this);
        this.depth--;
    };
    BaseVisitor.prototype.visitNamespaceDeclaration = function (node, isDefault) {
        node.name.visit(this);
        this.visitArray(node.decorators);
        this.visitArray(node.members);
    };
    BaseVisitor.prototype.visitReturnStatement = function (node) {
        if (node.value)
            node.value.visit(this);
    };
    BaseVisitor.prototype.visitSwitchCase = function (node) {
        if (node.label)
            node.label.visit(this);
        this.visitArray(node.statements);
    };
    BaseVisitor.prototype.visitSwitchStatement = function (node) {
        node.condition.visit(this);
        this.depth++;
        this.visitArray(node.cases);
        this.depth--;
    };
    BaseVisitor.prototype.visitThrowStatement = function (node) {
        node.value.visit(this);
    };
    BaseVisitor.prototype.visitTryStatement = function (node) {
        this.visitArray(node.statements);
        if (node.catchVariable)
            node.catchVariable.visit(this);
        this.visitArray(node.catchStatements);
        this.visitArray(node.finallyStatements);
    };
    BaseVisitor.prototype.visitTypeDeclaration = function (node) {
        node.name.visit(this);
        this.visitArray(node.decorators);
        node.type.visit(this);
        this.visitArray(node.typeParameters);
    };
    BaseVisitor.prototype.visitVariableDeclaration = function (node) {
        node.name.visit(this);
        if (node.type)
            node.type.visit(this);
        if (node.initializer)
            node.initializer.visit(this);
    };
    BaseVisitor.prototype.visitVariableStatement = function (node) {
        this.visitArray(node.decorators);
        this.visitArray(node.declarations);
    };
    BaseVisitor.prototype.visitWhileStatement = function (node) {
        node.condition.visit(this);
        this.depth++;
        node.statement.visit(this);
        this.depth--;
    };
    BaseVisitor.prototype.visitVoidStatement = function (node) { };
    BaseVisitor.prototype.visitComment = function (node) { };
    BaseVisitor.prototype.visitDecoratorNode = function (node) {
        node.name.visit(this);
        this.visitArray(node.arguments);
    };
    BaseVisitor.prototype.visitParameter = function (node) {
        node.name.visit(this);
        if (node.implicitFieldDeclaration) {
            node.implicitFieldDeclaration.visit(this);
        }
        if (node.initializer)
            node.initializer.visit(this);
        node.type.visit(this);
    };
    return BaseVisitor;
}());
exports.BaseVisitor = BaseVisitor;
