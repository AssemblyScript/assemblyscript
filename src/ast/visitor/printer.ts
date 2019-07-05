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
  } from "../index";

  interface Writer {
      write(str: string): void;
  }
  
export class PrinterVisitor implements ASTVisitor {

    constructor(private writer: Writer) {}

    write(str: string): void {
        this.writer.write(str);
    }

    visitSource(node: Source): void {
        this.write("Source: " + node.normalizedPath);
    }
    visitTypeNode(node: TypeNode): void {
        this.write("TypeNode");
    }
    visitTypeName(node: TypeName): void {
        this.write("TypeName");
    }
    visitNamedTypeNode(node: NamedTypeNode): void {
        this.write("NamedTypeNode");
    }
    visitFunctionTypeNode(node: FunctionTypeNode): void {
        this.write("FunctionTypeNode");
    }
    visitTypeParameter(node: TypeParameterNode): void {
        this.write("TypeParameter");
    }
    visitIdentifierExpression(node: IdentifierExpression): void {
        this.write("IdentifierExpression");
    }
    visitArrayLiteralExpression(node: ArrayLiteralExpression): void {
        this.write("ArrayLiteralExpression");
    }
    visitObjectLiteralExpression(node: ObjectLiteralExpression): void {
        this.write("ObjectLiteralExpression");
    }
    visitAssertionExpression(node: AssertionExpression): void {
        this.write("AssertionExpression");
    }
    visitBinaryExpression(node: BinaryExpression): void {
        this.write("BinaryExpression");
    }
    visitCallExpression(node: CallExpression): void {
        this.write("CallExpression");
    }
    visitClassExpression(node: ClassExpression): void {
        this.write("ClassExpression");
    }
    visitCommaExpression(node: CommaExpression): void {
        this.write("CommaExpression");
    }
    visitElementAccessExpression(node: ElementAccessExpression): void {
        this.write("ElementAccessExpression");
    }
    visitFunctionExpression(node: FunctionExpression): void {
        this.write("FunctionExpression");
    }
    visitLiteralExpression(node: LiteralExpression): void {
        this.write("LiteralExpression");
    }
    visitFloatLiteralExpression(node: FloatLiteralExpression): void {
        this.write("FloatLiteralExpression");
    }
    visitInstanceOfExpression(node: InstanceOfExpression): void {
        this.write("InstanceOfExpression");
    }
    visitIntegerLiteralExpression(node: IntegerLiteralExpression): void {
        this.write("IntegerLiteralExpression");
    }
    visitStringLiteral(str: string, singleQuoted?: boolean): void {
        this.write("StringLiteral");
    }
    visitStringLiteralExpression(node: StringLiteralExpression): void {
        this.write("StringLiteralExpression");
    }
    visitRegexpLiteralExpression(node: RegexpLiteralExpression): void {
        this.write("RegexpLiteralExpression");
    }
    visitNewExpression(node: NewExpression): void {
        this.write("NewExpression");
    }
    visitParenthesizedExpression(node: ParenthesizedExpression): void {
        this.write("ParenthesizedExpression");
    }
    visitPropertyAccessExpression(node: PropertyAccessExpression): void {
        this.write("PropertyAccessExpression");
    }
    visitTernaryExpression(node: TernaryExpression): void {
        this.write("TernaryExpression");
    }
    visitUnaryExpression(node: UnaryExpression): void {
        this.write("UnaryExpression");
    }
    visitUnaryPostfixExpression(node: UnaryPostfixExpression): void {
        this.write("UnaryPostfixExpression");
    }
    visitUnaryPrefixExpression(node: UnaryPrefixExpression): void {
        this.write("UnaryPrefixExpression");
    }
    visitSuperExpression(node: SuperExpression): void {
        this.write("SuperExpression");
    }
    visitFalseExpression(node: FalseExpression): void {
        this.write("FalseExpression");
    }
    visitTrueExpression(node: TrueExpression): void {
        this.write("TrueExpression");
    }
    visitThisExpression(node: ThisExpression): void {
        this.write("ThisExpression");
    }
    visitNullExperssion(node: NullExpression): void {
        this.write("NullExperssion");
    }
    visitConstructorExpression(node: ConstructorExpression): void {
        this.write("ConstructorExpression");
    }
    visitNodeAndTerminate(statement: Statement): void {
        this.write("NodeAndTerminate");
    }
    visitBlockStatement(node: BlockStatement): void {
        this.write("BlockStatement");
    }
    visitBreakStatement(node: BreakStatement): void {
        this.write("BreakStatement");
    }
    visitContinueStatement(node: ContinueStatement): void {
        this.write("ContinueStatement");
    }
    visitClassDeclaration(node: ClassDeclaration, isDefault?: boolean): void {
        this.write("ClassDeclaration");
    }
    visitDoStatement(node: DoStatement): void {
        this.write("DoStatement");
    }
    visitEmptyStatement(node: EmptyStatement): void {
        this.write("EmptyStatement");
    }
    visitEnumDeclaration(node: EnumDeclaration, isDefault?: boolean): void {
        this.write("EnumDeclaration");
    }
    visitEnumValueDeclaration(node: EnumValueDeclaration): void {
        this.write("EnumValueDeclaration");
    }
    visitExportImportStatement(node: ExportImportStatement): void {
        this.write("ExportImportStatement");
    }
    visitExportMember(node: ExportMember): void {
        this.write("ExportMember");
    }
    visitExportStatement(node: ExportStatement): void {
        this.write("ExportStatement");
    }
    visitExportDefaultStatement(node: ExportDefaultStatement): void {
        this.write("ExportDefaultStatement");
    }
    visitExpressionStatement(node: ExpressionStatement): void {
        this.write("ExpressionStatement");
    }
    visitFieldDeclaration(node: FieldDeclaration): void {
        this.write("FieldDeclaration");
    }
    visitForStatement(node: ForStatement): void {
        this.write("ForStatement");
    }
    visitFunctionDeclaration(node: FunctionDeclaration, isDefault?: boolean): void {
        this.write("FunctionDeclaration");
    }
    visitFunctionCommon(node: FunctionDeclaration): void {
        this.write("FunctionCommon");
    }
    visitIfStatement(node: IfStatement): void {
        this.write("IfStatement");
    }
    visitImportDeclaration(node: ImportDeclaration): void {
        this.write("ImportDeclaration");
    }
    visitImportStatement(node: ImportStatement): void {
        this.write("ImportStatement");
    }
    visitIndexSignatureDeclaration(node: IndexSignatureDeclaration): void {
        this.write("IndexSignatureDeclaration");
    }
    visitInterfaceDeclaration(node: InterfaceDeclaration, isDefault?: boolean): void {
        this.write("InterfaceDeclaration");
    }
    visitMethodDeclaration(node: MethodDeclaration): void {
        this.write("MethodDeclaration");
    }
    visitNamespaceDeclaration(node: NamespaceDeclaration, isDefault?: boolean): void {
        this.write("NamespaceDeclaration");
    }
    visitReturnStatement(node: ReturnStatement): void {
        this.write("ReturnStatement");
    }
    visitSwitchCase(node: SwitchCase): void {
        this.write("SwitchCase");
    }
    visitSwitchStatement(node: SwitchStatement): void {
        this.write("SwitchStatement");
    }
    visitThrowStatement(node: ThrowStatement): void {
        this.write("ThrowStatement");
    }
    visitTryStatement(node: TryStatement): void {
        this.write("TryStatement");
    }
    visitTypeDeclaration(node: TypeDeclaration): void {
        this.write("TypeDeclaration");
    }
    visitVariableDeclaration(node: VariableDeclaration): void {
        this.write("VariableDeclaration");
    }
    visitVariableStatement(node: VariableStatement): void {
        this.write("VariableStatement");
    }
    visitWhileStatement(node: WhileStatement): void {
        this.write("WhileStatement");
    }
    visitVoidStatement(node: VoidStatement): void {
        this.write("VoidStatement");
    }
    visitComment(node: CommentNode): void {
        this.write("Comment");
    }
    visitDecoratorNode(node: DecoratorNode): void {
        this.write("DecoratorNode");
    }
    visitParameter(node: ParameterNode): void {
        this.write("Parameter");
    }
}
