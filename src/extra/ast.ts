/**
 * Abstract Syntax Tree extras.
 *
 * Not needed in a standalone compiler but useful for testing the parser.
 *
 * @module extra/ast
 *//***/

import {
  Node,
  NodeKind,
  Source,
  ArrowKind,

  CommonTypeNode,
  TypeNode,
  TypeName,
  TypeParameterNode,
  SignatureNode,

  Expression,
  IdentifierExpression,
  LiteralExpression,
  LiteralKind,
  FloatLiteralExpression,
  IntegerLiteralExpression,
  StringLiteralExpression,
  RegexpLiteralExpression,
  ArrayLiteralExpression,
  AssertionExpression,
  AssertionKind,
  BinaryExpression,
  CallExpression,
  CommaExpression,
  ElementAccessExpression,
  FunctionExpression,
  NewExpression,
  ParenthesizedExpression,
  PropertyAccessExpression,
  TernaryExpression,
  UnaryPostfixExpression,
  UnaryExpression,
  UnaryPrefixExpression,
  ClassExpression,
  ObjectLiteralExpression,

  Statement,
  BlockStatement,
  BreakStatement,
  ContinueStatement,
  DoStatement,
  EmptyStatement,
  ExportImportStatement,
  ExportStatement,
  ExpressionStatement,
  ForStatement,
  IfStatement,
  ImportStatement,
  InstanceOfExpression,
  ReturnStatement,
  SwitchStatement,
  ThrowStatement,
  TryStatement,
  VariableStatement,
  WhileStatement,

  ClassDeclaration,
  EnumDeclaration,
  EnumValueDeclaration,
  FieldDeclaration,
  FunctionDeclaration,
  ImportDeclaration,
  IndexSignatureDeclaration,
  InterfaceDeclaration,
  MethodDeclaration,
  NamespaceDeclaration,
  TypeDeclaration,
  VariableDeclaration,

  DecoratorNode,
  ParameterNode,
  ParameterKind,
  ExportMember,
  SwitchCase,
  DeclarationStatement,

  isTypeOmitted
} from "../ast";

import {
  operatorTokenToString
} from "../tokenizer";

import {
  CharCode,
  indent
} from "../util";

import {
  CommonFlags
} from "../common";

/** An AST builder. */
export class ASTBuilder {

  /** Rebuilds the textual source from the specified AST, as far as possible. */
  static build(node: Node): string {
    var builder = new ASTBuilder();
    builder.visitNode(node);
    return builder.finish();
  }

  private sb: string[] = [];
  private indentLevel: i32 = 0;

  visitNode(node: Node): void {
    switch (node.kind) {
      case NodeKind.SOURCE: {
        this.visitSource(<Source>node);
        break;
      }

      // types

      case NodeKind.TYPE: {
        this.visitTypeNode(<TypeNode>node);
        break;
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
        this.serializeDecorator(<DecoratorNode>node);
        break;
      }
      case NodeKind.EXPORTMEMBER: {
        this.visitExportMember(<ExportMember>node);
        break;
      }
      case NodeKind.PARAMETER: {
        this.serializeParameter(<ParameterNode>node);
        break;
      }
      case NodeKind.SWITCHCASE: {
        this.visitSwitchCase(<SwitchCase>node);
        break;
      }
      default: assert(false);
    }
  }

  visitSource(source: Source): void {
    var statements = source.statements;
    for (let i = 0, k = statements.length; i < k; ++i) {
      this.visitNodeAndTerminate(statements[i]);
    }
  }

  // types

  visitTypeNode(node: CommonTypeNode): void {
    if (node.kind == NodeKind.SIGNATURE) {
      this.visitSignatureNode(<SignatureNode>node);
      return;
    }
    var typeNode = <TypeNode>node;
    this.visitTypeName((<TypeNode>node).name);
    var typeArguments = typeNode.typeArguments;
    if (typeArguments) {
      let numTypeArguments = typeArguments.length;
      let sb = this.sb;
      if (numTypeArguments) {
        sb.push("<");
        this.visitTypeNode(typeArguments[0]);
        for (let i = 1; i < numTypeArguments; ++i) {
          sb.push(", ");
          this.visitTypeNode(typeArguments[i]);
        }
        sb.push(">");
      }
      if (node.isNullable) sb.push(" | null");
    }
  }

  visitTypeName(node: TypeName): void {
    this.visitIdentifierExpression(node.identifier);
    var sb = this.sb;
    var current = node.next;
    while (current) {
      sb.push(".");
      this.visitIdentifierExpression(current.identifier);
      current = current.next;
    }
  }

  visitTypeParameter(node: TypeParameterNode): void {
    this.visitIdentifierExpression(node.name);
    var extendsType = node.extendsType;
    if (extendsType) {
      this.sb.push(" extends ");
      this.visitTypeNode(extendsType);
    }
    var defaultType = node.defaultType;
    if (defaultType) {
      this.sb.push("=");
      this.visitTypeNode(defaultType);
    }
  }

  visitSignatureNode(node: SignatureNode): void {
    var isNullable = node.isNullable;
    var sb = this.sb;
    sb.push(isNullable ? "((" : "(");
    var explicitThisType = node.explicitThisType;
    if (explicitThisType) {
      sb.push("this: ");
      this.visitTypeNode(explicitThisType);
    }
    var parameters = node.parameters;
    var numParameters = parameters.length;
    if (numParameters) {
      if (explicitThisType) sb.push(", ");
      this.serializeParameter(parameters[0]);
      for (let i = 1; i < numParameters; ++i) {
        sb.push(", ");
        this.serializeParameter(parameters[i]);
      }
    }
    var returnType = node.returnType;
    if (returnType) {
      sb.push(") => ");
      this.visitTypeNode(returnType);
    } else {
      sb.push(") => void");
    }
    if (isNullable) sb.push(") | null");
  }

  // expressions

  visitIdentifierExpression(node: IdentifierExpression): void {
    if (node.isQuoted) this.visitStringLiteral(node.text);
    else this.sb.push(node.text);
  }

  visitArrayLiteralExpression(node: ArrayLiteralExpression): void {
    var sb = this.sb;
    sb.push("[");
    var elements = node.elementExpressions;
    var numElements = elements.length;
    if (numElements) {
      if (elements[0]) this.visitNode(<Expression>elements[0]);
      for (let i = 1; i < numElements; ++i) {
        sb.push(", ");
        if (elements[i]) this.visitNode(<Expression>elements[i]);
      }
    }
    sb.push("]");
  }

  visitObjectLiteralExpression(node: ObjectLiteralExpression): void {
    var sb = this.sb;
    var names = node.names;
    var values = node.values;
    var numElements = names.length;
    assert(numElements == values.length);
    if (numElements) {
      sb.push("{\n");
      indent(sb, ++this.indentLevel);
      this.visitNode(names[0]);
      sb.push(": ");
      this.visitNode(values[0]);
      for (let i = 1; i < numElements; ++i) {
        sb.push(",\n");
        indent(sb, this.indentLevel);
        let name = names[i];
        let value = values[i];
        if (name === value) {
          this.visitNode(name);
        } else {
          this.visitNode(name);
          sb.push(": ");
          this.visitNode(value);
        }
      }
      sb.push("\n");
      indent(sb, --this.indentLevel);
      sb.push("}");
    } else {
      sb.push("{}");
    }
  }

  visitAssertionExpression(node: AssertionExpression): void {
    var sb = this.sb;
    switch (node.assertionKind) {
      case AssertionKind.PREFIX: {
        sb.push("<");
        this.visitTypeNode(assert(node.toType));
        sb.push(">");
        this.visitNode(node.expression);
        break;
      }
      case AssertionKind.AS: {
        this.visitNode(node.expression);
        sb.push(" as ");
        this.visitTypeNode(assert(node.toType));
        break;
      }
      case AssertionKind.NONNULL: {
        this.visitNode(node.expression);
        sb.push("!");
        break;
      }
      default: assert(false);
    }
  }

  visitBinaryExpression(node: BinaryExpression): void {
    var sb = this.sb;
    this.visitNode(node.left);
    sb.push(" ");
    sb.push(operatorTokenToString(node.operator));
    sb.push(" ");
    this.visitNode(node.right);
  }

  visitCallExpression(node: CallExpression): void {
    var sb = this.sb;
    this.visitNode(node.expression);
    var typeArguments = node.typeArguments;
    if (typeArguments) {
      let numTypeArguments = typeArguments.length;
      if (numTypeArguments) {
        sb.push("<");
        this.visitTypeNode(typeArguments[0]);
        for (let i = 1; i < numTypeArguments; ++i) {
          sb.push(", ");
          this.visitTypeNode(typeArguments[i]);
        }
        sb.push(">(");
      }
    } else {
      sb.push("(");
    }
    var args = node.arguments;
    var numArgs = args.length;
    if (numArgs) {
      this.visitNode(args[0]);
      for (let i = 1; i < numArgs; ++i) {
        sb.push(", ");
        this.visitNode(args[i]);
      }
    }
    sb.push(")");
  }

  visitClassExpression(node: ClassExpression): void {
    var declaration = node.declaration;
    this.visitClassDeclaration(declaration);
  }

  visitCommaExpression(node: CommaExpression): void {
    var expressions = node.expressions;
    var numExpressions = assert(expressions.length);
    this.visitNode(expressions[0]);
    var sb = this.sb;
    for (let i = 1; i < numExpressions; ++i) {
      sb.push(",");
      this.visitNode(expressions[i]);
    }
  }

  visitElementAccessExpression(node: ElementAccessExpression): void {
    var sb = this.sb;
    this.visitNode(node.expression);
    sb.push("[");
    this.visitNode(node.elementExpression);
    sb.push("]");
  }

  visitFunctionExpression(node: FunctionExpression): void {
    var declaration = node.declaration;
    if (!declaration.arrowKind) {
      if (declaration.name.text.length) {
        this.sb.push("function ");
      } else {
        this.sb.push("function");
      }
    } else {
      assert(declaration.name.text.length == 0);
    }
    this.visitFunctionCommon(declaration);
  }

  visitLiteralExpression(node: LiteralExpression): void {
    switch (node.literalKind) {
      case LiteralKind.FLOAT: {
        this.visitFloatLiteralExpression(<FloatLiteralExpression>node);
        break;
      }
      case LiteralKind.INTEGER: {
        this.visitIntegerLiteralExpression(<IntegerLiteralExpression>node);
        break;
      }
      case LiteralKind.STRING: {
        this.visitStringLiteralExpression(<StringLiteralExpression>node);
        break;
      }
      case LiteralKind.REGEXP: {
        this.visitRegexpLiteralExpression(<RegexpLiteralExpression>node);
        break;
      }
      case LiteralKind.ARRAY: {
        this.visitArrayLiteralExpression(<ArrayLiteralExpression>node);
        break;
      }
      case LiteralKind.OBJECT: {
        this.visitObjectLiteralExpression(<ObjectLiteralExpression>node);
        break;
      }
      default: {
        assert(false);
        break;
      }
    }
  }

  visitFloatLiteralExpression(node: FloatLiteralExpression): void {
    this.sb.push(node.value.toString(10));
  }

  visitInstanceOfExpression(node: InstanceOfExpression): void {
    this.visitNode(node.expression);
    this.sb.push(" instanceof ");
    this.visitTypeNode(node.isType);
  }

  visitIntegerLiteralExpression(node: IntegerLiteralExpression): void {
    this.sb.push(i64_to_string(node.value));
  }

  visitStringLiteral(str: string, singleQuoted: bool = false): void {
    var sb = this.sb;
    var off = 0;
    var quote = singleQuoted ? "'" : "\"";
    sb.push(quote);
    var i = 0;
    for (let k = str.length; i < k;) {
      switch (str.charCodeAt(i)) {
        case CharCode.NULL: {
          if (i > off) sb.push(str.substring(off, off = i + 1));
          sb.push("\\0");
          off = ++i;
          break;
        }
        case CharCode.BACKSPACE: {
          if (i > off) sb.push(str.substring(off, i));
          off = ++i;
          sb.push("\\b");
          break;
        }
        case CharCode.TAB: {
          if (i > off) sb.push(str.substring(off, i));
          off = ++i;
          sb.push("\\t");
          break;
        }
        case CharCode.LINEFEED: {
          if (i > off) sb.push(str.substring(off, i));
          off = ++i;
          sb.push("\\n");
          break;
        }
        case CharCode.VERTICALTAB: {
          if (i > off) sb.push(str.substring(off, i));
          off = ++i;
          sb.push("\\v");
          break;
        }
        case CharCode.FORMFEED: {
          if (i > off) sb.push(str.substring(off, i));
          off = ++i;
          sb.push("\\f");
          break;
        }
        case CharCode.CARRIAGERETURN: {
          if (i > off) sb.push(str.substring(off, i));
          sb.push("\\r");
          off = ++i;
          break;
        }
        case CharCode.DOUBLEQUOTE: {
          if (!singleQuoted) {
            if (i > off) sb.push(str.substring(off, i));
            sb.push("\\\"");
            off = ++i;
          } else {
            ++i;
          }
          break;
        }
        case CharCode.SINGLEQUOTE: {
          if (singleQuoted) {
            if (i > off) sb.push(str.substring(off, i));
            sb.push("\\'");
            off = ++i;
          } else {
            ++i;
          }
          break;
        }
        case CharCode.BACKSLASH: {
          if (i > off) sb.push(str.substring(off, i));
          sb.push("\\\\");
          off = ++i;
          break;
        }
        default: {
          ++i;
          break;
        }
      }
    }
    if (i > off) sb.push(str.substring(off, i));
    sb.push(quote);
  }

  visitStringLiteralExpression(node: StringLiteralExpression): void {
    this.visitStringLiteral(node.value);
  }

  visitRegexpLiteralExpression(node: RegexpLiteralExpression): void {
    var sb = this.sb;
    sb.push("/");
    sb.push(node.pattern);
    sb.push("/");
    sb.push(node.patternFlags);
  }

  visitNewExpression(node: NewExpression): void {
    this.sb.push("new ");
    this.visitCallExpression(node);
  }

  visitParenthesizedExpression(node: ParenthesizedExpression): void {
    var sb = this.sb;
    sb.push("(");
    this.visitNode(node.expression);
    sb.push(")");
  }

  visitPropertyAccessExpression(node: PropertyAccessExpression): void {
    this.visitNode(node.expression);
    this.sb.push(".");
    this.visitIdentifierExpression(node.property);
  }

  visitTernaryExpression(node: TernaryExpression): void {
    var sb = this.sb;
    this.visitNode(node.condition);
    sb.push(" ? ");
    this.visitNode(node.ifThen);
    sb.push(" : ");
    this.visitNode(node.ifElse);
  }

  visitUnaryExpression(node: UnaryExpression): void {
    switch (node.kind) {
      case NodeKind.UNARYPOSTFIX: {
        this.visitUnaryPostfixExpression(<UnaryPostfixExpression>node);
        break;
      }
      case NodeKind.UNARYPREFIX: {
        this.visitUnaryPrefixExpression(<UnaryPrefixExpression>node);
        break;
      }
      default: assert(false);
    }
  }

  visitUnaryPostfixExpression(node: UnaryPostfixExpression): void {
    this.visitNode(node.operand);
    this.sb.push(operatorTokenToString(node.operator));
  }

  visitUnaryPrefixExpression(node: UnaryPrefixExpression): void {
    this.sb.push(operatorTokenToString(node.operator));
    this.visitNode(node.operand);
  }

  // statements

  visitNodeAndTerminate(statement: Statement): void {
    this.visitNode(statement);
    var sb = this.sb;
    if (
      !sb.length ||                          // leading EmptyStatement
      statement.kind == NodeKind.VARIABLE || // potentially assigns a FunctionExpression
      statement.kind == NodeKind.EXPRESSION  // potentially assigns a FunctionExpression
    ) {
      sb.push(";\n");
    } else {
      let last = sb[sb.length - 1];
      let lastCharPos = last.length - 1;
      if (lastCharPos >= 0 && (
        last.charCodeAt(lastCharPos) == CharCode.CLOSEBRACE ||
        last.charCodeAt(lastCharPos) == CharCode.SEMICOLON)
      ) {
        sb.push("\n");
      } else {
        sb.push(";\n");
      }
    }
  }

  visitBlockStatement(node: BlockStatement): void {
    var sb = this.sb;
    var statements = node.statements;
    var numStatements = statements.length;
    if (numStatements) {
      sb.push("{\n");
      let indentLevel = ++this.indentLevel;
      for (let i = 0; i < numStatements; ++i) {
        indent(sb, indentLevel);
        this.visitNodeAndTerminate(statements[i]);
      }
      indent(sb, --this.indentLevel);
      sb.push("}");
    } else {
      sb.push("{}");
    }
  }

  visitBreakStatement(node: BreakStatement): void {
    var label = node.label;
    if (label) {
      this.sb.push("break ");
      this.visitIdentifierExpression(label);
    } else {
      this.sb.push("break");
    }
  }

  visitContinueStatement(node: ContinueStatement): void {
    var label = node.label;
    if (label) {
      this.sb.push("continue ");
      this.visitIdentifierExpression(label);
    } else {
      this.sb.push("continue");
    }
  }

  visitClassDeclaration(node: ClassDeclaration): void {
    var decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    this.serializeExternalModifiers(node);
    var sb = this.sb;
    if (node.is(CommonFlags.ABSTRACT)) sb.push("abstract ");
    if (node.name.text.length) {
      sb.push("class ");
      this.visitIdentifierExpression(node.name);
    } else {
      sb.push("class");
    }
    var typeParameters = node.typeParameters;
    if (typeParameters && typeParameters.length) {
      sb.push("<");
      this.visitTypeParameter(typeParameters[0]);
      for (let i = 1, k = typeParameters.length; i < k; ++i) {
        sb.push(", ");
        this.visitTypeParameter(typeParameters[i]);
      }
      sb.push(">");
    }
    var extendsType = node.extendsType;
    if (extendsType) {
      sb.push(" extends ");
      this.visitTypeNode(extendsType);
    }
    var implementsTypes = node.implementsTypes;
    if (implementsTypes) {
      let numImplementsTypes = implementsTypes.length;
      if (numImplementsTypes) {
        sb.push(" implements ");
        this.visitTypeNode(implementsTypes[0]);
        for (let i = 1; i < numImplementsTypes; ++i) {
          sb.push(", ");
          this.visitTypeNode(implementsTypes[i]);
        }
      }
    }
    var members = node.members;
    var numMembers = members.length;
    if (numMembers) {
      sb.push(" {\n");
      let indentLevel = ++this.indentLevel;
      for (let i = 0, k = members.length; i < k; ++i) {
        let member = members[i];
        if (member.kind != NodeKind.FIELDDECLARATION || (<FieldDeclaration>member).parameterIndex < 0) {
          indent(sb, indentLevel);
          this.visitNodeAndTerminate(member);
        }
      }
      indent(sb, --this.indentLevel);
      sb.push("}");
    } else {
      sb.push(" {}");
    }
  }

  visitDoStatement(node: DoStatement): void {
    var sb = this.sb;
    sb.push("do ");
    this.visitNode(node.statement);
    if (node.statement.kind == NodeKind.BLOCK) {
      sb.push(" while (");
    } else {
      sb.push(";\n");
      indent(sb, this.indentLevel);
      sb.push("while (");
    }
    this.visitNode(node.condition);
    sb.push(")");
  }

  visitEmptyStatement(node: EmptyStatement): void {
  }

  visitEnumDeclaration(node: EnumDeclaration): void {
    var sb = this.sb;
    this.serializeExternalModifiers(node);
    if (node.is(CommonFlags.CONST)) sb.push("const ");
    sb.push("enum ");
    this.visitIdentifierExpression(node.name);
    var values = node.values;
    var numValues = values.length;
    if (numValues) {
      sb.push(" {\n");
      let indentLevel = ++this.indentLevel;
      indent(sb, indentLevel);
      this.visitEnumValueDeclaration(node.values[0]);
      for (let i = 1; i < numValues; ++i) {
        sb.push(",\n");
        indent(sb, indentLevel);
        this.visitEnumValueDeclaration(node.values[i]);
      }
      sb.push("\n");
      indent(sb, --this.indentLevel);
      sb.push("}");
    } else {
      sb.push(" {}");
    }
  }

  visitEnumValueDeclaration(node: EnumValueDeclaration): void {
    this.visitIdentifierExpression(node.name);
    if (node.value) {
      this.sb.push(" = ");
      this.visitNode(node.value);
    }
  }

  visitExportImportStatement(node: ExportImportStatement): void {
    var sb = this.sb;
    sb.push("export import ");
    this.visitIdentifierExpression(node.externalName);
    sb.push(" = ");
    this.visitIdentifierExpression(node.name);
  }

  visitExportMember(node: ExportMember): void {
    this.visitIdentifierExpression(node.localName);
    if (node.exportedName.text != node.localName.text) {
      this.sb.push(" as ");
      this.visitIdentifierExpression(node.exportedName);
    }
  }

  visitExportStatement(node: ExportStatement): void {
    var sb = this.sb;
    if (node.isDeclare) {
      sb.push("declare ");
    }
    var members = node.members;
    if (members && members.length) {
      let numMembers = members.length;
      sb.push("export {\n");
      let indentLevel = ++this.indentLevel;
      indent(sb, indentLevel);
      this.visitExportMember(members[0]);
      for (let i = 1; i < numMembers; ++i) {
        sb.push(",\n");
        indent(sb, indentLevel);
        this.visitExportMember(members[i]);
      }
      --this.indentLevel;
      sb.push("\n}");
    } else {
      sb.push("export {}");
    }
    var path = node.path;
    if (path) {
      sb.push(" from ");
      this.visitStringLiteralExpression(path);
    }
    sb.push(";");
  }

  visitExpressionStatement(node: ExpressionStatement): void {
    this.visitNode(node.expression);
  }

  visitFieldDeclaration(node: FieldDeclaration): void {
    var decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    this.serializeAccessModifiers(node);
    this.visitIdentifierExpression(node.name);
    var sb = this.sb;
    if (node.flags & CommonFlags.DEFINITE_ASSIGNMENT) {
      sb.push("!");
    }
    var type = node.type;
    if (type) {
      sb.push(": ");
      this.visitTypeNode(type);
    }
    var initializer = node.initializer;
    if (initializer) {
      sb.push(" = ");
      this.visitNode(initializer);
    }
  }

  visitForStatement(node: ForStatement): void {
    var sb = this.sb;
    sb.push("for (");
    var initializer = node.initializer;
    if (initializer) {
      this.visitNode(initializer);
    }
    var condition = node.condition;
    if (condition) {
      sb.push("; ");
      this.visitNode(condition);
    } else {
      sb.push(";");
    }
    var incrementor = node.incrementor;
    if (incrementor) {
      sb.push("; ");
      this.visitNode(incrementor);
    } else {
      sb.push(";");
    }
    sb.push(") ");
    this.visitNode(node.statement);
  }

  visitFunctionDeclaration(node: FunctionDeclaration): void {
    var sb = this.sb;
    var decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    this.serializeExternalModifiers(node);
    this.serializeAccessModifiers(node);
    if (node.name.text.length) {
      sb.push("function ");
    } else {
      sb.push("function");
    }
    this.visitFunctionCommon(node);
  }

  visitFunctionCommon(node: FunctionDeclaration): void {
    var sb = this.sb;
    this.visitIdentifierExpression(node.name);
    var signature = node.signature;
    var typeParameters = node.typeParameters;
    if (typeParameters) {
      let numTypeParameters = typeParameters.length;
      if (numTypeParameters) {
        sb.push("<");
        this.visitTypeParameter(typeParameters[0]);
        for (let i = 1; i < numTypeParameters; ++i) {
          sb.push(", ");
          this.visitTypeParameter(typeParameters[i]);
        }
        sb.push(">");
      }
    }
    if (node.arrowKind == ArrowKind.ARROW_SINGLE) {
      let parameters = signature.parameters;
      assert(parameters.length == 1);
      assert(!signature.explicitThisType);
      this.serializeParameter(parameters[0]);
    } else {
      sb.push("(");
      let parameters = signature.parameters;
      let numParameters = parameters.length;
      let explicitThisType = signature.explicitThisType;
      if (explicitThisType) {
        sb.push("this: ");
        this.visitTypeNode(explicitThisType);
      }
      if (numParameters) {
        if (explicitThisType) sb.push(", ");
        this.serializeParameter(parameters[0]);
        for (let i = 1; i < numParameters; ++i) {
          sb.push(", ");
          this.serializeParameter(parameters[i]);
        }
      }
    }
    var body = node.body;
    var returnType = signature.returnType;
    if (node.arrowKind) {
      if (body) {
        if (node.arrowKind == ArrowKind.ARROW_SINGLE) {
          assert(isTypeOmitted(returnType));
        } else {
          if (isTypeOmitted(returnType)) {
            sb.push(")");
          } else {
            sb.push("): ");
            this.visitTypeNode(returnType);
          }
        }
        sb.push(" => ");
        this.visitNode(body);
      } else {
        assert(!isTypeOmitted(returnType));
        sb.push(" => ");
        this.visitTypeNode(returnType);
      }
    } else {
      if (
        !isTypeOmitted(returnType) &&
        !node.isAny(CommonFlags.CONSTRUCTOR | CommonFlags.SET)
      ) {
        sb.push("): ");
        this.visitTypeNode(returnType);
      } else {
        sb.push(")");
      }
      if (body) {
        sb.push(" ");
        this.visitNode(body);
      }
    }
  }

  visitIfStatement(node: IfStatement): void {
    var sb = this.sb;
    sb.push("if (");
    this.visitNode(node.condition);
    sb.push(") ");
    var ifTrue = node.ifTrue;
    this.visitNode(ifTrue);
    if (ifTrue.kind != NodeKind.BLOCK) {
      sb.push(";\n");
    }
    var ifFalse = node.ifFalse;
    if (ifFalse) {
      if (ifTrue.kind == NodeKind.BLOCK) {
        sb.push(" else ");
      } else {
        sb.push("else ");
      }
      this.visitNode(ifFalse);
    }
  }

  visitImportDeclaration(node: ImportDeclaration): void {
    var externalName = node.foreignName;
    var name = node.name;
    this.visitIdentifierExpression(externalName);
    if (externalName.text != name.text) {
      this.sb.push(" as ");
      this.visitIdentifierExpression(name);
    }
  }

  visitImportStatement(node: ImportStatement): void {
    var sb = this.sb;
    sb.push("import ");
    var declarations = node.declarations;
    var namespaceName = node.namespaceName;
    if (declarations) {
      let numDeclarations = declarations.length;
      if (numDeclarations) {
        sb.push("{\n");
        let indentLevel = ++this.indentLevel;
        indent(sb, indentLevel);
        this.visitImportDeclaration(declarations[0]);
        for (let i = 1; i < numDeclarations; ++i) {
          sb.push(",\n");
          indent(sb, indentLevel);
          this.visitImportDeclaration(declarations[i]);
        }
        --this.indentLevel;
        sb.push("\n} from ");
      } else {
        sb.push("{} from ");
      }
    } else if (namespaceName) {
      sb.push("* as ");
      this.visitIdentifierExpression(namespaceName);
      sb.push(" from ");
    }
    this.visitStringLiteralExpression(node.path);
  }

  visitIndexSignatureDeclaration(node: IndexSignatureDeclaration): void {
    var sb = this.sb;
    sb.push("[key: ");
    this.visitTypeNode(node.keyType);
    sb.push("]: ");
    this.visitTypeNode(node.valueType);
  }

  visitInterfaceDeclaration(node: InterfaceDeclaration): void {
    var decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    this.serializeExternalModifiers(node);
    var sb = this.sb;
    sb.push("interface ");
    this.visitIdentifierExpression(node.name);
    var typeParameters = node.typeParameters;
    if (typeParameters && typeParameters.length) {
      sb.push("<");
      this.visitTypeParameter(typeParameters[0]);
      for (let i = 1, k = typeParameters.length; i < k; ++i) {
        sb.push(", ");
        this.visitTypeParameter(typeParameters[i]);
      }
      sb.push(">");
    }
    var extendsType = node.extendsType;
    if (extendsType) {
      sb.push(" extends ");
      this.visitTypeNode(extendsType);
    }
    // must not have implementsTypes
    sb.push(" {\n");
    var indentLevel = ++this.indentLevel;
    var members = node.members;
    for (let i = 0, k = members.length; i < k; ++i) {
      indent(sb, indentLevel);
      this.visitNodeAndTerminate(members[i]);
    }
    --this.indentLevel;
    sb.push("}");
  }

  visitMethodDeclaration(node: MethodDeclaration): void {
    var decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    this.serializeAccessModifiers(node);
    if (node.is(CommonFlags.GET)) {
      this.sb.push("get ");
    } else if (node.is(CommonFlags.SET)) {
      this.sb.push("set ");
    }
    this.visitFunctionCommon(node);
  }

  visitNamespaceDeclaration(node: NamespaceDeclaration): void {
    var decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    this.serializeExternalModifiers(node);
    var sb = this.sb;
    sb.push("namespace ");
    this.visitIdentifierExpression(node.name);
    var members = node.members;
    var numMembers = members.length;
    if (numMembers) {
      sb.push(" {\n");
      let indentLevel = ++this.indentLevel;
      for (let i = 0, k = members.length; i < k; ++i) {
        indent(sb, indentLevel);
        this.visitNodeAndTerminate(members[i]);
      }
      indent(sb, --this.indentLevel);
      sb.push("}");
    } else {
      sb.push(" {}");
    }
  }

  visitReturnStatement(node: ReturnStatement): void {
    var value = node.value;
    if (value) {
      this.sb.push("return ");
      this.visitNode(value);
    } else {
      this.sb.push("return");
    }
  }

  visitSwitchCase(node: SwitchCase): void {
    var sb = this.sb;
    var label = node.label;
    if (label) {
      sb.push("case ");
      this.visitNode(label);
      sb.push(":\n");
    } else {
      sb.push("default:\n");
    }
    var statements = node.statements;
    var numStatements = statements.length;
    if (numStatements) {
      let indentLevel = ++this.indentLevel;
      indent(sb, indentLevel);
      this.visitNodeAndTerminate(statements[0]);
      for (let i = 1; i < numStatements; ++i) {
        indent(sb, indentLevel);
        this.visitNodeAndTerminate(statements[i]);
      }
      --this.indentLevel;
    }
  }

  visitSwitchStatement(node: SwitchStatement): void {
    var sb = this.sb;
    sb.push("switch (");
    this.visitNode(node.condition);
    sb.push(") {\n");
    var indentLevel = ++this.indentLevel;
    var cases = node.cases;
    for (let i = 0, k = cases.length; i < k; ++i) {
      indent(sb, indentLevel);
      this.visitSwitchCase(cases[i]);
      sb.push("\n");
    }
    --this.indentLevel;
    sb.push("}");
  }

  visitThrowStatement(node: ThrowStatement): void {
    this.sb.push("throw ");
    this.visitNode(node.value);
  }

  visitTryStatement(node: TryStatement): void {
    var sb = this.sb;
    sb.push("try {\n");
    var indentLevel = ++this.indentLevel;
    var statements = node.statements;
    for (let i = 0, k = statements.length; i < k; ++i) {
      indent(sb, indentLevel);
      this.visitNodeAndTerminate(statements[i]);
    }
    var catchVariable = node.catchVariable;
    if (catchVariable) {
      indent(sb, indentLevel - 1);
      sb.push("} catch (");
      this.visitIdentifierExpression(catchVariable);
      sb.push(") {\n");
      let catchStatements = node.catchStatements;
      if (catchStatements) {
        for (let i = 0, k = catchStatements.length; i < k; ++i) {
          indent(sb, indentLevel);
          this.visitNodeAndTerminate(catchStatements[i]);
        }
      }
    }
    var finallyStatements = node.finallyStatements;
    if (finallyStatements) {
      indent(sb, indentLevel - 1);
      sb.push("} finally {\n");
      for (let i = 0, k = finallyStatements.length; i < k; ++i) {
        indent(sb, indentLevel);
        this.visitNodeAndTerminate(finallyStatements[i]);
      }
    }
    indent(sb, indentLevel - 1);
    sb.push("}");
  }

  visitTypeDeclaration(node: TypeDeclaration): void {
    var decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    var sb = this.sb;
    this.serializeExternalModifiers(node);
    sb.push("type ");
    this.visitIdentifierExpression(node.name);
    var typeParameters = node.typeParameters;
    if (typeParameters) {
      let numTypeParameters = typeParameters.length;
      if (numTypeParameters) {
        sb.push("<");
        for (let i = 0; i < numTypeParameters; ++i) {
          this.visitTypeParameter(typeParameters[i]);
        }
        sb.push(">");
      }
    }
    sb.push(" = ");
    this.visitTypeNode(node.type);
  }

  visitVariableDeclaration(node: VariableDeclaration): void {
    this.visitIdentifierExpression(node.name);
    var type = node.type;
    var sb = this.sb;
    if (node.flags & CommonFlags.DEFINITE_ASSIGNMENT) {
      sb.push("!");
    }
    if (type) {
      sb.push(": ");
      this.visitTypeNode(type);
    }
    var initializer = node.initializer;
    if (initializer) {
      sb.push(" = ");
      this.visitNode(initializer);
    }
  }

  visitVariableStatement(node: VariableStatement): void {
    var decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    var sb = this.sb;
    var declarations = node.declarations;
    var numDeclarations = assert(declarations.length);
    var firstDeclaration = declarations[0];
    this.serializeExternalModifiers(firstDeclaration);
    sb.push(firstDeclaration.is(CommonFlags.CONST) ? "const " : firstDeclaration.is(CommonFlags.LET) ? "let " : "var ");
    this.visitVariableDeclaration(node.declarations[0]);
    for (let i = 1; i < numDeclarations; ++i) {
      sb.push(", ");
      this.visitVariableDeclaration(node.declarations[i]);
    }
  }

  visitWhileStatement(node: WhileStatement): void {
    var sb = this.sb;
    sb.push("while (");
    this.visitNode(node.condition);
    var statement = node.statement;
    if (statement.kind == NodeKind.EMPTY) {
      sb.push(")");
    } else {
      sb.push(") ");
      this.visitNode(node.statement);
    }
  }

  // other

  serializeDecorator(node: DecoratorNode): void {
    var sb = this.sb;
    sb.push("@");
    this.visitNode(node.name);
    var args = node.arguments;
    if (args) {
      sb.push("(");
      let numArgs = args.length;
      if (numArgs) {
        this.visitNode(args[0]);
        for (let i = 1; i < numArgs; ++i) {
          sb.push(", ");
          this.visitNode(args[i]);
        }
      }
      sb.push(")\n");
    } else {
      sb.push("\n");
    }
    indent(sb, this.indentLevel);
  }

  serializeParameter(node: ParameterNode): void {
    var sb = this.sb;
    var kind = node.parameterKind;
    var implicitFieldDeclaration = node.implicitFieldDeclaration;
    if (implicitFieldDeclaration) {
      this.serializeAccessModifiers(implicitFieldDeclaration);
    }
    if (kind == ParameterKind.REST) {
      sb.push("...");
    }
    this.visitIdentifierExpression(node.name);
    var type = node.type;
    var initializer = node.initializer;
    if (type) {
      if (kind == ParameterKind.OPTIONAL) sb.push("?");
      if (!isTypeOmitted(type)) {
        sb.push(": ");
        this.visitTypeNode(type);
      }
    }
    if (initializer) {
      sb.push(" = ");
      this.visitNode(initializer);
    }
  }

  serializeExternalModifiers(node: DeclarationStatement): void {
    var sb = this.sb;
    if (node.is(CommonFlags.EXPORT)) {
      sb.push("export ");
    } else if (node.is(CommonFlags.IMPORT)) {
      sb.push("import ");
    } else if (node.is(CommonFlags.DECLARE)) {
      sb.push("declare ");
    }
  }

  serializeAccessModifiers(node: DeclarationStatement): void {
    var sb = this.sb;
    if (node.is(CommonFlags.PUBLIC)) {
      sb.push("public ");
    } else if (node.is(CommonFlags.PRIVATE)) {
      sb.push("private ");
    } else if (node.is(CommonFlags.PROTECTED)) {
      sb.push("protected ");
    }
    if (node.is(CommonFlags.STATIC)) {
      sb.push("static ");
    } else if (node.is(CommonFlags.ABSTRACT)) {
      sb.push("abstract ");
    }
    if (node.is(CommonFlags.READONLY)) {
      sb.push("readonly ");
    }
  }

  finish(): string {
    var ret = this.sb.join("");
    this.sb = [];
    return ret;
  }
}
