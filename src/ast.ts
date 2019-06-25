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
  TYPE,
  TYPENAME,
  TYPEPARAMETER,
  PARAMETER,
  SIGNATURE,

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

  static createType(
    name: TypeName,
    typeArguments: CommonTypeNode[] | null,
    isNullable: bool,
    range: Range
  ): TypeNode {
    var type = new TypeNode();
    type.range = range;
    type.name = name;
    type.typeArguments = typeArguments;
    type.isNullable = isNullable;
    return type;
  }

  static createOmittedType(
    range: Range
  ): TypeNode {
    return Node.createType(
      Node.createSimpleTypeName("", range),
      null,
      false,
      range
    );
  }

  static createTypeParameter(
    name: IdentifierExpression,
    extendsType: TypeNode | null,
    defaultType: TypeNode | null,
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
    type: CommonTypeNode,
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

  static createSignature(
    parameters: ParameterNode[],
    returnType: CommonTypeNode,
    explicitThisType: TypeNode | null,
    isNullable: bool,
    range: Range
  ): SignatureNode {
    var sig = new SignatureNode();
    sig.range = range;
    sig.parameters = parameters;
    sig.returnType = returnType;
    sig.explicitThisType = explicitThisType;
    sig.isNullable = isNullable;
    return sig;
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
    toType: CommonTypeNode | null,
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
    typeArgs: CommonTypeNode[] | null,
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
    isType: CommonTypeNode,
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
    typeArgs: CommonTypeNode[] | null,
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
    extendsType: TypeNode | null, // can't be a function
    implementsTypes: TypeNode[] | null, // can't be functions
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
    stmt.normalizedPath = resolvePath(
      normalizePath(path.value),
      range.source.normalizedPath
    );
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
    extendsType: TypeNode | null, // can't be a function
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
    type: CommonTypeNode | null,
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
    signature: SignatureNode,
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
    keyType: TypeNode,
    valueType: CommonTypeNode,
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
    signature: SignatureNode,
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
    alias: CommonTypeNode,
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
    type: CommonTypeNode | null,
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

export abstract class CommonTypeNode extends Node {
  // kind varies

  /** Whether nullable or not. */
  isNullable: bool;
}

/** Represents a type name. */
export class TypeName extends Node {
  kind = NodeKind.TYPENAME;

  /** Identifier of this part. */
  identifier: IdentifierExpression;
  /** Next part of the type name or `null` if this is the last part. */
  next: TypeName | null;
}

/** Represents a type annotation. */
export class TypeNode extends CommonTypeNode {
  kind = NodeKind.TYPE;

  /** Type name. */
  name: TypeName;
  /** Type argument references. */
  typeArguments: CommonTypeNode[] | null;
}

/** Represents a type parameter. */
export class TypeParameterNode extends Node {
  kind = NodeKind.TYPEPARAMETER;

  /** Identifier reference. */
  name: IdentifierExpression;
  /** Extended type reference, if any. */
  extendsType: TypeNode | null; // can't be a function
  /** Default type if omitted, if any. */
  defaultType: TypeNode | null; // can't be a function
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
  type: CommonTypeNode;
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
}

/** Represents a function signature. */
export class SignatureNode extends CommonTypeNode {
  kind = NodeKind.SIGNATURE;

  /** Accepted parameters. */
  parameters: ParameterNode[];
  /** Return type. */
  returnType: CommonTypeNode;
  /** Explicitly provided this type, if any. */
  explicitThisType: TypeNode | null; // can't be a function
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
  START
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
        if (nameStr == "start") return DecoratorKind.START;
        break;
      }
      case CharCode.u: {
        if (nameStr == "unmanaged") return DecoratorKind.UNMANAGED;
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
}

/** Represents an `[]` literal expression. */
export class ArrayLiteralExpression extends LiteralExpression {
  literalKind = LiteralKind.ARRAY;

  /** Nested element expressions. */
  elementExpressions: (Expression | null)[];
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
  toType: CommonTypeNode | null;
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
}

/** Represents a call expression. */
export class CallExpression extends Expression {
  kind = NodeKind.CALL;

  /** Called expression. Usually an identifier or property access expression. */
  expression: Expression;
  /** Provided type arguments. */
  typeArguments: CommonTypeNode[] | null;
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
}

/** Represents a class expression using the 'class' keyword. */
export class ClassExpression extends Expression {
  kind = NodeKind.CLASS;

  /** Inline class declaration. */
  declaration: ClassDeclaration;
}

/** Represents a comma expression composed of multiple expressions. */
export class CommaExpression extends Expression {
  kind = NodeKind.COMMA;

  /** Sequential expressions. */
  expressions: Expression[];
}

/** Represents a `constructor` expression. */
export class ConstructorExpression extends IdentifierExpression {
  kind = NodeKind.CONSTRUCTOR;
  text = "constructor";
  symbol = CommonSymbols.constructor;
}

/** Represents an element access expression, e.g., array access. */
export class ElementAccessExpression extends Expression {
  kind = NodeKind.ELEMENTACCESS;

  /** Expression being accessed. */
  expression: Expression;
  /** Element of the expression being accessed. */
  elementExpression: Expression;
}

/** Represents a float literal expression. */
export class FloatLiteralExpression extends LiteralExpression {
  literalKind = LiteralKind.FLOAT;

  /** Float value. */
  value: f64;
}

/** Represents a function expression using the 'function' keyword. */
export class FunctionExpression extends Expression {
  kind = NodeKind.FUNCTION;

  /** Inline function declaration. */
  declaration: FunctionDeclaration;
}

/** Represents an `instanceof` expression. */
export class InstanceOfExpression extends Expression {
  kind = NodeKind.INSTANCEOF;

  /** Expression being asserted. */
  expression: Expression;
  /** Type to test for. */
  isType: CommonTypeNode;
}

/** Represents an integer literal expression. */
export class IntegerLiteralExpression extends LiteralExpression {
  literalKind = LiteralKind.INTEGER;

  /** Integer value. */
  value: I64;
}

/** Represents a `new` expression. Like a call but with its own kind. */
export class NewExpression extends CallExpression {
  kind = NodeKind.NEW;
}

/** Represents a `null` expression. */
export class NullExpression extends IdentifierExpression {
  kind = NodeKind.NULL;
  text = "null";
  symbol = CommonSymbols.null_;
}

/** Represents an object literal expression. */
export class ObjectLiteralExpression extends LiteralExpression {
  literalKind = LiteralKind.OBJECT;

  /** Field names. */
  names: IdentifierExpression[];
  /** Field values. */
  values: Expression[];
}

/** Represents a parenthesized expression. */
export class ParenthesizedExpression extends Expression {
  kind = NodeKind.PARENTHESIZED;

  /** Expression in parenthesis. */
  expression: Expression;
}

/** Represents a property access expression. */
export class PropertyAccessExpression extends Expression {
  kind = NodeKind.PROPERTYACCESS;

  /** Expression being accessed. */
  expression: Expression;
  /** Property of the expression being accessed. */
  property: IdentifierExpression;
}

/** Represents a regular expression literal expression. */
export class RegexpLiteralExpression extends LiteralExpression {
  literalKind = LiteralKind.REGEXP;

  /** Regular expression pattern. */
  pattern: string;
  /** Regular expression flags. */
  patternFlags: string;
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
}

/** Represents a string literal expression. */
export class StringLiteralExpression extends LiteralExpression {
  literalKind = LiteralKind.STRING;

  /** String value without quotes. */
  value: string;
}

/** Represents a `super` expression. */
export class SuperExpression extends IdentifierExpression {
  kind = NodeKind.SUPER;
  text = "super";
  symbol = CommonSymbols.super_;
}

/** Represents a `this` expression. */
export class ThisExpression extends IdentifierExpression {
  kind = NodeKind.THIS;
  text = "this";
  symbol = CommonSymbols.this_;
}

/** Represents a `true` expression. */
export class TrueExpression extends IdentifierExpression {
  kind = NodeKind.TRUE;
  text = "true";
  symbol = CommonSymbols.true_;
}

/** Represents a `false` expression. */
export class FalseExpression extends IdentifierExpression {
  kind = NodeKind.FALSE;
  text = "false";
  symbol = CommonSymbols.false_;
}

/** Base class of all unary expressions. */
export abstract class UnaryExpression extends Expression {

  /** Operator token. */
  operator: Token;
  /** Operand expression. */
  operand: Expression;
}

/** Represents a unary postfix expression, e.g. a postfix increment. */
export class UnaryPostfixExpression extends UnaryExpression {
  kind = NodeKind.UNARYPOSTFIX;
}

/** Represents a unary prefix expression, e.g. a negation. */
export class UnaryPrefixExpression extends UnaryExpression {
  kind = NodeKind.UNARYPREFIX;
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
  keyType: TypeNode;
  /** Value type. */
  valueType: CommonTypeNode;
}

/** Base class of all variable-like declaration statements. */
export abstract class VariableLikeDeclarationStatement extends DeclarationStatement {

  /** Variable type. */
  type: CommonTypeNode | null;
  /** Variable initializer. */
  initializer: Expression | null;
}

/** Represents a block statement. */
export class BlockStatement extends Statement {
  kind = NodeKind.BLOCK;

  /** Contained statements. */
  statements: Statement[];
}

/** Represents a `break` statement. */
export class BreakStatement extends Statement {
  kind = NodeKind.BREAK;

  /** Target label, if applicable. */
  label: IdentifierExpression | null;
}

/** Represents a `class` declaration. */
export class ClassDeclaration extends DeclarationStatement {
  kind = NodeKind.CLASSDECLARATION;

  /** Accepted type parameters. */
  typeParameters: TypeParameterNode[] | null;
  /** Base class type being extended, if any. */
  extendsType: TypeNode | null; // can't be a function
  /** Interface types being implemented, if any. */
  implementsTypes: TypeNode[] | null; // can't be functions
  /** Class member declarations. */
  members: DeclarationStatement[];

  get isGeneric(): bool {
    var typeParameters = this.typeParameters;
    return typeParameters != null && typeParameters.length > 0;
  }
}

/** Represents a `continue` statement. */
export class ContinueStatement extends Statement {
  kind = NodeKind.CONTINUE;

  /** Target label, if applicable. */
  label: IdentifierExpression | null;
}

/** Represents a `do` statement. */
export class DoStatement extends Statement {
  kind = NodeKind.DO;

  /** Statement being looped over. */
  statement: Statement;
  /** Condition when to repeat. */
  condition: Expression;
}

/** Represents an empty statement, i.e., a semicolon terminating nothing. */
export class EmptyStatement extends Statement {
  kind = NodeKind.EMPTY;
}

/** Represents an `enum` declaration. */
export class EnumDeclaration extends DeclarationStatement {
  kind = NodeKind.ENUMDECLARATION;

  /** Enum value declarations. */
  values: EnumValueDeclaration[];
}

/** Represents a value of an `enum` declaration. */
export class EnumValueDeclaration extends VariableLikeDeclarationStatement {
  kind = NodeKind.ENUMVALUEDECLARATION;
  // name is inherited

  /** Value expression. */
  value: Expression | null;
}

/** Represents an `export import` statement of an interface. */
export class ExportImportStatement extends Node {
  kind = NodeKind.EXPORTIMPORT;

  /** Identifier being imported. */
  name: IdentifierExpression;
  /** Identifier being exported. */
  externalName: IdentifierExpression;
}

/** Represents a member of an `export` statement. */
export class ExportMember extends Node {
  kind = NodeKind.EXPORTMEMBER;

  /** Local identifier. */
  localName: IdentifierExpression;
  /** Exported identifier. */
  exportedName: IdentifierExpression;
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
}

/** Represents an expression that is used as a statement. */
export class ExpressionStatement extends Statement {
  kind = NodeKind.EXPRESSION;

  /** Expression being used as a statement.*/
  expression: Expression;
}

/** Represents a field declaration within a `class`. */
export class FieldDeclaration extends VariableLikeDeclarationStatement {
  kind = NodeKind.FIELDDECLARATION;

  /** Parameter index if declared as a constructor parameter, otherwise `-1`. */
  parameterIndex: i32 = -1;
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
  signature: SignatureNode;
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
}

/** Represents an `import` declaration part of an {@link ImportStatement}. */
export class ImportDeclaration extends DeclarationStatement {
  kind = NodeKind.IMPORTDECLARATION;

  /** Identifier being imported. */
  foreignName: IdentifierExpression;
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
}

/** Represents an `interfarce` declaration. */
export class InterfaceDeclaration extends ClassDeclaration {
  kind = NodeKind.INTERFACEDECLARATION;
}

/** Represents a method declaration within a `class`. */
export class MethodDeclaration extends FunctionDeclaration {
  kind = NodeKind.METHODDECLARATION;
}

/** Represents a `namespace` declaration. */
export class NamespaceDeclaration extends DeclarationStatement {
  kind = NodeKind.NAMESPACEDECLARATION;

  /** Array of namespace members. */
  members: Statement[];
}

/** Represents a `return` statement. */
export class ReturnStatement extends Statement {
  kind = NodeKind.RETURN;

  /** Value expression being returned, if present. */
  value: Expression | null;
}

/** Represents a single `case` within a `switch` statement. */
export class SwitchCase extends Node {
  kind = NodeKind.SWITCHCASE;

  /** Label expression. `null` indicates the default case. */
  label: Expression | null;
  /** Contained statements. */
  statements: Statement[];
}

/** Represents a `switch` statement. */
export class SwitchStatement extends Statement {
  kind = NodeKind.SWITCH;

  /** Condition expression. */
  condition: Expression;
  /** Contained cases. */
  cases: SwitchCase[];
}

/** Represents a `throw` statement. */
export class ThrowStatement extends Statement {
  kind = NodeKind.THROW;

  /** Value expression being thrown. */
  value: Expression;
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
}

/** Represents a `type` declaration. */
export class TypeDeclaration extends DeclarationStatement {
  kind = NodeKind.TYPEDECLARATION;

  /** Type parameters, if any. */
  typeParameters: TypeParameterNode[] | null;
  /** Type being aliased. */
  type: CommonTypeNode;
}

/** Represents a variable declaration part of a {@link VariableStatement}. */
export class VariableDeclaration extends VariableLikeDeclarationStatement {
  kind = NodeKind.VARIABLEDECLARATION;
}

/** Represents a variable statement wrapping {@link VariableDeclaration}s. */
export class VariableStatement extends Statement {
  kind = NodeKind.VARIABLE;

  /** Array of decorators. */
  decorators: DecoratorNode[] | null;
  /** Array of member declarations. */
  declarations: VariableDeclaration[];
}

/** Represents a void statement dropping an expression's value. */
export class VoidStatement extends Statement {
  kind = NodeKind.VOID;

  /** Expression being dropped. */
  expression: Expression;
}

/** Represents a `while` statement. */
export class WhileStatement extends Statement {
  kind = NodeKind.WHILE;

  /** Condition expression. */
  condition: Expression;
  /** Statement being looped over. */
  statement: Statement;
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
export function isTypeOmitted(type: CommonTypeNode): bool {
  if (type.kind == NodeKind.TYPE) {
    let name = (<TypeNode>type).name;
    return !(name.next || name.identifier.text.length);
  }
  return false;
}
