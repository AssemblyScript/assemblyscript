/**
 * @fileoverview Abstract syntax tree representing a source file once parsed.
 *
 * Each node in the AST is represented by an instance of a subclass of `Node`,
 * with its `Node#kind` represented by one of the `NodeKind` constants, which
 * dependent code typically switches over. The intended way to create a node
 * is to use the respective `Node.createX` method instead of its constructor.
 *
 * Note that the AST does not contain any type information except type names.
 *
 * @license Apache-2.0
 */

// TODO: Make the AST more easily serializable by refactoring `Node#range` so
// it doesn't reference the non-serializable `Source` object.

import {
  CommonFlags,
  PATH_DELIMITER,
  LIBRARY_PREFIX,
  LIBRARY_SUBST
} from "./common";

import {
  Token,
  Range
} from "./tokenizer";

import {
  normalizePath,
  resolvePath,
  CharCode,
  isTrivialAlphanum
} from "./util";

/** Indicates the kind of a node. */
export enum NodeKind {

  SOURCE,

  // types
  NAMEDTYPE,
  FUNCTIONTYPE,
  TYPENAME,
  TYPEPARAMETER,
  PARAMETER,

  // expressions
  IDENTIFIER,
  ASSERTION,
  BINARY,
  CALL,
  CLASS,
  COMMA,
  ELEMENTACCESS,
  FALSE,
  FUNCTION,
  INSTANCEOF,
  LITERAL,
  NEW,
  NULL,
  OMITTED,
  PARENTHESIZED,
  PROPERTYACCESS,
  TERNARY,
  SUPER,
  THIS,
  TRUE,
  CONSTRUCTOR,
  UNARYPOSTFIX,
  UNARYPREFIX,

  // statements
  BLOCK,
  BREAK,
  CONTINUE,
  DO,
  EMPTY,
  EXPORT,
  EXPORTDEFAULT,
  EXPORTIMPORT,
  EXPRESSION,
  FOR,
  FOROF,
  IF,
  IMPORT,
  RETURN,
  SWITCH,
  THROW,
  TRY,
  VARIABLE,
  VOID,
  WHILE,

  // declaration statements
  CLASSDECLARATION,
  ENUMDECLARATION,
  ENUMVALUEDECLARATION,
  FIELDDECLARATION,
  FUNCTIONDECLARATION,
  IMPORTDECLARATION,
  INTERFACEDECLARATION,
  METHODDECLARATION,
  NAMESPACEDECLARATION,
  TYPEDECLARATION,
  VARIABLEDECLARATION,

  // special
  DECORATOR,
  EXPORTMEMBER,
  SWITCHCASE,
  INDEXSIGNATURE,
  COMMENT
}

/** Base class of all nodes. */
export abstract class Node {
  constructor(
    /** Kind of this node. */
    public kind: NodeKind,
    /** Source range. */
    public range: Range
  ) {}

  // types

  static createSimpleTypeName(
    name: string,
    range: Range
  ): TypeName {
    return new TypeName(Node.createIdentifierExpression(name, range), null, range);
  }

  static createNamedType(
    name: TypeName,
    typeArguments: TypeNode[] | null,
    isNullable: bool,
    range: Range
  ): NamedTypeNode {
    return new NamedTypeNode(name, typeArguments, isNullable, range);
  }

  static createFunctionType(
    parameters: ParameterNode[],
    returnType: TypeNode,
    explicitThisType: NamedTypeNode | null,
    isNullable: bool,
    range: Range
  ): FunctionTypeNode {
    return new FunctionTypeNode(parameters, returnType, explicitThisType, isNullable, range);
  }

  static createOmittedType(
    range: Range
  ): NamedTypeNode {
    return new NamedTypeNode(Node.createSimpleTypeName("", range), null, false, range);
  }

  static createTypeParameter(
    name: IdentifierExpression,
    extendsType: NamedTypeNode | null,
    defaultType: NamedTypeNode | null,
    range: Range
  ): TypeParameterNode {
    return new TypeParameterNode(name, extendsType, defaultType, range);
  }

  static createParameter(
    parameterKind: ParameterKind,
    name: IdentifierExpression,
    type: TypeNode,
    initializer: Expression | null,
    range: Range
  ): ParameterNode {
    return new ParameterNode(parameterKind, name, type, initializer, range);
  }

  // special

  static createDecorator(
    name: Expression,
    args: Expression[] | null,
    range: Range
  ): DecoratorNode {
    return new DecoratorNode(DecoratorKind.fromNode(name), name, args, range);
  }

  static createComment(
    commentKind: CommentKind,
    text: string,
    range: Range
  ): CommentNode {
    return new CommentNode(commentKind, text, range);
  }

  // expressions

  static createIdentifierExpression(
    text: string,
    range: Range,
    isQuoted: bool = false
  ): IdentifierExpression {
    return new IdentifierExpression(text, isQuoted, range);
  }

  static createEmptyIdentifierExpression(
    range: Range
  ): IdentifierExpression {
    return new IdentifierExpression("", false, range);
  }

  static createArrayLiteralExpression(
    elementExpressions: Expression[],
    range: Range
  ): ArrayLiteralExpression {
    return new ArrayLiteralExpression(elementExpressions, range);
  }

  static createAssertionExpression(
    assertionKind: AssertionKind,
    expression: Expression,
    toType: TypeNode | null,
    range: Range
  ): AssertionExpression {
    return new AssertionExpression(assertionKind, expression, toType, range);
  }

  static createBinaryExpression(
    operator: Token,
    left: Expression,
    right: Expression,
    range: Range
  ): BinaryExpression {
    return new BinaryExpression(operator, left, right, range);
  }

  static createCallExpression(
    expression: Expression,
    typeArguments: TypeNode[] | null,
    args: Expression[],
    range: Range
  ): CallExpression {
    return new CallExpression(expression, typeArguments, args, range);
  }

  static createClassExpression(
    declaration: ClassDeclaration
  ): ClassExpression {
    return new ClassExpression(declaration);
  }

  static createCommaExpression(
    expressions: Expression[],
    range: Range
  ): CommaExpression {
    return new CommaExpression(expressions, range);
  }

  static createConstructorExpression(
    range: Range
  ): ConstructorExpression {
    return new ConstructorExpression(range);
  }

  static createElementAccessExpression(
    expression: Expression,
    elementExpression: Expression,
    range: Range
  ): ElementAccessExpression {
    return new ElementAccessExpression(expression, elementExpression, range);
  }

  static createFalseExpression(
    range: Range
  ): FalseExpression {
    return new FalseExpression(range);
  }

  static createFloatLiteralExpression(
    value: f64,
    range: Range
  ): FloatLiteralExpression {
    return new FloatLiteralExpression(value, range);
  }

  static createFunctionExpression(
    declaration: FunctionDeclaration
  ): FunctionExpression {
    return new FunctionExpression(declaration);
  }

  static createInstanceOfExpression(
    expression: Expression,
    isType: TypeNode,
    range: Range
  ): InstanceOfExpression {
    return new InstanceOfExpression(expression, isType, range);
  }

  static createIntegerLiteralExpression(
    value: i64,
    range: Range
  ): IntegerLiteralExpression {
    return new IntegerLiteralExpression(value, range);
  }

  static createNewExpression(
    typeName: TypeName,
    typeArguments: TypeNode[] | null,
    args: Expression[],
    range: Range
  ): NewExpression {
    return new NewExpression(typeName, typeArguments, args, range);
  }

  static createNullExpression(
    range: Range
  ): NullExpression {
    return new NullExpression(range);
  }

  static createObjectLiteralExpression(
    names: IdentifierExpression[],
    values: Expression[],
    range: Range
  ): ObjectLiteralExpression {
    return new ObjectLiteralExpression(names, values, range);
  }

  static createOmittedExpression(
    range: Range
  ): OmittedExpression {
    return new OmittedExpression(range);
  }

  static createParenthesizedExpression(
    expression: Expression,
    range: Range
  ): ParenthesizedExpression {
    return new ParenthesizedExpression(expression, range);
  }

  static createPropertyAccessExpression(
    expression: Expression,
    property: IdentifierExpression,
    range: Range
  ): PropertyAccessExpression {
    return new PropertyAccessExpression(expression, property, range);
  }

  static createRegexpLiteralExpression(
    pattern: string,
    patternFlags: string,
    range: Range
  ): RegexpLiteralExpression {
    return new RegexpLiteralExpression(pattern, patternFlags, range);
  }

  static createTernaryExpression(
    condition: Expression,
    ifThen: Expression,
    ifElse: Expression,
    range: Range
  ): TernaryExpression {
    return new TernaryExpression(condition, ifThen, ifElse, range);
  }

  static createStringLiteralExpression(
    value: string,
    range: Range
  ): StringLiteralExpression {
    return new StringLiteralExpression(value, range);
  }

  static createSuperExpression(
    range: Range
  ): SuperExpression {
    return new SuperExpression(range);
  }

  static createThisExpression(
    range: Range
  ): ThisExpression {
    return new ThisExpression(range);
  }

  static createTrueExpression(
    range: Range
  ): TrueExpression {
    return new TrueExpression(range);
  }

  static createUnaryPostfixExpression(
    operator: Token,
    operand: Expression,
    range: Range
  ): UnaryPostfixExpression {
    return new UnaryPostfixExpression(operator, operand, range);
  }

  static createUnaryPrefixExpression(
    operator: Token,
    operand: Expression,
    range: Range
  ): UnaryPrefixExpression {
    return new UnaryPrefixExpression(operator, operand, range);
  }

  // statements

  static createBlockStatement(
    statements: Statement[],
    range: Range
  ): BlockStatement {
    return new BlockStatement(statements, range);
  }

  static createBreakStatement(
    label: IdentifierExpression | null,
    range: Range
  ): BreakStatement {
    return new BreakStatement(label, range);
  }

  static createClassDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    typeParameters: TypeParameterNode[] | null,
    extendsType: NamedTypeNode | null,
    implementsTypes: NamedTypeNode[] | null,
    members: DeclarationStatement[],
    range: Range
  ): ClassDeclaration {
    return new ClassDeclaration(name, decorators, flags, typeParameters, extendsType, implementsTypes, members, range);
  }

  static createContinueStatement(
    label: IdentifierExpression | null,
    range: Range
  ): ContinueStatement {
    return new ContinueStatement(label, range);
  }

  static createDoStatement(
    statement: Statement,
    condition: Expression,
    range: Range
  ): DoStatement {
    return new DoStatement(statement, condition, range);
  }

  static createEmptyStatement(
    range: Range
  ): EmptyStatement {
    return new EmptyStatement(range);
  }

  static createEnumDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    values: EnumValueDeclaration[],
    range: Range
  ): EnumDeclaration {
    return new EnumDeclaration(name, decorators, flags, values, range);
  }

  static createEnumValueDeclaration(
    name: IdentifierExpression,
    flags: CommonFlags,
    initializer: Expression | null,
    range: Range
  ): EnumValueDeclaration {
    return new EnumValueDeclaration(name, flags, initializer, range);
  }

  static createExportStatement(
    members: ExportMember[] | null,
    path: StringLiteralExpression | null,
    isDeclare: bool,
    range: Range
  ): ExportStatement {
    return new ExportStatement(members, path, isDeclare, range);
  }

  static createExportDefaultStatement(
    declaration: DeclarationStatement,
    range: Range
  ): ExportDefaultStatement {
    return new ExportDefaultStatement(declaration, range);
  }

  static createExportImportStatement(
    name: IdentifierExpression,
    externalName: IdentifierExpression,
    range: Range
  ): ExportImportStatement {
    return new ExportImportStatement(name, externalName, range);
  }

  static createExportMember(
    localName: IdentifierExpression,
    exportedName: IdentifierExpression | null,
    range: Range
  ): ExportMember {
    if (!exportedName) exportedName = localName;
    return new ExportMember(localName, exportedName, range);
  }

  static createExpressionStatement(
    expression: Expression
  ): ExpressionStatement {
    return new ExpressionStatement(expression);
  }

  static createIfStatement(
    condition: Expression,
    ifTrue: Statement,
    ifFalse: Statement | null,
    range: Range
  ): IfStatement {
    return new IfStatement(condition, ifTrue, ifFalse, range);
  }

  static createImportStatement(
    declarations: ImportDeclaration[] | null,
    path: StringLiteralExpression,
    range: Range
  ): ImportStatement {
    return new ImportStatement(declarations, null, path, range);
  }

  static createWildcardImportStatement(
    namespaceName: IdentifierExpression,
    path: StringLiteralExpression,
    range: Range
  ): ImportStatement {
    return new ImportStatement(null, namespaceName, path, range);
  }

  static createImportDeclaration(
    foreignName: IdentifierExpression,
    name: IdentifierExpression | null,
    range: Range
  ): ImportDeclaration {
    if (!name) name = foreignName;
    return new ImportDeclaration(name, foreignName, range);
  }

  static createInterfaceDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    typeParameters: TypeParameterNode[] | null,
    extendsType: NamedTypeNode | null,
    implementsTypes: NamedTypeNode[] | null,
    members: DeclarationStatement[],
    range: Range
  ): InterfaceDeclaration {
    return new InterfaceDeclaration(name, decorators, flags, typeParameters, extendsType, implementsTypes, members, range);
  }

  static createFieldDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    type: TypeNode | null,
    initializer: Expression | null,
    range: Range
  ): FieldDeclaration {
    return new FieldDeclaration(name, decorators, flags, type, initializer, -1, range);
  }

  static createForStatement(
    initializer: Statement | null,
    condition: Expression | null,
    incrementor: Expression | null,
    statement: Statement,
    range: Range
  ): ForStatement {
    return new ForStatement(initializer, condition, incrementor, statement, range);
  }

  static createForOfStatement(
    variable: Statement,
    iterable: Expression,
    statement: Statement,
    range: Range
  ): ForOfStatement {
    return new ForOfStatement(variable, iterable, statement, range);
  }

  static createFunctionDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    typeParameters: TypeParameterNode[] | null,
    signature: FunctionTypeNode,
    body: Statement | null,
    arrowKind: ArrowKind,
    range: Range
  ): FunctionDeclaration {
    return new FunctionDeclaration(name, decorators, flags, typeParameters, signature, body, arrowKind, range);
  }

  static createIndexSignature(
    keyType: NamedTypeNode,
    valueType: TypeNode,
    flags: CommonFlags,
    range: Range
  ): IndexSignatureNode {
    return new IndexSignatureNode(keyType, valueType, flags, range);
  }

  static createMethodDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    typeParameters: TypeParameterNode[] | null,
    signature: FunctionTypeNode,
    body: Statement | null,
    range: Range
  ): MethodDeclaration {
    return new MethodDeclaration(name, decorators, flags, typeParameters, signature, body, range);
  }

  static createNamespaceDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    members: Statement[],
    range: Range
  ): NamespaceDeclaration {
    return new NamespaceDeclaration(name, decorators, flags, members, range);
  }

  static createReturnStatement(
    value: Expression | null,
    range: Range
  ): ReturnStatement {
    return new ReturnStatement(value, range);
  }

  static createSwitchStatement(
    condition: Expression,
    cases: SwitchCase[],
    range: Range
  ): SwitchStatement {
    return new SwitchStatement(condition, cases, range);
  }

  static createSwitchCase(
    label: Expression | null,
    statements: Statement[],
    range: Range
  ): SwitchCase {
    return new SwitchCase(label, statements, range);
  }

  static createThrowStatement(
    value: Expression,
    range: Range
  ): ThrowStatement {
    return new ThrowStatement(value, range);
  }

  static createTryStatement(
    statements: Statement[],
    catchVariable: IdentifierExpression | null,
    catchStatements: Statement[] | null,
    finallyStatements: Statement[] | null,
    range: Range
  ): TryStatement {
    return new TryStatement(statements, catchVariable, catchStatements, finallyStatements, range);
  }

  static createTypeDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    typeParameters: TypeParameterNode[] | null,
    type: TypeNode,
    range: Range
  ): TypeDeclaration {
    return new TypeDeclaration(name, decorators, flags, typeParameters, type, range);
  }

  static createVariableStatement(
    decorators: DecoratorNode[] | null,
    declarations: VariableDeclaration[],
    range: Range
  ): VariableStatement {
    return new VariableStatement(decorators, declarations, range);
  }

  static createVariableDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    type: TypeNode | null,
    initializer: Expression | null,
    range: Range
  ): VariableDeclaration {
    return new VariableDeclaration(name, decorators, flags, type, initializer, range);
  }

  static createVoidStatement(
    expression: Expression,
    range: Range
  ): VoidStatement {
    return new VoidStatement(expression, range);
  }

  static createWhileStatement(
    condition: Expression,
    statement: Statement,
    range: Range
  ): WhileStatement {
    return new WhileStatement(condition, statement, range);
  }

  /** Tests if this node is a literal of the specified kind. */
  isLiteralKind(literalKind: LiteralKind): bool {
    return this.kind == NodeKind.LITERAL
        && (<LiteralExpression>changetype<Node>(this)).literalKind == literalKind; // TS
  }

  /** Tests if this node is a literal of a numeric kind (float or integer). */
  get isNumericLiteral(): bool {
    if (this.kind == NodeKind.LITERAL) {
      switch ((<LiteralExpression>changetype<Node>(this)).literalKind) { // TS
        case LiteralKind.FLOAT:
        case LiteralKind.INTEGER: return true;
      }
    }
    return false;
  }

  /** Tests whether this node is guaranteed to compile to a constant value. */
  get compilesToConst(): bool {
    switch (this.kind) {
      case NodeKind.LITERAL: {
        switch ((<LiteralExpression>changetype<Node>(this)).literalKind) { // TS
          case LiteralKind.FLOAT:
          case LiteralKind.INTEGER:
          case LiteralKind.STRING: return true;
        }
        break;
      }
      case NodeKind.NULL:
      case NodeKind.TRUE:
      case NodeKind.FALSE: return true;
    }
    return false;
  }

  private isAccessOn(kind: NodeKind): bool {
    let node = changetype<Node>(this);
    if (node.kind == NodeKind.CALL) {
      node = (<CallExpression>node).expression;
    }
    if (node.kind == NodeKind.PROPERTYACCESS) {
      let target = (<PropertyAccessExpression>node).expression;
      if (target.kind == kind) return true;
    }
    return false;
  }

  /** Checks if this node accesses a method or property on `this`. */
  get isAccessOnThis(): bool {
    return this.isAccessOn(NodeKind.THIS);
  }

  /** Checks if this node accesses a method or property on `super`. */
  get isAccessOnSuper(): bool {
    return this.isAccessOn(NodeKind.SUPER);
  }
}

// types

export abstract class TypeNode extends Node {
  constructor(
    /** Kind of the type node. */
    kind: NodeKind,
    /** Whether nullable or not. */
    public isNullable: bool,
    /** Source range. */
    range: Range
  ) {
    super(kind, range);
  }

  /** Tests if this type has a generic component matching one of the given type parameters. */
  hasGenericComponent(typeParameterNodes: TypeParameterNode[]): bool {
    if (this.kind == NodeKind.NAMEDTYPE) {
      let namedTypeNode = <NamedTypeNode>changetype<TypeNode>(this); // TS
      if (!namedTypeNode.name.next) {
        let typeArgumentNodes = namedTypeNode.typeArguments;
        if (typeArgumentNodes !== null && typeArgumentNodes.length > 0) {
          for (let i = 0, k = typeArgumentNodes.length; i < k; ++i) {
            if (typeArgumentNodes[i].hasGenericComponent(typeParameterNodes)) return true;
          }
        } else {
          let name = namedTypeNode.name.identifier.text;
          for (let i = 0, k = typeParameterNodes.length; i < k; ++i) {
            if (typeParameterNodes[i].name.text == name) return true;
          }
        }
      }
    } else if (this.kind == NodeKind.FUNCTIONTYPE) {
      let functionTypeNode = <FunctionTypeNode>changetype<TypeNode>(this); // TS
      let parameterNodes = functionTypeNode.parameters;
      for (let i = 0, k = parameterNodes.length; i < k; ++i) {
        if (parameterNodes[i].type.hasGenericComponent(typeParameterNodes)) return true;
      }
      if (functionTypeNode.returnType.hasGenericComponent(typeParameterNodes)) return true;
      let explicitThisType = functionTypeNode.explicitThisType;
      if (explicitThisType !== null && explicitThisType.hasGenericComponent(typeParameterNodes)) return true;
    } else {
      assert(false);
    }
    return false;
  }
}

/** Represents a type name. */
export class TypeName extends Node {
  constructor(
    /** Identifier of this part. */
    public identifier: IdentifierExpression,
    /** Next part of the type name or `null` if this is the last part. */
    public next: TypeName | null,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.TYPENAME, range);
  }
}

/** Represents a named type. */
export class NamedTypeNode extends TypeNode {
  constructor(
    /** Type name. */
    public name: TypeName,
    /** Type argument references. */
    public typeArguments: TypeNode[] | null,
    /** Whether nullable or not. */
    isNullable: bool,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.NAMEDTYPE, isNullable, range);
  }

  /** Checks if this type node has type arguments. */
  get hasTypeArguments(): bool {
    var typeArguments = this.typeArguments;
    return typeArguments !== null && typeArguments.length > 0;
  }
}

/** Represents a function type. */
export class FunctionTypeNode extends TypeNode {
  constructor(
    /** Function parameters. */
    public parameters: ParameterNode[],
    /** Return type. */
    public returnType: TypeNode,
    /** Explicitly provided this type, if any. */
    public explicitThisType: NamedTypeNode | null, // can't be a function
    /** Whether nullable or not. */
    isNullable: bool,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.FUNCTIONTYPE, isNullable, range);
  }
}

/** Represents a type parameter. */
export class TypeParameterNode extends Node {
  constructor(
    /** Identifier reference. */
    public name: IdentifierExpression,
    /** Extended type reference, if any. */
    public extendsType: NamedTypeNode | null, // can't be a function
    /** Default type if omitted, if any. */
    public defaultType: NamedTypeNode | null, // can't be a function
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.TYPEPARAMETER, range);
  }
}

/** Represents the kind of a parameter. */
export enum ParameterKind {
  /** No specific flags. */
  DEFAULT,
  /** Is an optional parameter. */
  OPTIONAL,
  /** Is a rest parameter. */
  REST
}

/** Represents a function parameter. */
export class ParameterNode extends Node {
  constructor(
    /** Parameter kind. */
    public parameterKind: ParameterKind,
    /** Parameter name. */
    public name: IdentifierExpression,
    /** Parameter type. */
    public type: TypeNode,
    /** Initializer expression, if any. */
    public initializer: Expression | null,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.PARAMETER, range);
  }

  /** Implicit field declaration, if applicable. */
  implicitFieldDeclaration: FieldDeclaration | null = null;
  /** Common flags indicating specific traits. */
  flags: CommonFlags = CommonFlags.NONE;

  /** Tests if this node has the specified flag or flags. */
  is(flag: CommonFlags): bool { return (this.flags & flag) == flag; }
  /** Tests if this node has one of the specified flags. */
  isAny(flag: CommonFlags): bool { return (this.flags & flag) != 0; }
  /** Sets a specific flag or flags. */
  set(flag: CommonFlags): void { this.flags |= flag; }
}

// special

/** Built-in decorator kinds. */
export enum DecoratorKind {
  CUSTOM,
  GLOBAL,
  OPERATOR,
  OPERATOR_BINARY,
  OPERATOR_PREFIX,
  OPERATOR_POSTFIX,
  UNMANAGED,
  FINAL,
  INLINE,
  EXTERNAL,
  BUILTIN,
  LAZY,
  UNSAFE
}

export namespace DecoratorKind {

  /** Returns the kind of the specified decorator name node. Defaults to {@link DecoratorKind.CUSTOM}. */
  export function fromNode(nameNode: Expression): DecoratorKind {
    if (nameNode.kind == NodeKind.IDENTIFIER) {
      let nameStr = (<IdentifierExpression>nameNode).text;
      assert(nameStr.length);
      switch (nameStr.charCodeAt(0)) {
        case CharCode.b: {
          if (nameStr == "builtin") return DecoratorKind.BUILTIN;
          break;
        }
        case CharCode.e: {
          if (nameStr == "external") return DecoratorKind.EXTERNAL;
          break;
        }
        case CharCode.f: {
          if (nameStr == "final") return DecoratorKind.FINAL;
          break;
        }
        case CharCode.g: {
          if (nameStr == "global") return DecoratorKind.GLOBAL;
          break;
        }
        case CharCode.i: {
          if (nameStr == "inline") return DecoratorKind.INLINE;
          break;
        }
        case CharCode.l: {
          if (nameStr == "lazy") return DecoratorKind.LAZY;
          break;
        }
        case CharCode.o: {
          if (nameStr == "operator") return DecoratorKind.OPERATOR;
          break;
        }
        case CharCode.u: {
          if (nameStr == "unmanaged") return DecoratorKind.UNMANAGED;
          if (nameStr == "unsafe") return DecoratorKind.UNSAFE;
          break;
        }
      }
    } else if (nameNode.kind == NodeKind.PROPERTYACCESS) {
      let propertyAccessNode = <PropertyAccessExpression>nameNode;
      let expression = propertyAccessNode.expression;
      if (expression.kind == NodeKind.IDENTIFIER) {
        let nameStr = (<IdentifierExpression>expression).text;
        assert(nameStr.length);
        let propStr = propertyAccessNode.property.text;
        assert(propStr.length);
        if (nameStr == "operator") {
          switch (propStr.charCodeAt(0)) {
            case CharCode.b: {
              if (propStr == "binary") return DecoratorKind.OPERATOR_BINARY;
              break;
            }
            case CharCode.p: {
              if (propStr == "prefix") return DecoratorKind.OPERATOR_PREFIX;
              if (propStr == "postfix") return DecoratorKind.OPERATOR_POSTFIX;
              break;
            }
          }
        }
      }
    }
    return DecoratorKind.CUSTOM;
  }
}

/** Represents a decorator. */
export class DecoratorNode extends Node {
  constructor(
    /** Built-in decorator kind, or custom. */
    public decoratorKind: DecoratorKind,
    /** Name expression. */
    public name: Expression,
    /** Argument expressions. */
    public args: Expression[] | null,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.DECORATOR, range);
  }
}

/** Comment kinds. */
export enum CommentKind {
  /** Line comment. */
  LINE,
  /** Triple-slash line comment. */
  TRIPLE,
  /** Block comment. */
  BLOCK
}

/** Represents a comment. */
export class CommentNode extends Node {
  constructor(
    /** Comment kind. */
    public commentKind: CommentKind,
    /** Comment text. */
    public text: string,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.COMMENT, range);
  }
}

// expressions

/** Base class of all expression nodes. */
export abstract class Expression extends Node { }

/** Represents an identifier expression. */
export class IdentifierExpression extends Expression {
  constructor(
    /** Textual name. */
    public text: string,
    /** Whether quoted or not. */
    public isQuoted: bool,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.IDENTIFIER, range);
  }
}

/** Indicates the kind of a literal. */
export enum LiteralKind {
  FLOAT,
  INTEGER,
  STRING,
  REGEXP,
  ARRAY,
  OBJECT
}

/** Base class of all literal expressions. */
export abstract class LiteralExpression extends Expression {
  constructor(
    /** Specific literal kind. */
    public literalKind: LiteralKind,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.LITERAL, range);
  }
}

/** Represents an `[]` literal expression. */
export class ArrayLiteralExpression extends LiteralExpression {
  constructor(
    /** Nested element expressions. */
    public elementExpressions: Expression[],
    /** Source range. */
    range: Range
  ) {
    super(LiteralKind.ARRAY, range);
  }
}

/** Indicates the kind of an assertion. */
export enum AssertionKind {
  /** A prefix assertion, i.e. `<T>expr`. */
  PREFIX,
  /** An as assertion, i.e. `expr as T`. */
  AS,
  /** A non-null assertion, i.e. `!expr`. */
  NONNULL,
  /** A const assertion, i.e. `expr as const`. */
  CONST
}

/** Represents an assertion expression. */
export class AssertionExpression extends Expression {
  constructor(
    /** Specific kind of this assertion. */
    public assertionKind: AssertionKind,
    /** Expression being asserted. */
    public expression: Expression,
    /** Target type, if applicable. */
    public toType: TypeNode | null,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.ASSERTION, range);
  }
}

/** Represents a binary expression. */
export class BinaryExpression extends Expression {
  constructor(
    /** Operator token. */
    public operator: Token,
    /** Left-hand side expression */
    public left: Expression,
    /** Right-hand side expression. */
    public right: Expression,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.BINARY, range);
  }
}

/** Represents a call expression. */
export class CallExpression extends Expression {
  constructor(
    /** Called expression. Usually an identifier or property access expression. */
    public expression: Expression,
    /** Provided type arguments. */
    public typeArguments: TypeNode[] | null,
    /** Provided arguments. */
    public args: Expression[],
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.CALL, range);
  }

  /** Gets the type arguments range for reporting. */
  get typeArgumentsRange(): Range {
    var typeArguments = this.typeArguments;
    var numTypeArguments: i32;
    if (typeArguments) {
      if (numTypeArguments = typeArguments.length) {
        return Range.join(typeArguments[0].range, typeArguments[numTypeArguments - 1].range);
      }
    }
    return this.expression.range;
  }

  /** Gets the arguments range for reporting. */
  get argumentsRange(): Range {
    var args = this.args;
    var numArguments = args.length;
    if (numArguments) {
      return Range.join(args[0].range, args[numArguments - 1].range);
    }
    return this.expression.range;
  }
}

/** Represents a class expression using the 'class' keyword. */
export class ClassExpression extends Expression {
  constructor(
    /** Inline class declaration. */
    public declaration: ClassDeclaration
  ) {
    super(NodeKind.CLASS, declaration.range);
  }
}

/** Represents a comma expression composed of multiple expressions. */
export class CommaExpression extends Expression {
  constructor(
    /** Sequential expressions. */
    public expressions: Expression[],
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.COMMA, range);
  }
}

/** Represents a `constructor` expression. */
export class ConstructorExpression extends IdentifierExpression {
  constructor(
    /** Source range. */
    range: Range
  ) {
    super("constructor", false, range);
    this.kind = NodeKind.CONSTRUCTOR;
  }
}

/** Represents an element access expression, e.g., array access. */
export class ElementAccessExpression extends Expression {
  constructor(
    /** Expression being accessed. */
    public expression: Expression,
    /** Element of the expression being accessed. */
    public elementExpression: Expression,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.ELEMENTACCESS, range);
  }
}

/** Represents a float literal expression. */
export class FloatLiteralExpression extends LiteralExpression {
  constructor(
    /** Float value. */
    public value: f64,
    /** Source range. */
    range: Range
  ) {
    super(LiteralKind.FLOAT, range);
  }
}

/** Represents a function expression using the 'function' keyword. */
export class FunctionExpression extends Expression {
  constructor(
    /** Inline function declaration. */
    public declaration: FunctionDeclaration
  ) {
    super(NodeKind.FUNCTION, declaration.range);
  }
}

/** Represents an `instanceof` expression. */
export class InstanceOfExpression extends Expression {
  constructor(
    /** Expression being asserted. */
    public expression: Expression,
    /** Type to test for. */
    public isType: TypeNode,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.INSTANCEOF, range);
  }
}

/** Represents an integer literal expression. */
export class IntegerLiteralExpression extends LiteralExpression {
  constructor(
    /** Integer value. */
    public value: i64,
    /** Source range. */
    range: Range
  ) {
    super(LiteralKind.INTEGER, range);
  }
}

/** Represents a `new` expression. Like a call but with its own kind. */
export class NewExpression extends Expression {
  constructor(
    /** Type being constructed. */
    public typeName: TypeName,
    /** Provided type arguments. */
    public typeArguments: TypeNode[] | null,
    /** Provided arguments. */
    public args: Expression[],
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.NEW, range);
  }

  /** Gets the type arguments range for reporting. */
  get typeArgumentsRange(): Range {
    var typeArguments = this.typeArguments;
    var numTypeArguments: i32;
    if (typeArguments !== null && (numTypeArguments = typeArguments.length) > 0) {
      return Range.join(typeArguments[0].range, typeArguments[numTypeArguments - 1].range);
    }
    return this.typeName.range;
  }

  /** Gets the arguments range for reporting. */
  get argumentsRange(): Range {
    var args = this.args;
    var numArguments = args.length;
    if (numArguments) {
      return Range.join(args[0].range, args[numArguments - 1].range);
    }
    return this.typeName.range;
  }
}

/** Represents a `null` expression. */
export class NullExpression extends IdentifierExpression {
  constructor(
    /** Source range. */
    range: Range
  ) {
    super("null", false, range);
    this.kind = NodeKind.NULL;
  }
}

/** Represents an object literal expression. */
export class ObjectLiteralExpression extends LiteralExpression {
  constructor(
    /** Field names. */
    public names: IdentifierExpression[],
    /** Field values. */
    public values: Expression[],
    /** Source range. */
    range: Range
  ) {
    super(LiteralKind.OBJECT, range);
  }
}

/** Represents an omitted expression, e.g. within an array literal. */
export class OmittedExpression extends Expression {
  constructor(
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.OMITTED, range);
  }
}

/** Represents a parenthesized expression. */
export class ParenthesizedExpression extends Expression {
  constructor(
    /** Expression in parenthesis. */
    public expression: Expression,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.PARENTHESIZED, range);
  }
}

/** Represents a property access expression. */
export class PropertyAccessExpression extends Expression {
  constructor(
    /** Expression being accessed. */
    public expression: Expression,
    /** Property of the expression being accessed. */
    public property: IdentifierExpression,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.PROPERTYACCESS, range);
  }
}

/** Represents a regular expression literal expression. */
export class RegexpLiteralExpression extends LiteralExpression {
  constructor(
    /** Regular expression pattern. */
    public pattern: string,
    /** Regular expression flags. */
    public patternFlags: string,
    /** Source range. */
    range: Range
  ) {
    super(LiteralKind.REGEXP, range);
  }
}

/** Represents a ternary expression, i.e., short if notation. */
export class TernaryExpression extends Expression {
  constructor(
    /** Condition expression. */
    public condition: Expression,
    /** Expression executed when condition is `true`. */
    public ifThen: Expression,
    /** Expression executed when condition is `false`. */
    public ifElse: Expression,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.TERNARY, range);
  }
}

/** Represents a string literal expression. */
export class StringLiteralExpression extends LiteralExpression {
  constructor(
    /** String value without quotes. */
    public value: string,
    /** Source range. */
    range: Range
  ) {
    super(LiteralKind.STRING, range);
  }
}

/** Represents a `super` expression. */
export class SuperExpression extends IdentifierExpression {
  constructor(
    /** Source range. */
    range: Range
  ) {
    super("super", false, range);
    this.kind = NodeKind.SUPER;
  }
}

/** Represents a `this` expression. */
export class ThisExpression extends IdentifierExpression {
  constructor(
    /** Source range. */
    range: Range
  ) {
    super("this", false, range);
    this.kind = NodeKind.THIS;
  }
}

/** Represents a `true` expression. */
export class TrueExpression extends IdentifierExpression {
  constructor(
    /** Source range. */
    range: Range
  ) {
    super("true", false, range);
    this.kind = NodeKind.TRUE;
  }
}

/** Represents a `false` expression. */
export class FalseExpression extends IdentifierExpression {
  constructor(
    /** Source range. */
    range: Range
  ) {
    super("false", false, range);
    this.kind = NodeKind.FALSE;
  }
}

/** Base class of all unary expressions. */
export abstract class UnaryExpression extends Expression {
  constructor(
    /** Unary expression kind. */
    kind: NodeKind,
    /** Operator token. */
    public operator: Token,
    /** Operand expression. */
    public operand: Expression,
    /** Source range. */
    range: Range
  ) {
    super(kind, range);
  }
}

/** Represents a unary postfix expression, e.g. a postfix increment. */
export class UnaryPostfixExpression extends UnaryExpression {
  constructor(
    /** Operator token. */
    operator: Token,
    /** Operand expression. */
    operand: Expression,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.UNARYPOSTFIX, operator, operand, range);
  }
}

/** Represents a unary prefix expression, e.g. a negation. */
export class UnaryPrefixExpression extends UnaryExpression {
  constructor(
    /** Operator token. */
    operator: Token,
    /** Operand expression. */
    operand: Expression,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.UNARYPREFIX, operator, operand, range);
  }
}

// statements

/** Base class of all statement nodes. */
export abstract class Statement extends Node { }

/** Indicates the specific kind of a source. */
export enum SourceKind {
  /** User-provided file. */
  USER = 0,
  /** User-provided entry file. */
  USER_ENTRY = 1,
  /** Library-provided file. */
  LIBRARY = 2,
  /** Library-provided entry file. */
  LIBRARY_ENTRY = 3
}

/** A top-level source node. */
export class Source extends Node {
  constructor(
    /** Source kind. */
    public sourceKind: SourceKind,
    /** Normalized path with file extension. */
    public normalizedPath: string,
    /** Full source text. */
    public text: string
  ) {
    super(NodeKind.SOURCE, new Range(0, text.length));
    var internalPath = mangleInternalPath(normalizedPath);
    this.internalPath = internalPath;
    var pos = internalPath.lastIndexOf(PATH_DELIMITER);
    this.simplePath = pos >= 0 ? internalPath.substring(pos + 1) : internalPath;
    this.range.source = this;
  }

  /** Path used internally. */
  internalPath: string;
  /** Simple path (last part without extension). */
  simplePath: string;
  /** Contained statements. */
  statements: Statement[] = new Array();
  /** Source map index. */
  debugInfoIndex: i32 = -1;
  /** Re-exported sources. */
  exportPaths: string[] | null = null;

  /** Checks if this source represents native code. */
  get isNative(): bool {
    return this.internalPath == LIBRARY_SUBST;
  }

  /** Checks if this source is part of the (standard) library. */
  get isLibrary(): bool {
    var kind = this.sourceKind;
    return kind == SourceKind.LIBRARY || kind == SourceKind.LIBRARY_ENTRY;
  }

  /** Cached line starts. */
  private lineCache: i32[] | null = null;

  /** Remembered column number. */
  private lineColumn: i32 = 1;

  /** Determines the line number at the specified position. Starts at `1`. */
  lineAt(pos: i32): i32 {
    assert(pos >= 0 && pos < 0x7fffffff);
    var lineCache = this.lineCache;
    if (!lineCache) {
      this.lineCache = lineCache = [0];
      let text = this.text;
      let off = 0;
      let end = text.length;
      while (off < end) {
        if (text.charCodeAt(off++) == CharCode.LINEFEED) lineCache.push(off);
      }
      lineCache.push(0x7fffffff);
    }
    var l = 0;
    var r = lineCache.length - 1;
    while (l < r) {
      let m = l + ((r - l) >> 1);
      let s = unchecked(lineCache[m]);
      if (pos < s) r = m;
      else if (pos < unchecked(lineCache[m + 1])) {
        this.lineColumn = pos - s + 1;
        return m + 1;
      }
      else l = m + 1;
    }
    return assert(0);
  }

  /** Gets the column number at the last position queried with `lineAt`. Starts at `1`. */
  columnAt(): i32 {
    return this.lineColumn;
  }
}

/** Base class of all declaration statements. */
export abstract class DeclarationStatement extends Statement {
  constructor(
    /** Declaration node kind. */
    kind: NodeKind,
    /** Simple name being declared. */
    public name: IdentifierExpression,
    /** Array of decorators, if any. */
    public decorators: DecoratorNode[] | null,
    /** Common flags indicating specific traits. */
    public flags: CommonFlags,
    /** Source range. */
    range: Range
  ) {
    super(kind, range);
  }

  /** Tests if this node has the specified flag or flags. */
  is(flag: CommonFlags): bool { return (this.flags & flag) == flag; }
  /** Tests if this node has one of the specified flags. */
  isAny(flag: CommonFlags): bool { return (this.flags & flag) != 0; }
  /** Sets a specific flag or flags. */
  set(flag: CommonFlags): void { this.flags |= flag; }
}

/** Represents an index signature. */
export class IndexSignatureNode extends Node {
  constructor(
    /** Key type. */
    public keyType: NamedTypeNode,
    /** Value type. */
    public valueType: TypeNode,
    /** Common flags indicating specific traits. */
    public flags: CommonFlags,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.INDEXSIGNATURE, range);
  }
}

/** Base class of all variable-like declaration statements. */
export abstract class VariableLikeDeclarationStatement extends DeclarationStatement {
  constructor(
    /** Variable-like declaration node kind. */
    kind: NodeKind,
    /** Simple name being declared. */
    name: IdentifierExpression,
    /** Array of decorators, if any. */
    decorators: DecoratorNode[] | null,
    /** Common flags indicating specific traits. */
    flags: CommonFlags,
    /** Annotated type node, if any. */
    public type: TypeNode | null,
    /** Initializer expression, if any. */
    public initializer: Expression | null,
    /** Source range. */
    range: Range
  ) {
    super(kind, name, decorators, flags, range);
  }
}

/** Represents a block statement. */
export class BlockStatement extends Statement {
  constructor(
    /** Contained statements. */
    public statements: Statement[],
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.BLOCK, range);
  }
}

/** Represents a `break` statement. */
export class BreakStatement extends Statement {
  constructor(
    /** Target label, if any. */
    public label: IdentifierExpression | null,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.BREAK, range);
  }
}

/** Represents a `class` declaration. */
export class ClassDeclaration extends DeclarationStatement {
  constructor(
    /** Simple name being declared. */
    name: IdentifierExpression,
    /** Array of decorators, if any. */
    decorators: DecoratorNode[] | null,
    /** Common flags indicating specific traits. */
    flags: CommonFlags,
    /** Accepted type parameters. */
    public typeParameters: TypeParameterNode[] | null,
    /** Base class type being extended, if any. */
    public extendsType: NamedTypeNode | null, // can't be a function
    /** Interface types being implemented, if any. */
    public implementsTypes: NamedTypeNode[] | null, // can't be functions
    /** Class member declarations. */
    public members: DeclarationStatement[],
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.CLASSDECLARATION, name, decorators, flags, range);
  }

  /** Index signature, if present. */
  indexSignature: IndexSignatureNode | null = null;

  get isGeneric(): bool {
    var typeParameters = this.typeParameters;
    return typeParameters != null && typeParameters.length > 0;
  }
}

/** Represents a `continue` statement. */
export class ContinueStatement extends Statement {
  constructor(
    /** Target label, if applicable. */
    public label: IdentifierExpression | null,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.CONTINUE, range);
  }
}

/** Represents a `do` statement. */
export class DoStatement extends Statement {
  constructor(
    /** Statement being looped over. */
    public statement: Statement,
    /** Condition when to repeat. */
    public condition: Expression,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.DO, range);
  }
}

/** Represents an empty statement, i.e., a semicolon terminating nothing. */
export class EmptyStatement extends Statement {
  constructor(
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.EMPTY, range);
  }
}

/** Represents an `enum` declaration. */
export class EnumDeclaration extends DeclarationStatement {
  constructor(
    /** Simple name being declared. */
    name: IdentifierExpression,
    /** Array of decorators, if any. */
    decorators: DecoratorNode[] | null,
    /** Common flags indicating specific traits. */
    flags: CommonFlags,
    /** Enum value declarations. */
    public values: EnumValueDeclaration[],
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.ENUMDECLARATION, name, decorators, flags, range);
  }
}

/** Represents a value of an `enum` declaration. */
export class EnumValueDeclaration extends VariableLikeDeclarationStatement {
  constructor(
    /** Simple name being declared. */
    name: IdentifierExpression,
    /** Common flags indicating specific traits. */
    flags: CommonFlags,
    /** Initializer expression, if any. */
    initializer: Expression | null,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.ENUMVALUEDECLARATION, name, null, flags, null, initializer, range);
  }
}

/** Represents an `export import` statement of an interface. */
export class ExportImportStatement extends Statement {
  constructor(
    /** Identifier being imported. */
    public name: IdentifierExpression,
    /** Identifier being exported. */
    public externalName: IdentifierExpression,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.EXPORTIMPORT, range);
  }
}

/** Represents a member of an `export` statement. */
export class ExportMember extends Node {
  constructor(
    /** Local identifier. */
    public localName: IdentifierExpression,
    /** Exported identifier. */
    public exportedName: IdentifierExpression,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.EXPORTMEMBER, range);
  }
}

/** Represents an `export` statement. */
export class ExportStatement extends Statement {
  constructor(
    /** Array of members if a set of named exports, or `null` if a file export. */
    public members: ExportMember[] | null,
    /** Path being exported from, if applicable. */
    public path: StringLiteralExpression | null,
    /** Whether this is a declared export. */
    public isDeclare: bool,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.EXPORT, range);
    if (path) {
      let normalizedPath = normalizePath(path.value);
      if (path.value.startsWith(".")) { // relative
        normalizedPath = resolvePath(normalizedPath, range.source.internalPath);
      } else { // absolute
        if (!normalizedPath.startsWith(LIBRARY_PREFIX)) normalizedPath = LIBRARY_PREFIX + normalizedPath;
      }
      this.internalPath = normalizedPath;
    } else {
      this.internalPath = null;
    }
  }

  /** Internal path being referenced, if `path` is set. */
  internalPath: string | null;
}

/** Represents an `export default` statement. */
export class ExportDefaultStatement extends Statement {
  constructor(
    /** Declaration being exported as default. */
    public declaration: DeclarationStatement,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.EXPORTDEFAULT, range);
  }
}

/** Represents an expression that is used as a statement. */
export class ExpressionStatement extends Statement {
  constructor(
    /** Expression being used as a statement.*/
    public expression: Expression
  ) {
    super(NodeKind.EXPRESSION, expression.range);
  }
}

/** Represents a field declaration within a `class`. */
export class FieldDeclaration extends VariableLikeDeclarationStatement {
  constructor(
    /** Simple name being declared. */
    name: IdentifierExpression,
    /** Array of decorators, if any. */
    decorators: DecoratorNode[] | null,
    /** Common flags indicating specific traits. */
    flags: CommonFlags,
    /** Annotated type node, if any. */
    type: TypeNode | null,
    /** Initializer expression, if any. */
    initializer: Expression | null,
    /** Parameter index if declared as a constructor parameter, otherwise `-1`. */
    public parameterIndex: i32,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.FIELDDECLARATION, name, decorators, flags, type, initializer, range);
  }
}

/** Represents a `for` statement. */
export class ForStatement extends Statement {
  constructor(
    /** Initializer statement, if present. Either a `VariableStatement` or `ExpressionStatement`. */
    public initializer: Statement | null,
    /** Condition expression, if present. */
    public condition: Expression | null,
    /** Incrementor expression, if present. */
    public incrementor: Expression | null,
    /** Statement being looped over. */
    public statement: Statement,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.FOR, range);
  }
}

/** Represents a `for..of` statement. */
export class ForOfStatement extends Statement {
  constructor(
    /** Variable statement. Either a `VariableStatement` or `ExpressionStatement` of `IdentifierExpression`. */
    public variable: Statement,
    /** Iterable expression being iterated. */
    public iterable: Expression,
    /** Statement being looped over. */
    public statement: Statement,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.FOROF, range);
  }
}

/** Indicates the kind of an array function. */
export const enum ArrowKind {
  /** Not an arrow function. */
  NONE,
  /** Parenthesized parameter list. */
  ARROW_PARENTHESIZED,
  /** Single parameter without parenthesis. */
  ARROW_SINGLE
}

/** Represents a `function` declaration. */
export class FunctionDeclaration extends DeclarationStatement {
  constructor(
    /** Simple name being declared. */
    name: IdentifierExpression,
    /** Array of decorators, if any. */
    decorators: DecoratorNode[] | null,
    /** Common flags indicating specific traits. */
    flags: CommonFlags,
    /** Type parameters, if any. */
    public typeParameters: TypeParameterNode[] | null,
    /** Function signature. */
    public signature: FunctionTypeNode,
    /** Body statement. Usually a block. */
    public body: Statement | null,
    /** Arrow function kind, if applicable. */
    public arrowKind: ArrowKind,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.FUNCTIONDECLARATION, name, decorators, flags, range);
  }

  /** Gets if this function is generic. */
  get isGeneric(): bool {
    var typeParameters = this.typeParameters;
    return typeParameters != null && typeParameters.length > 0;
  }

  /** Clones this function declaration. */
  clone(): FunctionDeclaration {
    return new FunctionDeclaration(
      this.name,
      this.decorators,
      this.flags,
      this.typeParameters,
      this.signature,
      this.body,
      this.arrowKind,
      this.range
    );
  }
}

/** Represents an `if` statement. */
export class IfStatement extends Statement {
  constructor(
    /** Condition. */
    public condition: Expression,
    /** Statement executed when condition is `true`. */
    public ifTrue: Statement,
    /** Statement executed when condition is `false`. */
    public ifFalse: Statement | null,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.IF, range);
  }
}

/** Represents an `import` declaration part of an {@link ImportStatement}. */
export class ImportDeclaration extends DeclarationStatement {
  constructor(
    /** Simple name being declared. */
    name: IdentifierExpression,
    /** Identifier being imported. */
    public foreignName: IdentifierExpression,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.IMPORTDECLARATION, name, null, CommonFlags.NONE, range);
  }
}

/** Represents an `import` statement. */
export class ImportStatement extends Statement {
  constructor(
    /** Array of member declarations or `null` if an asterisk import. */
    public declarations: ImportDeclaration[] | null,
    /** Name of the local namespace, if an asterisk import. */
    public namespaceName: IdentifierExpression | null,
    /** Path being imported from. */
    public path: StringLiteralExpression,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.IMPORT, range);
    var normalizedPath = normalizePath(path.value);
    if (path.value.startsWith(".")) { // relative in project
      normalizedPath = resolvePath(normalizedPath, range.source.internalPath);
    } else { // absolute in library
      if (!normalizedPath.startsWith(LIBRARY_PREFIX)) normalizedPath = LIBRARY_PREFIX + normalizedPath;
    }
    this.internalPath = normalizedPath;
  }

  /** Internal path being referenced. */
  internalPath: string;
}

/** Represents an `interfarce` declaration. */
export class InterfaceDeclaration extends ClassDeclaration {
  constructor(
    /** Simple name being declared. */
    name: IdentifierExpression,
    /** Array of decorators, if any. */
    decorators: DecoratorNode[] | null,
    /** Common flags indicating specific traits. */
    flags: CommonFlags,
    /** Accepted type parameters. */
    typeParameters: TypeParameterNode[] | null,
    /** Base class type being extended, if any. */
    extendsType: NamedTypeNode | null, // can't be a function
    /** Interface types being implemented, if any. */
    implementsTypes: NamedTypeNode[] | null, // can't be functions
    /** Class member declarations. */
    members: DeclarationStatement[],
    /** Source range. */
    range: Range
  ) {
    super(name, decorators, flags, typeParameters, extendsType, implementsTypes, members, range);
    this.kind = NodeKind.INTERFACEDECLARATION;
  }
}

/** Represents a method declaration within a `class`. */
export class MethodDeclaration extends FunctionDeclaration {
  constructor(
    /** Simple name being declared. */
    name: IdentifierExpression,
    /** Array of decorators, if any. */
    decorators: DecoratorNode[] | null,
    /** Common flags indicating specific traits. */
    flags: CommonFlags,
    /** Type parameters, if any. */
    typeParameters: TypeParameterNode[] | null,
    /** Function signature. */
    signature: FunctionTypeNode,
    /** Body statement. Usually a block. */
    body: Statement | null,
    /** Source range. */
    range: Range
  ) {
    super(name, decorators, flags, typeParameters, signature, body, ArrowKind.NONE, range);
    this.kind = NodeKind.METHODDECLARATION;
  }
}

/** Represents a `namespace` declaration. */
export class NamespaceDeclaration extends DeclarationStatement {
  constructor(
    /** Simple name being declared. */
    name: IdentifierExpression,
    /** Array of decorators, if any. */
    decorators: DecoratorNode[] | null,
    /** Common flags indicating specific traits. */
    flags: CommonFlags,
    /** Array of namespace members. */
    public members: Statement[],
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.NAMESPACEDECLARATION, name, decorators, flags, range);
  }
}

/** Represents a `return` statement. */
export class ReturnStatement extends Statement {
  constructor(
    /** Value expression being returned, if present. */
    public value: Expression | null,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.RETURN, range);
  }
}

/** Represents a single `case` within a `switch` statement. */
export class SwitchCase extends Node {
  constructor(
    /** Label expression. `null` indicates the default case. */
    public label: Expression | null,
    /** Contained statements. */
    public statements: Statement[],
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.SWITCHCASE, range);
  }
}

/** Represents a `switch` statement. */
export class SwitchStatement extends Statement {
  constructor(
    /** Condition expression. */
    public condition: Expression,
    /** Contained cases. */
    public cases: SwitchCase[],
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.SWITCH, range);
  }
}

/** Represents a `throw` statement. */
export class ThrowStatement extends Statement {
  constructor(
    /** Value expression being thrown. */
    public value: Expression,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.THROW, range);
  }
}

/** Represents a `try` statement. */
export class TryStatement extends Statement {
  constructor(
    /** Contained statements. */
    public statements: Statement[],
    /** Exception variable name, if a `catch` clause is present. */
    public catchVariable: IdentifierExpression | null,
    /** Statements being executed on catch, if a `catch` clause is present. */
    public catchStatements: Statement[] | null,
    /** Statements being executed afterwards, if a `finally` clause is present. */
    public finallyStatements: Statement[] | null,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.TRY, range);
  }
}

/** Represents a `type` declaration. */
export class TypeDeclaration extends DeclarationStatement {
  constructor(
    /** Simple name being declared. */
    name: IdentifierExpression,
    /** Array of decorators, if any. */
    decorators: DecoratorNode[] | null,
    /** Common flags indicating specific traits. */
    flags: CommonFlags,
    /** Type parameters, if any. */
    public typeParameters: TypeParameterNode[] | null,
    /** Type being aliased. */
    public type: TypeNode,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.TYPEDECLARATION, name, decorators, flags, range);
  }
}

/** Represents a variable declaration part of a {@link VariableStatement}. */
export class VariableDeclaration extends VariableLikeDeclarationStatement {
  constructor(
    /** Simple name being declared. */
    name: IdentifierExpression,
    /** Array of decorators, if any. */
    decorators: DecoratorNode[] | null,
    /** Common flags indicating specific traits. */
    flags: CommonFlags,
    /** Annotated type node, if any. */
    type: TypeNode | null,
    /** Initializer expression, if any. */
    initializer: Expression | null,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.VARIABLEDECLARATION, name, decorators, flags, type, initializer, range);
  }
}

/** Represents a variable statement wrapping {@link VariableDeclaration}s. */
export class VariableStatement extends Statement {
  constructor(
    /** Array of decorators. */
    public decorators: DecoratorNode[] | null,
    /** Array of member declarations. */
    public declarations: VariableDeclaration[],
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.VARIABLE, range);
  }
}

/** Represents a void statement dropping an expression's value. */
export class VoidStatement extends Statement {
  constructor(
    /** Expression being dropped. */
    public expression: Expression,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.VOID, range);
  }
}

/** Represents a `while` statement. */
export class WhileStatement extends Statement {
  constructor(
    /** Condition expression. */
    public condition: Expression,
    /** Statement being looped over. */
    public statement: Statement,
    /** Source range. */
    range: Range
  ) {
    super(NodeKind.WHILE, range);
  }
}

/** Finds the first decorator matching the specified kind. */
export function findDecorator(kind: DecoratorKind, decorators: DecoratorNode[] | null): DecoratorNode | null {
  if (decorators) {
    for (let i = 0, k = decorators.length; i < k; ++i) {
      let decorator = decorators[i];
      if (decorator.decoratorKind == kind) return decorator;
    }
  }
  return null;
}

/** Mangles an external to an internal path. */
export function mangleInternalPath(path: string): string {
  var pos = path.lastIndexOf(".");
  var len = path.length;
  if (pos >= 0 && len - pos >= 2) { // at least one char plus dot
    let cur = pos;
    while (++cur < len) {
      if (!isTrivialAlphanum(path.charCodeAt(cur))) {
        assert(false); // not a valid external path
        return path;
      }
    }
    return path.substring(0, pos);
  }
  assert(false); // not an external path
  return path;
}

/** Tests if the specified type node represents an omitted type. */
export function isTypeOmitted(type: TypeNode): bool {
  if (type.kind == NodeKind.NAMEDTYPE) {
    let name = (<NamedTypeNode>type).name;
    return !(name.next !== null || name.identifier.text.length > 0);
  }
  return false;
}
