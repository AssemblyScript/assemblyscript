import { NodeKind, Node, Source, NamedTypeNode, FunctionTypeNode, TypeName, TypeParameterNode, IdentifierExpression, AssertionExpression, BinaryExpression, CallExpression, ClassExpression, ElementAccessExpression, FunctionExpression, InstanceOfExpression, LiteralExpression, NewExpression, ParenthesizedExpression, PropertyAccessExpression, TernaryExpression, UnaryPostfixExpression, UnaryPrefixExpression, BlockStatement, BreakStatement, ContinueStatement, DoStatement, EmptyStatement, ExportStatement, ExportDefaultStatement, ExportImportStatement, ExpressionStatement, ForStatement, IfStatement, ImportStatement, ReturnStatement, SwitchStatement, ThrowStatement, TryStatement, VariableStatement, WhileStatement, ClassDeclaration, EnumDeclaration, EnumValueDeclaration, FieldDeclaration, FunctionDeclaration, ImportDeclaration, IndexSignatureDeclaration, InterfaceDeclaration, MethodDeclaration, NamespaceDeclaration, TypeDeclaration, VariableDeclaration, DecoratorNode, ExportMember, ParameterNode, SwitchCase, TypeNode, ArrayLiteralExpression, Expression, ObjectLiteralExpression, FloatLiteralExpression, StringLiteralExpression, RegexpLiteralExpression, UnaryExpression, SuperExpression, FalseExpression, TrueExpression, ThisExpression, NullExpression, ConstructorExpression, Statement, VoidStatement, CommentNode, CommaExpression, IntegerLiteralExpression } from "./ast";
import { AbstractVisitor } from "./visitor";

export class BaseVisitor extends AbstractVisitor<Node> {
  depth: number = 0;

  _visit(node: Node): void {
    switch (node.kind) {
      case NodeKind.SOURCE: {
        this.visitSource(<Source>node);
        break;
      }

      // types

      case NodeKind.NAMEDTYPE: {
        this.visitNamedTypeNode(<NamedTypeNode>node);
        break;
      }
      case NodeKind.FUNCTIONTYPE: {
        this.visitFunctionTypeNode(<FunctionTypeNode>node);
        break;
      }
      case NodeKind.TYPENAME: {
        this.visitTypeName(<TypeName>node);
      }
      case NodeKind.TYPEPARAMETER: {
        this.visitTypeParameter(<TypeParameterNode>node);
        break;
      }

      // expressions

      case NodeKind.FALSE:
      case NodeKind.NULL:
      case NodeKind.SUPER:
      case NodeKind.THIS:
      case NodeKind.TRUE:
      case NodeKind.CONSTRUCTOR:
      case NodeKind.IDENTIFIER: {
        this.visitIdentifierExpression(<IdentifierExpression>node);
        break;
      }
      case NodeKind.ASSERTION: {
        this.visitAssertionExpression(<AssertionExpression>node);
        break;
      }
      case NodeKind.BINARY: {
        this.visitBinaryExpression(<BinaryExpression>node);
        break;
      }
      case NodeKind.CALL: {
        this.visitCallExpression(<CallExpression>node);
        break;
      }
      case NodeKind.CLASS: {
        this.visitClassExpression(<ClassExpression>node);
        break;
      }
      case NodeKind.COMMA: {
        this.visitCommaExpression(<CommaExpression>node);
        break;
      }
      case NodeKind.ELEMENTACCESS: {
        this.visitElementAccessExpression(<ElementAccessExpression>node);
        break;
      }
      case NodeKind.FUNCTION: {
        this.visitFunctionExpression(<FunctionExpression>node);
        break;
      }
      case NodeKind.INSTANCEOF: {
        this.visitInstanceOfExpression(<InstanceOfExpression>node);
        break;
      }
      case NodeKind.LITERAL: {
        this.visitLiteralExpression(<LiteralExpression>node);
        break;
      }
      case NodeKind.NEW: {
        this.visitNewExpression(<NewExpression>node);
        break;
      }
      case NodeKind.PARENTHESIZED: {
        this.visitParenthesizedExpression(<ParenthesizedExpression>node);
        break;
      }
      case NodeKind.PROPERTYACCESS: {
        this.visitPropertyAccessExpression(<PropertyAccessExpression>node);
        break;
      }
      case NodeKind.TERNARY: {
        this.visitTernaryExpression(<TernaryExpression>node);
        break;
      }
      case NodeKind.UNARYPOSTFIX: {
        this.visitUnaryPostfixExpression(<UnaryPostfixExpression>node);
        break;
      }
      case NodeKind.UNARYPREFIX: {
        this.visitUnaryPrefixExpression(<UnaryPrefixExpression>node);
        break;
      }

      // statements

      case NodeKind.BLOCK: {
        this.visitBlockStatement(<BlockStatement>node);
        break;
      }
      case NodeKind.BREAK: {
        this.visitBreakStatement(<BreakStatement>node);
        break;
      }
      case NodeKind.CONTINUE: {
        this.visitContinueStatement(<ContinueStatement>node);
        break;
      }
      case NodeKind.DO: {
        this.visitDoStatement(<DoStatement>node);
        break;
      }
      case NodeKind.EMPTY: {
        this.visitEmptyStatement(<EmptyStatement>node);
        break;
      }
      case NodeKind.EXPORT: {
        this.visitExportStatement(<ExportStatement>node);
        break;
      }
      case NodeKind.EXPORTDEFAULT: {
        this.visitExportDefaultStatement(<ExportDefaultStatement>node);
        break;
      }
      case NodeKind.EXPORTIMPORT: {
        this.visitExportImportStatement(<ExportImportStatement>node);
        break;
      }
      case NodeKind.EXPRESSION: {
        this.visitExpressionStatement(<ExpressionStatement>node);
        break;
      }
      case NodeKind.FOR: {
        this.visitForStatement(<ForStatement>node);
        break;
      }
      case NodeKind.IF: {
        this.visitIfStatement(<IfStatement>node);
        break;
      }
      case NodeKind.IMPORT: {
        this.visitImportStatement(<ImportStatement>node);
        break;
      }
      case NodeKind.RETURN: {
        this.visitReturnStatement(<ReturnStatement>node);
        break;
      }
      case NodeKind.SWITCH: {
        this.visitSwitchStatement(<SwitchStatement>node);
        break;
      }
      case NodeKind.THROW: {
        this.visitThrowStatement(<ThrowStatement>node);
        break;
      }
      case NodeKind.TRY: {
        this.visitTryStatement(<TryStatement>node);
        break;
      }
      case NodeKind.VARIABLE: {
        this.visitVariableStatement(<VariableStatement>node);
        break;
      }
      case NodeKind.WHILE: {
        this.visitWhileStatement(<WhileStatement>node);
        break;
      }

      // declaration statements

      case NodeKind.CLASSDECLARATION: {
        this.visitClassDeclaration(<ClassDeclaration>node);
        break;
      }
      case NodeKind.ENUMDECLARATION: {
        this.visitEnumDeclaration(<EnumDeclaration>node);
        break;
      }
      case NodeKind.ENUMVALUEDECLARATION: {
        this.visitEnumValueDeclaration(<EnumValueDeclaration>node);
        break;
      }
      case NodeKind.FIELDDECLARATION: {
        this.visitFieldDeclaration(<FieldDeclaration>node);
        break;
      }
      case NodeKind.FUNCTIONDECLARATION: {
        this.visitFunctionDeclaration(<FunctionDeclaration>node);
        break;
      }
      case NodeKind.IMPORTDECLARATION: {
        this.visitImportDeclaration(<ImportDeclaration>node);
        break;
      }
      case NodeKind.INDEXSIGNATUREDECLARATION: {
        this.visitIndexSignatureDeclaration(<IndexSignatureDeclaration>node);
        break;
      }
      case NodeKind.INTERFACEDECLARATION: {
        this.visitInterfaceDeclaration(<InterfaceDeclaration>node);
        break;
      }
      case NodeKind.METHODDECLARATION: {
        this.visitMethodDeclaration(<MethodDeclaration>node);
        break;
      }
      case NodeKind.NAMESPACEDECLARATION: {
        this.visitNamespaceDeclaration(<NamespaceDeclaration>node);
        break;
      }
      case NodeKind.TYPEDECLARATION: {
        this.visitTypeDeclaration(<TypeDeclaration>node);
        break;
      }
      case NodeKind.VARIABLEDECLARATION: {
        this.visitVariableDeclaration(<VariableDeclaration>node);
        break;
      }

      // other

      case NodeKind.DECORATOR: {
        this.visitDecoratorNode(<DecoratorNode>node);
        break;
      }
      case NodeKind.EXPORTMEMBER: {
        this.visitExportMember(<ExportMember>node);
        break;
      }
      case NodeKind.PARAMETER: {
        this.visitParameter(<ParameterNode>node);
        break;
      }
      case NodeKind.SWITCHCASE: {
        this.visitSwitchCase(<SwitchCase>node);
        break;
      }
      default: assert(false);
    }
  }

  visitSource(node: Source): void {
    for (const stmt of node.statements) {
      this.depth++;
      this.visit(stmt);
      this.depth--;
    }
  }

  visitTypeNode(node: TypeNode): void {}

  visitTypeName(node: TypeName): void {
    this.visit(node.identifier);
    if (node.next) {
      this.visit(node);
    }
  }

  visitNamedTypeNode(node: NamedTypeNode): void {
    this.visit(node.name);
    this.visit(node.typeArguments);
  }

  visitFunctionTypeNode(node: FunctionTypeNode): void {
    for (let param of node.parameters) {
      this.visit(param);
    }
    this.visit(node.returnType);
  }

  visitTypeParameter(node: TypeParameterNode): void {
    this.visit(node.name);
    if (node.extendsType) this.visit(node.extendsType);
    if (node.defaultType) this.visit(node.defaultType);
  }

  visitIdentifierExpression(node: IdentifierExpression): void {}

  visitArrayLiteralExpression(node: ArrayLiteralExpression): void {
    node.elementExpressions.map((e: Expression): void => {
      if (e) this.visit(e);
    });
  }

  visitObjectLiteralExpression(node: ObjectLiteralExpression): void {
    if (node.values && node.names) {
      assert(node.values.length == node.names.length);
      for (let i = 0; i < node.values.length; i++) {
        this.visit(node.names[i]);
        this.visit(node.values[i]);
      }
    }
  }

  visitAssertionExpression(node: AssertionExpression): void {
    if (node.toType) this.visit(node.toType);
    this.visit(node.expression);
  }

  visitBinaryExpression(node: BinaryExpression): void {
    this.visit(node.left);
    this.visit(node.right);
  }

  visitCallExpression(node: CallExpression): void {
    this.visit(node.expression);
    this.visit(node.typeArguments);
    this.visit(node.arguments);
  }

  visitClassExpression(node: ClassExpression): void {
    this.visit(node.declaration);
  }

  visitCommaExpression(node: CommaExpression): void {
    this.visit(node.expressions);
  }

  visitElementAccessExpression(node: ElementAccessExpression): void {
    this.visit(node.elementExpression);
    this.visit(node.expression);
  }

  visitFunctionExpression(node: FunctionExpression): void {
    this.visit(node.declaration);
  }

  visitLiteralExpression(node: LiteralExpression): void {
    // node.
  }

  visitFloatLiteralExpression(node: FloatLiteralExpression): void {}

  visitInstanceOfExpression(node: InstanceOfExpression): void {
    this.visit(node.expression);
    this.visit(node.isType);
  }

  visitIntegerLiteralExpression(node: IntegerLiteralExpression): void {}

  visitStringLiteral(str: string, singleQuoted?: boolean): void {}

  visitStringLiteralExpression(node: StringLiteralExpression): void {}

  visitRegexpLiteralExpression(node: RegexpLiteralExpression): void {}

  visitNewExpression(node: NewExpression): void {
    this.visit(node.expression);
    this.visit(node.typeArguments);
    this.visit(node.arguments);
  }

  visitParenthesizedExpression(node: ParenthesizedExpression): void {
    this.visit(node.expression);
  }

  visitPropertyAccessExpression(node: PropertyAccessExpression): void {
    this.visit(node.property);
    this.visit(node.expression);
  }

  visitTernaryExpression(node: TernaryExpression): void {
    this.visit(node.condition);
    this.visit(node.ifThen);
    this.visit(node.ifElse);
  }

  visitUnaryExpression(node: UnaryExpression): void {
    this.visit(node.operand);
  }

  visitUnaryPostfixExpression(node: UnaryPostfixExpression): void {
    this.visit(node.operand);
  }

  visitUnaryPrefixExpression(node: UnaryPrefixExpression): void {
    this.visit(node.operand);
  }

  visitSuperExpression(node: SuperExpression): void {}

  visitFalseExpression(node: FalseExpression): void {}

  visitTrueExpression(node: TrueExpression): void {}

  visitThisExpression(node: ThisExpression): void {}

  visitNullExperssion(node: NullExpression): void {}

  visitConstructorExpression(node: ConstructorExpression): void {}

  visitNodeAndTerminate(statement: Statement): void {}

  visitBlockStatement(node: BlockStatement): void {
    this.depth++;
    this.visit(node.statements);
    this.depth--;
  }

  visitBreakStatement(node: BreakStatement): void {
    if (node.label) {
      this.visit(node.label);
    }
  }

  visitContinueStatement(node: ContinueStatement): void {
    if (node.label) {
      this.visit(node.label);
    }
  }

  visitClassDeclaration(node: ClassDeclaration, isDefault?: boolean): void {
    this.visit(node.name);
    this.depth++;
    this.visit(node.decorators);
    assert(
      node.isGeneric ? node.typeParameters != null : node.typeParameters == null
    );
    if (node.isGeneric) {
      this.visit(node.typeParameters);
    }
    if (node.extendsType) {
      this.visit(node.extendsType);
    }
    this.visit(node.implementsTypes);
    this.visit(node.members);
    this.depth--;
  }

  visitDoStatement(node: DoStatement): void {
    this.visit(node.condition);
    this.visit(node.statement);
  }

  visitEmptyStatement(node: EmptyStatement): void {}

  visitEnumDeclaration(node: EnumDeclaration, isDefault?: boolean): void {
    this.visit(node.name);
    this.visit(node.decorators);
    this.visit(node.values);
  }

  visitEnumValueDeclaration(node: EnumValueDeclaration): void {
    this.visit(node.name);
    if (node.initializer) {
      this.visit(node.initializer);
    }
  }

  visitExportImportStatement(node: ExportImportStatement): void {
    this.visit(node.name);
    this.visit(node.externalName);
  }

  visitExportMember(node: ExportMember): void {
    this.visit(node.localName);
    this.visit(node.exportedName);
  }

  visitExportStatement(node: ExportStatement): void {
    if (node.path) {
      this.visit(node.path);
    }
    this.visit(node.members);
  }

  visitExportDefaultStatement(node: ExportDefaultStatement): void {
    this.visit(node.declaration);
  }

  visitExpressionStatement(node: ExpressionStatement): void {
    this.visit(node.expression);
  }

  visitFieldDeclaration(node: FieldDeclaration): void {
    this.visit(node.name);
    if (node.type) {
      this.visit(node.type);
    }
    if (node.initializer) {
      this.visit(node.initializer);
    }
    this.visit(node.decorators);
  }

  visitForStatement(node: ForStatement): void {
    if (node.initializer) this.visit(node.initializer);
    if (node.condition) this.visit(node.condition);
    if (node.incrementor) this.visit(node.incrementor);
    this.visit(node.statement);
  }

  visitFunctionDeclaration(
    node: FunctionDeclaration,
    isDefault?: boolean
  ): void {
    this.visit(node.name);
    this.visit(node.decorators);
    if (node.isGeneric) {
      this.visit(node.typeParameters);
    }
    this.visit(node.signature);
    this.depth++;
    if (node.body) this.visit(node.body);
    this.depth--;
  }

  visitFunctionCommon(node: FunctionDeclaration): void {
    // this.visit(node.name)
  }

  visitIfStatement(node: IfStatement): void {
    this.visit(node.condition);
    this.visit(node.ifTrue);
    if (node.ifFalse) this.visit(node.ifFalse);
  }

  visitImportDeclaration(node: ImportDeclaration): void {
    this.visit(node.foreignName);
    this.visit(node.name);
    this.visit(node.decorators);
  }

  visitImportStatement(node: ImportStatement): void {
    if (node.namespaceName) this.visit(node.namespaceName);
    this.visit(node.declarations);
  }

  visitIndexSignatureDeclaration(node: IndexSignatureDeclaration): void {
    // this.visit(node.name);
    // this.visit(node.keyType);
    // this.visit(node.valueType);
  }

  visitInterfaceDeclaration(
    node: InterfaceDeclaration,
    isDefault?: boolean
  ): void {
    this.visit(node.name);
    if (node.isGeneric) {
      this.visit(node.typeParameters);
    }
    this.visit(node.implementsTypes);
    if (node.extendsType) this.visit(node.extendsType);
    this.depth++;
    this.visit(node.members);
    this.depth--;
  }

  visitMethodDeclaration(node: MethodDeclaration): void {
    this.visit(node.name);
    if (node.isGeneric) {
      this.visit(node.typeParameters);
    }
    this.visit(node.signature);
    this.visit(node.decorators);
    this.depth++;
    if (node.body) this.visit(node.body);
    this.depth--;
  }

  visitNamespaceDeclaration(
    node: NamespaceDeclaration,
    isDefault?: boolean
  ): void {
    this.visit(node.name);
    this.visit(node.decorators);
    this.visit(node.members);
  }

  visitReturnStatement(node: ReturnStatement): void {
    if (node.value) this.visit(node.value);
  }

  visitSwitchCase(node: SwitchCase): void {
    if (node.label) this.visit(node.label);
    this.visit(node.statements);
  }

  visitSwitchStatement(node: SwitchStatement): void {
    this.visit(node.condition);
    this.depth++;
    this.visit(node.cases);
    this.depth--;
  }

  visitThrowStatement(node: ThrowStatement): void {
    this.visit(node.value);
  }

  visitTryStatement(node: TryStatement): void {
    this.visit(node.statements);
    if (node.catchVariable) this.visit(node.catchVariable);
    this.visit(node.catchStatements);
    this.visit(node.finallyStatements);
  }

  visitTypeDeclaration(node: TypeDeclaration): void {
    this.visit(node.name);
    this.visit(node.decorators);
    this.visit(node.type);
    this.visit(node.typeParameters);
  }

  visitVariableDeclaration(node: VariableDeclaration): void {
    this.visit(node.name);
    if (node.type) this.visit(node.type);
    if (node.initializer) this.visit(node.initializer);
  }

  visitVariableStatement(node: VariableStatement): void {
    this.visit(node.decorators);
    this.visit(node.declarations);
  }

  visitWhileStatement(node: WhileStatement): void {
    this.visit(node.condition);
    this.depth++;
    this.visit(node.statement);
    this.depth--;
  }

  visitVoidStatement(node: VoidStatement): void {}

  visitComment(node: CommentNode): void {}

  visitDecoratorNode(node: DecoratorNode): void {
    this.visit(node.name);
    this.visit(node.arguments);
  }

  visitParameter(node: ParameterNode): void {
    this.visit(node.name);
    if (node.implicitFieldDeclaration) {
      this.visit(node.implicitFieldDeclaration);
    }
    if (node.initializer) this.visit(node.initializer);
    this.visit(node.type);
  }

}