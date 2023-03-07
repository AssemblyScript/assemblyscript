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
  LIBRARY_SUBST,
} from "./common";

import { Range } from "./diagnostics";

import { Token } from "./tokenizer";

import { normalizePath, resolvePath, CharCode } from "./util";

import { ExpressionRef } from "./module";

import { Type } from "./types";

/** Indicates the kind of a node. */
export const enum NodeKind {
  Source,

  // types
  NamedType,
  FunctionType,
  TypeName,
  TypeParameter,
  Parameter,

  // expressions
  Identifier,
  Assertion,
  Binary,
  Call,
  Class,
  Comma,
  ElementAccess,
  False,
  Function,
  InstanceOf,
  Literal,
  New,
  Null,
  Omitted,
  Parenthesized,
  PropertyAccess,
  Ternary,
  Super,
  This,
  True,
  Constructor,
  UnaryPostfix,
  UnaryPrefix,
  Compiled,

  // statements
  Block,
  Break,
  Continue,
  Do,
  Empty,
  Export,
  ExportDefault,
  ExportImport,
  Expression,
  For,
  ForOf,
  If,
  Import,
  Return,
  Switch,
  Throw,
  Try,
  Variable,
  Void,
  While,
  Module,

  // declaration statements
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

  // special
  Decorator,
  ExportMember,
  SwitchCase,
  IndexSignature,
  Comment,
}

/** Base class of all nodes. */
export abstract class Node {
  constructor(
    /** Kind of this node. */
    public kind: NodeKind,
    /** Source range. */
    public range: Range,
  ) {}

  // types

  static createSimpleTypeName(name: string, range: Range): TypeName {
    return new TypeName(
      Node.createIdentifierExpression(name, range),
      null,
      range,
    );
  }

  static createNamedType(
    name: TypeName,
    typeArguments: TypeNode[] | null,
    isNullable: bool,
    range: Range,
  ): NamedTypeNode {
    return new NamedTypeNode(name, typeArguments, isNullable, range);
  }

  static createFunctionType(
    parameters: ParameterNode[],
    returnType: TypeNode,
    explicitThisType: NamedTypeNode | null,
    isNullable: bool,
    range: Range,
  ): FunctionTypeNode {
    return new FunctionTypeNode(
      parameters,
      returnType,
      explicitThisType,
      isNullable,
      range,
    );
  }

  static createOmittedType(range: Range): NamedTypeNode {
    return new NamedTypeNode(
      Node.createSimpleTypeName("", range),
      null,
      false,
      range,
    );
  }

  static createTypeParameter(
    name: IdentifierExpression,
    extendsType: NamedTypeNode | null,
    defaultType: NamedTypeNode | null,
    range: Range,
  ): TypeParameterNode {
    return new TypeParameterNode(name, extendsType, defaultType, range);
  }

  static createParameter(
    parameterKind: ParameterKind,
    name: IdentifierExpression,
    type: TypeNode,
    initializer: Expression | null,
    range: Range,
  ): ParameterNode {
    return new ParameterNode(parameterKind, name, type, initializer, range);
  }

  // special

  static createDecorator(
    name: Expression,
    args: Expression[] | null,
    range: Range,
  ): DecoratorNode {
    return new DecoratorNode(DecoratorKind.fromNode(name), name, args, range);
  }

  static createComment(
    commentKind: CommentKind,
    text: string,
    range: Range,
  ): CommentNode {
    return new CommentNode(commentKind, text, range);
  }

  // expressions

  static createIdentifierExpression(
    text: string,
    range: Range,
    isQuoted: bool = false,
  ): IdentifierExpression {
    return new IdentifierExpression(text, isQuoted, range);
  }

  static createEmptyIdentifierExpression(range: Range): IdentifierExpression {
    return new IdentifierExpression("", false, range);
  }

  static createArrayLiteralExpression(
    elementExpressions: Expression[],
    range: Range,
  ): ArrayLiteralExpression {
    return new ArrayLiteralExpression(elementExpressions, range);
  }

  static createAssertionExpression(
    assertionKind: AssertionKind,
    expression: Expression,
    toType: TypeNode | null,
    range: Range,
  ): AssertionExpression {
    return new AssertionExpression(assertionKind, expression, toType, range);
  }

  static createBinaryExpression(
    operator: Token,
    left: Expression,
    right: Expression,
    range: Range,
  ): BinaryExpression {
    return new BinaryExpression(operator, left, right, range);
  }

  static createCallExpression(
    expression: Expression,
    typeArguments: TypeNode[] | null,
    args: Expression[],
    range: Range,
  ): CallExpression {
    return new CallExpression(expression, typeArguments, args, range);
  }

  static createClassExpression(declaration: ClassDeclaration): ClassExpression {
    return new ClassExpression(declaration);
  }

  static createCommaExpression(
    expressions: Expression[],
    range: Range,
  ): CommaExpression {
    return new CommaExpression(expressions, range);
  }

  static createConstructorExpression(range: Range): ConstructorExpression {
    return new ConstructorExpression(range);
  }

  static createElementAccessExpression(
    expression: Expression,
    elementExpression: Expression,
    range: Range,
  ): ElementAccessExpression {
    return new ElementAccessExpression(expression, elementExpression, range);
  }

  static createFalseExpression(range: Range): FalseExpression {
    return new FalseExpression(range);
  }

  static createFloatLiteralExpression(
    value: f64,
    range: Range,
  ): FloatLiteralExpression {
    return new FloatLiteralExpression(value, range);
  }

  static createFunctionExpression(
    declaration: FunctionDeclaration,
  ): FunctionExpression {
    return new FunctionExpression(declaration);
  }

  static createInstanceOfExpression(
    expression: Expression,
    isType: TypeNode,
    range: Range,
  ): InstanceOfExpression {
    return new InstanceOfExpression(expression, isType, range);
  }

  static createIntegerLiteralExpression(
    value: i64,
    range: Range,
  ): IntegerLiteralExpression {
    return new IntegerLiteralExpression(value, range);
  }

  static createNewExpression(
    typeName: TypeName,
    typeArguments: TypeNode[] | null,
    args: Expression[],
    range: Range,
  ): NewExpression {
    return new NewExpression(typeName, typeArguments, args, range);
  }

  static createNullExpression(range: Range): NullExpression {
    return new NullExpression(range);
  }

  static createObjectLiteralExpression(
    names: IdentifierExpression[],
    values: Expression[],
    range: Range,
  ): ObjectLiteralExpression {
    return new ObjectLiteralExpression(names, values, range);
  }

  static createOmittedExpression(range: Range): OmittedExpression {
    return new OmittedExpression(range);
  }

  static createParenthesizedExpression(
    expression: Expression,
    range: Range,
  ): ParenthesizedExpression {
    return new ParenthesizedExpression(expression, range);
  }

  static createPropertyAccessExpression(
    expression: Expression,
    property: IdentifierExpression,
    range: Range,
  ): PropertyAccessExpression {
    return new PropertyAccessExpression(expression, property, range);
  }

  static createRegexpLiteralExpression(
    pattern: string,
    patternFlags: string,
    range: Range,
  ): RegexpLiteralExpression {
    return new RegexpLiteralExpression(pattern, patternFlags, range);
  }

  static createTernaryExpression(
    condition: Expression,
    ifThen: Expression,
    ifElse: Expression,
    range: Range,
  ): TernaryExpression {
    return new TernaryExpression(condition, ifThen, ifElse, range);
  }

  static createStringLiteralExpression(
    value: string,
    range: Range,
  ): StringLiteralExpression {
    return new StringLiteralExpression(value, range);
  }

  static createSuperExpression(range: Range): SuperExpression {
    return new SuperExpression(range);
  }

  static createTemplateLiteralExpression(
    tag: Expression | null,
    parts: string[],
    rawParts: string[],
    expressions: Expression[],
    range: Range,
  ): TemplateLiteralExpression {
    return new TemplateLiteralExpression(
      tag,
      parts,
      rawParts,
      expressions,
      range,
    );
  }

  static createThisExpression(range: Range): ThisExpression {
    return new ThisExpression(range);
  }

  static createTrueExpression(range: Range): TrueExpression {
    return new TrueExpression(range);
  }

  static createUnaryPostfixExpression(
    operator: Token,
    operand: Expression,
    range: Range,
  ): UnaryPostfixExpression {
    return new UnaryPostfixExpression(operator, operand, range);
  }

  static createUnaryPrefixExpression(
    operator: Token,
    operand: Expression,
    range: Range,
  ): UnaryPrefixExpression {
    return new UnaryPrefixExpression(operator, operand, range);
  }

  static createCompiledExpression(
    expr: ExpressionRef,
    type: Type,
    range: Range,
  ): Expression {
    return new CompiledExpression(expr, type, range);
  }

  // statements

  static createBlockStatement(
    statements: Statement[],
    range: Range,
  ): BlockStatement {
    return new BlockStatement(statements, range);
  }

  static createBreakStatement(
    label: IdentifierExpression | null,
    range: Range,
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
    range: Range,
  ): ClassDeclaration {
    return new ClassDeclaration(
      name,
      decorators,
      flags,
      typeParameters,
      extendsType,
      implementsTypes,
      members,
      range,
    );
  }

  static createContinueStatement(
    label: IdentifierExpression | null,
    range: Range,
  ): ContinueStatement {
    return new ContinueStatement(label, range);
  }

  static createDoStatement(
    body: Statement,
    condition: Expression,
    range: Range,
  ): DoStatement {
    return new DoStatement(body, condition, range);
  }

  static createEmptyStatement(range: Range): EmptyStatement {
    return new EmptyStatement(range);
  }

  static createEnumDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    values: EnumValueDeclaration[],
    range: Range,
  ): EnumDeclaration {
    return new EnumDeclaration(name, decorators, flags, values, range);
  }

  static createEnumValueDeclaration(
    name: IdentifierExpression,
    flags: CommonFlags,
    initializer: Expression | null,
    range: Range,
  ): EnumValueDeclaration {
    return new EnumValueDeclaration(name, flags, initializer, range);
  }

  static createExportStatement(
    members: ExportMember[] | null,
    path: StringLiteralExpression | null,
    isDeclare: bool,
    range: Range,
  ): ExportStatement {
    return new ExportStatement(members, path, isDeclare, range);
  }

  static createExportDefaultStatement(
    declaration: DeclarationStatement,
    range: Range,
  ): ExportDefaultStatement {
    return new ExportDefaultStatement(declaration, range);
  }

  static createExportImportStatement(
    name: IdentifierExpression,
    externalName: IdentifierExpression,
    range: Range,
  ): ExportImportStatement {
    return new ExportImportStatement(name, externalName, range);
  }

  static createExportMember(
    localName: IdentifierExpression,
    exportedName: IdentifierExpression | null,
    range: Range,
  ): ExportMember {
    if (!exportedName) exportedName = localName;
    return new ExportMember(localName, exportedName, range);
  }

  static createExpressionStatement(
    expression: Expression,
  ): ExpressionStatement {
    return new ExpressionStatement(expression);
  }

  static createIfStatement(
    condition: Expression,
    ifTrue: Statement,
    ifFalse: Statement | null,
    range: Range,
  ): IfStatement {
    return new IfStatement(condition, ifTrue, ifFalse, range);
  }

  static createImportStatement(
    declarations: ImportDeclaration[] | null,
    path: StringLiteralExpression,
    range: Range,
  ): ImportStatement {
    return new ImportStatement(declarations, null, path, range);
  }

  static createWildcardImportStatement(
    namespaceName: IdentifierExpression,
    path: StringLiteralExpression,
    range: Range,
  ): ImportStatement {
    return new ImportStatement(null, namespaceName, path, range);
  }

  static createImportDeclaration(
    foreignName: IdentifierExpression,
    name: IdentifierExpression | null,
    range: Range,
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
    range: Range,
  ): InterfaceDeclaration {
    return new InterfaceDeclaration(
      name,
      decorators,
      flags,
      typeParameters,
      extendsType,
      implementsTypes,
      members,
      range,
    );
  }

  static createFieldDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    type: TypeNode | null,
    initializer: Expression | null,
    range: Range,
  ): FieldDeclaration {
    return new FieldDeclaration(
      name,
      decorators,
      flags,
      type,
      initializer,
      -1,
      range,
    );
  }

  static createForStatement(
    initializer: Statement | null,
    condition: Expression | null,
    incrementor: Expression | null,
    body: Statement,
    range: Range,
  ): ForStatement {
    return new ForStatement(initializer, condition, incrementor, body, range);
  }

  static createForOfStatement(
    variable: Statement,
    iterable: Expression,
    body: Statement,
    range: Range,
  ): ForOfStatement {
    return new ForOfStatement(variable, iterable, body, range);
  }

  static createFunctionDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    typeParameters: TypeParameterNode[] | null,
    signature: FunctionTypeNode,
    body: Statement | null,
    arrowKind: ArrowKind,
    range: Range,
  ): FunctionDeclaration {
    return new FunctionDeclaration(
      name,
      decorators,
      flags,
      typeParameters,
      signature,
      body,
      arrowKind,
      range,
    );
  }

  static createIndexSignature(
    keyType: NamedTypeNode,
    valueType: TypeNode,
    flags: CommonFlags,
    range: Range,
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
    range: Range,
  ): MethodDeclaration {
    return new MethodDeclaration(
      name,
      decorators,
      flags,
      typeParameters,
      signature,
      body,
      range,
    );
  }

  static createNamespaceDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    members: Statement[],
    range: Range,
  ): NamespaceDeclaration {
    return new NamespaceDeclaration(name, decorators, flags, members, range);
  }

  static createReturnStatement(
    value: Expression | null,
    range: Range,
  ): ReturnStatement {
    return new ReturnStatement(value, range);
  }

  static createSwitchStatement(
    condition: Expression,
    cases: SwitchCase[],
    range: Range,
  ): SwitchStatement {
    return new SwitchStatement(condition, cases, range);
  }

  static createSwitchCase(
    label: Expression | null,
    statements: Statement[],
    range: Range,
  ): SwitchCase {
    return new SwitchCase(label, statements, range);
  }

  static createThrowStatement(value: Expression, range: Range): ThrowStatement {
    return new ThrowStatement(value, range);
  }

  static createTryStatement(
    bodyStatements: Statement[],
    catchVariable: IdentifierExpression | null,
    catchStatements: Statement[] | null,
    finallyStatements: Statement[] | null,
    range: Range,
  ): TryStatement {
    return new TryStatement(
      bodyStatements,
      catchVariable,
      catchStatements,
      finallyStatements,
      range,
    );
  }

  static createTypeDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    typeParameters: TypeParameterNode[] | null,
    type: TypeNode,
    range: Range,
  ): TypeDeclaration {
    return new TypeDeclaration(
      name,
      decorators,
      flags,
      typeParameters,
      type,
      range,
    );
  }

  static createModuleDeclaration(
    name: string,
    flags: CommonFlags,
    range: Range,
  ): ModuleDeclaration {
    return new ModuleDeclaration(name, flags, range);
  }

  static createVariableStatement(
    decorators: DecoratorNode[] | null,
    declarations: VariableDeclaration[],
    range: Range,
  ): VariableStatement {
    return new VariableStatement(decorators, declarations, range);
  }

  static createVariableDeclaration(
    name: IdentifierExpression,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    type: TypeNode | null,
    initializer: Expression | null,
    range: Range,
  ): VariableDeclaration {
    return new VariableDeclaration(
      name,
      decorators,
      flags,
      type,
      initializer,
      range,
    );
  }

  static createVoidStatement(
    expression: Expression,
    range: Range,
  ): VoidStatement {
    return new VoidStatement(expression, range);
  }

  static createWhileStatement(
    condition: Expression,
    statement: Statement,
    range: Range,
  ): WhileStatement {
    return new WhileStatement(condition, statement, range);
  }

  /** Tests if this node is a literal of the specified kind. */
  isLiteralKind(literalKind: LiteralKind): bool {
    return (
      this.kind == NodeKind.Literal &&
      (<LiteralExpression>changetype<Node>(this)).literalKind == literalKind
    ); // TS
  }

  /** Tests if this node is a literal of a numeric kind (float or integer). */
  get isNumericLiteral(): bool {
    if (this.kind == NodeKind.Literal) {
      switch (
        (<LiteralExpression>changetype<Node>(this)).literalKind // TS
      ) {
        case LiteralKind.Float:
        case LiteralKind.Integer:
          return true;
      }
    }
    return false;
  }

  /** Tests whether this node is guaranteed to compile to a constant value. */
  get compilesToConst(): bool {
    switch (this.kind) {
      case NodeKind.Literal: {
        switch (
          (<LiteralExpression>changetype<Node>(this)).literalKind // TS
        ) {
          case LiteralKind.Float:
          case LiteralKind.Integer:
          case LiteralKind.String:
            return true;
        }
        break;
      }
      case NodeKind.Null:
      case NodeKind.True:
      case NodeKind.False:
        return true;
    }
    return false;
  }

  private isAccessOn(kind: NodeKind): bool {
    let node = changetype<Node>(this);
    if (node.kind == NodeKind.Call) {
      node = (<CallExpression>node).expression;
    }
    if (node.kind == NodeKind.PropertyAccess) {
      let target = (<PropertyAccessExpression>node).expression;
      if (target.kind == kind) return true;
    }
    return false;
  }

  /** Checks if this node accesses a method or property on `this`. */
  get isAccessOnThis(): bool {
    return this.isAccessOn(NodeKind.This);
  }

  /** Checks if this node accesses a method or property on `super`. */
  get isAccessOnSuper(): bool {
    return this.isAccessOn(NodeKind.Super);
  }

  get isEmpty(): bool {
    return this.kind == NodeKind.Empty;
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
    range: Range,
  ) {
    super(kind, range);
  }

  /** Whether this type node is currently in the process of being resolved. */
  currentlyResolving: bool = false;

  /** Tests if this type has a generic component matching one of the given type parameters. */
  hasGenericComponent(typeParameterNodes: TypeParameterNode[]): bool {
    if (this.kind == NodeKind.NamedType) {
      let namedTypeNode = <NamedTypeNode>changetype<TypeNode>(this); // TS
      if (!namedTypeNode.name.next) {
        let typeArgumentNodes = namedTypeNode.typeArguments;
        if (typeArgumentNodes && typeArgumentNodes.length > 0) {
          for (let i = 0, k = typeArgumentNodes.length; i < k; ++i) {
            if (typeArgumentNodes[i].hasGenericComponent(typeParameterNodes))
              return true;
          }
        } else {
          let name = namedTypeNode.name.identifier.text;
          for (let i = 0, k = typeParameterNodes.length; i < k; ++i) {
            if (typeParameterNodes[i].name.text == name) return true;
          }
        }
      }
    } else if (this.kind == NodeKind.FunctionType) {
      let functionTypeNode = <FunctionTypeNode>changetype<TypeNode>(this); // TS
      let parameterNodes = functionTypeNode.parameters;
      for (let i = 0, k = parameterNodes.length; i < k; ++i) {
        if (parameterNodes[i].type.hasGenericComponent(typeParameterNodes))
          return true;
      }
      if (functionTypeNode.returnType.hasGenericComponent(typeParameterNodes))
        return true;
      let explicitThisType = functionTypeNode.explicitThisType;
      if (
        explicitThisType &&
        explicitThisType.hasGenericComponent(typeParameterNodes)
      )
        return true;
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
    range: Range,
  ) {
    super(NodeKind.TypeName, range);
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
    range: Range,
  ) {
    super(NodeKind.NamedType, isNullable, range);
  }

  /** Checks if this type node has type arguments. */
  get hasTypeArguments(): bool {
    let typeArguments = this.typeArguments;
    return typeArguments != null && typeArguments.length > 0;
  }

  /** Tests if this type is "null". */
  get isNull(): bool {
    return this.name.identifier.text == "null";
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
    range: Range,
  ) {
    super(NodeKind.FunctionType, isNullable, range);
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
    range: Range,
  ) {
    super(NodeKind.TypeParameter, range);
  }
}

/** Represents the kind of a parameter. */
export const enum ParameterKind {
  /** No specific flags. */
  Default,
  /** Is an optional parameter. */
  Optional,
  /** Is a rest parameter. */
  Rest,
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
    range: Range,
  ) {
    super(NodeKind.Parameter, range);
  }

  /** Implicit field declaration, if applicable. */
  implicitFieldDeclaration: FieldDeclaration | null = null;
  /** Common flags indicating specific traits. */
  flags: CommonFlags = CommonFlags.None;

  /** Tests if this node has the specified flag or flags. */
  is(flag: CommonFlags): bool {
    return (this.flags & flag) == flag;
  }
  /** Tests if this node has one of the specified flags. */
  isAny(flag: CommonFlags): bool {
    return (this.flags & flag) != 0;
  }
  /** Sets a specific flag or flags. */
  set(flag: CommonFlags): void {
    this.flags |= flag;
  }
}

// special

/** Built-in decorator kinds. */
export enum DecoratorKind {
  Custom,
  Global,
  Operator,
  OperatorBinary,
  OperatorPrefix,
  OperatorPostfix,
  Unmanaged,
  Final,
  Inline,
  External,
  ExternalJs,
  Builtin,
  Lazy,
  Unsafe,
}

export namespace DecoratorKind {
  /** Returns the kind of the specified decorator name node. Defaults to {@link DecoratorKind.CUSTOM}. */
  export function fromNode(nameNode: Expression): DecoratorKind {
    if (nameNode.kind == NodeKind.Identifier) {
      let nameStr = (<IdentifierExpression>nameNode).text;
      assert(nameStr.length);
      switch (nameStr.charCodeAt(0)) {
        case CharCode.b: {
          if (nameStr == "builtin") return DecoratorKind.Builtin;
          break;
        }
        case CharCode.e: {
          if (nameStr == "external") return DecoratorKind.External;
          break;
        }
        case CharCode.f: {
          if (nameStr == "final") return DecoratorKind.Final;
          break;
        }
        case CharCode.g: {
          if (nameStr == "global") return DecoratorKind.Global;
          break;
        }
        case CharCode.i: {
          if (nameStr == "inline") return DecoratorKind.Inline;
          break;
        }
        case CharCode.l: {
          if (nameStr == "lazy") return DecoratorKind.Lazy;
          break;
        }
        case CharCode.o: {
          if (nameStr == "operator") return DecoratorKind.Operator;
          break;
        }
        case CharCode.u: {
          if (nameStr == "unmanaged") return DecoratorKind.Unmanaged;
          if (nameStr == "unsafe") return DecoratorKind.Unsafe;
          break;
        }
      }
    } else if (nameNode.kind == NodeKind.PropertyAccess) {
      let propertyAccessNode = <PropertyAccessExpression>nameNode;
      let expression = propertyAccessNode.expression;
      if (expression.kind == NodeKind.Identifier) {
        let nameStr = (<IdentifierExpression>expression).text;
        assert(nameStr.length);
        let propStr = propertyAccessNode.property.text;
        assert(propStr.length);
        if (nameStr == "operator") {
          switch (propStr.charCodeAt(0)) {
            case CharCode.b: {
              if (propStr == "binary") return DecoratorKind.OperatorBinary;
              break;
            }
            case CharCode.p: {
              if (propStr == "prefix") return DecoratorKind.OperatorPrefix;
              if (propStr == "postfix") return DecoratorKind.OperatorPostfix;
              break;
            }
          }
        } else if (nameStr == "external") {
          switch (propStr.charCodeAt(0)) {
            case CharCode.j: {
              if (propStr == "js") return DecoratorKind.ExternalJs;
              break;
            }
          }
        }
      }
    }
    return DecoratorKind.Custom;
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
    range: Range,
  ) {
    super(NodeKind.Decorator, range);
  }
}

/** Comment kinds. */
export const enum CommentKind {
  /** Line comment. */
  Line,
  /** Triple-slash line comment. */
  Triple,
  /** Block comment. */
  Block,
}

/** Represents a comment. */
export class CommentNode extends Node {
  constructor(
    /** Comment kind. */
    public commentKind: CommentKind,
    /** Comment text. */
    public text: string,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Comment, range);
  }
}

// expressions

/** Base class of all expression nodes. */
export abstract class Expression extends Node {}

/** Represents an identifier expression. */
export class IdentifierExpression extends Expression {
  constructor(
    /** Textual name. */
    public text: string,
    /** Whether quoted or not. */
    public isQuoted: bool,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Identifier, range);
  }
}

/** Indicates the kind of a literal. */
export const enum LiteralKind {
  Float,
  Integer,
  String,
  Template,
  RegExp,
  Array,
  Object,
}

/** Base class of all literal expressions. */
export abstract class LiteralExpression extends Expression {
  constructor(
    /** Specific literal kind. */
    public literalKind: LiteralKind,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Literal, range);
  }
}

/** Represents an `[]` literal expression. */
export class ArrayLiteralExpression extends LiteralExpression {
  constructor(
    /** Nested element expressions. */
    public elementExpressions: Expression[],
    /** Source range. */
    range: Range,
  ) {
    super(LiteralKind.Array, range);
  }
}

/** Indicates the kind of an assertion. */
export const enum AssertionKind {
  /** A prefix assertion, i.e. `<T>expr`. */
  Prefix,
  /** An as assertion, i.e. `expr as T`. */
  As,
  /** A non-null assertion, i.e. `!expr`. */
  NonNull,
  /** A const assertion, i.e. `expr as const`. */
  Const,
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
    range: Range,
  ) {
    super(NodeKind.Assertion, range);
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
    range: Range,
  ) {
    super(NodeKind.Binary, range);
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
    range: Range,
  ) {
    super(NodeKind.Call, range);
  }

  /** Gets the type arguments range for reporting. */
  get typeArgumentsRange(): Range {
    let typeArguments = this.typeArguments;
    let numTypeArguments: i32;
    if (typeArguments) {
      if ((numTypeArguments = typeArguments.length)) {
        return Range.join(
          typeArguments[0].range,
          typeArguments[numTypeArguments - 1].range,
        );
      }
    }
    return this.expression.range;
  }

  /** Gets the arguments range for reporting. */
  get argumentsRange(): Range {
    let args = this.args;
    let numArguments = args.length;
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
    public declaration: ClassDeclaration,
  ) {
    super(NodeKind.Class, declaration.range);
  }
}

/** Represents a comma expression composed of multiple expressions. */
export class CommaExpression extends Expression {
  constructor(
    /** Sequential expressions. */
    public expressions: Expression[],
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Comma, range);
  }
}

/** Represents a `constructor` expression. */
export class ConstructorExpression extends IdentifierExpression {
  constructor(
    /** Source range. */
    range: Range,
  ) {
    super("constructor", false, range);
    this.kind = NodeKind.Constructor;
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
    range: Range,
  ) {
    super(NodeKind.ElementAccess, range);
  }
}

/** Represents a float literal expression. */
export class FloatLiteralExpression extends LiteralExpression {
  constructor(
    /** Float value. */
    public value: f64,
    /** Source range. */
    range: Range,
  ) {
    super(LiteralKind.Float, range);
  }
}

/** Represents a function expression using the 'function' keyword. */
export class FunctionExpression extends Expression {
  constructor(
    /** Inline function declaration. */
    public declaration: FunctionDeclaration,
  ) {
    super(NodeKind.Function, declaration.range);
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
    range: Range,
  ) {
    super(NodeKind.InstanceOf, range);
  }
}

/** Represents an integer literal expression. */
export class IntegerLiteralExpression extends LiteralExpression {
  constructor(
    /** Integer value. */
    public value: i64,
    /** Source range. */
    range: Range,
  ) {
    super(LiteralKind.Integer, range);
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
    range: Range,
  ) {
    super(NodeKind.New, range);
  }

  /** Gets the type arguments range for reporting. */
  get typeArgumentsRange(): Range {
    let typeArguments = this.typeArguments;
    let numTypeArguments: i32;
    if (typeArguments && (numTypeArguments = typeArguments.length) > 0) {
      return Range.join(
        typeArguments[0].range,
        typeArguments[numTypeArguments - 1].range,
      );
    }
    return this.typeName.range;
  }

  /** Gets the arguments range for reporting. */
  get argumentsRange(): Range {
    let args = this.args;
    let numArguments = args.length;
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
    range: Range,
  ) {
    super("null", false, range);
    this.kind = NodeKind.Null;
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
    range: Range,
  ) {
    super(LiteralKind.Object, range);
  }
}

/** Represents an omitted expression, e.g. within an array literal. */
export class OmittedExpression extends Expression {
  constructor(
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Omitted, range);
  }
}

/** Represents a parenthesized expression. */
export class ParenthesizedExpression extends Expression {
  constructor(
    /** Expression in parenthesis. */
    public expression: Expression,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Parenthesized, range);
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
    range: Range,
  ) {
    super(NodeKind.PropertyAccess, range);
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
    range: Range,
  ) {
    super(LiteralKind.RegExp, range);
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
    range: Range,
  ) {
    super(NodeKind.Ternary, range);
  }
}

/** Represents a string literal expression. */
export class StringLiteralExpression extends LiteralExpression {
  constructor(
    /** String value without quotes. */
    public value: string,
    /** Source range. */
    range: Range,
  ) {
    super(LiteralKind.String, range);
  }
}

/** Represents a `super` expression. */
export class SuperExpression extends IdentifierExpression {
  constructor(
    /** Source range. */
    range: Range,
  ) {
    super("super", false, range);
    this.kind = NodeKind.Super;
  }
}

/** Represents a template literal expression. */
export class TemplateLiteralExpression extends LiteralExpression {
  constructor(
    /** Tag expression, if any. */
    public tag: Expression | null,
    /** String parts. */
    public parts: string[],
    /** Raw string parts. */
    public rawParts: string[],
    /** Expression parts. */
    public expressions: Expression[],
    /** Source range. */
    range: Range,
  ) {
    super(LiteralKind.Template, range);
  }
}

/** Represents a `this` expression. */
export class ThisExpression extends IdentifierExpression {
  constructor(
    /** Source range. */
    range: Range,
  ) {
    super("this", false, range);
    this.kind = NodeKind.This;
  }
}

/** Represents a `true` expression. */
export class TrueExpression extends IdentifierExpression {
  constructor(
    /** Source range. */
    range: Range,
  ) {
    super("true", false, range);
    this.kind = NodeKind.True;
  }
}

/** Represents a `false` expression. */
export class FalseExpression extends IdentifierExpression {
  constructor(
    /** Source range. */
    range: Range,
  ) {
    super("false", false, range);
    this.kind = NodeKind.False;
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
    range: Range,
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
    range: Range,
  ) {
    super(NodeKind.UnaryPostfix, operator, operand, range);
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
    range: Range,
  ) {
    super(NodeKind.UnaryPrefix, operator, operand, range);
  }
}

/** Represents a special pre-compiled expression. If the expression has side-effects, special care has to be taken. */
export class CompiledExpression extends Expression {
  constructor(
    /** Compiled expression. */
    public expr: ExpressionRef,
    /** Type of the compiled expression. */
    public type: Type,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Compiled, range);
  }
}

// statements

/** Base class of all statement nodes. */
export abstract class Statement extends Node {}

/** Indicates the specific kind of a source. */
export const enum SourceKind {
  /** User-provided file. */
  User = 0,
  /** User-provided entry file. */
  UserEntry = 1,
  /** Library-provided file. */
  Library = 2,
  /** Library-provided entry file. */
  LibraryEntry = 3,
}

/** A top-level source node. */
export class Source extends Node {
  /** Gets the special native source. */
  static get native(): Source {
    let source = Source._native;
    if (!source)
      Source._native = source = new Source(
        SourceKind.LibraryEntry,
        LIBRARY_PREFIX + "native.ts",
        "[native code]",
      );
    return source;
  }
  private static _native: Source | null = null;

  constructor(
    /** Source kind. */
    public sourceKind: SourceKind,
    /** Normalized path with file extension. */
    public normalizedPath: string,
    /** Full source text. */
    public text: string,
  ) {
    super(NodeKind.Source, new Range(0, text.length));
    let internalPath = mangleInternalPath(normalizedPath);
    this.internalPath = internalPath;
    let pos = internalPath.lastIndexOf(PATH_DELIMITER);
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
    let kind = this.sourceKind;
    return kind == SourceKind.Library || kind == SourceKind.LibraryEntry;
  }

  /** Cached line starts. */
  private lineCache: i32[] | null = null;

  /** Remembered column number. */
  private lineColumn: i32 = 1;

  /** Determines the line number at the specified position. Starts at `1`. */
  lineAt(pos: i32): i32 {
    assert(pos >= 0 && pos < 0x7fffffff);
    let lineCache = this.lineCache;
    if (!lineCache) {
      this.lineCache = lineCache = [0];
      let text = this.text;
      let off = 0;
      let end = text.length;
      while (off < end) {
        if (text.charCodeAt(off++) == CharCode.LineFeed) lineCache.push(off);
      }
      lineCache.push(0x7fffffff);
    }
    let l = 0;
    let r = lineCache.length - 1;
    while (l < r) {
      let m = l + ((r - l) >> 1);
      let s = unchecked(lineCache[m]);
      if (pos < s) r = m;
      else if (pos < unchecked(lineCache[m + 1])) {
        this.lineColumn = pos - s + 1;
        return m + 1;
      } else l = m + 1;
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
    range: Range,
  ) {
    super(kind, range);
  }
  /** Overridden module name from preceeding `module` statement. */
  public overriddenModuleName: string | null = null;

  /** Tests if this node has the specified flag or flags. */
  is(flag: CommonFlags): bool {
    return (this.flags & flag) == flag;
  }
  /** Tests if this node has one of the specified flags. */
  isAny(flag: CommonFlags): bool {
    return (this.flags & flag) != 0;
  }
  /** Sets a specific flag or flags. */
  set(flag: CommonFlags): void {
    this.flags |= flag;
  }
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
    range: Range,
  ) {
    super(NodeKind.IndexSignature, range);
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
    range: Range,
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
    range: Range,
  ) {
    super(NodeKind.Block, range);
  }
}

/** Represents a `break` statement. */
export class BreakStatement extends Statement {
  constructor(
    /** Target label, if any. */
    public label: IdentifierExpression | null,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Break, range);
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
    range: Range,
  ) {
    super(NodeKind.ClassDeclaration, name, decorators, flags, range);
  }

  /** Index signature, if present. */
  indexSignature: IndexSignatureNode | null = null;

  get isGeneric(): bool {
    let typeParameters = this.typeParameters;
    return typeParameters != null && typeParameters.length > 0;
  }
}

/** Represents a `continue` statement. */
export class ContinueStatement extends Statement {
  constructor(
    /** Target label, if applicable. */
    public label: IdentifierExpression | null,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Continue, range);
  }
}

/** Represents a `do` statement. */
export class DoStatement extends Statement {
  constructor(
    /** Body statement being looped over. */
    public body: Statement,
    /** Condition when to repeat. */
    public condition: Expression,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Do, range);
  }
}

/** Represents an empty statement, i.e., a semicolon terminating nothing. */
export class EmptyStatement extends Statement {
  constructor(
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Empty, range);
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
    range: Range,
  ) {
    super(NodeKind.EnumDeclaration, name, decorators, flags, range);
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
    range: Range,
  ) {
    super(
      NodeKind.EnumValueDeclaration,
      name,
      null,
      flags,
      null,
      initializer,
      range,
    );
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
    range: Range,
  ) {
    super(NodeKind.ExportImport, range);
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
    range: Range,
  ) {
    super(NodeKind.ExportMember, range);
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
    range: Range,
  ) {
    super(NodeKind.Export, range);
    if (path) {
      let normalizedPath = normalizePath(path.value);
      if (path.value.startsWith(".")) {
        // relative
        normalizedPath = resolvePath(normalizedPath, range.source.internalPath);
      } else {
        // absolute
        if (!normalizedPath.startsWith(LIBRARY_PREFIX))
          normalizedPath = LIBRARY_PREFIX + normalizedPath;
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
    range: Range,
  ) {
    super(NodeKind.ExportDefault, range);
  }
}

/** Represents an expression that is used as a statement. */
export class ExpressionStatement extends Statement {
  constructor(
    /** Expression being used as a statement.*/
    public expression: Expression,
  ) {
    super(NodeKind.Expression, expression.range);
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
    range: Range,
  ) {
    super(
      NodeKind.FieldDeclaration,
      name,
      decorators,
      flags,
      type,
      initializer,
      range,
    );
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
    /** Body statement being looped over. */
    public body: Statement,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.For, range);
  }
}

/** Represents a `for..of` statement. */
export class ForOfStatement extends Statement {
  constructor(
    /** Variable statement. Either a `VariableStatement` or `ExpressionStatement` of `IdentifierExpression`. */
    public variable: Statement,
    /** Iterable expression being iterated. */
    public iterable: Expression,
    /** Body statement being looped over. */
    public body: Statement,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.ForOf, range);
  }
}

/** Indicates the kind of an array function. */
export const enum ArrowKind {
  /** Not an arrow function. */
  None,
  /** Parenthesized parameter list. */
  Parenthesized,
  /** Single parameter without parenthesis. */
  Single,
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
    range: Range,
  ) {
    super(NodeKind.FunctionDeclaration, name, decorators, flags, range);
  }

  /** Gets if this function is generic. */
  get isGeneric(): bool {
    let typeParameters = this.typeParameters;
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
      this.range,
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
    range: Range,
  ) {
    super(NodeKind.If, range);
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
    range: Range,
  ) {
    super(NodeKind.ImportDeclaration, name, null, CommonFlags.None, range);
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
    range: Range,
  ) {
    super(NodeKind.Import, range);
    let normalizedPath = normalizePath(path.value);
    if (path.value.startsWith(".")) {
      // relative in project
      normalizedPath = resolvePath(normalizedPath, range.source.internalPath);
    } else {
      // absolute in library
      if (!normalizedPath.startsWith(LIBRARY_PREFIX))
        normalizedPath = LIBRARY_PREFIX + normalizedPath;
    }
    this.internalPath = mangleInternalPath(normalizedPath);
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
    range: Range,
  ) {
    super(
      name,
      decorators,
      flags,
      typeParameters,
      extendsType,
      implementsTypes,
      members,
      range,
    );
    this.kind = NodeKind.InterfaceDeclaration;
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
    range: Range,
  ) {
    super(
      name,
      decorators,
      flags,
      typeParameters,
      signature,
      body,
      ArrowKind.None,
      range,
    );
    this.kind = NodeKind.MethodDeclaration;
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
    range: Range,
  ) {
    super(NodeKind.NamespaceDeclaration, name, decorators, flags, range);
  }
}

/** Represents a `return` statement. */
export class ReturnStatement extends Statement {
  constructor(
    /** Value expression being returned, if present. */
    public value: Expression | null,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Return, range);
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
    range: Range,
  ) {
    super(NodeKind.SwitchCase, range);
  }

  get isDefault(): bool {
    return this.label == null;
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
    range: Range,
  ) {
    super(NodeKind.Switch, range);
  }
}

/** Represents a `throw` statement. */
export class ThrowStatement extends Statement {
  constructor(
    /** Value expression being thrown. */
    public value: Expression,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Throw, range);
  }
}

/** Represents a `try` statement. */
export class TryStatement extends Statement {
  constructor(
    /** Contained statements. */
    public bodyStatements: Statement[],
    /** Exception variable name, if a `catch` clause is present. */
    public catchVariable: IdentifierExpression | null,
    /** Statements being executed on catch, if a `catch` clause is present. */
    public catchStatements: Statement[] | null,
    /** Statements being executed afterwards, if a `finally` clause is present. */
    public finallyStatements: Statement[] | null,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Try, range);
  }
}

/** Represents a `module` statement. */
export class ModuleDeclaration extends Statement {
  constructor(
    /** Module name. */
    public moduleName: string,
    /** Common flags indicating specific traits. */
    public flags: CommonFlags,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Module, range);
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
    range: Range,
  ) {
    super(NodeKind.TypeDeclaration, name, decorators, flags, range);
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
    range: Range,
  ) {
    super(
      NodeKind.VariableDeclaration,
      name,
      decorators,
      flags,
      type,
      initializer,
      range,
    );
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
    range: Range,
  ) {
    super(NodeKind.Variable, range);
  }
}

/** Represents a void statement dropping an expression's value. */
export class VoidStatement extends Statement {
  constructor(
    /** Expression being dropped. */
    public expression: Expression,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.Void, range);
  }
}

/** Represents a `while` statement. */
export class WhileStatement extends Statement {
  constructor(
    /** Condition expression. */
    public condition: Expression,
    /** Body statement being looped over. */
    public body: Statement,
    /** Source range. */
    range: Range,
  ) {
    super(NodeKind.While, range);
  }
}

/** Finds the first decorator matching the specified kind. */
export function findDecorator(
  kind: DecoratorKind,
  decorators: DecoratorNode[] | null,
): DecoratorNode | null {
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
  if (path.endsWith("/")) {
    path += "index";
  } else if (path.endsWith(".ts")) {
    path = path.substring(0, path.length - 3);
  }
  return path;
}

/** Tests if the specified type node represents an omitted type. */
export function isTypeOmitted(type: TypeNode): bool {
  if (type.kind == NodeKind.NamedType) {
    let name = (<NamedTypeNode>type).name;
    return !(name.next || name.identifier.text.length > 0);
  }
  return false;
}
