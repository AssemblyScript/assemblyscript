/// <reference path="../../../../std/types/portable/index.d.ts" />
import {
  Source,
  TypeNode,
  TypeName,
  NamedTypeNode,
  FunctionTypeNode,
  TypeParameterNode,
  IdentifierExpression,
  ArrayLiteralExpression,
  ObjectLiteralExpression,
  AssertionExpression,
  BinaryExpression,
  CallExpression,
  ClassExpression,
  CommaExpression,
  ElementAccessExpression,
  FunctionExpression,
  LiteralExpression,
  FloatLiteralExpression,
  InstanceOfExpression,
  IntegerLiteralExpression,
  StringLiteralExpression,
  RegexpLiteralExpression,
  NewExpression,
  ParenthesizedExpression,
  PropertyAccessExpression,
  TernaryExpression,
  UnaryExpression,
  UnaryPostfixExpression,
  UnaryPrefixExpression,
  SuperExpression,
  FalseExpression,
  TrueExpression,
  ThisExpression,
  NullExpression,
  ConstructorExpression,
  Statement,
  BlockStatement,
  BreakStatement,
  ContinueStatement,
  ClassDeclaration,
  DoStatement,
  EmptyStatement,
  EnumDeclaration,
  EnumValueDeclaration,
  ExportImportStatement,
  ExportMember,
  ExportStatement,
  ExportDefaultStatement,
  ExpressionStatement,
  FieldDeclaration,
  ForStatement,
  FunctionDeclaration,
  IfStatement,
  ImportDeclaration,
  ImportStatement,
  IndexSignatureDeclaration,
  InterfaceDeclaration,
  MethodDeclaration,
  NamespaceDeclaration,
  ReturnStatement,
  SwitchCase,
  SwitchStatement,
  ThrowStatement,
  TryStatement,
  TypeDeclaration,
  VariableDeclaration,
  VariableStatement,
  WhileStatement,
  VoidStatement,
  CommentNode,
  DecoratorNode,
  ParameterNode,
  Node,
  ASTVisitor
} from "assemblyscript";

export class BaseVisitor implements ASTVisitor {
  depth: number = 0;

  /** Visits each node in an array if array exists. */
  visitArray(array: Node[] | null): void {
    if (array) {
      array.map(node => {
        if (node) node.visit(this);
      });
    }
  }

  visitSource(node: Source): void {
    for (const stmt of node.statements) {
      this.depth++;
      stmt.visit(this);
      this.depth--;
    }
  }

  visitTypeNode(node: TypeNode): void {}

  visitTypeName(node: TypeName): void {
    node.identifier.visit(this);
    if (node.next) {
      node.visit(this);
    }
  }

  visitNamedTypeNode(node: NamedTypeNode): void {
    node.name.visit(this);
    this.visitArray(node.typeArguments);
  }

  visitFunctionTypeNode(node: FunctionTypeNode): void {
    for (let param of node.parameters) {
      param.visit(this);
    }
    node.returnType.visit(this);
  }

  visitTypeParameter(node: TypeParameterNode): void {
    node.name.visit(this);
    if (node.extendsType) node.extendsType.visit(this);
    if (node.defaultType) node.defaultType.visit(this);
  }

  visitIdentifierExpression(node: IdentifierExpression): void {}

  visitArrayLiteralExpression(node: ArrayLiteralExpression): void {
    node.elementExpressions.map(e => {
      if (e) e.visit(this);
    });
  }

  visitObjectLiteralExpression(node: ObjectLiteralExpression): void {
    if (node.values && node.names) {
      assert(node.values.length == node.names.length);
      for (let i = 0; i < node.values.length; i++) {
        node.names[i].visit(this);
        node.values[i].visit(this);
      }
    }
  }

  visitAssertionExpression(node: AssertionExpression): void {
    if (node.toType) node.toType.visit(this);
    node.expression.visit(this);
  }

  visitBinaryExpression(node: BinaryExpression): void {
    node.left.visit(this);
    node.right.visit(this);
  }

  visitCallExpression(node: CallExpression): void {
    node.expression.visit(this);
    this.visitArray(node.typeArguments);
    this.visitArray(node.arguments);
  }

  visitClassExpression(node: ClassExpression): void {
    node.declaration.visit(this);
  }

  visitCommaExpression(node: CommaExpression): void {
    this.visitArray(node.expressions);
  }

  visitElementAccessExpression(node: ElementAccessExpression): void {
    node.elementExpression.visit(this);
    node.expression.visit(this);
  }

  visitFunctionExpression(node: FunctionExpression): void {
    node.declaration.visit(this);
  }

  visitLiteralExpression(node: LiteralExpression): void {
    // node.
  }

  visitFloatLiteralExpression(node: FloatLiteralExpression): void {}

  visitInstanceOfExpression(node: InstanceOfExpression): void {
    node.expression.visit(this);
    node.isType.visit(this);
  }

  visitIntegerLiteralExpression(node: IntegerLiteralExpression): void {}

  visitStringLiteral(str: string, singleQuoted?: boolean): void {}

  visitStringLiteralExpression(node: StringLiteralExpression): void {}

  visitRegexpLiteralExpression(node: RegexpLiteralExpression): void {}

  visitNewExpression(node: NewExpression): void {
    node.expression.visit(this);
    this.visitArray(node.typeArguments);
    this.visitArray(node.arguments);
  }

  visitParenthesizedExpression(node: ParenthesizedExpression): void {
    node.expression.visit(this);
  }

  visitPropertyAccessExpression(node: PropertyAccessExpression): void {
    node.property.visit(this);
    node.expression.visit(this);
  }

  visitTernaryExpression(node: TernaryExpression): void {
    node.condition.visit(this);
    node.ifThen.visit(this);
    node.ifElse.visit(this);
  }

  visitUnaryExpression(node: UnaryExpression): void {
    node.operand.visit(this);
  }

  visitUnaryPostfixExpression(node: UnaryPostfixExpression): void {
    node.operand.visit(this);
  }

  visitUnaryPrefixExpression(node: UnaryPrefixExpression): void {
    node.operand.visit(this);
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
    this.visitArray(node.statements);
    this.depth--;
  }

  visitBreakStatement(node: BreakStatement): void {
    if (node.label) {
      node.label.visit(this);
    }
  }

  visitContinueStatement(node: ContinueStatement): void {
    if (node.label) {
      node.label.visit(this);
    }
  }

  visitClassDeclaration(node: ClassDeclaration, isDefault?: boolean): void {
    node.name.visit(this);
    this.depth++;
    this.visitArray(node.decorators);
    assert(
      node.isGeneric ? node.typeParameters != null : node.typeParameters == null
    );
    if (node.isGeneric) {
      this.visitArray(node.typeParameters);
    }
    if (node.extendsType) {
      node.extendsType.visit(this);
    }
    this.visitArray(node.implementsTypes);
    this.visitArray(node.members);
    this.depth--;
  }

  visitDoStatement(node: DoStatement): void {
    node.condition.visit(this);
    node.statement.visit(this);
  }

  visitEmptyStatement(node: EmptyStatement): void {}

  visitEnumDeclaration(node: EnumDeclaration, isDefault?: boolean): void {
    node.name.visit(this);
    this.visitArray(node.decorators);
    this.visitArray(node.values);
  }

  visitEnumValueDeclaration(node: EnumValueDeclaration): void {
    node.name.visit(this);
    if (node.initializer) {
      node.initializer.visit(this);
    }
  }

  visitExportImportStatement(node: ExportImportStatement): void {
    node.name.visit(this);
    node.externalName.visit(this);
  }

  visitExportMember(node: ExportMember): void {
    node.localName.visit(this);
    node.exportedName.visit(this);
  }

  visitExportStatement(node: ExportStatement): void {
    if (node.path) {
      node.path.visit(this);
    }
    this.visitArray(node.members);
  }

  visitExportDefaultStatement(node: ExportDefaultStatement): void {
    node.declaration.visit(this);
  }

  visitExpressionStatement(node: ExpressionStatement): void {
    node.expression.visit(this);
  }

  visitFieldDeclaration(node: FieldDeclaration): void {
    node.name.visit(this);
    if (node.type) {
      node.type.visit(this);
    }
    if (node.initializer) {
      node.initializer.visit(this);
    }
    this.visitArray(node.decorators);
  }

  visitForStatement(node: ForStatement): void {
    if (node.initializer) node.initializer.visit(this);
    if (node.condition) node.condition.visit(this);
    if (node.incrementor) node.incrementor.visit(this);
    node.statement.visit(this);
  }

  visitFunctionDeclaration(
    node: FunctionDeclaration,
    isDefault?: boolean
  ): void {
    node.name.visit(this);
    this.visitArray(node.decorators);
    if (node.isGeneric) {
      this.visitArray(node.typeParameters);
    }
    node.signature.visit(this);
    this.depth++;
    if (node.body) node.body.visit(this);
    this.depth--;
  }

  visitFunctionCommon(node: FunctionDeclaration): void {
    // node.name.visit(this)
  }

  visitIfStatement(node: IfStatement): void {
    node.condition.visit(this);
    node.ifTrue.visit(this);
    if (node.ifFalse) node.ifFalse.visit(this);
  }

  visitImportDeclaration(node: ImportDeclaration): void {
    node.foreignName.visit(this);
    node.name.visit(this);
    this.visitArray(node.decorators);
  }

  visitImportStatement(node: ImportStatement): void {
    if (node.namespaceName) node.namespaceName.visit(this);
    this.visitArray(node.declarations);
  }

  visitIndexSignatureDeclaration(node: IndexSignatureDeclaration): void {
    // node.name.visit(this);
    // node.keyType.visit(this);
    // node.valueType.visit(this);
  }

  visitInterfaceDeclaration(
    node: InterfaceDeclaration,
    isDefault?: boolean
  ): void {
    node.name.visit(this);
    if (node.isGeneric) {
      this.visitArray(node.typeParameters);
    }
    this.visitArray(node.implementsTypes);
    if (node.extendsType) node.extendsType.visit(this);
    this.depth++;
    this.visitArray(node.members);
    this.depth--;
  }

  visitMethodDeclaration(node: MethodDeclaration): void {
    node.name.visit(this);
    if (node.isGeneric) {
      this.visitArray(node.typeParameters);
    }
    node.signature.visit(this);
    this.visitArray(node.decorators);
    this.depth++;
    if (node.body) node.body.visit(this);
    this.depth--;
  }

  visitNamespaceDeclaration(
    node: NamespaceDeclaration,
    isDefault?: boolean
  ): void {
    node.name.visit(this);
    this.visitArray(node.decorators);
    this.visitArray(node.members);
  }

  visitReturnStatement(node: ReturnStatement): void {
    if (node.value) node.value.visit(this);
  }

  visitSwitchCase(node: SwitchCase): void {
    if (node.label) node.label.visit(this);
    this.visitArray(node.statements);
  }

  visitSwitchStatement(node: SwitchStatement): void {
    node.condition.visit(this);
    this.depth++;
    this.visitArray(node.cases);
    this.depth--;
  }

  visitThrowStatement(node: ThrowStatement): void {
    node.value.visit(this);
  }

  visitTryStatement(node: TryStatement): void {
    this.visitArray(node.statements);
    if (node.catchVariable) node.catchVariable.visit(this);
    this.visitArray(node.catchStatements);
    this.visitArray(node.finallyStatements);
  }

  visitTypeDeclaration(node: TypeDeclaration): void {
    node.name.visit(this);
    this.visitArray(node.decorators);
    node.type.visit(this);
    this.visitArray(node.typeParameters);
  }

  visitVariableDeclaration(node: VariableDeclaration): void {
    node.name.visit(this);
    if (node.type) node.type.visit(this);
    if (node.initializer) node.initializer.visit(this);
  }

  visitVariableStatement(node: VariableStatement): void {
    this.visitArray(node.decorators);
    this.visitArray(node.declarations);
  }

  visitWhileStatement(node: WhileStatement): void {
    node.condition.visit(this);
    this.depth++;
    node.statement.visit(this);
    this.depth--;
  }

  visitVoidStatement(node: VoidStatement): void {}

  visitComment(node: CommentNode): void {}

  visitDecoratorNode(node: DecoratorNode): void {
    node.name.visit(this);
    this.visitArray(node.arguments);
  }

  visitParameter(node: ParameterNode): void {
    node.name.visit(this);
    if (node.implicitFieldDeclaration) {
      node.implicitFieldDeclaration.visit(this);
    }
    if (node.initializer) node.initializer.visit(this);
    node.type.visit(this);
  }
}
