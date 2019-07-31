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
var visitor_1 = require("../visitor");
var BaseVisitor = /** @class */ (function (_super) {
    __extends(BaseVisitor, _super);
    function BaseVisitor(parser, writer) {
        var _this = _super.call(this) || this;
        _this.parser = parser;
        _this.writer = writer;
        _this.depth = 0;
        return _this;
    }
    // /** Visits each node in an array if array exists. */
    // visitArray(array: Node[] | null): void {
    //   if (array) {
    //     array.map(node => {
    //       if (node) node.visit(this);
    //     });
    //   }
    // }
    BaseVisitor.prototype.start = function () {
        this.visit(this.parser.program.sources);
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
        this.visit(node.name);
        this.visit(node.typeArguments);
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
        this.visit(node.typeArguments);
        this.visit(node.arguments);
    };
    BaseVisitor.prototype.visitClassExpression = function (node) {
        node.declaration.visit(this);
    };
    BaseVisitor.prototype.visitCommaExpression = function (node) {
        this.visit(node.expressions);
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
        this.visit(node.typeArguments);
        this.visit(node.arguments);
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
        this.visit(node.statements);
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
        this.visit(node.decorators);
        assert(node.isGeneric ? node.typeParameters != null : node.typeParameters == null);
        if (node.isGeneric) {
            this.visit(node.typeParameters);
        }
        if (node.extendsType) {
            node.extendsType.visit(this);
        }
        this.visit(node.implementsTypes);
        this.visit(node.members);
        this.depth--;
    };
    BaseVisitor.prototype.visitDoStatement = function (node) {
        node.condition.visit(this);
        node.statement.visit(this);
    };
    BaseVisitor.prototype.visitEmptyStatement = function (node) { };
    BaseVisitor.prototype.visitEnumDeclaration = function (node, isDefault) {
        node.name.visit(this);
        this.visit(node.decorators);
        this.visit(node.values);
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
        this.visit(node.members);
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
        this.visit(node.decorators);
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
        this.visit(node.decorators);
        if (node.isGeneric) {
            this.visit(node.typeParameters);
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
        this.visit(node.decorators);
    };
    BaseVisitor.prototype.visitImportStatement = function (node) {
        if (node.namespaceName)
            node.namespaceName.visit(this);
        this.visit(node.declarations);
    };
    BaseVisitor.prototype.visitIndexSignatureDeclaration = function (node) {
        // node.name.visit(this);
        // node.keyType.visit(this);
        // node.valueType.visit(this);
    };
    BaseVisitor.prototype.visitInterfaceDeclaration = function (node, isDefault) {
        node.name.visit(this);
        if (node.isGeneric) {
            this.visit(node.typeParameters);
        }
        this.visit(node.implementsTypes);
        if (node.extendsType)
            node.extendsType.visit(this);
        this.depth++;
        this.visit(node.members);
        this.depth--;
    };
    BaseVisitor.prototype.visitMethodDeclaration = function (node) {
        node.name.visit(this);
        if (node.isGeneric) {
            this.visit(node.typeParameters);
        }
        node.signature.visit(this);
        this.visit(node.decorators);
        this.depth++;
        if (node.body)
            node.body.visit(this);
        this.depth--;
    };
    BaseVisitor.prototype.visitNamespaceDeclaration = function (node, isDefault) {
        node.name.visit(this);
        this.visit(node.decorators);
        this.visit(node.members);
    };
    BaseVisitor.prototype.visitReturnStatement = function (node) {
        if (node.value)
            node.value.visit(this);
    };
    BaseVisitor.prototype.visitSwitchCase = function (node) {
        if (node.label)
            node.label.visit(this);
        this.visit(node.statements);
    };
    BaseVisitor.prototype.visitSwitchStatement = function (node) {
        node.condition.visit(this);
        this.depth++;
        this.visit(node.cases);
        this.depth--;
    };
    BaseVisitor.prototype.visitThrowStatement = function (node) {
        node.value.visit(this);
    };
    BaseVisitor.prototype.visitTryStatement = function (node) {
        this.visit(node.statements);
        if (node.catchVariable)
            node.catchVariable.visit(this);
        this.visit(node.catchStatements);
        this.visit(node.finallyStatements);
    };
    BaseVisitor.prototype.visitTypeDeclaration = function (node) {
        node.name.visit(this);
        this.visit(node.decorators);
        node.type.visit(this);
        this.visit(node.typeParameters);
    };
    BaseVisitor.prototype.visitVariableDeclaration = function (node) {
        node.name.visit(this);
        if (node.type)
            node.type.visit(this);
        if (node.initializer)
            node.initializer.visit(this);
    };
    BaseVisitor.prototype.visitVariableStatement = function (node) {
        this.visit(node.decorators);
        this.visit(node.declarations);
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
        this.visit(node.arguments);
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
}(visitor_1.AbstractVisitor));
exports.BaseVisitor = BaseVisitor;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYmFzZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uL3NyYy9hc3QvYmFzZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBNkVBLHNDQUE2QztBQUk3QztJQUFpQywrQkFBcUI7SUFHcEQscUJBQXNCLE1BQWMsRUFBWSxNQUFjO1FBQTlELFlBQ0UsaUJBQU8sU0FDUjtRQUZxQixZQUFNLEdBQU4sTUFBTSxDQUFRO1FBQVksWUFBTSxHQUFOLE1BQU0sQ0FBUTtRQUY5RCxXQUFLLEdBQVcsQ0FBQyxDQUFDOztJQUlsQixDQUFDO0lBRUQsdURBQXVEO0lBQ3ZELDJDQUEyQztJQUMzQyxpQkFBaUI7SUFDakIsMEJBQTBCO0lBQzFCLG9DQUFvQztJQUNwQyxVQUFVO0lBQ1YsTUFBTTtJQUNOLElBQUk7SUFFSiwyQkFBSyxHQUFMO1FBQ0UsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsQ0FBQztJQUMxQyxDQUFDO0lBRUQsaUNBQVcsR0FBWCxVQUFZLElBQVk7OztZQUN0QixLQUFtQixJQUFBLEtBQUEsU0FBQSxJQUFJLENBQUMsVUFBVSxDQUFBLGdCQUFBLDRCQUFFO2dCQUEvQixJQUFNLElBQUksV0FBQTtnQkFDYixJQUFJLENBQUMsS0FBSyxFQUFFLENBQUM7Z0JBQ2IsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQztnQkFDakIsSUFBSSxDQUFDLEtBQUssRUFBRSxDQUFDO2FBQ2Q7Ozs7Ozs7OztJQUNILENBQUM7SUFFRCxtQ0FBYSxHQUFiLFVBQWMsSUFBYyxJQUFTLENBQUM7SUFFdEMsbUNBQWEsR0FBYixVQUFjLElBQWM7UUFDMUIsSUFBSSxDQUFDLFVBQVUsQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDNUIsSUFBSSxJQUFJLENBQUMsSUFBSSxFQUFFO1lBQ2IsSUFBSSxDQUFDLEtBQUssQ0FBQyxJ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Q0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ3RCLElBQUksSUFBSSxDQUFDLHdCQUF3QixFQUFFO1lBQ2pDLElBQUksQ0FBQyx3QkFBd0IsQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7U0FDM0M7UUFDRCxJQUFJLElBQUksQ0FBQyxXQUFXO1lBQUUsSUFBSSxDQUFDLFdBQVcsQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDbkQsSUFBSSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDeEIsQ0FBQztJQUNILGtCQUFDO0FBQUQsQ0FBQyxBQWxhRCxDQUFpQyx5QkFBZSxHQWthL0M7QUFsYVksa0NBQVciLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1xuICBTb3VyY2UsXG4gIFR5cGVOb2RlLFxuICBUeXBlTmFtZSxcbiAgTmFtZWRUeXBlTm9kZSxcbiAgRnVuY3Rpb25UeXBlTm9kZSxcbiAgVHlwZVBhcmFtZXRlck5vZGUsXG4gIElkZW50aWZpZXJFeHByZXNzaW9uLFxuICBBcnJheUxpdGVyYWxFeHByZXNzaW9uLFxuICBPYmplY3RMaXRlcmFsRXhwcmVzc2lvbixcbiAgQXNzZXJ0aW9uRXhwcmVzc2lvbixcbiAgQmluYXJ5RXhwcmVzc2lvbixcbiAgQ2FsbEV4cHJlc3Npb24sXG4gIENsYXNzRXhwcmVzc2lvbixcbiAgQ29tbWFFeHByZXNzaW9uLFxuICBFbGVtZW50QWNjZXNzRXhwcmVzc2lvbixcbiAgRnVuY3Rpb25FeHByZXNzaW9uLFxuICBMaXRlcmFsRXhwcmVzc2lvbixcbiAgRmxvYXRMaXRlcmFsRXhwcmVzc2lvbixcbiAgSW5zdGFuY2VPZkV4cHJlc3Npb24sXG4gIEludGVnZXJMaXRlcmFsRXhwcmVzc2lvbixcbiAgU3RyaW5nTGl0ZXJhbEV4cHJlc3Npb24sXG4gIFJlZ2V4cExpdGVyYWxFeHByZXNzaW9uLFxuICBOZXdFeHByZXNzaW9uLFxuICBQYXJlbnRoZXNpemVkRXhwcmVzc2lvbixcbiAgUHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uLFxuICBUZXJuYXJ5RXhwcmVzc2lvbixcbiAgVW5hcnlFeHByZXNzaW9uLFxuICBVbmFyeVBvc3RmaXhFeHByZXNzaW9uLFxuICBVbmFyeVByZWZpeEV4cHJlc3Npb24sXG4gIFN1cGVyRXhwcmVzc2lvbixcbiAgRmFsc2VFeHByZXNzaW9uLFxuICBUcnVlRXhwcmVzc2lvbixcbiAgVGhpc0V4cHJlc3Npb24sXG4gIE51bGxFeHByZXNzaW9uLFxuICBDb25zdHJ1Y3RvckV4cHJlc3Npb24sXG4gIFN0YXRlbWVudCxcbiAgQmxvY2tTdGF0ZW1lbnQsXG4gIEJyZWFrU3RhdGVtZW50LFxuICBDb250aW51ZVN0YXRlbWVudCxcbiAgQ2xhc3NEZWNsYXJhdGlvbixcbiAgRG9TdGF0ZW1lbnQsXG4gIEVtcHR5U3RhdGVtZW50LFxuICBFbnVtRGVjbGFyYXRpb24sXG4gIEVudW1WYWx1ZURlY2xhcmF0aW9uLFxuICBFeHBvcnRJbXBvcnRTdGF0ZW1lbnQsXG4gIEV4cG9ydE1lbWJlcixcbiAgRXhwb3J0U3RhdGVtZW50LFxuICBFeHBvcnREZWZhdWx0U3RhdGVtZW50LFxuICBFeHByZXNzaW9uU3RhdGVtZW50LFxuICBGaWVsZERlY2xhcmF0aW9uLFxuICBGb3JTdGF0ZW1lbnQsXG4gIEZ1bmN0aW9uRGVjbGFyYXRpb24sXG4gIElmU3RhdGVtZW50LFxuICBJbXBvcnREZWNsYXJhdGlvbixcbiAgSW1wb3J0U3RhdGVtZW50LFxuICBJbmRleFNpZ25hdHVyZURlY2xhcmF0aW9uLFxuICBJbnRlcmZhY2VEZWNsYXJhdGlvbixcbiAgTWV0aG9kRGVjbGFyYXRpb24sXG4gIE5hbWVzcGFjZURlY2xhcmF0aW9uLFxuICBSZXR1cm5TdGF0ZW1lbnQsXG4gIFN3aXRjaENhc2UsXG4gIFN3aXRjaFN0YXRlbWVudCxcbiAgVGhyb3dTdGF0ZW1lbnQsXG4gIFRyeVN0YXRlbWVudCxcbiAgVHlwZURlY2xhcmF0aW9uLFxuICBWYXJpYWJsZURlY2xhcmF0aW9uLFxuICBWYXJpYWJsZVN0YXRlbWVudCxcbiAgV2hpbGVTdGF0ZW1lbnQsXG4gIFZvaWRTdGF0ZW1lbnQsXG4gIENvbW1lbnROb2RlLFxuICBEZWNvcmF0b3JOb2RlLFxuICBQYXJhbWV0ZXJOb2RlLFxuICBOb2RlLFxuICBQYXJzZXJcbn0gZnJvbSBcImFzc2VtYmx5c2NyaXB0XCI7XG5cbmltcG9ydCB7IEFic3RyYWN0VmlzaXRvciB9IGZyb20gXCIuLi92aXNpdG9yXCI7XG5pbXBvcnQgeyBBU1RWaXNpdG9yIH0gZnJvbSBcIi5cIjtcbmltcG9ydCB7IFdyaXRlciB9IGZyb20gXCIuLlwiO1xuXG5leHBvcnQgY2xhc3MgQmFzZVZpc2l0b3IgZXh0ZW5kcyBBYnN0cmFjdFZpc2l0b3I8Tm9kZT4gaW1wbGVtZW50cyBBU1RWaXNpdG9yIHtcbiAgZGVwdGg6IG51bWJlciA9IDA7XG5cbiAgY29uc3RydWN0b3IocHJvdGVjdGVkIHBhcnNlcjogUGFyc2VyLCBwcm90ZWN0ZWQgd3JpdGVyOiBXcml0ZXIpIHtcbiAgICBzdXBlcigpO1xuICB9XG5cbiAgLy8gLyoqIFZpc2l0cyBlYWNoIG5vZGUgaW4gYW4gYXJyYXkgaWYgYXJyYXkgZXhpc3RzLiAqL1xuICAvLyB2aXNpdEFycmF5KGFycmF5OiBOb2RlW10gfCBudWxsKTogdm9pZCB7XG4gIC8vICAgaWYgKGFycmF5KSB7XG4gIC8vICAgICBhcnJheS5tYXAobm9kZSA9PiB7XG4gIC8vICAgICAgIGlmIChub2RlKSBub2RlLnZpc2l0KHRoaXMpO1xuICAvLyAgICAgfSk7XG4gIC8vICAgfVxuICAvLyB9XG5cbiAgc3RhcnQoKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdCh0aGlzLnBhcnNlci5wcm9ncmFtLnNvdXJjZXMpO1xuICB9XG5cbiAgdmlzaXRTb3VyY2Uobm9kZTogU291cmNlKTogdm9pZCB7XG4gICAgZm9yIChjb25zdCBzdG10IG9mIG5vZGUuc3RhdGVtZW50cykge1xuICAgICAgdGhpcy5kZXB0aCsrO1xuICAgICAgc3RtdC52aXNpdCh0aGlzKTtcbiAgICAgIHRoaXMuZGVwdGgtLTtcbiAgICB9XG4gIH1cblxuICB2aXNpdFR5cGVOb2RlKG5vZGU6IFR5cGVOb2RlKTogdm9pZCB7fVxuXG4gIHZpc2l0VHlwZU5hbWUobm9kZTogVHlwZU5hbWUpOiB2b2lkIHtcbiAgICBub2RlLmlkZW50aWZpZXIudmlzaXQodGhpcyk7XG4gICAgaWYgKG5vZGUubmV4dCkge1xuICAgICAgbm9kZS52aXNpdCh0aGlzKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdE5hbWVkVHlwZU5vZGUobm9kZTogTmFtZWRUeXBlTm9kZSk6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5uYW1lKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUudHlwZUFyZ3VtZW50cyk7XG4gIH1cblxuICB2aXNpdEZ1bmN0aW9uVHlwZU5vZGUobm9kZTogRnVuY3Rpb25UeXBlTm9kZSk6IHZvaWQge1xuICAgIGZvciAobGV0IHBhcmFtIG9mIG5vZGUucGFyYW1ldGVycykge1xuICAgICAgcGFyYW0udmlzaXQodGhpcyk7XG4gICAgfVxuICAgIG5vZGUucmV0dXJuVHlwZS52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0VHlwZVBhcmFtZXRlcihub2RlOiBUeXBlUGFyYW1ldGVyTm9kZSk6IHZvaWQge1xuICAgIG5vZGUubmFtZS52aXNpdCh0aGlzKTtcbiAgICBpZiAobm9kZS5leHRlbmRzVHlwZSkgbm9kZS5leHRlbmRzVHlwZS52aXNpdCh0aGlzKTtcbiAgICBpZiAobm9kZS5kZWZhdWx0VHlwZSkgbm9kZS5kZWZhdWx0VHlwZS52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0SWRlbnRpZmllckV4cHJlc3Npb24obm9kZTogSWRlbnRpZmllckV4cHJlc3Npb24pOiB2b2lkIHt9XG5cbiAgdmlzaXRBcnJheUxpdGVyYWxFeHByZXNzaW9uKG5vZGU6IEFycmF5TGl0ZXJhbEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICBub2RlLmVsZW1lbnRFeHByZXNzaW9ucy5tYXAoZSA9PiB7XG4gICAgICBpZiAoZSkgZS52aXNpdCh0aGlzKTtcbiAgICB9KTtcbiAgfVxuXG4gIHZpc2l0T2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24obm9kZTogT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICBpZiAobm9kZS52YWx1ZXMgJiYgbm9kZS5uYW1lcykge1xuICAgICAgYXNzZXJ0KG5vZGUudmFsdWVzLmxlbmd0aCA9PSBub2RlLm5hbWVzLmxlbmd0aCk7XG4gICAgICBmb3IgKGxldCBpID0gMDsgaSA8IG5vZGUudmFsdWVzLmxlbmd0aDsgaSsrKSB7XG4gICAgICAgIG5vZGUubmFtZXNbaV0udmlzaXQodGhpcyk7XG4gICAgICAgIG5vZGUudmFsdWVzW2ldLnZpc2l0KHRoaXMpO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHZpc2l0QXNzZXJ0aW9uRXhwcmVzc2lvbihub2RlOiBBc3NlcnRpb25FeHByZXNzaW9uKTogdm9pZCB7XG4gICAgaWYgKG5vZGUudG9UeXBlKSBub2RlLnRvVHlwZS52aXNpdCh0aGlzKTtcbiAgICBub2RlLmV4cHJlc3Npb24udmlzaXQodGhpcyk7XG4gIH1cblxuICB2aXNpdEJpbmFyeUV4cHJlc3Npb24obm9kZTogQmluYXJ5RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIG5vZGUubGVmdC52aXNpdCh0aGlzKTtcbiAgICBub2RlLnJpZ2h0LnZpc2l0KHRoaXMpO1xuICB9XG5cbiAgdmlzaXRDYWxsRXhwcmVzc2lvbihub2RlOiBDYWxsRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIG5vZGUuZXhwcmVzc2lvbi52aXNpdCh0aGlzKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUudHlwZUFyZ3VtZW50cyk7XG4gICAgdGhpcy52aXNpdChub2RlLmFyZ3VtZW50cyk7XG4gIH1cblxuICB2aXNpdENsYXNzRXhwcmVzc2lvbihub2RlOiBDbGFzc0V4cHJlc3Npb24pOiB2b2lkIHtcbiAgICBub2RlLmRlY2xhcmF0aW9uLnZpc2l0KHRoaXMpO1xuICB9XG5cbiAgdmlzaXRDb21tYUV4cHJlc3Npb24obm9kZTogQ29tbWFFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLmV4cHJlc3Npb25zKTtcbiAgfVxuXG4gIHZpc2l0RWxlbWVudEFjY2Vzc0V4cHJlc3Npb24obm9kZTogRWxlbWVudEFjY2Vzc0V4cHJlc3Npb24pOiB2b2lkIHtcbiAgICBub2RlLmVsZW1lbnRFeHByZXNzaW9uLnZpc2l0KHRoaXMpO1xuICAgIG5vZGUuZXhwcmVzc2lvbi52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0RnVuY3Rpb25FeHByZXNzaW9uKG5vZGU6IEZ1bmN0aW9uRXhwcmVzc2lvbik6IHZvaWQge1xuICAgIG5vZGUuZGVjbGFyYXRpb24udmlzaXQodGhpcyk7XG4gIH1cblxuICB2aXNpdExpdGVyYWxFeHByZXNzaW9uKG5vZGU6IExpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgLy8gbm9kZS5cbiAgfVxuXG4gIHZpc2l0RmxvYXRMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBGbG9hdExpdGVyYWxFeHByZXNzaW9uKTogdm9pZCB7fVxuXG4gIHZpc2l0SW5zdGFuY2VPZkV4cHJlc3Npb24obm9kZTogSW5zdGFuY2VPZkV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICBub2RlLmV4cHJlc3Npb24udmlzaXQodGhpcyk7XG4gICAgbm9kZS5pc1R5cGUudmlzaXQodGhpcyk7XG4gIH1cblxuICB2aXNpdEludGVnZXJMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBJbnRlZ2VyTGl0ZXJhbEV4cHJlc3Npb24pOiB2b2lkIHt9XG5cbiAgdmlzaXRTdHJpbmdMaXRlcmFsKHN0cjogc3RyaW5nLCBzaW5nbGVRdW90ZWQ/OiBib29sZWFuKTogdm9pZCB7fVxuXG4gIHZpc2l0U3RyaW5nTGl0ZXJhbEV4cHJlc3Npb24obm9kZTogU3RyaW5nTGl0ZXJhbEV4cHJlc3Npb24pOiB2b2lkIHt9XG5cbiAgdmlzaXRSZWdleHBMaXRlcmFsRXhwcmVzc2lvbihub2RlOiBSZWdleHBMaXRlcmFsRXhwcmVzc2lvbik6IHZvaWQge31cblxuICB2aXNpdE5ld0V4cHJlc3Npb24obm9kZTogTmV3RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIG5vZGUuZXhwcmVzc2lvbi52aXNpdCh0aGlzKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUudHlwZUFyZ3VtZW50cyk7XG4gICAgdGhpcy52aXNpdChub2RlLmFyZ3VtZW50cyk7XG4gIH1cblxuICB2aXNpdFBhcmVudGhlc2l6ZWRFeHByZXNzaW9uKG5vZGU6IFBhcmVudGhlc2l6ZWRFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgbm9kZS5leHByZXNzaW9uLnZpc2l0KHRoaXMpO1xuICB9XG5cbiAgdmlzaXRQcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24obm9kZTogUHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgbm9kZS5wcm9wZXJ0eS52aXNpdCh0aGlzKTtcbiAgICBub2RlLmV4cHJlc3Npb24udmlzaXQodGhpcyk7XG4gIH1cblxuICB2aXNpdFRlcm5hcnlFeHByZXNzaW9uKG5vZGU6IFRlcm5hcnlFeHByZXNzaW9uKTogdm9pZCB7XG4gICAgbm9kZS5jb25kaXRpb24udmlzaXQodGhpcyk7XG4gICAgbm9kZS5pZlRoZW4udmlzaXQodGhpcyk7XG4gICAgbm9kZS5pZkVsc2UudmlzaXQodGhpcyk7XG4gIH1cblxuICB2aXNpdFVuYXJ5RXhwcmVzc2lvbihub2RlOiBVbmFyeUV4cHJlc3Npb24pOiB2b2lkIHtcbiAgICBub2RlLm9wZXJhbmQudmlzaXQodGhpcyk7XG4gIH1cblxuICB2aXNpdFVuYXJ5UG9zdGZpeEV4cHJlc3Npb24obm9kZTogVW5hcnlQb3N0Zml4RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIG5vZGUub3BlcmFuZC52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0VW5hcnlQcmVmaXhFeHByZXNzaW9uKG5vZGU6IFVuYXJ5UHJlZml4RXhwcmVzc2lvbik6IHZvaWQge1xuICAgIG5vZGUub3BlcmFuZC52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0U3VwZXJFeHByZXNzaW9uKG5vZGU6IFN1cGVyRXhwcmVzc2lvbik6IHZvaWQge31cblxuICB2aXNpdEZhbHNlRXhwcmVzc2lvbihub2RlOiBGYWxzZUV4cHJlc3Npb24pOiB2b2lkIHt9XG5cbiAgdmlzaXRUcnVlRXhwcmVzc2lvbihub2RlOiBUcnVlRXhwcmVzc2lvbik6IHZvaWQge31cblxuICB2aXNpdFRoaXNFeHByZXNzaW9uKG5vZGU6IFRoaXNFeHByZXNzaW9uKTogdm9pZCB7fVxuXG4gIHZpc2l0TnVsbEV4cGVyc3Npb24obm9kZTogTnVsbEV4cHJlc3Npb24pOiB2b2lkIHt9XG5cbiAgdmlzaXRDb25zdHJ1Y3RvckV4cHJlc3Npb24obm9kZTogQ29uc3RydWN0b3JFeHByZXNzaW9uKTogdm9pZCB7fVxuXG4gIHZpc2l0Tm9kZUFuZFRlcm1pbmF0ZShzdGF0ZW1lbnQ6IFN0YXRlbWVudCk6IHZvaWQge31cblxuICB2aXNpdEJsb2NrU3RhdGVtZW50KG5vZGU6IEJsb2NrU3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy5kZXB0aCsrO1xuICAgIHRoaXMudmlzaXQobm9kZS5zdGF0ZW1lbnRzKTtcbiAgICB0aGlzLmRlcHRoLS07XG4gIH1cblxuICB2aXNpdEJyZWFrU3RhdGVtZW50KG5vZGU6IEJyZWFrU3RhdGVtZW50KTogdm9pZCB7XG4gICAgaWYgKG5vZGUubGFiZWwpIHtcbiAgICAgIG5vZGUubGFiZWwudmlzaXQodGhpcyk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRDb250aW51ZVN0YXRlbWVudChub2RlOiBDb250aW51ZVN0YXRlbWVudCk6IHZvaWQge1xuICAgIGlmIChub2RlLmxhYmVsKSB7XG4gICAgICBub2RlLmxhYmVsLnZpc2l0KHRoaXMpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0Q2xhc3NEZWNsYXJhdGlvbihub2RlOiBDbGFzc0RlY2xhcmF0aW9uLCBpc0RlZmF1bHQ/OiBib29sZWFuKTogdm9pZCB7XG4gICAgbm9kZS5uYW1lLnZpc2l0KHRoaXMpO1xuICAgIHRoaXMuZGVwdGgrKztcbiAgICB0aGlzLnZpc2l0KG5vZGUuZGVjb3JhdG9ycyk7XG4gICAgYXNzZXJ0KFxuICAgICAgbm9kZS5pc0dlbmVyaWMgPyBub2RlLnR5cGVQYXJhbWV0ZXJzICE9IG51bGwgOiBub2RlLnR5cGVQYXJhbWV0ZXJzID09IG51bGxcbiAgICApO1xuICAgIGlmIChub2RlLmlzR2VuZXJpYykge1xuICAgICAgdGhpcy52aXNpdChub2RlLnR5cGVQYXJhbWV0ZXJzKTtcbiAgICB9XG4gICAgaWYgKG5vZGUuZXh0ZW5kc1R5cGUpIHtcbiAgICAgIG5vZGUuZXh0ZW5kc1R5cGUudmlzaXQodGhpcyk7XG4gICAgfVxuICAgIHRoaXMudmlzaXQobm9kZS5pbXBsZW1lbnRzVHlwZXMpO1xuICAgIHRoaXMudmlzaXQobm9kZS5tZW1iZXJzKTtcbiAgICB0aGlzLmRlcHRoLS07XG4gIH1cblxuICB2aXNpdERvU3RhdGVtZW50KG5vZGU6IERvU3RhdGVtZW50KTogdm9pZCB7XG4gICAgbm9kZS5jb25kaXRpb24udmlzaXQodGhpcyk7XG4gICAgbm9kZS5zdGF0ZW1lbnQudmlzaXQodGhpcyk7XG4gIH1cblxuICB2aXNpdEVtcHR5U3RhdGVtZW50KG5vZGU6IEVtcHR5U3RhdGVtZW50KTogdm9pZCB7fVxuXG4gIHZpc2l0RW51bURlY2xhcmF0aW9uKG5vZGU6IEVudW1EZWNsYXJhdGlvbiwgaXNEZWZhdWx0PzogYm9vbGVhbik6IHZvaWQge1xuICAgIG5vZGUubmFtZS52aXNpdCh0aGlzKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZGVjb3JhdG9ycyk7XG4gICAgdGhpcy52aXNpdChub2RlLnZhbHVlcyk7XG4gIH1cblxuICB2aXNpdEVudW1WYWx1ZURlY2xhcmF0aW9uKG5vZGU6IEVudW1WYWx1ZURlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgbm9kZS5uYW1lLnZpc2l0KHRoaXMpO1xuICAgIGlmIChub2RlLmluaXRpYWxpemVyKSB7XG4gICAgICBub2RlLmluaXRpYWxpemVyLnZpc2l0KHRoaXMpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0RXhwb3J0SW1wb3J0U3RhdGVtZW50KG5vZGU6IEV4cG9ydEltcG9ydFN0YXRlbWVudCk6IHZvaWQge1xuICAgIG5vZGUubmFtZS52aXNpdCh0aGlzKTtcbiAgICBub2RlLmV4dGVybmFsTmFtZS52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0RXhwb3J0TWVtYmVyKG5vZGU6IEV4cG9ydE1lbWJlcik6IHZvaWQge1xuICAgIG5vZGUubG9jYWxOYW1lLnZpc2l0KHRoaXMpO1xuICAgIG5vZGUuZXhwb3J0ZWROYW1lLnZpc2l0KHRoaXMpO1xuICB9XG5cbiAgdmlzaXRFeHBvcnRTdGF0ZW1lbnQobm9kZTogRXhwb3J0U3RhdGVtZW50KTogdm9pZCB7XG4gICAgaWYgKG5vZGUucGF0aCkge1xuICAgICAgbm9kZS5wYXRoLnZpc2l0KHRoaXMpO1xuICAgIH1cbiAgICB0aGlzLnZpc2l0KG5vZGUubWVtYmVycyk7XG4gIH1cblxuICB2aXNpdEV4cG9ydERlZmF1bHRTdGF0ZW1lbnQobm9kZTogRXhwb3J0RGVmYXVsdFN0YXRlbWVudCk6IHZvaWQge1xuICAgIG5vZGUuZGVjbGFyYXRpb24udmlzaXQodGhpcyk7XG4gIH1cblxuICB2aXNpdEV4cHJlc3Npb25TdGF0ZW1lbnQobm9kZTogRXhwcmVzc2lvblN0YXRlbWVudCk6IHZvaWQge1xuICAgIG5vZGUuZXhwcmVzc2lvbi52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0RmllbGREZWNsYXJhdGlvbihub2RlOiBGaWVsZERlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgbm9kZS5uYW1lLnZpc2l0KHRoaXMpO1xuICAgIGlmIChub2RlLnR5cGUpIHtcbiAgICAgIG5vZGUudHlwZS52aXNpdCh0aGlzKTtcbiAgICB9XG4gICAgaWYgKG5vZGUuaW5pdGlhbGl6ZXIpIHtcbiAgICAgIG5vZGUuaW5pdGlhbGl6ZXIudmlzaXQodGhpcyk7XG4gICAgfVxuICAgIHRoaXMudmlzaXQobm9kZS5kZWNvcmF0b3JzKTtcbiAgfVxuXG4gIHZpc2l0Rm9yU3RhdGVtZW50KG5vZGU6IEZvclN0YXRlbWVudCk6IHZvaWQge1xuICAgIGlmIChub2RlLmluaXRpYWxpemVyKSBub2RlLmluaXRpYWxpemVyLnZpc2l0KHRoaXMpO1xuICAgIGlmIChub2RlLmNvbmRpdGlvbikgbm9kZS5jb25kaXRpb24udmlzaXQodGhpcyk7XG4gICAgaWYgKG5vZGUuaW5jcmVtZW50b3IpIG5vZGUuaW5jcmVtZW50b3IudmlzaXQodGhpcyk7XG4gICAgbm9kZS5zdGF0ZW1lbnQudmlzaXQodGhpcyk7XG4gIH1cblxuICB2aXNpdEZ1bmN0aW9uRGVjbGFyYXRpb24oXG4gICAgbm9kZTogRnVuY3Rpb25EZWNsYXJhdGlvbixcbiAgICBpc0RlZmF1bHQ/OiBib29sZWFuXG4gICk6IHZvaWQge1xuICAgIG5vZGUubmFtZS52aXNpdCh0aGlzKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZGVjb3JhdG9ycyk7XG4gICAgaWYgKG5vZGUuaXNHZW5lcmljKSB7XG4gICAgICB0aGlzLnZpc2l0KG5vZGUudHlwZVBhcmFtZXRlcnMpO1xuICAgIH1cbiAgICBub2RlLnNpZ25hdHVyZS52aXNpdCh0aGlzKTtcbiAgICB0aGlzLmRlcHRoKys7XG4gICAgaWYgKG5vZGUuYm9keSkgbm9kZS5ib2R5LnZpc2l0KHRoaXMpO1xuICAgIHRoaXMuZGVwdGgtLTtcbiAgfVxuXG4gIHZpc2l0RnVuY3Rpb25Db21tb24obm9kZTogRnVuY3Rpb25EZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIC8vIG5vZGUubmFtZS52aXNpdCh0aGlzKVxuICB9XG5cbiAgdmlzaXRJZlN0YXRlbWVudChub2RlOiBJZlN0YXRlbWVudCk6IHZvaWQge1xuICAgIG5vZGUuY29uZGl0aW9uLnZpc2l0KHRoaXMpO1xuICAgIG5vZGUuaWZUcnVlLnZpc2l0KHRoaXMpO1xuICAgIGlmIChub2RlLmlmRmFsc2UpIG5vZGUuaWZGYWxzZS52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0SW1wb3J0RGVjbGFyYXRpb24obm9kZTogSW1wb3J0RGVjbGFyYXRpb24pOiB2b2lkIHtcbiAgICBub2RlLmZvcmVpZ25OYW1lLnZpc2l0KHRoaXMpO1xuICAgIG5vZGUubmFtZS52aXNpdCh0aGlzKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZGVjb3JhdG9ycyk7XG4gIH1cblxuICB2aXNpdEltcG9ydFN0YXRlbWVudChub2RlOiBJbXBvcnRTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICBpZiAobm9kZS5uYW1lc3BhY2VOYW1lKSBub2RlLm5hbWVzcGFjZU5hbWUudmlzaXQodGhpcyk7XG4gICAgdGhpcy52aXNpdChub2RlLmRlY2xhcmF0aW9ucyk7XG4gIH1cblxuICB2aXNpdEluZGV4U2lnbmF0dXJlRGVjbGFyYXRpb24obm9kZTogSW5kZXhTaWduYXR1cmVEZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIC8vIG5vZGUubmFtZS52aXNpdCh0aGlzKTtcbiAgICAvLyBub2RlLmtleVR5cGUudmlzaXQodGhpcyk7XG4gICAgLy8gbm9kZS52YWx1ZVR5cGUudmlzaXQodGhpcyk7XG4gIH1cblxuICB2aXNpdEludGVyZmFjZURlY2xhcmF0aW9uKFxuICAgIG5vZGU6IEludGVyZmFjZURlY2xhcmF0aW9uLFxuICAgIGlzRGVmYXVsdD86IGJvb2xlYW5cbiAgKTogdm9pZCB7XG4gICAgbm9kZS5uYW1lLnZpc2l0KHRoaXMpO1xuICAgIGlmIChub2RlLmlzR2VuZXJpYykge1xuICAgICAgdGhpcy52aXNpdChub2RlLnR5cGVQYXJhbWV0ZXJzKTtcbiAgICB9XG4gICAgdGhpcy52aXNpdChub2RlLmltcGxlbWVudHNUeXBlcyk7XG4gICAgaWYgKG5vZGUuZXh0ZW5kc1R5cGUpIG5vZGUuZXh0ZW5kc1R5cGUudmlzaXQodGhpcyk7XG4gICAgdGhpcy5kZXB0aCsrO1xuICAgIHRoaXMudmlzaXQobm9kZS5tZW1iZXJzKTtcbiAgICB0aGlzLmRlcHRoLS07XG4gIH1cblxuICB2aXNpdE1ldGhvZERlY2xhcmF0aW9uKG5vZGU6IE1ldGhvZERlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgbm9kZS5uYW1lLnZpc2l0KHRoaXMpO1xuICAgIGlmIChub2RlLmlzR2VuZXJpYykge1xuICAgICAgdGhpcy52aXNpdChub2RlLnR5cGVQYXJhbWV0ZXJzKTtcbiAgICB9XG4gICAgbm9kZS5zaWduYXR1cmUudmlzaXQodGhpcyk7XG4gICAgdGhpcy52aXNpdChub2RlLmRlY29yYXRvcnMpO1xuICAgIHRoaXMuZGVwdGgrKztcbiAgICBpZiAobm9kZS5ib2R5KSBub2RlLmJvZHkudmlzaXQodGhpcyk7XG4gICAgdGhpcy5kZXB0aC0tO1xuICB9XG5cbiAgdmlzaXROYW1lc3BhY2VEZWNsYXJhdGlvbihcbiAgICBub2RlOiBOYW1lc3BhY2VEZWNsYXJhdGlvbixcbiAgICBpc0RlZmF1bHQ/OiBib29sZWFuXG4gICk6IHZvaWQge1xuICAgIG5vZGUubmFtZS52aXNpdCh0aGlzKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZGVjb3JhdG9ycyk7XG4gICAgdGhpcy52aXNpdChub2RlLm1lbWJlcnMpO1xuICB9XG5cbiAgdmlzaXRSZXR1cm5TdGF0ZW1lbnQobm9kZTogUmV0dXJuU3RhdGVtZW50KTogdm9pZCB7XG4gICAgaWYgKG5vZGUudmFsdWUpIG5vZGUudmFsdWUudmlzaXQodGhpcyk7XG4gIH1cblxuICB2aXNpdFN3aXRjaENhc2Uobm9kZTogU3dpdGNoQ2FzZSk6IHZvaWQge1xuICAgIGlmIChub2RlLmxhYmVsKSBub2RlLmxhYmVsLnZpc2l0KHRoaXMpO1xuICAgIHRoaXMudmlzaXQobm9kZS5zdGF0ZW1lbnRzKTtcbiAgfVxuXG4gIHZpc2l0U3dpdGNoU3RhdGVtZW50KG5vZGU6IFN3aXRjaFN0YXRlbWVudCk6IHZvaWQge1xuICAgIG5vZGUuY29uZGl0aW9uLnZpc2l0KHRoaXMpO1xuICAgIHRoaXMuZGVwdGgrKztcbiAgICB0aGlzLnZpc2l0KG5vZGUuY2FzZXMpO1xuICAgIHRoaXMuZGVwdGgtLTtcbiAgfVxuXG4gIHZpc2l0VGhyb3dTdGF0ZW1lbnQobm9kZTogVGhyb3dTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICBub2RlLnZhbHVlLnZpc2l0KHRoaXMpO1xuICB9XG5cbiAgdmlzaXRUcnlTdGF0ZW1lbnQobm9kZTogVHJ5U3RhdGVtZW50KTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLnN0YXRlbWVudHMpO1xuICAgIGlmIChub2RlLmNhdGNoVmFyaWFibGUpIG5vZGUuY2F0Y2hWYXJpYWJsZS52aXNpdCh0aGlzKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuY2F0Y2hTdGF0ZW1lbnRzKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZmluYWxseVN0YXRlbWVudHMpO1xuICB9XG5cbiAgdmlzaXRUeXBlRGVjbGFyYXRpb24obm9kZTogVHlwZURlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgbm9kZS5uYW1lLnZpc2l0KHRoaXMpO1xuICAgIHRoaXMudmlzaXQobm9kZS5kZWNvcmF0b3JzKTtcbiAgICBub2RlLnR5cGUudmlzaXQodGhpcyk7XG4gICAgdGhpcy52aXNpdChub2RlLnR5cGVQYXJhbWV0ZXJzKTtcbiAgfVxuXG4gIHZpc2l0VmFyaWFibGVEZWNsYXJhdGlvbihub2RlOiBWYXJpYWJsZURlY2xhcmF0aW9uKTogdm9pZCB7XG4gICAgbm9kZS5uYW1lLnZpc2l0KHRoaXMpO1xuICAgIGlmIChub2RlLnR5cGUpIG5vZGUudHlwZS52aXNpdCh0aGlzKTtcbiAgICBpZiAobm9kZS5pbml0aWFsaXplcikgbm9kZS5pbml0aWFsaXplci52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0VmFyaWFibGVTdGF0ZW1lbnQobm9kZTogVmFyaWFibGVTdGF0ZW1lbnQpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZGVjb3JhdG9ycyk7XG4gICAgdGhpcy52aXNpdChub2RlLmRlY2xhcmF0aW9ucyk7XG4gIH1cblxuICB2aXNpdFdoaWxlU3RhdGVtZW50KG5vZGU6IFdoaWxlU3RhdGVtZW50KTogdm9pZCB7XG4gICAgbm9kZS5jb25kaXRpb24udmlzaXQodGhpcyk7XG4gICAgdGhpcy5kZXB0aCsrO1xuICAgIG5vZGUuc3RhdGVtZW50LnZpc2l0KHRoaXMpO1xuICAgIHRoaXMuZGVwdGgtLTtcbiAgfVxuXG4gIHZpc2l0Vm9pZFN0YXRlbWVudChub2RlOiBWb2lkU3RhdGVtZW50KTogdm9pZCB7fVxuXG4gIHZpc2l0Q29tbWVudChub2RlOiBDb21tZW50Tm9kZSk6IHZvaWQge31cblxuICB2aXNpdERlY29yYXRvck5vZGUobm9kZTogRGVjb3JhdG9yTm9kZSk6IHZvaWQge1xuICAgIG5vZGUubmFtZS52aXNpdCh0aGlzKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUuYXJndW1lbnRzKTtcbiAgfVxuXG4gIHZpc2l0UGFyYW1ldGVyKG5vZGU6IFBhcmFtZXRlck5vZGUpOiB2b2lkIHtcbiAgICBub2RlLm5hbWUudmlzaXQodGhpcyk7XG4gICAgaWYgKG5vZGUuaW1wbGljaXRGaWVsZERlY2xhcmF0aW9uKSB7XG4gICAgICBub2RlLmltcGxpY2l0RmllbGREZWNsYXJhdGlvbi52aXNpdCh0aGlzKTtcbiAgICB9XG4gICAgaWYgKG5vZGUuaW5pdGlhbGl6ZXIpIG5vZGUuaW5pdGlhbGl6ZXIudmlzaXQodGhpcyk7XG4gICAgbm9kZS50eXBlLnZpc2l0KHRoaXMpO1xuICB9XG59XG4iXX0=