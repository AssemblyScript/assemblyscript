import { Parameter } from './program';
/**
 * Abstract syntax tree representing a source file once parsed.
 * @module ast
 *//***/

import {
  CommonFlags,
  CommonSymbols,
  PATH_DELIMITER,
  LIBRARY_PREFIX
} from "./common";

import {
  Token,
  Tokenizer,
  Range
} from "./tokenizer";

import {
  normalizePath,
  resolvePath,
  CharCode
} from "./util";

export { Token, Range };

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
  INDEXSIGNATUREDECLARATION,
  INTERFACEDECLARATION,
  METHODDECLARATION,
  NAMESPACEDECLARATION,
  TYPEDECLARATION,
  VARIABLEDECLARATION,

  // special
  DECORATOR,
  EXPORTMEMBER,
  SWITCHCASE,
  COMMENT
}

/** Checks if a node represents a constant value. */
export function nodeIsConstantValue(kind: NodeKind): bool {
  switch (kind) {
    case NodeKind.LITERAL:
    case NodeKind.NULL:
    case NodeKind.TRUE:
    case NodeKind.FALSE: return true;
  }
  return false;
}

/** Checks if a node might be callable. */
export function nodeIsCallable(kind: NodeKind): bool {
  switch (kind) {
    case NodeKind.IDENTIFIER:
    case NodeKind.ASSERTION: // if kind=NONNULL
    case NodeKind.CALL:
    case NodeKind.ELEMENTACCESS:
    case NodeKind.PARENTHESIZED:
    case NodeKind.PROPERTYACCESS:
    case NodeKind.SUPER: return true;
  }
  return false;
}

/** Checks if a node might be callable with generic arguments. */
export function nodeIsGenericCallable(kind: NodeKind): bool {
  switch (kind) {
    case NodeKind.IDENTIFIER:
    case NodeKind.PROPERTYACCESS: return true;
  }
  return false;
}

/** Base class of all nodes. */
export abstract class Node {

  /** Node kind indicator. */
  kind: NodeKind;
  /** Source range. */
  range: Range;

  // visit method each concrete node must implement
  abstract visit(vistor: ASTVisitor): void;

  // types

  static createTypeName(
    name: IdentifierExpression,
    range: Range
  ): TypeName {
    var typeName = new TypeName();
    typeName.range = range;
    typeName.identifier = name;
    typeName.next = null;
    return typeName;
  }

  static createSimpleTypeName(
    name: string,
    range: Range
  ): TypeName {
    return Node.createTypeName(Node.createIdentifierExpression(name, range), range);
  }

  static createNamedType(
    name: TypeName,
    typeArguments: TypeNode[] | null,
    isNullable: bool,
    range: Range
  ): NamedTypeNode {
    var type = new NamedTypeNode();
    type.range = range;
    type.name = name;
    type.typeArguments = typeArguments;
    type.isNullable = isNullable;
    return type;
  }

  static createFunctionType(
    parameters: ParameterNode[],
    returnType: TypeNode,
    explicitThisType: NamedTypeNode | null,
    isNullable: bool,
    range: Range
  ): FunctionTypeNode {
    var type = new FunctionTypeNode();
    type.range = range;
    type.parameters = parameters;
    type.returnType = returnType;
    type.explicitThisType = explicitThisType;
    type.isNullable = isNullable;
    return type;
  }

  static createOmittedType(
    range: Range
  ): NamedTypeNode {
    return Node.createNamedType(
      Node.createSimpleTypeName("", range),
      null,
      false,
      range
    );
  }

  static createTypeParameter(
    name: IdentifierExpression,
    extendsType: NamedTypeNode | null,
    defaultType: NamedTypeNode | null,
    range: Range
  ): TypeParameterNode {
    var elem = new TypeParameterNode();
    elem.range = range;
    elem.name = name;
    elem.extendsType = extendsType;
    elem.defaultType = defaultType;
    return elem;
  }

  static createParameter(
    name: IdentifierExpression,
    type: TypeNode,
    initializer: Expression | null,
    kind: ParameterKind,
    range: Range
  ): ParameterNode {
    var elem = new ParameterNode();
    elem.range = range;
    elem.name = name;
    elem.type = type;
    elem.initializer = initializer;
    elem.parameterKind = kind;
    return elem;
  }

  // special

  static createDecorator(
    name: Expression,
    args: Expression[] | null,
    range: Range
  ): DecoratorNode {
    var stmt = new DecoratorNode();
    stmt.range = range;
    stmt.name = name;
    stmt.arguments = args;
    stmt.decoratorKind = decoratorNameToKind(name);
    return stmt;
  }

  static createComment(
    text: string,
    kind: CommentKind,
    range: Range
  ): CommentNode {
    var node = new CommentNode();
    node.range = range;
    node.commentKind = kind;
    node.text = text;
    return node;
  }

  // expressions

  static createIdentifierExpression(
    name: string,
    range: Range,
    isQuoted: bool = false
  ): IdentifierExpression {
    var expr = new IdentifierExpression();
    expr.range = range;
    expr.text = name; // TODO: extract from range
    expr.symbol = name; // TODO: Symbol.for(name)
    expr.isQuoted = isQuoted;
    return expr;
  }

  static createEmptyIdentifierExpression(
    range: Range
  ): IdentifierExpression {
    var expr = new IdentifierExpression();
    expr.range = range;
    expr.text = "";
    return expr;
  }

  static createArrayLiteralExpression(
    elements: (Expression | null)[],
    range: Range
  ): ArrayLiteralExpression {
    var expr = new ArrayLiteralExpression();
    expr.range = range;
    expr.elementExpressions = elements;
    return expr;
  }

  static createAssertionExpression(
    assertionKind: AssertionKind,
    expression: Expression,
    toType: TypeNode | null,
    range: Range
  ): AssertionExpression {
    var expr = new AssertionExpression();
    expr.range = range;
    expr.assertionKind = assertionKind;
    expr.expression = expression;
    expr.toType = toType;
    return expr;
  }

  static createBinaryExpression(
    operator: Token,
    left: Expression,
    right: Expression,
    range: Range
  ): BinaryExpression {
    var expr = new BinaryExpression();
    expr.range = range;
    expr.operator = operator;
    expr.left = left;
    expr.right = right;
    return expr;
  }

  static createCallExpression(
    expression: Expression,
    typeArgs: TypeNode[] | null,
    args: Expression[],
    range: Range
  ): CallExpression {
    var expr = new CallExpression();
    expr.range = range;
    expr.expression = expression;
    expr.typeArguments = typeArgs;
    expr.arguments = args;
    return expr;
  }

  static createClassExpression(
    declaration: ClassDeclaration
  ): ClassExpression {
    var expr = new ClassExpression();
    expr.range = declaration.range;
    expr.declaration = declaration;
    return expr;
  }

  static createCommaExpression(
    expressions: Expression[],
    range: Range
  ): CommaExpression {
    var expr = new CommaExpression();
    expr.range = range;
    expr.expressions = expressions;
    return expr;
  }

  static createConstructorExpression(
    range: Range
  ): ConstructorExpression {
    var expr = new ConstructorExpression();
    expr.range = range;
    return expr;
  }

  static createElementAccessExpression(
    expression: Expression,
    element: Expression,
    range: Range
  ): ElementAccessExpression {
    var expr = new ElementAccessExpression();
    expr.range = range;
    expr.expression = expression;
    expr.elementExpression = element;
    return expr;
  }

  static createFalseExpression(
    range: Range
  ): FalseExpression {
    var expr = new FalseExpression();
    expr.range = range;
    return expr;
  }

  static createFloatLiteralExpression(
    value: f64,
    range: Range
  ): FloatLiteralExpression {
    var expr = new FloatLiteralExpression();
    expr.range = range;
    expr.value = value;
    return expr;
  }

  static createFunctionExpression(
    declaration: FunctionDeclaration
  ): FunctionExpression {
    var expr = new FunctionExpression();
    expr.range = declaration.range;
    expr.declaration = declaration;
    return expr;
  }

  static createInstanceOfExpression(
    expression: Expression,
    isType: TypeNode,
    range: Range
  ): InstanceOfExpression {
    var expr = new InstanceOfExpression();
    expr.range = range;
    expr.expression = expression;
    expr.isType = isType;
    return expr;
  }

  static createIntegerLiteralExpression(
    value: I64,
    range: Range
  ): IntegerLiteralExpression {
    var expr = new IntegerLiteralExpression();
    expr.range = range;
    expr.value = value;
    return expr;
  }

  static createNewExpression(
    expression: Expression,
    typeArgs: TypeNode[] | null,
    args: Expression[],
    range: Range
  ): NewExpression {
    var expr = new NewExpression();
    expr.range = range;
    expr.expression = expression;
    expr.typeArguments = typeArgs;
    expr.arguments = args;
    return expr;
  }

  static createNullExpression(
    range: Range
  ): NullExpression {
    var expr = new NullExpression();
    expr.range = range;
    return expr;
  }

  static createObjectLiteralExpression(
    names: IdentifierExpression[],
    values: Expression[],
    range: Range
  ): ObjectLiteralExpression {
    var expr = new ObjectLiteralExpression();
    expr.range = range;
    expr.names = names;
    expr.values = values;
    return expr;
  }

  static createParenthesizedExpression(
    expression: Expression,
    range: Range
  ): ParenthesizedExpression {
    var expr = new ParenthesizedExpression();
    expr.range = range;
    expr.expression = expression;
    return expr;
  }

  static createPropertyAccessExpression(
    expression: Expression,
    property: IdentifierExpression,
    range: Range
  ): PropertyAccessExpression {
    var expr = new PropertyAccessExpression();
    expr.range = range;
    expr.expression = expression;
    expr.property = property;
    return expr;
  }

  static createRegexpLiteralExpression(
    pattern: string,
    flags: string,
    range: Range
  ): RegexpLiteralExpression {
    var expr = new RegexpLiteralExpression();
    expr.range = range;
    expr.pattern = pattern;
    expr.patternFlags = flags;
    return expr;
  }

  static createTernaryExpression(
    condition: Expression,
    ifThen: Expression,
    ifElse: Expression,
    range: Range
  ): TernaryExpression {
    var expr = new TernaryExpression();
    expr.range = range;
    expr.condition = condition;
    expr.ifThen = ifThen;
    expr.ifElse = ifElse;
    return expr;
  }

  static createStringLiteralExpression(
    value: string,
    range: Range
  ): StringLiteralExpression {
    var expr = new StringLiteralExpression();
    expr.range = range;
    expr.value = value;
    return expr;
  }

  static createSuperExpression(
    range: Range
  ): SuperExpression {
    var expr = new SuperExpression();
    expr.range = range;
    return expr;
  }

  static createThisExpression(
    range: Range
  ): ThisExpression {
    var expr = new ThisExpression();
    expr.range = range;
    return expr;
  }

  static createTrueExpression(
    range: Range
  ): TrueExpression {
    var expr = new TrueExpression();
    expr.range = range;
    return expr;
  }

  static createUnaryPostfixExpression(
    operator: Token,
    operand: Expression,
    range: Range
  ): UnaryPostfixExpression {
    var expr = new UnaryPostfixExpression();
    expr.range = range;
    expr.operator = operator;
    expr.operand = operand;
    return expr;
  }

  static createUnaryPrefixExpression(
    operator: Token,
    operand: Expression,
    range: Range
  ): UnaryPrefixExpression {
    var expr = new UnaryPrefixExpression();
    expr.range = range;
    expr.operator = operator;
    expr.operand = operand;
    return expr;
  }

  // statements

  static createBlockStatement(
    statements: Statement[],
    range: Range
  ): BlockStatement {
    var stmt = new BlockStatement();
    stmt.range = range;
    stmt.statements = statements;
    return stmt;
  }

  static createBreakStatement(
    label: IdentifierExpression | null,
    range: Range
  ): BreakStatement {
    var stmt = new BreakStatement();
    stmt.range = range;
    stmt.label = label;
    return stmt;
  }

  static createClassDeclaration(
    identifier: IdentifierExpression,
    typeParameters: TypeParameterNode[] | null,
    extendsType: NamedTypeNode | null, // can't be a function
    implementsTypes: NamedTypeNode[] | null, // can't be functions
    members: DeclarationStatement[],
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    range: Range
  ): ClassDeclaration {
    var stmt = new ClassDeclaration();
    stmt.range = range;
    stmt.flags = flags;
    stmt.name = identifier;
    stmt.typeParameters = typeParameters;
    stmt.extendsType = extendsType;
    stmt.implementsTypes = implementsTypes;
    stmt.members = members;
    stmt.decorators = decorators;
    return stmt;
  }

  static createContinueStatement(
    label: IdentifierExpression | null,
    range: Range
  ): ContinueStatement {
    var stmt = new ContinueStatement();
    stmt.range = range;
    stmt.label = label;
    return stmt;
  }

  static createDoStatement(
    statement: Statement,
    condition: Expression,
    range: Range
  ): DoStatement {
    var stmt = new DoStatement();
    stmt.range = range;
    stmt.statement = statement;
    stmt.condition = condition;
    return stmt;
  }

  static createEmptyStatement(
    range: Range
  ): EmptyStatement {
    var stmt = new EmptyStatement();
    stmt.range = range;
    return stmt;
  }

  static createEnumDeclaration(
    name: IdentifierExpression,
    members: EnumValueDeclaration[],
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    range: Range
  ): EnumDeclaration {
    var stmt = new EnumDeclaration();
    stmt.range = range;
    stmt.flags = flags;
    stmt.name = name;
    stmt.values = members;
    stmt.decorators = decorators;
    return stmt;
  }

  static createEnumValueDeclaration(
    name: IdentifierExpression,
    value: Expression | null,
    flags: CommonFlags,
    range: Range
  ): EnumValueDeclaration {
    var stmt = new EnumValueDeclaration();
    stmt.range = range;
    stmt.flags = flags;
    stmt.name = name;
    stmt.value = value;
    return stmt;
  }

  static createExportStatement(
    members: ExportMember[] | null,
    path: StringLiteralExpression | null,
    isDeclare: bool,
    range: Range
  ): ExportStatement {
    var stmt = new ExportStatement();
    stmt.range = range;
    stmt.members = members;
    stmt.path = path;
    if (path) {
      let normalizedPath = normalizePath(path.value);
      if (path.value.startsWith(".")) { // relative
        stmt.normalizedPath = resolvePath(
          normalizedPath,
          range.source.normalizedPath
        );
      } else { // absolute
        if (!normalizedPath.startsWith(LIBRARY_PREFIX)) {
          normalizedPath = LIBRARY_PREFIX + normalizedPath;
        }
        stmt.normalizedPath = normalizedPath;
      }
      stmt.internalPath = mangleInternalPath(stmt.normalizedPath);
    } else {
      stmt.normalizedPath = null;
      stmt.internalPath = null;
    }
    stmt.isDeclare = isDeclare;
    return stmt;
  }

  static createExportDefaultStatement(
    declaration: DeclarationStatement,
    range: Range
  ): ExportDefaultStatement {
    var stmt = new ExportDefaultStatement();
    stmt.declaration = declaration;
    stmt.range = range;
    return stmt;
  }

  static createExportImportStatement(
    name: IdentifierExpression,
    externalName: IdentifierExpression,
    range: Range
  ): ExportImportStatement {
    var stmt = new ExportImportStatement();
    stmt.range = range;
    stmt.name = name;
    stmt.externalName = externalName;
    return stmt;
  }

  static createExportMember(
    name: IdentifierExpression,
    externalName: IdentifierExpression | null,
    range: Range
  ): ExportMember {
    var elem = new ExportMember();
    elem.range = range;
    elem.localName = name;
    if (!externalName) externalName = name;
    elem.exportedName = externalName;
    return elem;
  }

  static createExpressionStatement(
    expression: Expression
  ): ExpressionStatement {
    var stmt = new ExpressionStatement();
    stmt.range = expression.range;
    stmt.expression = expression;
    return stmt;
  }

  static createIfStatement(
    condition: Expression,
    ifTrue: Statement,
    ifFalse: Statement | null,
    range: Range
  ): IfStatement {
    var stmt = new IfStatement();
    stmt.range = range;
    stmt.condition = condition;
    stmt.ifTrue = ifTrue;
    stmt.ifFalse = ifFalse;
    return stmt;
  }

  static createImportStatement(
    decls: ImportDeclaration[] | null,
    path: StringLiteralExpression,
    range: Range
  ): ImportStatement {
    var stmt = new ImportStatement();
    stmt.range = range;
    stmt.declarations = decls;
    stmt.namespaceName = null;
    stmt.path = path;
    var normalizedPath = normalizePath(path.value);
    if (path.value.startsWith(".")) { // relative in project
      stmt.normalizedPath = resolvePath(
        normalizedPath,
        range.source.normalizedPath
      );
    } else { // absolute in library
      if (!normalizedPath.startsWith(LIBRARY_PREFIX)) {
        normalizedPath = LIBRARY_PREFIX + normalizedPath;
      }
      stmt.normalizedPath = normalizedPath;
    }
    stmt.internalPath = mangleInternalPath(stmt.normalizedPath);
    return stmt;
  }

  static createImportStatementWithWildcard(
    identifier: IdentifierExpression,
    path: StringLiteralExpression,
    range: Range
  ): ImportStatement {
    var stmt = new ImportStatement();
    stmt.range = range;
    stmt.declarations = null;
    stmt.namespaceName = identifier;
    stmt.path = path;
    var normalizedPath = normalizePath(path.value);
    if (path.value.startsWith(".")) {
      stmt.normalizedPath = resolvePath(
        normalizedPath,
        range.source.normalizedPath
      );
    } else {
      if (!normalizedPath.startsWith(LIBRARY_PREFIX)) {
        normalizedPath = LIBRARY_PREFIX + normalizedPath;
      }
      stmt.normalizedPath = normalizedPath;
    }
    stmt.internalPath = mangleInternalPath(stmt.normalizedPath);
    return stmt;
  }

  static createImportDeclaration(
    foreignName: IdentifierExpression,
    name: IdentifierExpression | null,
    range: Range
  ): ImportDeclaration {
    var elem = new ImportDeclaration();
    elem.range = range;
    elem.foreignName = foreignName;
    if (!name) name = foreignName;
    elem.name = name;
    return elem;
  }

  static createInterfaceDeclaration(
    name: IdentifierExpression,
    typeParameters: TypeParameterNode[] | null,
    extendsType: NamedTypeNode | null, // can't be a function
    members: DeclarationStatement[],
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    range: Range
  ): InterfaceDeclaration {
    var stmt = new InterfaceDeclaration();
    stmt.range = range;
    stmt.flags = flags;
    stmt.name = name;
    stmt.typeParameters = typeParameters;
    stmt.extendsType = extendsType;
    stmt.members = members;
    stmt.decorators = decorators;
    return stmt;
  }

  static createFieldDeclaration(
    name: IdentifierExpression,
    type: TypeNode | null,
    initializer: Expression | null,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    range: Range
  ): FieldDeclaration {
    var stmt = new FieldDeclaration();
    stmt.range = range;
    stmt.flags = flags;
    stmt.name = name;
    stmt.type = type;
    stmt.initializer = initializer;
    stmt.decorators = decorators;
    return stmt;
  }

  static createForStatement(
    initializer: Statement | null,
    condition: Expression | null,
    incrementor: Expression | null,
    statement: Statement,
    range: Range
  ): ForStatement {
    var stmt = new ForStatement();
    stmt.range = range;
    stmt.initializer = initializer;
    stmt.condition = condition;
    stmt.incrementor = incrementor;
    stmt.statement = statement;
    return stmt;
  }

  static createFunctionDeclaration(
    name: IdentifierExpression,
    typeParameters: TypeParameterNode[] | null,
    signature: FunctionTypeNode,
    body: Statement | null,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    arrowKind: ArrowKind,
    range: Range
  ): FunctionDeclaration {
    var stmt = new FunctionDeclaration();
    stmt.range = range;
    stmt.flags = flags;
    stmt.name = name;
    stmt.typeParameters = typeParameters;
    stmt.signature = signature;
    stmt.body = body;
    stmt.decorators = decorators;
    stmt.arrowKind = arrowKind;
    return stmt;
  }

  static createIndexSignatureDeclaration(
    keyType: NamedTypeNode,
    valueType: TypeNode,
    range: Range
  ): IndexSignatureDeclaration {
    var elem = new IndexSignatureDeclaration();
    elem.range = range;
    elem.keyType = keyType;
    elem.valueType = valueType;
    return elem;
  }

  static createMethodDeclaration(
    name: IdentifierExpression,
    typeParameters: TypeParameterNode[] | null,
    signature: FunctionTypeNode,
    body: Statement | null,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    range: Range
  ): MethodDeclaration {
    var stmt = new MethodDeclaration();
    stmt.range = range;
    stmt.flags = flags;
    stmt.name = name;
    stmt.typeParameters = typeParameters;
    stmt.signature = signature;
    stmt.body = body;
    stmt.decorators = decorators;
    return stmt;
  }

  static createNamespaceDeclaration(
    name: IdentifierExpression,
    members: Statement[],
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    range: Range
  ): NamespaceDeclaration {
    var stmt = new NamespaceDeclaration();
    stmt.range = range;
    stmt.flags = flags;
    stmt.name = name;
    stmt.members = members;
    stmt.decorators = decorators;
    return stmt;
  }

  static createReturnStatement(
    value: Expression | null,
    range: Range
  ): ReturnStatement {
    var stmt = new ReturnStatement();
    stmt.range = range;
    stmt.value = value;
    return stmt;
  }

  static createSwitchStatement(
    condition: Expression,
    cases: SwitchCase[],
    range: Range
  ): SwitchStatement {
    var stmt = new SwitchStatement();
    stmt.range = range;
    stmt.condition = condition;
    stmt.cases = cases;
    return stmt;
  }

  static createSwitchCase(
    label: Expression | null,
    statements: Statement[],
    range: Range
  ): SwitchCase {
    var elem = new SwitchCase();
    elem.range = range;
    elem.label = label;
    elem.statements = statements;
    return elem;
  }

  static createThrowStatement(
    value: Expression,
    range: Range
  ): ThrowStatement {
    var stmt = new ThrowStatement();
    stmt.range = range;
    stmt.value = value;
    return stmt;
  }

  static createTryStatement(
    statements: Statement[],
    catchVariable: IdentifierExpression | null,
    catchStatements: Statement[] | null,
    finallyStatements: Statement[] | null,
    range: Range
  ): TryStatement {
    var stmt = new TryStatement();
    stmt.range = range;
    stmt.statements = statements;
    stmt.catchVariable = catchVariable;
    stmt.catchStatements = catchStatements;
    stmt.finallyStatements = finallyStatements;
    return stmt;
  }

  static createTypeDeclaration(
    name: IdentifierExpression,
    typeParameters: TypeParameterNode[] | null,
    alias: TypeNode,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    range: Range
  ): TypeDeclaration {
    var stmt = new TypeDeclaration();
    stmt.range = range;
    stmt.flags = flags;
    stmt.name = name;
    stmt.typeParameters = typeParameters;
    stmt.type = alias;
    stmt.decorators = decorators;
    return stmt;
  }

  static createVariableStatement(
    declarations: VariableDeclaration[],
    decorators: DecoratorNode[] | null,
    range: Range
  ): VariableStatement {
    var stmt = new VariableStatement();
    stmt.range = range;
    stmt.declarations = declarations;
    stmt.decorators = decorators;
    return stmt;
  }

  static createVariableDeclaration(
    name: IdentifierExpression,
    type: TypeNode | null,
    initializer: Expression | null,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    range: Range
  ): VariableDeclaration {
    var elem = new VariableDeclaration();
    elem.range = range;
    elem.flags = flags;
    elem.name = name;
    elem.type = type;
    elem.initializer = initializer;
    elem.decorators = decorators; // inherited
    return elem;
  }

  static createVoidStatement(
    expression: Expression,
    range: Range
  ): VoidStatement {
    var stmt = new VoidStatement();
    stmt.range = range;
    stmt.expression = expression;
    return stmt;
  }

  static createWhileStatement(
    condition: Expression,
    statement: Statement,
    range: Range
  ): WhileStatement {
    var stmt = new WhileStatement();
    stmt.range = range;
    stmt.condition = condition;
    stmt.statement = statement;
    return stmt;
  }
}

// types

export abstract class TypeNode extends Node {
  // kind varies

  /** Whether nullable or not. */
  isNullable: bool;

  abstract toString(): string;
}

/** Represents a type name. */
export class TypeName extends Node {
  kind = NodeKind.TYPENAME;

  /** Identifier of this part. */
  identifier: IdentifierExpression;
  /** Next part of the type name or `null` if this is the last part. */
  next: TypeName | null;

  toString(): string {
    let res = [this.identifier.symbol];
    let curr = this.next;
    while (curr != null) {
      res.push(curr.identifier.symbol);
      curr = curr.next;
    }
    return res.join("-");
  }

  visit(visitor: ASTVisitor): void {
    visitor.visitTypeName(this);
  }
}

/** Represents a named type. */
export class NamedTypeNode extends TypeNode {
  kind = NodeKind.NAMEDTYPE;

  /** Type name. */
  name: TypeName;
  /** Type argument references. */
  typeArguments: TypeNode[] | null;

  toString(): string {
    let res = this.name.toString();
    if (this.typeArguments && this.typeArguments.length > 0) {
      res +=
        "<" + this.typeArguments.map(arg => arg.toString()).join(", ") + ">";
    }
    return res;
  }

  visit(visitor: ASTVisitor): void {
    visitor.visitNamedTypeNode(this);
  }
}

/** Represents a function type. */
export class FunctionTypeNode extends TypeNode {
  kind = NodeKind.FUNCTIONTYPE;

  /** Accepted parameters. */
  parameters: ParameterNode[];
  /** Return type. */
  returnType: TypeNode;
  /** Explicitly provided this type, if any. */
  explicitThisType: NamedTypeNode | null; // can't be a function

  toString(): string {
    let res = "(" + this.parameters.map(x => x.type.toString()).join(",") + ")";
    return (res += "->" + this.returnType.toString());
  }

  visit(visitor: ASTVisitor): void {
    visitor.visitFunctionTypeNode(this);
  }
}

/** Represents a type parameter. */
export class TypeParameterNode extends Node {
  kind = NodeKind.TYPEPARAMETER;

  /** Identifier reference. */
  name: IdentifierExpression;
  /** Extended type reference, if any. */
  extendsType: NamedTypeNode | null; // can't be a function
  /** Default type if omitted, if any. */
  defaultType: NamedTypeNode | null; // can't be a function

  visit(visitor: ASTVisitor): void {
    visitor.visitTypeParameter(this);
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
  kind = NodeKind.PARAMETER;

  /** Parameter kind. */
  parameterKind: ParameterKind;
  /** Parameter name. */
  name: IdentifierExpression;
  /** Parameter type. */
  type: TypeNode;
  /** Initializer expression, if present. */
  initializer: Expression | null;
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

  visit(visitor: ASTVisitor): void {
    visitor.visitParameter(this);
  }
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
  SEALED,
  INLINE,
  EXTERNAL,
  BUILTIN,
  LAZY,
  UNSAFE
}

/** Returns the kind of the specified decorator. Defaults to {@link DecoratorKind.CUSTOM}. */
export function decoratorNameToKind(name: Expression): DecoratorKind {
  // @global, @inline, @operator, @sealed, @unmanaged
  if (name.kind == NodeKind.IDENTIFIER) {
    let nameStr = (<IdentifierExpression>name).text;
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
      case CharCode.s: {
        if (nameStr == "sealed") return DecoratorKind.SEALED;
        break;
      }
      case CharCode.u: {
        if (nameStr == "unmanaged") return DecoratorKind.UNMANAGED;
        if (nameStr == "unsafe") return DecoratorKind.UNSAFE;
        break;
      }
    }
  } else if (
    name.kind == NodeKind.PROPERTYACCESS &&
    (<PropertyAccessExpression>name).expression.kind == NodeKind.IDENTIFIER
  ) {
    let nameStr = (<IdentifierExpression>(<PropertyAccessExpression>name).expression).text;
    assert(nameStr.length);
    let propStr = (<PropertyAccessExpression>name).property.text;
    assert(propStr.length);
    // @operator.binary, @operator.prefix, @operator.postfix
    if (nameStr == "operator") {
      switch (propStr.charCodeAt(0)) {
        case CharCode.b: {
          if (propStr == "binary") return DecoratorKind.OPERATOR_BINARY;
          break;
        }
        case CharCode.p: {
          switch (propStr) {
            case "prefix": return DecoratorKind.OPERATOR_PREFIX;
            case "postfix": return DecoratorKind.OPERATOR_POSTFIX;
          }
          break;
        }
      }
    }
  }
  return DecoratorKind.CUSTOM;
}

/** Represents a decorator. */
export class DecoratorNode extends Node {
  kind = NodeKind.DECORATOR;

  /** Built-in kind, if applicable. */
  decoratorKind: DecoratorKind;
  /** Name expression. */
  name: Expression;
  /** Argument expressions. */
  arguments: Expression[] | null;

  visit(visitor: ASTVisitor): void {
    visitor.visitDecoratorNode(this);
  }
}

/** Comment kinds. */
export enum CommentKind {
  /** Line comment. */
  LINE,
  /** Triple-slash comment. */
  TRIPLE,
  /** Block comment. */
  BLOCK
}

/** Represents a comment. */
export class CommentNode extends Node {
  kind = NodeKind.COMMENT;

  /** Comment kind. */
  commentKind: CommentKind;
  /** Comment text. */
  text: string;

  visit(visitor: ASTVisitor): void {
    visitor.visitComment(this);
  }
}

// expressions

/** Base class of all expression nodes. */
export abstract class Expression extends Node { }

/** Represents an identifier expression. */
export class IdentifierExpression extends Expression {
  kind = NodeKind.IDENTIFIER;

  /** Textual name. */
  text: string;
  /** Symbol. */
  symbol: string; // TODO: symbol
  /** Whether quoted or not. */
  isQuoted: bool;
  visit(visitor: ASTVisitor): void {
    visitor.visitIdentifierExpression(this);
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
  kind = NodeKind.LITERAL;

  /** Specific literal kind. */
  literalKind: LiteralKind;

  visit(visitor: ASTVisitor): void {
    visitor.visitLiteralExpression(this);
  }
}

/** Represents an `[]` literal expression. */
export class ArrayLiteralExpression extends LiteralExpression {
  literalKind = LiteralKind.ARRAY;

  /** Nested element expressions. */
  elementExpressions: (Expression | null)[];

  visit(visitor: ASTVisitor): void {
    visitor.visitArrayLiteralExpression(this);
  }
}

/** Indicates the kind of an assertion. */
export enum AssertionKind {
  PREFIX,
  AS,
  NONNULL
}

/** Represents an assertion expression. */
export class AssertionExpression extends Expression {
  kind = NodeKind.ASSERTION;

  /** Specific kind of this assertion. */
  assertionKind: AssertionKind;
  /** Expression being asserted. */
  expression: Expression;
  /** Target type. */
  toType: TypeNode | null;

  visit(visitor: ASTVisitor): void {
    visitor.visitAssertionExpression(this);
  }
}

/** Represents a binary expression. */
export class BinaryExpression extends Expression {
  kind = NodeKind.BINARY;

  /** Operator token. */
  operator: Token;
  /** Left-hand side expression */
  left: Expression;
  /** Right-hand side expression. */
  right: Expression;

  visit(visitor: ASTVisitor): void {
    visitor.visitBinaryExpression(this);
  }
}

/** Represents a call expression. */
export class CallExpression extends Expression {
  kind = NodeKind.CALL;

  /** Called expression. Usually an identifier or property access expression. */
  expression: Expression;
  /** Provided type arguments. */
  typeArguments: TypeNode[] | null;
  /** Provided arguments. */
  arguments: Expression[];

  /** Gets the type arguments range for reporting. */
  get typeArgumentsRange(): Range {
    var typeArguments = this.typeArguments;
    var numTypeArguments: i32;
    if (typeArguments && (numTypeArguments = typeArguments.length)) {
      return Range.join(typeArguments[0].range, typeArguments[numTypeArguments - 1].range);
    }
    return this.expression.range;
  }

  /** Gets the arguments range for reporting. */
  get argumentsRange(): Range {
    var args = this.arguments;
    var numArguments = args.length;
    if (numArguments) {
      return Range.join(args[0].range, args[numArguments - 1].range);
    }
    return this.expression.range;
  }

  visit(visitor: ASTVisitor): void {
    visitor.visitCallExpression(this);
  }
}

/** Represents a class expression using the 'class' keyword. */
export class ClassExpression extends Expression {
  kind = NodeKind.CLASS;

  /** Inline class declaration. */
  declaration: ClassDeclaration;
  
  visit(visitor: ASTVisitor): void {
    visitor.visitClassExpression(this);
  }
}

/** Represents a comma expression composed of multiple expressions. */
export class CommaExpression extends Expression {
  kind = NodeKind.COMMA;

  /** Sequential expressions. */
  expressions: Expression[];
  
  visit(visitor: ASTVisitor): void {
    visitor.visitCommaExpression(this);
  }
}

/** Represents a `constructor` expression. */
export class ConstructorExpression extends IdentifierExpression {
  kind = NodeKind.CONSTRUCTOR;
  text = "constructor";
  symbol = CommonSymbols.constructor;

  visit(visitor: ASTVisitor): void {
    visitor.visitConstructorExpression(this);
  }
}

/** Represents an element access expression, e.g., array access. */
export class ElementAccessExpression extends Expression {
  kind = NodeKind.ELEMENTACCESS;

  /** Expression being accessed. */
  expression: Expression;
  /** Element of the expression being accessed. */
  elementExpression: Expression;
  
  visit(visitor: ASTVisitor): void {
    visitor.visitElementAccessExpression(this);
  }
}

/** Represents a float literal expression. */
export class FloatLiteralExpression extends LiteralExpression {
  literalKind = LiteralKind.FLOAT;

  /** Float value. */
  value: f64;

  visit(visitor: ASTVisitor): void {
    visitor.visitFloatLiteralExpression(this);
  }
}

/** Represents a function expression using the 'function' keyword. */
export class FunctionExpression extends Expression {
  kind = NodeKind.FUNCTION;

  /** Inline function declaration. */
  declaration: FunctionDeclaration;

  visit(visitor: ASTVisitor): void {
    visitor.visitFunctionExpression(this);
  }
}

/** Represents an `instanceof` expression. */
export class InstanceOfExpression extends Expression {
  kind = NodeKind.INSTANCEOF;

  /** Expression being asserted. */
  expression: Expression;
  /** Type to test for. */
  isType: TypeNode;

  visit(visitor: ASTVisitor): void {
    visitor.visitInstanceOfExpression(this);
  }
}

/** Represents an integer literal expression. */
export class IntegerLiteralExpression extends LiteralExpression {
  literalKind = LiteralKind.INTEGER;

  /** Integer value. */
  value: I64;

  visit(visitor: ASTVisitor): void {
    visitor.visitIntegerLiteralExpression(this);
  }
}

/** Represents a `new` expression. Like a call but with its own kind. */
export class NewExpression extends CallExpression {
  kind = NodeKind.NEW;

  visit(visitor: ASTVisitor): void {
    visitor.visitNewExpression(this);
  }
}

/** Represents a `null` expression. */
export class NullExpression extends IdentifierExpression {
  kind = NodeKind.NULL;
  text = "null";
  symbol = CommonSymbols.null_;

  visit(visitor: ASTVisitor): void {
    visitor.visitNullExperssion(this);
  }
}

/** Represents an object literal expression. */
export class ObjectLiteralExpression extends LiteralExpression {
  literalKind = LiteralKind.OBJECT;

  /** Field names. */
  names: IdentifierExpression[];
  /** Field values. */
  values: Expression[];

  visit(visitor: ASTVisitor): void {
    visitor.visitObjectLiteralExpression(this);
  }
}

/** Represents a parenthesized expression. */
export class ParenthesizedExpression extends Expression {
  kind = NodeKind.PARENTHESIZED;

  /** Expression in parenthesis. */
  expression: Expression;

  visit(visitor: ASTVisitor): void {
    visitor.visitParenthesizedExpression(this);
  }
}

/** Represents a property access expression. */
export class PropertyAccessExpression extends Expression {
  kind = NodeKind.PROPERTYACCESS;

  /** Expression being accessed. */
  expression: Expression;
  /** Property of the expression being accessed. */
  property: IdentifierExpression;

  visit(visitor: ASTVisitor): void {
    visitor.visitPropertyAccessExpression(this);
  }
}

/** Represents a regular expression literal expression. */
export class RegexpLiteralExpression extends LiteralExpression {
  literalKind = LiteralKind.REGEXP;

  /** Regular expression pattern. */
  pattern: string;
  /** Regular expression flags. */
  patternFlags: string;

  visit(visitor: ASTVisitor): void {
    visitor.visitRegexpLiteralExpression(this);
  }
}

/** Represents a ternary expression, i.e., short if notation. */
export class TernaryExpression extends Expression {
  kind = NodeKind.TERNARY;

  /** Condition expression. */
  condition: Expression;
  /** Expression executed when condition is `true`. */
  ifThen: Expression;
  /** Expression executed when condition is `false`. */
  ifElse: Expression;

  visit(visitor: ASTVisitor): void {
    visitor.visitTernaryExpression(this);
  }
}

/** Represents a string literal expression. */
export class StringLiteralExpression extends LiteralExpression {
  literalKind = LiteralKind.STRING;

  /** String value without quotes. */
  value: string;

  visit(visitor: ASTVisitor): void {
    visitor.visitStringLiteralExpression(this);
  }
}

/** Represents a `super` expression. */
export class SuperExpression extends IdentifierExpression {
  kind = NodeKind.SUPER;
  text = "super";
  symbol = CommonSymbols.super_;

  visit(visitor: ASTVisitor): void {
    visitor.visitSuperExpression(this);
  }
}

/** Represents a `this` expression. */
export class ThisExpression extends IdentifierExpression {
  kind = NodeKind.THIS;
  text = "this";
  symbol = CommonSymbols.this_;

  visit(visitor: ASTVisitor): void {
    visitor.visitThisExpression(this);
  }
}

/** Represents a `true` expression. */
export class TrueExpression extends IdentifierExpression {
  kind = NodeKind.TRUE;
  text = "true";
  symbol = CommonSymbols.true_;

  visit(visitor: ASTVisitor): void {
    visitor.visitTrueExpression(this);
  }
}

/** Represents a `false` expression. */
export class FalseExpression extends IdentifierExpression {
  kind = NodeKind.FALSE;
  text = "false";
  symbol = CommonSymbols.false_;
  
  visit(visitor: ASTVisitor): void {
    visitor.visitFalseExpression(this);
  }
}

/** Base class of all unary expressions. */
export abstract class UnaryExpression extends Expression {

  /** Operator token. */
  operator: Token;
  /** Operand expression. */
  operand: Expression;

  visit(visitor: ASTVisitor): void {
    visitor.visitUnaryExpression(this);
  }
}

/** Represents a unary postfix expression, e.g. a postfix increment. */
export class UnaryPostfixExpression extends UnaryExpression {
  kind = NodeKind.UNARYPOSTFIX;

  visit(visitor: ASTVisitor): void {
    visitor.visitUnaryPostfixExpression(this);
  }
}

/** Represents a unary prefix expression, e.g. a negation. */
export class UnaryPrefixExpression extends UnaryExpression {
  kind = NodeKind.UNARYPREFIX;

  visit(visitor: ASTVisitor): void {
    visitor.visitUnaryPrefixExpression(this);
  }
}

// statements

/** Base class of all statement nodes. */
export abstract class Statement extends Node { }

/** Indicates the specific kind of a source. */
export enum SourceKind {
  /** Default source. Usually imported from an entry file. */
  DEFAULT,
  /** Entry file. */
  ENTRY,
  /** Library file. */
  LIBRARY
}

/** A top-level source node. */
export class Source extends Node {
  kind = NodeKind.SOURCE;
  parent = null;

  /** Source kind. */
  sourceKind: SourceKind;
  /** Normalized path. */
  normalizedPath: string;
  /** Path used internally. */
  internalPath: string;
  /** Simple path (last part without extension). */
  simplePath: string;
  /** Contained statements. */
  statements: Statement[];
  /** Full source text. */
  text: string;
  /** Tokenizer reference. */
  tokenizer: Tokenizer | null = null;
  /** Source map index. */
  debugInfoIndex: i32 = -1;
  /** Re-exported sources. */
  exportPaths: Set<string> | null = null;

  /** Constructs a new source node. */
  constructor(normalizedPath: string, text: string, kind: SourceKind) {
    super();
    this.sourceKind = kind;
    this.normalizedPath = normalizedPath;
    var internalPath = mangleInternalPath(this.normalizedPath);
    this.internalPath = internalPath;
    var pos = internalPath.lastIndexOf(PATH_DELIMITER);
    this.simplePath = pos >= 0 ? internalPath.substring(pos + 1) : internalPath;
    this.statements = new Array();
    this.range = new Range(this, 0, text.length);
    this.text = text;
  }

  /** Tests if this source is an entry file. */
  get isEntry(): bool { return this.sourceKind == SourceKind.ENTRY; }
  /** Tests if this source is a stdlib file. */
  get isLibrary(): bool { return this.sourceKind == SourceKind.LIBRARY; }

  visit(visitor: ASTVisitor): void {
    visitor.visitSource(this);
  }
}

/** Base class of all declaration statements. */
export abstract class DeclarationStatement extends Statement {
  /** Simple name being declared. */
  name: IdentifierExpression;
  /** Array of decorators. */
  decorators: DecoratorNode[] | null = null;
  /** Common flags indicating specific traits. */
  flags: CommonFlags = CommonFlags.NONE;

  /** Tests if this node has the specified flag or flags. */
  is(flag: CommonFlags): bool { return (this.flags & flag) == flag; }
  /** Tests if this node has one of the specified flags. */
  isAny(flag: CommonFlags): bool { return (this.flags & flag) != 0; }
  /** Sets a specific flag or flags. */
  set(flag: CommonFlags): void { this.flags |= flag; }
}

/** Represents an index signature declaration. */
export class IndexSignatureDeclaration extends DeclarationStatement {
  kind = NodeKind.INDEXSIGNATUREDECLARATION;

  /** Key type. */
  keyType: NamedTypeNode;
  /** Value type. */
  valueType: TypeNode;

  visit(visitor: ASTVisitor): void {
    visitor.visitIndexSignatureDeclaration(this);
  }
}

/** Base class of all variable-like declaration statements. */
export abstract class VariableLikeDeclarationStatement extends DeclarationStatement {

  /** Variable type. */
  type: TypeNode | null;
  /** Variable initializer. */
  initializer: Expression | null;
}

/** Represents a block statement. */
export class BlockStatement extends Statement {
  kind = NodeKind.BLOCK;

  /** Contained statements. */
  statements: Statement[];

  visit(visitor: ASTVisitor): void {
    visitor.visitBlockStatement(this);
  }
}

/** Represents a `break` statement. */
export class BreakStatement extends Statement {
  kind = NodeKind.BREAK;

  /** Target label, if applicable. */
  label: IdentifierExpression | null;

  visit(visitor: ASTVisitor): void {
    visitor.visitBreakStatement(this);
  }
}

/** Represents a `class` declaration. */
export class ClassDeclaration extends DeclarationStatement {
  kind = NodeKind.CLASSDECLARATION;

  /** Accepted type parameters. */
  typeParameters: TypeParameterNode[] | null;
  /** Base class type being extended, if any. */
  extendsType: NamedTypeNode | null; // can't be a function
  /** Interface types being implemented, if any. */
  implementsTypes: NamedTypeNode[] | null; // can't be functions
  /** Class member declarations. */
  members: DeclarationStatement[];

  get isGeneric(): bool {
    var typeParameters = this.typeParameters;
    return typeParameters != null && typeParameters.length > 0;
  }
  
  visit(visitor: ASTVisitor): void {
    visitor.visitClassDeclaration(this);
  }
}

/** Represents a `continue` statement. */
export class ContinueStatement extends Statement {
  kind = NodeKind.CONTINUE;

  /** Target label, if applicable. */
  label: IdentifierExpression | null;
  
  visit(visitor: ASTVisitor): void {
    visitor.visitContinueStatement(this);
  }
}

/** Represents a `do` statement. */
export class DoStatement extends Statement {
  kind = NodeKind.DO;

  /** Statement being looped over. */
  statement: Statement;
  /** Condition when to repeat. */
  condition: Expression;

  visit(visitor: ASTVisitor): void {
    visitor.visitDoStatement(this);
  }
}

/** Represents an empty statement, i.e., a semicolon terminating nothing. */
export class EmptyStatement extends Statement {
  kind = NodeKind.EMPTY;
  
  visit(visitor: ASTVisitor): void {
    visitor.visitEmptyStatement(this);
  }
}

/** Represents an `enum` declaration. */
export class EnumDeclaration extends DeclarationStatement {
  kind = NodeKind.ENUMDECLARATION;

  /** Enum value declarations. */
  values: EnumValueDeclaration[];

  visit(visitor: ASTVisitor): void {
    visitor.visitEnumDeclaration(this);
  }
}

/** Represents a value of an `enum` declaration. */
export class EnumValueDeclaration extends VariableLikeDeclarationStatement {
  kind = NodeKind.ENUMVALUEDECLARATION;
  // name is inherited

  /** Value expression. */
  value: Expression | null;
  
  visit(visitor: ASTVisitor): void {
    visitor.visitEnumValueDeclaration(this);
  }
}

/** Represents an `export import` statement of an interface. */
export class ExportImportStatement extends Node {
  kind = NodeKind.EXPORTIMPORT;

  /** Identifier being imported. */
  name: IdentifierExpression;
  /** Identifier being exported. */
  externalName: IdentifierExpression;

  visit(visitor: ASTVisitor): void {
    visitor.visitExportImportStatement(this);
  }
}

/** Represents a member of an `export` statement. */
export class ExportMember extends Node {
  kind = NodeKind.EXPORTMEMBER;

  /** Local identifier. */
  localName: IdentifierExpression;
  /** Exported identifier. */
  exportedName: IdentifierExpression;

  visit(visitor: ASTVisitor): void {
    visitor.visitExportMember(this);
  }
}

/** Represents an `export` statement. */
export class ExportStatement extends Statement {
  kind = NodeKind.EXPORT;

  /** Array of members if a set of named exports, or `null` if a file export. */
  members: ExportMember[] | null;
  /** Path being exported from, if applicable. */
  path: StringLiteralExpression | null;
  /** Normalized path, if `path` is set. */
  normalizedPath: string | null;
  /** Mangled internal path being referenced, if `path` is set. */
  internalPath: string | null;
  /** Whether this is a declared export. */
  isDeclare: bool;

  visit(visitor: ASTVisitor): void {
    visitor.visitExportStatement(this);
  }
}

/** Represents an `export default` statement. */
export class ExportDefaultStatement extends Statement {
  kind = NodeKind.EXPORTDEFAULT;

  /** Declaration being exported as default. */
  declaration: DeclarationStatement;

  visit(visitor: ASTVisitor): void {
    visitor.visitExportDefaultStatement(this);
  }
}

/** Represents an expression that is used as a statement. */
export class ExpressionStatement extends Statement {
  kind = NodeKind.EXPRESSION;

  /** Expression being used as a statement.*/
  expression: Expression;

  visit(visitor: ASTVisitor): void {
    visitor.visitExpressionStatement(this);
  }
}

/** Represents a field declaration within a `class`. */
export class FieldDeclaration extends VariableLikeDeclarationStatement {
  kind = NodeKind.FIELDDECLARATION;

  /** Parameter index if declared as a constructor parameter, otherwise `-1`. */
  parameterIndex: i32 = -1;

  visit(visitor: ASTVisitor): void {
    visitor.visitFieldDeclaration(this);
  }
}

/** Represents a `for` statement. */
export class ForStatement extends Statement {
  kind = NodeKind.FOR;

  /**
   * Initializer statement, if present.
   * Either a {@link VariableStatement} or {@link ExpressionStatement}.
   */
  initializer: Statement | null;
  /** Condition expression, if present. */
  condition: Expression | null;
  /** Incrementor expression, if present. */
  incrementor: Expression | null;
  /** Statement being looped over. */
  statement: Statement;

  visit(visitor: ASTVisitor): void {
    visitor.visitForStatement(this);
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
  kind = NodeKind.FUNCTIONDECLARATION;

  /** Type parameters, if any. */
  typeParameters: TypeParameterNode[] | null;
  /** Function signature. */
  signature: FunctionTypeNode;
  /** Body statement. Usually a block. */
  body: Statement | null;
  /** Arrow function kind, if applicable. */
  arrowKind: ArrowKind;

  get isGeneric(): bool {
    var typeParameters = this.typeParameters;
    return typeParameters != null && typeParameters.length > 0;
  }

  /** Clones this function declaration. */
  clone(): FunctionDeclaration {
    return Node.createFunctionDeclaration(
      this.name,
      this.typeParameters,
      this.signature,
      this.body,
      this.decorators,
      this.flags,
      this.arrowKind,
      this.range
    );
  }

  visit(visitor: ASTVisitor): void {
    visitor.visitFunctionDeclaration(this);
  }
}

/** Represents an `if` statement. */
export class IfStatement extends Statement {
  kind = NodeKind.IF;

  /** Condition. */
  condition: Expression;
  /** Statement executed when condition is `true`. */
  ifTrue: Statement;
  /** Statement executed when condition is `false`. */
  ifFalse: Statement | null;
  
  visit(visitor: ASTVisitor): void {
    visitor.visitIfStatement(this);
  }
}

/** Represents an `import` declaration part of an {@link ImportStatement}. */
export class ImportDeclaration extends DeclarationStatement {
  kind = NodeKind.IMPORTDECLARATION;

  /** Identifier being imported. */
  foreignName: IdentifierExpression;

  visit(visitor: ASTVisitor): void {
    visitor.visitImportDeclaration(this);
  }
}

/** Represents an `import` statement. */
export class ImportStatement extends Statement {
  kind = NodeKind.IMPORT;

  /** Array of member declarations or `null` if an asterisk import. */
  declarations: ImportDeclaration[] | null;
  /** Name of the local namespace, if an asterisk import. */
  namespaceName: IdentifierExpression | null;
  /** Path being imported from. */
  path: StringLiteralExpression;
  /** Normalized path. */
  normalizedPath: string;
  /** Mangled internal path being referenced. */
  internalPath: string;

  visit(visitor: ASTVisitor): void {
    visitor.visitImportStatement(this);
  }
}

/** Represents an `interfarce` declaration. */
export class InterfaceDeclaration extends ClassDeclaration {
  kind = NodeKind.INTERFACEDECLARATION;
  
  visit(visitor: ASTVisitor): void {
    visitor.visitInterfaceDeclaration(this);
  }
}

/** Represents a method declaration within a `class`. */
export class MethodDeclaration extends FunctionDeclaration {
  kind = NodeKind.METHODDECLARATION;

  visit(visitor: ASTVisitor): void {
    visitor.visitMethodDeclaration(this);
  }
}

/** Represents a `namespace` declaration. */
export class NamespaceDeclaration extends DeclarationStatement {
  kind = NodeKind.NAMESPACEDECLARATION;

  /** Array of namespace members. */
  members: Statement[];

  visit(visitor: ASTVisitor): void {
    visitor.visitNamespaceDeclaration(this);
  }
}

/** Represents a `return` statement. */
export class ReturnStatement extends Statement {
  kind = NodeKind.RETURN;

  /** Value expression being returned, if present. */
  value: Expression | null;

  visit(visitor: ASTVisitor): void {
    visitor.visitReturnStatement(this);
  }
}

/** Represents a single `case` within a `switch` statement. */
export class SwitchCase extends Node {
  kind = NodeKind.SWITCHCASE;

  /** Label expression. `null` indicates the default case. */
  label: Expression | null;
  /** Contained statements. */
  statements: Statement[];

  visit(visitor: ASTVisitor): void {
    visitor.visitSwitchCase(this);
  }
}

/** Represents a `switch` statement. */
export class SwitchStatement extends Statement {
  kind = NodeKind.SWITCH;

  /** Condition expression. */
  condition: Expression;
  /** Contained cases. */
  cases: SwitchCase[];

  visit(visitor: ASTVisitor): void {
    visitor.visitSwitchStatement(this);
  }
}

/** Represents a `throw` statement. */
export class ThrowStatement extends Statement {
  kind = NodeKind.THROW;

  /** Value expression being thrown. */
  value: Expression;

  visit(visitor: ASTVisitor): void {
    visitor.visitThrowStatement(this);
  }
}

/** Represents a `try` statement. */
export class TryStatement extends Statement {
  kind = NodeKind.TRY;

  /** Contained statements. */
  statements: Statement[];
  /** Exception variable name, if a `catch` clause is present. */
  catchVariable: IdentifierExpression | null;
  /** Statements being executed on catch, if a `catch` clause is present. */
  catchStatements: Statement[] | null;
  /** Statements being executed afterwards, if a `finally` clause is present. */
  finallyStatements: Statement[] | null;

  visit(visitor: ASTVisitor): void {
    visitor.visitTryStatement(this);
  }
}

/** Represents a `type` declaration. */
export class TypeDeclaration extends DeclarationStatement {
  kind = NodeKind.TYPEDECLARATION;

  /** Type parameters, if any. */
  typeParameters: TypeParameterNode[] | null;
  /** Type being aliased. */
  type: TypeNode;

  visit(visitor: ASTVisitor): void {
    visitor.visitTypeDeclaration(this);
  }
}

/** Represents a variable declaration part of a {@link VariableStatement}. */
export class VariableDeclaration extends VariableLikeDeclarationStatement {
  kind = NodeKind.VARIABLEDECLARATION;

  visit(visitor: ASTVisitor): void {
    visitor.visitVariableDeclaration(this);
  }
}

/** Represents a variable statement wrapping {@link VariableDeclaration}s. */
export class VariableStatement extends Statement {
  kind = NodeKind.VARIABLE;

  /** Array of decorators. */
  decorators: DecoratorNode[] | null;
  /** Array of member declarations. */
  declarations: VariableDeclaration[];

  visit(visitor: ASTVisitor): void {
    visitor.visitVariableStatement(this);
  }
}

/** Represents a void statement dropping an expression's value. */
export class VoidStatement extends Statement {
  kind = NodeKind.VOID;

  /** Expression being dropped. */
  expression: Expression;

  visit(visitor: ASTVisitor): void {
    visitor.visitVoidStatement(this);
  }
}

/** Represents a `while` statement. */
export class WhileStatement extends Statement {
  kind = NodeKind.WHILE;

  /** Condition expression. */
  condition: Expression;
  /** Statement being looped over. */
  statement: Statement;

  visit(visitor: ASTVisitor): void {
    visitor.visitWhileStatement(this);
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
  if (path.endsWith(".ts")) path = path.substring(0, path.length - 3);
  return path;
}

/** Tests if the specified type node represents an omitted type. */
export function isTypeOmitted(type: TypeNode): bool {
  if (type.kind == NodeKind.NAMEDTYPE) {
    let name = (<NamedTypeNode>type).name;
    return !(name.next || name.identifier.text.length);
  }
  return false;
}

/** An AST visitor interface. */
export interface ASTVisitor {
  visitSource(node: Source): void;
  
  // visitNode(node: Node): void;
  // visitSource(source: Source): void;
  // types
  
  visitTypeNode(node: TypeNode): void;
  visitTypeName(node: TypeName): void;
  visitNamedTypeNode(node: NamedTypeNode): void;
  visitFunctionTypeNode(node: FunctionTypeNode): void;
  visitTypeParameter(node: TypeParameterNode): void;
  // expressions
  
  visitIdentifierExpression(node: IdentifierExpression): void;
  visitArrayLiteralExpression(node: ArrayLiteralExpression): void;
  visitObjectLiteralExpression(node: ObjectLiteralExpression): void;
  visitAssertionExpression(node: AssertionExpression): void;
  visitBinaryExpression(node: BinaryExpression): void;
  visitCallExpression(node: CallExpression): void;
  visitClassExpression(node: ClassExpression): void;
  visitCommaExpression(node: CommaExpression): void;
  visitElementAccessExpression(node: ElementAccessExpression): void;
  visitFunctionExpression(node: FunctionExpression): void;
  visitLiteralExpression(node: LiteralExpression): void;
  visitFloatLiteralExpression(node: FloatLiteralExpression): void;
  visitInstanceOfExpression(node: InstanceOfExpression): void;
  visitIntegerLiteralExpression(node: IntegerLiteralExpression): void;
  visitStringLiteral(str: string, singleQuoted?: bool): void;
  visitStringLiteralExpression(node: StringLiteralExpression): void;
  visitRegexpLiteralExpression(node: RegexpLiteralExpression): void;
  visitNewExpression(node: NewExpression): void;
  visitParenthesizedExpression(node: ParenthesizedExpression): void;
  visitPropertyAccessExpression(node: PropertyAccessExpression): void;
  visitTernaryExpression(node: TernaryExpression): void;
  visitUnaryExpression(node: UnaryExpression): void;
  visitUnaryPostfixExpression(node: UnaryPostfixExpression): void;
  visitUnaryPrefixExpression(node: UnaryPrefixExpression): void;
  visitSuperExpression(node: SuperExpression): void;
  visitFalseExpression(node: FalseExpression): void;
  visitTrueExpression(node: TrueExpression): void;
  visitThisExpression(node: ThisExpression): void;
  visitNullExperssion(node: NullExpression): void;
  visitConstructorExpression(node: ConstructorExpression): void;
  // statements
  
  visitNodeAndTerminate(statement: Statement): void;
  visitBlockStatement(node: BlockStatement): void;
  visitBreakStatement(node: BreakStatement): void;
  visitContinueStatement(node: ContinueStatement): void;
  visitClassDeclaration(node: ClassDeclaration, isDefault?: bool): void;
  visitDoStatement(node: DoStatement): void;
  visitEmptyStatement(node: EmptyStatement): void;
  visitEnumDeclaration(node: EnumDeclaration, isDefault?: bool): void;
  visitEnumValueDeclaration(node: EnumValueDeclaration): void;
  visitExportImportStatement(node: ExportImportStatement): void;
  visitExportMember(node: ExportMember): void;
  visitExportStatement(node: ExportStatement): void;
  visitExportDefaultStatement(node: ExportDefaultStatement): void;
  visitExpressionStatement(node: ExpressionStatement): void;
  visitFieldDeclaration(node: FieldDeclaration): void;
  visitForStatement(node: ForStatement): void;
  visitFunctionDeclaration(node: FunctionDeclaration, isDefault?: bool): void;
  visitFunctionCommon(node: FunctionDeclaration): void;
  visitIfStatement(node: IfStatement): void;
  visitImportDeclaration(node: ImportDeclaration): void;
  visitImportStatement(node: ImportStatement): void;
  visitIndexSignatureDeclaration(node: IndexSignatureDeclaration): void;
  visitInterfaceDeclaration(node: InterfaceDeclaration, isDefault?: bool): void;
  visitMethodDeclaration(node: MethodDeclaration): void;
  visitNamespaceDeclaration(node: NamespaceDeclaration, isDefault?: bool): void;
  visitReturnStatement(node: ReturnStatement): void;
  visitSwitchCase(node: SwitchCase): void;
  visitSwitchStatement(node: SwitchStatement): void;
  visitThrowStatement(node: ThrowStatement): void;
  visitTryStatement(node: TryStatement): void;
  visitTypeDeclaration(node: TypeDeclaration): void;
  visitVariableDeclaration(node: VariableDeclaration): void;
  visitVariableStatement(node: VariableStatement): void;
  visitWhileStatement(node: WhileStatement): void;
  visitVoidStatement(node: VoidStatement): void;
  // other
  
  visitComment(node: CommentNode): void;
  visitDecoratorNode(node: DecoratorNode): void;
  visitParameter(node: ParameterNode): void;
}

