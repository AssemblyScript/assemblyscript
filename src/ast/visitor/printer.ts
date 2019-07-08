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
import { BaseVisitor } from "./base";
import { operatorTokenToString } from "../../tokenizer";

  interface Writer {
      write(str: string): void;
  }
  
export class PrinterVisitor extends BaseVisitor implements ASTVisitor {
    depth: number = 0;
    sb: string[] = [];

    constructor(private writer: Writer) {
        super();
    }

    write(str: string, newline: boolean = true): void {
        this.writer.write("  ".repeat(this.depth) + str + (newline ? "\n": " "));
    }

    flush(seperator: string): string {
        let res = this.sb.join(seperator);
        this.sb.length = 0;
        return res;
    }

    visitSource(node: Source): void {
        this.write("Source: " + node.normalizedPath);
        super.visitSource(node);
    }

    visitTypeNode(node: TypeNode): void {
        this.write("TypeNode: " + node.kind.toString());
        super.visitTypeNode(node);
    }

    // visitTypeName(node: TypeName): void {
    //     this.write("TypeName");
    //     node.
    // }


    visitFunctionTypeNode(node: FunctionTypeNode): void {
        this.write("FunctionTypeNode: ", false);
        for (let param of node.parameters){
            param.visit(this);
        }
        this.write('(' + this.flush(", ") +") -> ");
        this.write("return type: ", false);
        node.returnType.visit(this);
    }

    visitTypeParameter(node: TypeParameterNode): void {
        this.write("TypeParameter ", false);
        node.name.visit(this);
    }

    visitIdentifierExpression(node: IdentifierExpression): void {
        this.sb.push(node.symbol);
        super.visitIdentifierExpression(node);
    }

    visitArrayLiteralExpression(node: ArrayLiteralExpression): void {
        this.write("ArrayLiteralExpression: ", false);
        super.visitArrayLiteralExpression(node);
        this.write("[" + this.flush(", ") + "]");
    }

    visitObjectLiteralExpression(node: ObjectLiteralExpression): void {
        this.write("ObjectLiteralExpression: ");
        super.visitObjectLiteralExpression(node);
        this.depth++;
        
        this.write("{");
        for (let i =0; i < this.sb.length; i+=2){
            this.write("  "+ this.sb[i]+": "+this.sb[i+1]);
        }
        this.write("}")
        this.depth--;
    }

    visitAssertionExpression(node: AssertionExpression): void {
        this.write("AssertionExpression: ", false);
        super.visitAssertionExpression(node);
        this.write(this.flush(" "))

    }

    visitBinaryExpression(node: BinaryExpression): void {
        this.write("BinaryExpression: ", false);
        super.visitBinaryExpression(node);
        this.sb.push(this.flush(operatorTokenToString(node.operator)));
    }

    visitCallExpression(node: CallExpression): void {
        this.write("CallExpression");
        super.visitCallExpression(node);
    }

    visitClassExpression(node: ClassExpression): void {
        this.write("ClassExpression");
        super.visitClassExpression(node);
    }

    visitCommaExpression(node: CommaExpression): void {
        this.write("CommaExpression");
        super.visitCommaExpression(node);
    }

    visitElementAccessExpression(node: ElementAccessExpression): void {
        this.write("ElementAccessExpression");
        super.visitElementAccessExpression(node);
    }

    visitFunctionExpression(node: FunctionExpression): void {
        this.write("FunctionExpression");
        super.visitFunctionExpression(node);
    }

    visitLiteralExpression(node: LiteralExpression): void {
        this.write("LiteralExpression");
        super.visitLiteralExpression(node);
    }

    visitFloatLiteralExpression(node: FloatLiteralExpression): void {
        this.write("FloatLiteralExpression");
        super.visitFloatLiteralExpression(node);
    }

    visitInstanceOfExpression(node: InstanceOfExpression): void {
        this.write("InstanceOfExpression");
        super.visitInstanceOfExpression(node);
    }

    visitIntegerLiteralExpression(node: IntegerLiteralExpression): void {
        this.sb.push(i64_to_string(node.value));
    }

    visitStringLiteral(str: string, singleQuoted?: boolean): void {
        this.write("StringLiteral");
        this.sb.push(str)
    }

    visitStringLiteralExpression(node: StringLiteralExpression): void {
        this.write("StringLiteralExpression");
        super.visitStringLiteralExpression(node);
    }

    visitRegexpLiteralExpression(node: RegexpLiteralExpression): void {
        this.write("RegexpLiteralExpression");
        super.visitRegexpLiteralExpression(node);
    }

    visitNewExpression(node: NewExpression): void {
        this.write("NewExpression");
        super.visitNewExpression(node);
    }

    visitParenthesizedExpression(node: ParenthesizedExpression): void {
        this.write("ParenthesizedExpression");
        super.visitParenthesizedExpression(node);
    }

    visitPropertyAccessExpression(node: PropertyAccessExpression): void {
        this.write("PropertyAccessExpression");
        super.visitPropertyAccessExpression(node);
    }

    visitTernaryExpression(node: TernaryExpression): void {
        this.write("TernaryExpression");
        super.visitTernaryExpression(node);
    }

    visitUnaryExpression(node: UnaryExpression): void {
        this.write("UnaryExpression");
        super.visitUnaryExpression(node);
    }

    visitUnaryPostfixExpression(node: UnaryPostfixExpression): void {
        this.write("UnaryPostfixExpression");
        super.visitUnaryPostfixExpression(node);
    }

    visitUnaryPrefixExpression(node: UnaryPrefixExpression): void {
        this.write("UnaryPrefixExpression");
        super.visitUnaryPrefixExpression(node);
    }

    visitSuperExpression(node: SuperExpression): void {
        this.write("SuperExpression: " + node.symbol);
        super.visitSuperExpression(node);
    }

    visitFalseExpression(node: FalseExpression): void {
        this.write("FalseExpression");
        super.visitFalseExpression(node);
    }

    visitTrueExpression(node: TrueExpression): void {
        this.write("TrueExpression");
        super.visitTrueExpression(node);
    }

    visitThisExpression(node: ThisExpression): void {
        this.write("ThisExpression");
        super.visitThisExpression(node);
    }

    visitNullExperssion(node: NullExpression): void {
        this.write("NullExperssion");
        super.visitNullExperssion(node);
    }

    visitConstructorExpression(node: ConstructorExpression): void {
        this.write("ConstructorExpression");
        super.visitConstructorExpression(node);
    }

    visitNodeAndTerminate(statement: Statement): void {
        this.write("NodeAndTerminate");
    }

    visitBlockStatement(node: BlockStatement): void {
        this.write("BlockStatement");
        this.depth++;
        super.visitBlockStatement(node);
        this.depth--;

    }

    visitBreakStatement(node: BreakStatement): void {
        this.write("BreakStatement");
        super.visitBreakStatement(node);
    }

    visitContinueStatement(node: ContinueStatement): void {
        this.write("ContinueStatement");
        super.visitContinueStatement(node);
    }

    visitClassDeclaration(node: ClassDeclaration, isDefault?: boolean): void {
        this.write("ClassDeclaration: " + node.name.symbol);
        for (const member of node.members) {
            this.depth++;
            member.visit(this);
            this.depth--;
        }
    }

    visitDoStatement(node: DoStatement): void {
        this.write("DoStatement");
        super.visitDoStatement(node);
    }

    visitEmptyStatement(node: EmptyStatement): void {
        this.write("EmptyStatement");
        super.visitEmptyStatement(node);
    }

    visitEnumDeclaration(node: EnumDeclaration, isDefault?: boolean): void {
        this.write("EnumDeclaration: " + node.name);
        super.visitEnumDeclaration(node);
    }

    visitEnumValueDeclaration(node: EnumValueDeclaration): void {
        this.write("EnumValueDeclaration");
        super.visitEnumValueDeclaration(node);
    }

    visitExportImportStatement(node: ExportImportStatement): void {
        this.write("ExportImportStatement");
        super.visitExportImportStatement(node);
    }

    visitExportMember(node: ExportMember): void {
        this.write("ExportMember");
        super.visitExportMember(node);
    }

    visitExportStatement(node: ExportStatement): void {
        this.write("ExportStatement");
        super.visitExportStatement(node);
    }

    visitExportDefaultStatement(node: ExportDefaultStatement): void {
        this.write("ExportDefaultStatement");
        super.visitExportDefaultStatement(node);
    }

    visitExpressionStatement(node: ExpressionStatement): void {
        this.write("ExpressionStatement: ");
        super.visitExpressionStatement(node);
        this.write(this.flush(" "));
    }

    visitFieldDeclaration(node: FieldDeclaration): void {
        this.write("FieldDeclaration: ", false);
        node.name.visit(this);
        node.type!.visit(this);
        this.write(this.flush(": "))
    }

    visitForStatement(node: ForStatement): void {
        this.write("ForStatement");
        super.visitForStatement(node);
    }

    visitFunctionDeclaration(node: FunctionDeclaration, isDefault?: boolean): void {
        this.write("FunctionDeclaration: "+ node.name.symbol, false);
        node.signature.visit(this);
    }

    visitFunctionCommon(node: FunctionDeclaration): void {
        this.write("FunctionCommon");
        super.visitFunctionCommon(node);
    }
    visitIfStatement(node: IfStatement): void {
        this.write("IfStatement");
        super.visitIfStatement(node);
    }

    visitImportDeclaration(node: ImportDeclaration): void {
        this.write("ImportDeclaration");
        super.visitImportDeclaration(node);
    }

    visitImportStatement(node: ImportStatement): void {
        this.write("ImportStatement: " + node.internalPath);
        super.visitImportStatement(node);
    }

    visitIndexSignatureDeclaration(node: IndexSignatureDeclaration): void {
        this.write("IndexSignatureDeclaration");
        super.visitIndexSignatureDeclaration(node);
    }

    visitInterfaceDeclaration(node: InterfaceDeclaration, isDefault?: boolean): void {
        this.write("InterfaceDeclaration", false);
        node.name.visit(this);
        this.write(this.flush(""), false);
        if (node.isGeneric) {
            this.visitArray(node.typeParameters);
            this.write("<"+this.flush(", ") + "> ", false)
        }
        this.visitArray(node.implementsTypes);
        if (this.sb.length > 0){
            this.write("implements " + this.flush(", "));
        }
        if (node.extendsType) {
            node.extendsType.visit(this);
            this.write("extends " + this.flush(""), false);
        }
        this.write("");
        this.depth++;
        this.visitArray(node.members);
        this.depth--;
    }

    visitMethodDeclaration(node: MethodDeclaration): void {
        this.write("MethodDeclaration: " + node.name.symbol);
        this.depth++;
        node.body!.visit(this);
        this.depth--;
    }
    visitNamespaceDeclaration(node: NamespaceDeclaration, isDefault?: boolean): void {
        this.write("NamespaceDeclaration");
        super.visitNamespaceDeclaration(node);
    }
    visitReturnStatement(node: ReturnStatement): void {
        this.write("ReturnStatement");
        super.visitReturnStatement(node);
    }
    visitSwitchCase(node: SwitchCase): void {
        this.write("SwitchCase");
        super.visitSwitchCase(node);
    }
    visitSwitchStatement(node: SwitchStatement): void {
        this.write("SwitchStatement");
        super.visitSwitchStatement(node);
    }
    visitThrowStatement(node: ThrowStatement): void {
        this.write("ThrowStatement");
        super.visitThrowStatement(node);
    }
    visitTryStatement(node: TryStatement): void {
        this.write("TryStatement");
        super.visitTryStatement(node);
    }
    visitTypeDeclaration(node: TypeDeclaration): void {
        this.write("TypeDeclaration");
        super.visitTypeDeclaration(node);
    }
    visitVariableDeclaration(node: VariableDeclaration): void {
        this.write("VariableDeclaration: ", false);
        node.name.visit(this);
        if (node.type) node.type.visit(this);
        let name = this.flush(": ");
        if (node.initializer) node.initializer.visit(this);
        let initializer = this.flush(" ");
        this.write(name + (node.initializer ? " = " + initializer: "")+";");
    }
    visitVariableStatement(node: VariableStatement): void {
        this.write("VariableStatement");
        super.visitVariableStatement(node);
    }
    visitWhileStatement(node: WhileStatement): void {
        this.write("WhileStatement");
        super.visitWhileStatement(node);
    }
    visitVoidStatement(node: VoidStatement): void {
        this.write("VoidStatement");
        super.visitVoidStatement(node);
    }
    visitComment(node: CommentNode): void {
        this.write("Comment");
        super.visitComment(node);
    }
    visitDecoratorNode(node: DecoratorNode): void {
        this.write("DecoratorNode");
        super.visitDecoratorNode(node);
    }
    visitParameter(node: ParameterNode): void {
        this.write("Parameter " + node.name.symbol +":", false);
        node.type.visit(this);
    }
}
