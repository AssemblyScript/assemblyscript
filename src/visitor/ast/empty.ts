import {
  ASTVisitor,
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
  ParameterNode
} from "../../ast";

export class EmptyVisitor implements ASTVisitor {
  visitSource(node: Source): void {}
  visitTypeNode(node: TypeNode): void {}
  visitTypeName(node: TypeName): void {}
  visitNamedTypeNode(node: NamedTypeNode): void {}
  visitFunctionTypeNode(node: FunctionTypeNode): void {}
  visitTypeParameter(node: TypeParameterNode): void {}
  visitIdentifierExpression(node: IdentifierExpression): void {}
  visitArrayLiteralExpression(node: ArrayLiteralExpression): void {}
  visitObjectLiteralExpression(node: ObjectLiteralExpression): void {}
  visitAssertionExpression(node: AssertionExpression): void {}
  visitBinaryExpression(node: BinaryExpression): void {}
  visitCallExpression(node: CallExpression): void {}
  visitClassExpression(node: ClassExpression): void {}
  visitCommaExpression(node: CommaExpression): void {}
  visitElementAccessExpression(node: ElementAccessExpression): void {}
  visitFunctionExpression(node: FunctionExpression): void {}
  visitLiteralExpression(node: LiteralExpression): void {}
  visitFloatLiteralExpression(node: FloatLiteralExpression): void {}
  visitInstanceOfExpression(node: InstanceOfExpression): void {}
  visitIntegerLiteralExpression(node: IntegerLiteralExpression): void {}
  visitStringLiteral(str: string, singleQuoted?: boolean): void {}
  visitStringLiteralExpression(node: StringLiteralExpression): void {}
  visitRegexpLiteralExpression(node: RegexpLiteralExpression): void {}
  visitNewExpression(node: NewExpression): void {}
  visitParenthesizedExpression(node: ParenthesizedExpression): void {}
  visitPropertyAccessExpression(node: PropertyAccessExpression): void {}
  visitTernaryExpression(node: TernaryExpression): void {}
  visitUnaryExpression(node: UnaryExpression): void {}
  visitUnaryPostfixExpression(node: UnaryPostfixExpression): void {}
  visitUnaryPrefixExpression(node: UnaryPrefixExpression): void {}
  visitSuperExpression(node: SuperExpression): void {}
  visitFalseExpression(node: FalseExpression): void {}
  visitTrueExpression(node: TrueExpression): void {}
  visitThisExpression(node: ThisExpression): void {}
  visitNullExperssion(node: NullExpression): void {}
  visitConstructorExpression(node: ConstructorExpression): void {}
  visitNodeAndTerminate(statement: Statement): void {}
  visitBlockStatement(node: BlockStatement): void {}
  visitBreakStatement(node: BreakStatement): void {}
  visitContinueStatement(node: ContinueStatement): void {}
  visitClassDeclaration(node: ClassDeclaration, isDefault?: boolean): void {}
  visitDoStatement(node: DoStatement): void {}
  visitEmptyStatement(node: EmptyStatement): void {}
  visitEnumDeclaration(node: EnumDeclaration, isDefault?: boolean): void {}
  visitEnumValueDeclaration(node: EnumValueDeclaration): void {}
  visitExportImportStatement(node: ExportImportStatement): void {}
  visitExportMember(node: ExportMember): void {}
  visitExportStatement(node: ExportStatement): void {}
  visitExportDefaultStatement(node: ExportDefaultStatement): void {}
  visitExpressionStatement(node: ExpressionStatement): void {}
  visitFieldDeclaration(node: FieldDeclaration): void {}
  visitForStatement(node: ForStatement): void {}
  visitFunctionDeclaration(
    node: FunctionDeclaration,
    isDefault?: boolean
  ): void {}
  visitFunctionCommon(node: FunctionDeclaration): void {}
  visitIfStatement(node: IfStatement): void {}
  visitImportDeclaration(node: ImportDeclaration): void {}
  visitImportStatement(node: ImportStatement): void {}
  visitIndexSignatureDeclaration(node: IndexSignatureDeclaration): void {}
  visitInterfaceDeclaration(
    node: InterfaceDeclaration,
    isDefault?: boolean
  ): void {}
  visitMethodDeclaration(node: MethodDeclaration): void {}
  visitNamespaceDeclaration(
    node: NamespaceDeclaration,
    isDefault?: boolean
  ): void {}
  visitReturnStatement(node: ReturnStatement): void {}
  visitSwitchCase(node: SwitchCase): void {}
  visitSwitchStatement(node: SwitchStatement): void {}
  visitThrowStatement(node: ThrowStatement): void {}
  visitTryStatement(node: TryStatement): void {}
  visitTypeDeclaration(node: TypeDeclaration): void {}
  visitVariableDeclaration(node: VariableDeclaration): void {}
  visitVariableStatement(node: VariableStatement): void {}
  visitWhileStatement(node: WhileStatement): void {}
  visitVoidStatement(node: VoidStatement): void {}
  visitComment(node: CommentNode): void {}
  visitDecoratorNode(node: DecoratorNode): void {}
  visitParameter(node: ParameterNode): void {}
}
