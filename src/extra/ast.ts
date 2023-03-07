/**
 * @fileoverview Abstract Syntax Tree extras.
 *
 * Provides serialization of the AssemblyScript AST back to it source form.
 *
 * @license Apache-2.0
 */

import {
  Node,
  NodeKind,
  Source,
  ArrowKind,
  TypeNode,
  NamedTypeNode,
  FunctionTypeNode,
  TypeName,
  TypeParameterNode,
  Expression,
  IdentifierExpression,
  LiteralExpression,
  LiteralKind,
  FloatLiteralExpression,
  IntegerLiteralExpression,
  StringLiteralExpression,
  TemplateLiteralExpression,
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
  BlockStatement,
  BreakStatement,
  ContinueStatement,
  DoStatement,
  EmptyStatement,
  ExportImportStatement,
  ExportStatement,
  ExportDefaultStatement,
  ExpressionStatement,
  ForStatement,
  ForOfStatement,
  IfStatement,
  ImportStatement,
  InstanceOfExpression,
  ReturnStatement,
  SwitchStatement,
  ThrowStatement,
  TryStatement,
  VariableStatement,
  WhileStatement,
  ModuleDeclaration,
  DeclarationStatement,
  ClassDeclaration,
  EnumDeclaration,
  EnumValueDeclaration,
  FieldDeclaration,
  FunctionDeclaration,
  ImportDeclaration,
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
  IndexSignatureNode,
  isTypeOmitted,
} from "../ast";

import { operatorTokenToString } from "../tokenizer";

import { CharCode, indent, escapeString } from "../util";

import { CommonFlags } from "../common";

/** An AST builder. */
export class ASTBuilder {
  /** Rebuilds the textual source from the specified AST, as far as possible. */
  static build(node: Node): string {
    let builder = new ASTBuilder();
    builder.visitNode(node);
    return builder.finish();
  }

  private sb: string[] = [];
  private indentLevel: i32 = 0;

  visitNode(node: Node): void {
    switch (node.kind) {
      case NodeKind.Source: {
        this.visitSource(<Source>node);
        break;
      }

      // types

      case NodeKind.NamedType: {
        this.visitNamedTypeNode(<NamedTypeNode>node);
        break;
      }
      case NodeKind.FunctionType: {
        this.visitFunctionTypeNode(<FunctionTypeNode>node);
        break;
      }
      case NodeKind.TypeParameter: {
        this.visitTypeParameter(<TypeParameterNode>node);
        break;
      }

      // expressions

      case NodeKind.False:
      case NodeKind.Null:
      case NodeKind.Super:
      case NodeKind.This:
      case NodeKind.True:
      case NodeKind.Constructor:
      case NodeKind.Identifier: {
        this.visitIdentifierExpression(<IdentifierExpression>node);
        break;
      }
      case NodeKind.Assertion: {
        this.visitAssertionExpression(<AssertionExpression>node);
        break;
      }
      case NodeKind.Binary: {
        this.visitBinaryExpression(<BinaryExpression>node);
        break;
      }
      case NodeKind.Call: {
        this.visitCallExpression(<CallExpression>node);
        break;
      }
      case NodeKind.Class: {
        this.visitClassExpression(<ClassExpression>node);
        break;
      }
      case NodeKind.Comma: {
        this.visitCommaExpression(<CommaExpression>node);
        break;
      }
      case NodeKind.ElementAccess: {
        this.visitElementAccessExpression(<ElementAccessExpression>node);
        break;
      }
      case NodeKind.Function: {
        this.visitFunctionExpression(<FunctionExpression>node);
        break;
      }
      case NodeKind.InstanceOf: {
        this.visitInstanceOfExpression(<InstanceOfExpression>node);
        break;
      }
      case NodeKind.Literal: {
        this.visitLiteralExpression(<LiteralExpression>node);
        break;
      }
      case NodeKind.New: {
        this.visitNewExpression(<NewExpression>node);
        break;
      }
      case NodeKind.Parenthesized: {
        this.visitParenthesizedExpression(<ParenthesizedExpression>node);
        break;
      }
      case NodeKind.PropertyAccess: {
        this.visitPropertyAccessExpression(<PropertyAccessExpression>node);
        break;
      }
      case NodeKind.Ternary: {
        this.visitTernaryExpression(<TernaryExpression>node);
        break;
      }
      case NodeKind.UnaryPostfix: {
        this.visitUnaryPostfixExpression(<UnaryPostfixExpression>node);
        break;
      }
      case NodeKind.UnaryPrefix: {
        this.visitUnaryPrefixExpression(<UnaryPrefixExpression>node);
        break;
      }

      // statements

      case NodeKind.Block: {
        this.visitBlockStatement(<BlockStatement>node);
        break;
      }
      case NodeKind.Break: {
        this.visitBreakStatement(<BreakStatement>node);
        break;
      }
      case NodeKind.Continue: {
        this.visitContinueStatement(<ContinueStatement>node);
        break;
      }
      case NodeKind.Do: {
        this.visitDoStatement(<DoStatement>node);
        break;
      }
      case NodeKind.Empty: {
        this.visitEmptyStatement(<EmptyStatement>node);
        break;
      }
      case NodeKind.Export: {
        this.visitExportStatement(<ExportStatement>node);
        break;
      }
      case NodeKind.ExportDefault: {
        this.visitExportDefaultStatement(<ExportDefaultStatement>node);
        break;
      }
      case NodeKind.ExportImport: {
        this.visitExportImportStatement(<ExportImportStatement>node);
        break;
      }
      case NodeKind.Expression: {
        this.visitExpressionStatement(<ExpressionStatement>node);
        break;
      }
      case NodeKind.For: {
        this.visitForStatement(<ForStatement>node);
        break;
      }
      case NodeKind.ForOf: {
        this.visitForOfStatement(<ForOfStatement>node);
        break;
      }
      case NodeKind.If: {
        this.visitIfStatement(<IfStatement>node);
        break;
      }
      case NodeKind.Import: {
        this.visitImportStatement(<ImportStatement>node);
        break;
      }
      case NodeKind.Return: {
        this.visitReturnStatement(<ReturnStatement>node);
        break;
      }
      case NodeKind.Switch: {
        this.visitSwitchStatement(<SwitchStatement>node);
        break;
      }
      case NodeKind.Throw: {
        this.visitThrowStatement(<ThrowStatement>node);
        break;
      }
      case NodeKind.Try: {
        this.visitTryStatement(<TryStatement>node);
        break;
      }
      case NodeKind.Variable: {
        this.visitVariableStatement(<VariableStatement>node);
        break;
      }
      case NodeKind.While: {
        this.visitWhileStatement(<WhileStatement>node);
        break;
      }
      case NodeKind.Module: {
        this.visitModuleDeclaration(<ModuleDeclaration>node);
        break;
      }

      // declaration statements

      case NodeKind.ClassDeclaration: {
        this.visitClassDeclaration(<ClassDeclaration>node);
        break;
      }
      case NodeKind.EnumDeclaration: {
        this.visitEnumDeclaration(<EnumDeclaration>node);
        break;
      }
      case NodeKind.EnumValueDeclaration: {
        this.visitEnumValueDeclaration(<EnumValueDeclaration>node);
        break;
      }
      case NodeKind.FieldDeclaration: {
        this.visitFieldDeclaration(<FieldDeclaration>node);
        break;
      }
      case NodeKind.FunctionDeclaration: {
        this.visitFunctionDeclaration(<FunctionDeclaration>node);
        break;
      }
      case NodeKind.ImportDeclaration: {
        this.visitImportDeclaration(<ImportDeclaration>node);
        break;
      }
      case NodeKind.InterfaceDeclaration: {
        this.visitInterfaceDeclaration(<InterfaceDeclaration>node);
        break;
      }
      case NodeKind.MethodDeclaration: {
        this.visitMethodDeclaration(<MethodDeclaration>node);
        break;
      }
      case NodeKind.NamespaceDeclaration: {
        this.visitNamespaceDeclaration(<NamespaceDeclaration>node);
        break;
      }
      case NodeKind.TypeDeclaration: {
        this.visitTypeDeclaration(<TypeDeclaration>node);
        break;
      }
      case NodeKind.VariableDeclaration: {
        this.visitVariableDeclaration(<VariableDeclaration>node);
        break;
      }

      // other

      case NodeKind.Decorator: {
        this.serializeDecorator(<DecoratorNode>node);
        break;
      }
      case NodeKind.ExportMember: {
        this.visitExportMember(<ExportMember>node);
        break;
      }
      case NodeKind.Parameter: {
        this.serializeParameter(<ParameterNode>node);
        break;
      }
      case NodeKind.SwitchCase: {
        this.visitSwitchCase(<SwitchCase>node);
        break;
      }
      case NodeKind.IndexSignature: {
        this.visitIndexSignature(<IndexSignatureNode>node);
        break;
      }
      default:
        assert(false);
    }
  }

  visitSource(source: Source): void {
    let statements = source.statements;
    for (let i = 0, k = statements.length; i < k; ++i) {
      this.visitNodeAndTerminate(statements[i]);
    }
  }

  // types

  visitTypeNode(node: TypeNode): void {
    switch (node.kind) {
      case NodeKind.NamedType: {
        this.visitNamedTypeNode(<NamedTypeNode>node);
        break;
      }
      case NodeKind.FunctionType: {
        this.visitFunctionTypeNode(<FunctionTypeNode>node);
        break;
      }
      default:
        assert(false);
    }
  }

  visitTypeName(node: TypeName): void {
    this.visitIdentifierExpression(node.identifier);
    let sb = this.sb;
    let current = node.next;
    while (current) {
      sb.push(".");
      this.visitIdentifierExpression(current.identifier);
      current = current.next;
    }
  }

  visitNamedTypeNode(node: NamedTypeNode): void {
    this.visitTypeName(node.name);
    let typeArguments = node.typeArguments;
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

  visitFunctionTypeNode(node: FunctionTypeNode): void {
    let isNullable = node.isNullable;
    let sb = this.sb;
    sb.push(isNullable ? "((" : "(");
    let explicitThisType = node.explicitThisType;
    if (explicitThisType) {
      sb.push("this: ");
      this.visitTypeNode(explicitThisType);
    }
    let parameters = node.parameters;
    let numParameters = parameters.length;
    if (numParameters) {
      if (explicitThisType) sb.push(", ");
      this.serializeParameter(parameters[0]);
      for (let i = 1; i < numParameters; ++i) {
        sb.push(", ");
        this.serializeParameter(parameters[i]);
      }
    }
    let returnType = node.returnType;
    if (returnType) {
      sb.push(") => ");
      this.visitTypeNode(returnType);
    } else {
      sb.push(") => void");
    }
    if (isNullable) sb.push(") | null");
  }

  visitTypeParameter(node: TypeParameterNode): void {
    this.visitIdentifierExpression(node.name);
    let extendsType = node.extendsType;
    if (extendsType) {
      this.sb.push(" extends ");
      this.visitTypeNode(extendsType);
    }
    let defaultType = node.defaultType;
    if (defaultType) {
      this.sb.push("=");
      this.visitTypeNode(defaultType);
    }
  }

  // expressions

  visitIdentifierExpression(node: IdentifierExpression): void {
    if (node.isQuoted) this.visitStringLiteral(node.text);
    else this.sb.push(node.text);
  }

  visitArrayLiteralExpression(node: ArrayLiteralExpression): void {
    let sb = this.sb;
    sb.push("[");
    let elements = node.elementExpressions;
    let numElements = elements.length;
    if (numElements) {
      let element = elements[0];
      if (element) this.visitNode(element);
      for (let i = 1; i < numElements; ++i) {
        element = elements[i];
        sb.push(", ");
        if (element) this.visitNode(element);
      }
    }
    sb.push("]");
  }

  visitObjectLiteralExpression(node: ObjectLiteralExpression): void {
    let sb = this.sb;
    let names = node.names;
    let values = node.values;
    let numElements = names.length;
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
        if (name == value) {
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
    let sb = this.sb;
    switch (node.assertionKind) {
      case AssertionKind.Prefix: {
        sb.push("<");
        this.visitTypeNode(assert(node.toType));
        sb.push(">");
        this.visitNode(node.expression);
        break;
      }
      case AssertionKind.As: {
        this.visitNode(node.expression);
        sb.push(" as ");
        this.visitTypeNode(assert(node.toType));
        break;
      }
      case AssertionKind.NonNull: {
        this.visitNode(node.expression);
        sb.push("!");
        break;
      }
      case AssertionKind.Const: {
        this.visitNode(node.expression);
        sb.push(" as const");
        break;
      }
      default:
        assert(false);
    }
  }

  visitBinaryExpression(node: BinaryExpression): void {
    let sb = this.sb;
    this.visitNode(node.left);
    sb.push(" ");
    sb.push(operatorTokenToString(node.operator));
    sb.push(" ");
    this.visitNode(node.right);
  }

  visitCallExpression(node: CallExpression): void {
    this.visitNode(node.expression);
    this.visitArguments(node.typeArguments, node.args);
  }

  private visitArguments(
    typeArguments: TypeNode[] | null,
    args: Expression[],
  ): void {
    let sb = this.sb;
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
    let numArgs = args.length;
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
    let declaration = node.declaration;
    this.visitClassDeclaration(declaration);
  }

  visitCommaExpression(node: CommaExpression): void {
    let expressions = node.expressions;
    let numExpressions = assert(expressions.length);
    this.visitNode(expressions[0]);
    let sb = this.sb;
    for (let i = 1; i < numExpressions; ++i) {
      sb.push(",");
      this.visitNode(expressions[i]);
    }
  }

  visitElementAccessExpression(node: ElementAccessExpression): void {
    let sb = this.sb;
    this.visitNode(node.expression);
    sb.push("[");
    this.visitNode(node.elementExpression);
    sb.push("]");
  }

  visitFunctionExpression(node: FunctionExpression): void {
    let declaration = node.declaration;
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
      case LiteralKind.Float: {
        this.visitFloatLiteralExpression(<FloatLiteralExpression>node);
        break;
      }
      case LiteralKind.Integer: {
        this.visitIntegerLiteralExpression(<IntegerLiteralExpression>node);
        break;
      }
      case LiteralKind.String: {
        this.visitStringLiteralExpression(<StringLiteralExpression>node);
        break;
      }
      case LiteralKind.Template: {
        this.visitTemplateLiteralExpression(<TemplateLiteralExpression>node);
        break;
      }
      case LiteralKind.RegExp: {
        this.visitRegexpLiteralExpression(<RegexpLiteralExpression>node);
        break;
      }
      case LiteralKind.Array: {
        this.visitArrayLiteralExpression(<ArrayLiteralExpression>node);
        break;
      }
      case LiteralKind.Object: {
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
    this.sb.push(node.value.toString());
  }

  visitInstanceOfExpression(node: InstanceOfExpression): void {
    this.visitNode(node.expression);
    this.sb.push(" instanceof ");
    this.visitTypeNode(node.isType);
  }

  visitIntegerLiteralExpression(node: IntegerLiteralExpression): void {
    let range = node.range;
    let hasExplicitSign = range.source.text.startsWith("-", range.start);
    this.sb.push(i64_to_string(node.value, !hasExplicitSign));
  }

  visitStringLiteral(str: string): void {
    let sb = this.sb;
    sb.push('"');
    sb.push(escapeString(str, CharCode.DoubleQuote));
    sb.push('"');
  }

  visitStringLiteralExpression(node: StringLiteralExpression): void {
    this.visitStringLiteral(node.value);
  }

  visitTemplateLiteralExpression(node: TemplateLiteralExpression): void {
    let sb = this.sb;
    let tag = node.tag;
    let parts = node.parts;
    let expressions = node.expressions;
    if (tag) this.visitNode(tag);
    sb.push("`");
    sb.push(escapeString(parts[0], CharCode.Backtick));
    assert(parts.length == expressions.length + 1);
    for (let i = 0, k = expressions.length; i < k; ++i) {
      sb.push("${");
      this.visitNode(expressions[i]);
      sb.push("}");
      sb.push(escapeString(parts[i + 1], CharCode.Backtick));
    }
    sb.push("`");
  }

  visitRegexpLiteralExpression(node: RegexpLiteralExpression): void {
    let sb = this.sb;
    sb.push("/");
    sb.push(node.pattern);
    sb.push("/");
    sb.push(node.patternFlags);
  }

  visitNewExpression(node: NewExpression): void {
    this.sb.push("new ");
    this.visitTypeName(node.typeName);
    this.visitArguments(node.typeArguments, node.args);
  }

  visitParenthesizedExpression(node: ParenthesizedExpression): void {
    let sb = this.sb;
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
    let sb = this.sb;
    this.visitNode(node.condition);
    sb.push(" ? ");
    this.visitNode(node.ifThen);
    sb.push(" : ");
    this.visitNode(node.ifElse);
  }

  visitUnaryExpression(node: UnaryExpression): void {
    switch (node.kind) {
      case NodeKind.UnaryPostfix: {
        this.visitUnaryPostfixExpression(<UnaryPostfixExpression>node);
        break;
      }
      case NodeKind.UnaryPrefix: {
        this.visitUnaryPrefixExpression(<UnaryPrefixExpression>node);
        break;
      }
      default:
        assert(false);
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

  visitNodeAndTerminate(node: Node): void {
    this.visitNode(node);
    let sb = this.sb;
    if (
      !sb.length || // leading EmptyStatement
      node.kind == NodeKind.Variable || // potentially assigns a FunctionExpression
      node.kind == NodeKind.Expression // potentially assigns a FunctionExpression
    ) {
      sb.push(";\n");
    } else {
      let last = sb[sb.length - 1];
      let lastCharPos = last.length - 1;
      if (
        lastCharPos >= 0 &&
        (last.charCodeAt(lastCharPos) == CharCode.CloseBrace ||
          last.charCodeAt(lastCharPos) == CharCode.Semicolon)
      ) {
        sb.push("\n");
      } else {
        sb.push(";\n");
      }
    }
  }

  visitBlockStatement(node: BlockStatement): void {
    let sb = this.sb;
    let statements = node.statements;
    let numStatements = statements.length;
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
    let label = node.label;
    if (label) {
      this.sb.push("break ");
      this.visitIdentifierExpression(label);
    } else {
      this.sb.push("break");
    }
  }

  visitContinueStatement(node: ContinueStatement): void {
    let label = node.label;
    if (label) {
      this.sb.push("continue ");
      this.visitIdentifierExpression(label);
    } else {
      this.sb.push("continue");
    }
  }

  visitClassDeclaration(node: ClassDeclaration, isDefault: bool = false): void {
    let decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    let sb = this.sb;
    if (isDefault) {
      sb.push("export default ");
    } else {
      this.serializeExternalModifiers(node);
    }
    if (node.is(CommonFlags.Abstract)) sb.push("abstract ");
    if (node.name.text.length) {
      sb.push("class ");
      this.visitIdentifierExpression(node.name);
    } else {
      sb.push("class");
    }
    let typeParameters = node.typeParameters;
    if (typeParameters != null && typeParameters.length > 0) {
      sb.push("<");
      this.visitTypeParameter(typeParameters[0]);
      for (let i = 1, k = typeParameters.length; i < k; ++i) {
        sb.push(", ");
        this.visitTypeParameter(typeParameters[i]);
      }
      sb.push(">");
    }
    let extendsType = node.extendsType;
    if (extendsType) {
      sb.push(" extends ");
      this.visitTypeNode(extendsType);
    }
    let implementsTypes = node.implementsTypes;
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
    let indexSignature = node.indexSignature;
    let members = node.members;
    let numMembers = members.length;
    if (indexSignature || numMembers) {
      sb.push(" {\n");
      let indentLevel = ++this.indentLevel;
      if (indexSignature) {
        indent(sb, indentLevel);
        this.visitNodeAndTerminate(indexSignature);
      }
      for (let i = 0, k = members.length; i < k; ++i) {
        let member = members[i];
        if (
          member.kind != NodeKind.FieldDeclaration ||
          (<FieldDeclaration>member).parameterIndex < 0
        ) {
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
    let sb = this.sb;
    sb.push("do ");
    this.visitNode(node.body);
    if (node.body.kind == NodeKind.Block) {
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
    /* nop */
  }

  visitEnumDeclaration(node: EnumDeclaration, isDefault: bool = false): void {
    let sb = this.sb;
    if (isDefault) {
      sb.push("export default ");
    } else {
      this.serializeExternalModifiers(node);
    }
    if (node.is(CommonFlags.Const)) sb.push("const ");
    sb.push("enum ");
    this.visitIdentifierExpression(node.name);
    let values = node.values;
    let numValues = values.length;
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
    let initializer = node.initializer;
    if (initializer) {
      this.sb.push(" = ");
      this.visitNode(initializer);
    }
  }

  visitExportImportStatement(node: ExportImportStatement): void {
    let sb = this.sb;
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
    let sb = this.sb;
    if (node.isDeclare) {
      sb.push("declare ");
    }
    let members = node.members;
    if (members == null) {
      sb.push("export *");
    } else if (members.length > 0) {
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
    let path = node.path;
    if (path) {
      sb.push(" from ");
      this.visitStringLiteralExpression(path);
    }
    sb.push(";");
  }

  visitExportDefaultStatement(node: ExportDefaultStatement): void {
    let declaration = node.declaration;
    switch (declaration.kind) {
      case NodeKind.EnumDeclaration: {
        this.visitEnumDeclaration(<EnumDeclaration>declaration, true);
        break;
      }
      case NodeKind.FunctionDeclaration: {
        this.visitFunctionDeclaration(<FunctionDeclaration>declaration, true);
        break;
      }
      case NodeKind.ClassDeclaration: {
        this.visitClassDeclaration(<ClassDeclaration>declaration, true);
        break;
      }
      case NodeKind.InterfaceDeclaration: {
        this.visitInterfaceDeclaration(<InterfaceDeclaration>declaration, true);
        break;
      }
      case NodeKind.NamespaceDeclaration: {
        this.visitNamespaceDeclaration(<NamespaceDeclaration>declaration, true);
        break;
      }
      default:
        assert(false);
    }
  }

  visitExpressionStatement(node: ExpressionStatement): void {
    this.visitNode(node.expression);
  }

  visitFieldDeclaration(node: FieldDeclaration): void {
    let decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    this.serializeAccessModifiers(node);
    this.visitIdentifierExpression(node.name);
    let sb = this.sb;
    if (node.flags & CommonFlags.DefinitelyAssigned) {
      sb.push("!");
    }
    let type = node.type;
    if (type) {
      sb.push(": ");
      this.visitTypeNode(type);
    }
    let initializer = node.initializer;
    if (initializer) {
      sb.push(" = ");
      this.visitNode(initializer);
    }
  }

  visitForStatement(node: ForStatement): void {
    let sb = this.sb;
    sb.push("for (");
    let initializer = node.initializer;
    if (initializer) {
      this.visitNode(initializer);
    }
    let condition = node.condition;
    if (condition) {
      sb.push("; ");
      this.visitNode(condition);
    } else {
      sb.push(";");
    }
    let incrementor = node.incrementor;
    if (incrementor) {
      sb.push("; ");
      this.visitNode(incrementor);
    } else {
      sb.push(";");
    }
    sb.push(") ");
    this.visitNode(node.body);
  }

  visitForOfStatement(node: ForOfStatement): void {
    let sb = this.sb;
    sb.push("for (");
    this.visitNode(node.variable);
    sb.push(" of ");
    this.visitNode(node.iterable);
    sb.push(") ");
    this.visitNode(node.body);
  }

  visitFunctionDeclaration(
    node: FunctionDeclaration,
    isDefault: bool = false,
  ): void {
    let sb = this.sb;
    let decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    if (isDefault) {
      sb.push("export default ");
    } else {
      this.serializeExternalModifiers(node);
      this.serializeAccessModifiers(node);
    }
    if (node.name.text.length) {
      sb.push("function ");
    } else {
      sb.push("function");
    }
    this.visitFunctionCommon(node);
  }

  visitFunctionCommon(node: FunctionDeclaration): void {
    let sb = this.sb;
    this.visitIdentifierExpression(node.name);
    let signature = node.signature;
    let typeParameters = node.typeParameters;
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
    if (node.arrowKind == ArrowKind.Single) {
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
    let body = node.body;
    let returnType = signature.returnType;
    if (node.arrowKind) {
      if (body) {
        if (node.arrowKind == ArrowKind.Single) {
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
        !node.isAny(CommonFlags.Constructor | CommonFlags.Set)
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
    let sb = this.sb;
    sb.push("if (");
    this.visitNode(node.condition);
    sb.push(") ");
    let ifTrue = node.ifTrue;
    this.visitNode(ifTrue);
    if (ifTrue.kind != NodeKind.Block) {
      sb.push(";\n");
    }
    let ifFalse = node.ifFalse;
    if (ifFalse) {
      if (ifTrue.kind == NodeKind.Block) {
        sb.push(" else ");
      } else {
        sb.push("else ");
      }
      this.visitNode(ifFalse);
    }
  }

  visitImportDeclaration(node: ImportDeclaration): void {
    let externalName = node.foreignName;
    let name = node.name;
    this.visitIdentifierExpression(externalName);
    if (externalName.text != name.text) {
      this.sb.push(" as ");
      this.visitIdentifierExpression(name);
    }
  }

  visitImportStatement(node: ImportStatement): void {
    let sb = this.sb;
    sb.push("import ");
    let declarations = node.declarations;
    let namespaceName = node.namespaceName;
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

  visitIndexSignature(node: IndexSignatureNode): void {
    let sb = this.sb;
    sb.push("[key: ");
    this.visitTypeNode(node.keyType);
    sb.push("]: ");
    this.visitTypeNode(node.valueType);
  }

  visitInterfaceDeclaration(
    node: InterfaceDeclaration,
    isDefault: bool = false,
  ): void {
    let decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    let sb = this.sb;
    if (isDefault) {
      sb.push("export default ");
    } else {
      this.serializeExternalModifiers(node);
    }
    sb.push("interface ");
    this.visitIdentifierExpression(node.name);
    let typeParameters = node.typeParameters;
    if (typeParameters != null && typeParameters.length > 0) {
      sb.push("<");
      this.visitTypeParameter(typeParameters[0]);
      for (let i = 1, k = typeParameters.length; i < k; ++i) {
        sb.push(", ");
        this.visitTypeParameter(typeParameters[i]);
      }
      sb.push(">");
    }
    let extendsType = node.extendsType;
    if (extendsType) {
      sb.push(" extends ");
      this.visitTypeNode(extendsType);
    }
    // must not have implementsTypes
    sb.push(" {\n");
    let indentLevel = ++this.indentLevel;
    let members = node.members;
    for (let i = 0, k = members.length; i < k; ++i) {
      indent(sb, indentLevel);
      this.visitNodeAndTerminate(members[i]);
    }
    --this.indentLevel;
    sb.push("}");
  }

  visitMethodDeclaration(node: MethodDeclaration): void {
    let decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    this.serializeAccessModifiers(node);
    if (node.is(CommonFlags.Get)) {
      this.sb.push("get ");
    } else if (node.is(CommonFlags.Set)) {
      this.sb.push("set ");
    }
    this.visitFunctionCommon(node);
  }

  visitNamespaceDeclaration(
    node: NamespaceDeclaration,
    isDefault: bool = false,
  ): void {
    let decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    let sb = this.sb;
    if (isDefault) {
      sb.push("export default ");
    } else {
      this.serializeExternalModifiers(node);
    }
    sb.push("namespace ");
    this.visitIdentifierExpression(node.name);
    let members = node.members;
    let numMembers = members.length;
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
    let value = node.value;
    if (value) {
      this.sb.push("return ");
      this.visitNode(value);
    } else {
      this.sb.push("return");
    }
  }

  visitSwitchCase(node: SwitchCase): void {
    let sb = this.sb;
    let label = node.label;
    if (label) {
      sb.push("case ");
      this.visitNode(label);
      sb.push(":\n");
    } else {
      sb.push("default:\n");
    }
    let statements = node.statements;
    let numStatements = statements.length;
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
    let sb = this.sb;
    sb.push("switch (");
    this.visitNode(node.condition);
    sb.push(") {\n");
    let indentLevel = ++this.indentLevel;
    let cases = node.cases;
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
    let sb = this.sb;
    sb.push("try {\n");
    let indentLevel = ++this.indentLevel;
    let bodyStatements = node.bodyStatements;
    for (let i = 0, k = bodyStatements.length; i < k; ++i) {
      indent(sb, indentLevel);
      this.visitNodeAndTerminate(bodyStatements[i]);
    }
    let catchVariable = node.catchVariable;
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
    let finallyStatements = node.finallyStatements;
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
    let decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    let sb = this.sb;
    this.serializeExternalModifiers(node);
    sb.push("type ");
    this.visitIdentifierExpression(node.name);
    let typeParameters = node.typeParameters;
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

  visitModuleDeclaration(node: ModuleDeclaration): void {
    let sb = this.sb;
    if (node.flags & CommonFlags.Declare) {
      sb.push("declare ");
    }
    sb.push('module "');
    sb.push(escapeString(node.moduleName, CharCode.DoubleQuote));
    sb.push('"');
  }

  visitVariableDeclaration(node: VariableDeclaration): void {
    this.visitIdentifierExpression(node.name);
    let type = node.type;
    let sb = this.sb;
    if (node.flags & CommonFlags.DefinitelyAssigned) {
      sb.push("!");
    }
    if (type) {
      sb.push(": ");
      this.visitTypeNode(type);
    }
    let initializer = node.initializer;
    if (initializer) {
      sb.push(" = ");
      this.visitNode(initializer);
    }
  }

  visitVariableStatement(node: VariableStatement): void {
    let decorators = node.decorators;
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.serializeDecorator(decorators[i]);
      }
    }
    let sb = this.sb;
    let declarations = node.declarations;
    let numDeclarations = assert(declarations.length);
    let firstDeclaration = declarations[0];
    this.serializeExternalModifiers(firstDeclaration);
    sb.push(
      firstDeclaration.is(CommonFlags.Const)
        ? "const "
        : firstDeclaration.is(CommonFlags.Let)
        ? "let "
        : "var ",
    );
    this.visitVariableDeclaration(node.declarations[0]);
    for (let i = 1; i < numDeclarations; ++i) {
      sb.push(", ");
      this.visitVariableDeclaration(node.declarations[i]);
    }
  }

  visitWhileStatement(node: WhileStatement): void {
    let sb = this.sb;
    sb.push("while (");
    this.visitNode(node.condition);
    let body = node.body;
    if (body.isEmpty) {
      sb.push(")");
    } else {
      sb.push(") ");
      this.visitNode(body);
    }
  }

  // other

  serializeDecorator(node: DecoratorNode): void {
    let sb = this.sb;
    sb.push("@");
    this.visitNode(node.name);
    let args = node.args;
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
    let sb = this.sb;
    let kind = node.parameterKind;
    let implicitFieldDeclaration = node.implicitFieldDeclaration;
    if (implicitFieldDeclaration) {
      this.serializeAccessModifiers(implicitFieldDeclaration);
    }
    if (kind == ParameterKind.Rest) {
      sb.push("...");
    }
    this.visitIdentifierExpression(node.name);
    let type = node.type;
    let initializer = node.initializer;
    if (type) {
      if (kind == ParameterKind.Optional && !initializer) sb.push("?");
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
    let sb = this.sb;
    if (node.is(CommonFlags.Export)) {
      sb.push("export ");
    } else if (node.is(CommonFlags.Import)) {
      sb.push("import ");
    } else if (node.is(CommonFlags.Declare)) {
      sb.push("declare ");
    }
  }

  serializeAccessModifiers(node: DeclarationStatement): void {
    let sb = this.sb;
    if (node.is(CommonFlags.Declare)) {
      sb.push("declare ");
    }
    if (node.is(CommonFlags.Public)) {
      sb.push("public ");
    } else if (node.is(CommonFlags.Private)) {
      sb.push("private ");
    } else if (node.is(CommonFlags.Protected)) {
      sb.push("protected ");
    }
    if (node.is(CommonFlags.Static)) {
      sb.push("static ");
    } else if (node.is(CommonFlags.Abstract)) {
      sb.push("abstract ");
    }
    if (node.is(CommonFlags.Readonly)) {
      sb.push("readonly ");
    }
  }

  finish(): string {
    let ret = this.sb.join("");
    this.sb = [];
    return ret;
  }
}
