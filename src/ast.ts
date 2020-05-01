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
    var node = new TypeName();
    node.kind = NodeKind.TYPENAME;
    node.range = range;
    node.identifier = name;
    node.next = null;
    return node;
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
    var node = new NamedTypeNode();
    node.kind = NodeKind.NAMEDTYPE;
    node.range = range;
    node.name = name;
    node.typeArguments = typeArguments;
    node.isNullable = isNullable;
    return node;
  }

  static createFunctionType(
    parameters: ParameterNode[],
    returnType: TypeNode,
    explicitThisType: NamedTypeNode | null,
    isNullable: bool,
    range: Range
  ): FunctionTypeNode {
    var node = new FunctionTypeNode();
    node.kind = NodeKind.FUNCTIONTYPE;
    node.range = range;
    node.parameters = parameters;
    node.returnType = returnType;
    node.explicitThisType = explicitThisType;
    node.isNullable = isNullable;
    return node;
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
    var node = new TypeParameterNode();
    node.kind = NodeKind.TYPEPARAMETER;
    node.range = range;
    node.name = name;
    node.extendsType = extendsType;
    node.defaultType = defaultType;
    return node;
  }

  static createParameter(
    name: IdentifierExpression,
    type: TypeNode,
    initializer: Expression | null,
    kind: ParameterKind,
    range: Range
  ): ParameterNode {
    var node = new ParameterNode();
    node.kind = NodeKind.PARAMETER;
    node.range = range;
    node.name = name;
    node.type = type;
    node.initializer = initializer;
    node.parameterKind = kind;
    return node;
  }

  // special

  static createDecorator(
    name: Expression,
    args: Expression[] | null,
    range: Range
  ): DecoratorNode {
    var node = new DecoratorNode();
    node.kind = NodeKind.DECORATOR;
    node.range = range;
    node.name = name;
    node.arguments = args;
    node.decoratorKind = DecoratorKind.fromNode(name);
    return node;
  }

  static createComment(
    text: string,
    kind: CommentKind,
    range: Range
  ): CommentNode {
    var node = new CommentNode();
    node.kind = NodeKind.COMMENT;
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
    var node = new IdentifierExpression();
    node.kind = NodeKind.IDENTIFIER;
    node.range = range;
    node.text = name;
    node.isQuoted = isQuoted;
    return node;
  }

  static createEmptyIdentifierExpression(
    range: Range
  ): IdentifierExpression {
    var node = new IdentifierExpression();
    node.kind = NodeKind.IDENTIFIER;
    node.range = range;
    node.text = "";
    return node;
  }

  static createArrayLiteralExpression(
    elements: (Expression | null)[],
    range: Range
  ): ArrayLiteralExpression {
    var node = new ArrayLiteralExpression();
    node.kind = NodeKind.LITERAL;
    node.range = range;
    node.literalKind = LiteralKind.ARRAY;
    node.elementExpressions = elements;
    return node;
  }

  static createAssertionExpression(
    assertionKind: AssertionKind,
    expression: Expression,
    toType: TypeNode | null,
    range: Range
  ): AssertionExpression {
    var node = new AssertionExpression();
    node.kind = NodeKind.ASSERTION;
    node.range = range;
    node.assertionKind = assertionKind;
    node.expression = expression;
    node.toType = toType;
    return node;
  }

  static createBinaryExpression(
    operator: Token,
    left: Expression,
    right: Expression,
    range: Range
  ): BinaryExpression {
    var node = new BinaryExpression();
    node.kind = NodeKind.BINARY;
    node.range = range;
    node.operator = operator;
    node.left = left;
    node.right = right;
    return node;
  }

  static createCallExpression(
    expression: Expression,
    typeArgs: TypeNode[] | null,
    args: Expression[],
    range: Range
  ): CallExpression {
    var node = new CallExpression();
    node.kind = NodeKind.CALL;
    node.range = range;
    node.expression = expression;
    node.typeArguments = typeArgs;
    node.arguments = args;
    return node;
  }

  static createClassExpression(
    declaration: ClassDeclaration
  ): ClassExpression {
    var node = new ClassExpression();
    node.kind = NodeKind.CLASS;
    node.range = declaration.range;
    node.declaration = declaration;
    return node;
  }

  static createCommaExpression(
    expressions: Expression[],
    range: Range
  ): CommaExpression {
    var node = new CommaExpression();
    node.kind = NodeKind.COMMA;
    node.range = range;
    node.expressions = expressions;
    return node;
  }

  static createConstructorExpression(
    range: Range
  ): ConstructorExpression {
    var node = new ConstructorExpression();
    node.kind = NodeKind.CONSTRUCTOR;
    node.range = range;
    node.text = "constructor";
    return node;
  }

  static createElementAccessExpression(
    expression: Expression,
    element: Expression,
    range: Range
  ): ElementAccessExpression {
    var node = new ElementAccessExpression();
    node.kind = NodeKind.ELEMENTACCESS;
    node.range = range;
    node.expression = expression;
    node.elementExpression = element;
    return node;
  }

  static createFalseExpression(
    range: Range
  ): FalseExpression {
    var node = new FalseExpression();
    node.kind = NodeKind.FALSE;
    node.range = range;
    node.text = "false";
    return node;
  }

  static createFloatLiteralExpression(
    value: f64,
    range: Range
  ): FloatLiteralExpression {
    var node = new FloatLiteralExpression();
    node.kind = NodeKind.LITERAL;
    node.literalKind = LiteralKind.FLOAT;
    node.range = range;
    node.value = value;
    return node;
  }

  static createFunctionExpression(
    declaration: FunctionDeclaration
  ): FunctionExpression {
    var node = new FunctionExpression();
    node.kind = NodeKind.FUNCTION;
    node.range = declaration.range;
    node.declaration = declaration;
    return node;
  }

  static createInstanceOfExpression(
    expression: Expression,
    isType: TypeNode,
    range: Range
  ): InstanceOfExpression {
    var node = new InstanceOfExpression();
    node.kind = NodeKind.INSTANCEOF;
    node.range = range;
    node.expression = expression;
    node.isType = isType;
    return node;
  }

  static createIntegerLiteralExpression(
    value: i64,
    range: Range
  ): IntegerLiteralExpression {
    var node = new IntegerLiteralExpression();
    node.kind = NodeKind.LITERAL;
    node.literalKind = LiteralKind.INTEGER;
    node.range = range;
    node.value = value;
    return node;
  }

  static createNewExpression(
    typeName: TypeName,
    typeArgs: TypeNode[] | null,
    args: Expression[],
    range: Range
  ): NewExpression {
    var node = new NewExpression();
    node.kind = NodeKind.NEW;
    node.range = range;
    node.typeName = typeName;
    node.typeArguments = typeArgs;
    node.arguments = args;
    return node;
  }

  static createNullExpression(
    range: Range
  ): NullExpression {
    var node = new NullExpression();
    node.kind = NodeKind.NULL;
    node.range = range;
    node.text = "null";
    return node;
  }

  static createObjectLiteralExpression(
    names: IdentifierExpression[],
    values: Expression[],
    range: Range
  ): ObjectLiteralExpression {
    var node = new ObjectLiteralExpression();
    node.kind = NodeKind.LITERAL;
    node.literalKind = LiteralKind.OBJECT;
    node.range = range;
    node.names = names;
    node.values = values;
    return node;
  }

  static createParenthesizedExpression(
    expression: Expression,
    range: Range
  ): ParenthesizedExpression {
    var node = new ParenthesizedExpression();
    node.kind = NodeKind.PARENTHESIZED;
    node.range = range;
    node.expression = expression;
    return node;
  }

  static createPropertyAccessExpression(
    expression: Expression,
    property: IdentifierExpression,
    range: Range
  ): PropertyAccessExpression {
    var node = new PropertyAccessExpression();
    node.kind = NodeKind.PROPERTYACCESS;
    node.range = range;
    node.expression = expression;
    node.property = property;
    return node;
  }

  static createRegexpLiteralExpression(
    pattern: string,
    flags: string,
    range: Range
  ): RegexpLiteralExpression {
    var node = new RegexpLiteralExpression();
    node.kind = NodeKind.LITERAL;
    node.literalKind = LiteralKind.REGEXP;
    node.range = range;
    node.pattern = pattern;
    node.patternFlags = flags;
    return node;
  }

  static createTernaryExpression(
    condition: Expression,
    ifThen: Expression,
    ifElse: Expression,
    range: Range
  ): TernaryExpression {
    var node = new TernaryExpression();
    node.kind = NodeKind.TERNARY;
    node.range = range;
    node.condition = condition;
    node.ifThen = ifThen;
    node.ifElse = ifElse;
    return node;
  }

  static createStringLiteralExpression(
    value: string,
    range: Range
  ): StringLiteralExpression {
    var node = new StringLiteralExpression();
    node.kind = NodeKind.LITERAL;
    node.literalKind = LiteralKind.STRING;
    node.range = range;
    node.value = value;
    return node;
  }

  static createSuperExpression(
    range: Range
  ): SuperExpression {
    var node = new SuperExpression();
    node.kind = NodeKind.SUPER;
    node.range = range;
    node.text = "super";
    return node;
  }

  static createThisExpression(
    range: Range
  ): ThisExpression {
    var node = new ThisExpression();
    node.kind = NodeKind.THIS;
    node.range = range;
    node.text = "this";
    return node;
  }

  static createTrueExpression(
    range: Range
  ): TrueExpression {
    var node = new TrueExpression();
    node.kind = NodeKind.TRUE;
    node.range = range;
    node.text = "true";
    return node;
  }

  static createUnaryPostfixExpression(
    operator: Token,
    operand: Expression,
    range: Range
  ): UnaryPostfixExpression {
    var node = new UnaryPostfixExpression();
    node.kind = NodeKind.UNARYPOSTFIX;
    node.range = range;
    node.operator = operator;
    node.operand = operand;
    return node;
  }

  static createUnaryPrefixExpression(
    operator: Token,
    operand: Expression,
    range: Range
  ): UnaryPrefixExpression {
    var node = new UnaryPrefixExpression();
    node.kind = NodeKind.UNARYPREFIX;
    node.range = range;
    node.operator = operator;
    node.operand = operand;
    return node;
  }

  // statements

  static createBlockStatement(
    statements: Statement[],
    range: Range
  ): BlockStatement {
    var node = new BlockStatement();
    node.kind = NodeKind.BLOCK;
    node.range = range;
    node.statements = statements;
    return node;
  }

  static createBreakStatement(
    label: IdentifierExpression | null,
    range: Range
  ): BreakStatement {
    var node = new BreakStatement();
    node.kind = NodeKind.BREAK;
    node.range = range;
    node.label = label;
    return node;
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
    var node = new ClassDeclaration();
    node.kind = NodeKind.CLASSDECLARATION;
    node.range = range;
    node.flags = flags;
    node.name = identifier;
    node.typeParameters = typeParameters;
    node.extendsType = extendsType;
    node.implementsTypes = implementsTypes;
    node.members = members;
    node.decorators = decorators;
    return node;
  }

  static createContinueStatement(
    label: IdentifierExpression | null,
    range: Range
  ): ContinueStatement {
    var node = new ContinueStatement();
    node.kind = NodeKind.CONTINUE;
    node.range = range;
    node.label = label;
    return node;
  }

  static createDoStatement(
    statement: Statement,
    condition: Expression,
    range: Range
  ): DoStatement {
    var node = new DoStatement();
    node.kind = NodeKind.DO;
    node.range = range;
    node.statement = statement;
    node.condition = condition;
    return node;
  }

  static createEmptyStatement(
    range: Range
  ): EmptyStatement {
    var node = new EmptyStatement();
    node.kind = NodeKind.EMPTY;
    node.range = range;
    return node;
  }

  static createEnumDeclaration(
    name: IdentifierExpression,
    members: EnumValueDeclaration[],
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    range: Range
  ): EnumDeclaration {
    var node = new EnumDeclaration();
    node.kind = NodeKind.ENUMDECLARATION;
    node.range = range;
    node.flags = flags;
    node.name = name;
    node.values = members;
    node.decorators = decorators;
    return node;
  }

  static createEnumValueDeclaration(
    name: IdentifierExpression,
    initializer: Expression | null,
    flags: CommonFlags,
    range: Range
  ): EnumValueDeclaration {
    var node = new EnumValueDeclaration();
    node.kind = NodeKind.ENUMVALUEDECLARATION;
    node.range = range;
    node.flags = flags;
    node.name = name;
    node.initializer = initializer;
    return node;
  }

  static createExportStatement(
    members: ExportMember[] | null,
    path: StringLiteralExpression | null,
    isDeclare: bool,
    range: Range
  ): ExportStatement {
    var node = new ExportStatement();
    node.kind = NodeKind.EXPORT;
    node.range = range;
    node.members = members;
    node.path = path;
    if (path) {
      let normalizedPath = normalizePath(path.value);
      if (path.value.startsWith(".")) { // relative
        normalizedPath = resolvePath(normalizedPath, range.source.internalPath);
      } else { // absolute
        if (!normalizedPath.startsWith(LIBRARY_PREFIX)) normalizedPath = LIBRARY_PREFIX + normalizedPath;
      }
      node.internalPath = normalizedPath;
    } else {
      node.internalPath = null;
    }
    node.isDeclare = isDeclare;
    return node;
  }

  static createExportDefaultStatement(
    declaration: DeclarationStatement,
    range: Range
  ): ExportDefaultStatement {
    var node = new ExportDefaultStatement();
    node.kind = NodeKind.EXPORTDEFAULT;
    node.declaration = declaration;
    node.range = range;
    return node;
  }

  static createExportImportStatement(
    name: IdentifierExpression,
    externalName: IdentifierExpression,
    range: Range
  ): ExportImportStatement {
    var node = new ExportImportStatement();
    node.kind = NodeKind.EXPORTIMPORT;
    node.range = range;
    node.name = name;
    node.externalName = externalName;
    return node;
  }

  static createExportMember(
    name: IdentifierExpression,
    externalName: IdentifierExpression | null,
    range: Range
  ): ExportMember {
    var node = new ExportMember();
    node.kind = NodeKind.EXPORTMEMBER;
    node.range = range;
    node.localName = name;
    if (!externalName) externalName = name;
    node.exportedName = externalName;
    return node;
  }

  static createExpressionStatement(
    expression: Expression
  ): ExpressionStatement {
    var node = new ExpressionStatement();
    node.kind = NodeKind.EXPRESSION;
    node.range = expression.range;
    node.expression = expression;
    return node;
  }

  static createIfStatement(
    condition: Expression,
    ifTrue: Statement,
    ifFalse: Statement | null,
    range: Range
  ): IfStatement {
    var node = new IfStatement();
    node.kind = NodeKind.IF;
    node.range = range;
    node.condition = condition;
    node.ifTrue = ifTrue;
    node.ifFalse = ifFalse;
    return node;
  }

  static createImportStatement(
    decls: ImportDeclaration[] | null,
    path: StringLiteralExpression,
    range: Range
  ): ImportStatement {
    var node = new ImportStatement();
    node.kind = NodeKind.IMPORT;
    node.range = range;
    node.declarations = decls;
    node.namespaceName = null;
    node.path = path;
    var normalizedPath = normalizePath(path.value);
    if (path.value.startsWith(".")) { // relative in project
      normalizedPath = resolvePath(normalizedPath, range.source.internalPath);
    } else { // absolute in library
      if (!normalizedPath.startsWith(LIBRARY_PREFIX)) normalizedPath = LIBRARY_PREFIX + normalizedPath;
    }
    node.internalPath = normalizedPath;
    return node;
  }

  static createImportStatementWithWildcard(
    identifier: IdentifierExpression,
    path: StringLiteralExpression,
    range: Range
  ): ImportStatement {
    var node = new ImportStatement();
    node.kind = NodeKind.IMPORT;
    node.range = range;
    node.declarations = null;
    node.namespaceName = identifier;
    node.path = path;
    var normalizedPath = normalizePath(path.value);
    if (path.value.startsWith(".")) {
      normalizedPath = resolvePath(normalizedPath, range.source.internalPath);
    } else {
      if (!normalizedPath.startsWith(LIBRARY_PREFIX)) normalizedPath = LIBRARY_PREFIX + normalizedPath;
    }
    node.internalPath = normalizedPath;
    return node;
  }

  static createImportDeclaration(
    foreignName: IdentifierExpression,
    name: IdentifierExpression | null,
    range: Range
  ): ImportDeclaration {
    var node = new ImportDeclaration();
    node.kind = NodeKind.IMPORTDECLARATION;
    node.range = range;
    node.foreignName = foreignName;
    if (!name) name = foreignName;
    node.name = name;
    return node;
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
    var node = new InterfaceDeclaration();
    node.kind = NodeKind.INTERFACEDECLARATION;
    node.range = range;
    node.flags = flags;
    node.name = name;
    node.typeParameters = typeParameters;
    node.extendsType = extendsType;
    node.members = members;
    node.decorators = decorators;
    return node;
  }

  static createFieldDeclaration(
    name: IdentifierExpression,
    type: TypeNode | null,
    initializer: Expression | null,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    range: Range
  ): FieldDeclaration {
    var node = new FieldDeclaration();
    node.kind = NodeKind.FIELDDECLARATION;
    node.range = range;
    node.flags = flags;
    node.name = name;
    node.type = type;
    node.initializer = initializer;
    node.decorators = decorators;
    return node;
  }

  static createForStatement(
    initializer: Statement | null,
    condition: Expression | null,
    incrementor: Expression | null,
    statement: Statement,
    range: Range
  ): ForStatement {
    var node = new ForStatement();
    node.kind = NodeKind.FOR;
    node.range = range;
    node.initializer = initializer;
    node.condition = condition;
    node.incrementor = incrementor;
    node.statement = statement;
    return node;
  }

  static createForOfStatement(
    variable: Statement,
    iterable: Expression,
    statement: Statement,
    range: Range
  ): ForOfStatement {
    var node = new ForOfStatement();
    node.kind = NodeKind.FOROF;
    node.range = range;
    node.variable = variable;
    node.iterable = iterable;
    node.statement = statement;
    return node;
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
    var node = new FunctionDeclaration();
    node.kind = NodeKind.FUNCTIONDECLARATION;
    node.range = range;
    node.flags = flags;
    node.name = name;
    node.typeParameters = typeParameters;
    node.signature = signature;
    node.body = body;
    node.decorators = decorators;
    node.arrowKind = arrowKind;
    return node;
  }

  static createIndexSignatureDeclaration(
    keyType: NamedTypeNode,
    valueType: TypeNode,
    flags: CommonFlags,
    range: Range
  ): IndexSignatureDeclaration {
    var node = new IndexSignatureDeclaration();
    node.kind = NodeKind.INDEXSIGNATUREDECLARATION;
    node.range = range;
    node.keyType = keyType;
    node.valueType = valueType;
    node.flags = flags;
    return node;
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
    var node = new MethodDeclaration();
    node.kind = NodeKind.METHODDECLARATION;
    node.range = range;
    node.flags = flags;
    node.name = name;
    node.typeParameters = typeParameters;
    node.signature = signature;
    node.body = body;
    node.decorators = decorators;
    return node;
  }

  static createNamespaceDeclaration(
    name: IdentifierExpression,
    members: Statement[],
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    range: Range
  ): NamespaceDeclaration {
    var node = new NamespaceDeclaration();
    node.kind = NodeKind.NAMESPACEDECLARATION;
    node.range = range;
    node.flags = flags;
    node.name = name;
    node.members = members;
    node.decorators = decorators;
    return node;
  }

  static createReturnStatement(
    value: Expression | null,
    range: Range
  ): ReturnStatement {
    var node = new ReturnStatement();
    node.kind = NodeKind.RETURN;
    node.range = range;
    node.value = value;
    return node;
  }

  static createSwitchStatement(
    condition: Expression,
    cases: SwitchCase[],
    range: Range
  ): SwitchStatement {
    var node = new SwitchStatement();
    node.kind = NodeKind.SWITCH;
    node.range = range;
    node.condition = condition;
    node.cases = cases;
    return node;
  }

  static createSwitchCase(
    label: Expression | null,
    statements: Statement[],
    range: Range
  ): SwitchCase {
    var node = new SwitchCase();
    node.kind = NodeKind.SWITCHCASE;
    node.range = range;
    node.label = label;
    node.statements = statements;
    return node;
  }

  static createThrowStatement(
    value: Expression,
    range: Range
  ): ThrowStatement {
    var node = new ThrowStatement();
    node.kind = NodeKind.THROW;
    node.range = range;
    node.value = value;
    return node;
  }

  static createTryStatement(
    statements: Statement[],
    catchVariable: IdentifierExpression | null,
    catchStatements: Statement[] | null,
    finallyStatements: Statement[] | null,
    range: Range
  ): TryStatement {
    var node = new TryStatement();
    node.kind = NodeKind.TRY;
    node.range = range;
    node.statements = statements;
    node.catchVariable = catchVariable;
    node.catchStatements = catchStatements;
    node.finallyStatements = finallyStatements;
    return node;
  }

  static createTypeDeclaration(
    name: IdentifierExpression,
    typeParameters: TypeParameterNode[] | null,
    alias: TypeNode,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    range: Range
  ): TypeDeclaration {
    var node = new TypeDeclaration();
    node.kind = NodeKind.TYPEDECLARATION;
    node.range = range;
    node.flags = flags;
    node.name = name;
    node.typeParameters = typeParameters;
    node.type = alias;
    node.decorators = decorators;
    return node;
  }

  static createVariableStatement(
    declarations: VariableDeclaration[],
    decorators: DecoratorNode[] | null,
    range: Range
  ): VariableStatement {
    var node = new VariableStatement();
    node.kind = NodeKind.VARIABLE;
    node.range = range;
    node.declarations = declarations;
    node.decorators = decorators;
    return node;
  }

  static createVariableDeclaration(
    name: IdentifierExpression,
    type: TypeNode | null,
    initializer: Expression | null,
    decorators: DecoratorNode[] | null,
    flags: CommonFlags,
    range: Range
  ): VariableDeclaration {
    var node = new VariableDeclaration();
    node.kind = NodeKind.VARIABLEDECLARATION;
    node.range = range;
    node.flags = flags;
    node.name = name;
    node.type = type;
    node.initializer = initializer;
    node.decorators = decorators; // inherited
    return node;
  }

  static createVoidStatement(
    expression: Expression,
    range: Range
  ): VoidStatement {
    var node = new VoidStatement();
    node.kind = NodeKind.VOID;
    node.range = range;
    node.expression = expression;
    return node;
  }

  static createWhileStatement(
    condition: Expression,
    statement: Statement,
    range: Range
  ): WhileStatement {
    var node = new WhileStatement();
    node.kind = NodeKind.WHILE;
    node.range = range;
    node.condition = condition;
    node.statement = statement;
    return node;
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

  /** Checks if this is a call calling a method on super. */
  get isCallOnSuper(): bool {
    if (this.kind != NodeKind.CALL) return false;
    var expression = changetype<CallExpression>(this).expression;
    if (expression.kind != NodeKind.PROPERTYACCESS) return false;
    var target = (<PropertyAccessExpression>expression).expression;
    if (target.kind == NodeKind.SUPER) return true;
    return false;
  }
}

// types

export abstract class TypeNode extends Node {
  // kind varies

  /** Whether nullable or not. */
  isNullable: bool;

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
  /** Identifier of this part. */
  identifier: IdentifierExpression;
  /** Next part of the type name or `null` if this is the last part. */
  next: TypeName | null;
}

/** Represents a named type. */
export class NamedTypeNode extends TypeNode {
  /** Type name. */
  name: TypeName;
  /** Type argument references. */
  typeArguments: TypeNode[] | null;

  get hasTypeArguments(): bool {
    var typeArguments = this.typeArguments;
    return typeArguments !== null && typeArguments.length > 0;
  }
}

/** Represents a function type. */
export class FunctionTypeNode extends TypeNode {
  /** Accepted parameters. */
  parameters: ParameterNode[];
  /** Return type. */
  returnType: TypeNode;
  /** Explicitly provided this type, if any. */
  explicitThisType: NamedTypeNode | null; // can't be a function
}

/** Represents a type parameter. */
export class TypeParameterNode extends Node {
  /** Identifier reference. */
  name: IdentifierExpression;
  /** Extended type reference, if any. */
  extendsType: NamedTypeNode | null; // can't be a function
  /** Default type if omitted, if any. */
  defaultType: NamedTypeNode | null; // can't be a function
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

export namespace DecoratorKind {

  /** Returns the kind of the specified decorator name node. Defaults to {@link DecoratorKind.CUSTOM}. */
  export function fromNode(nameNode: Expression): DecoratorKind {
    // @global, @inline, @operator, @sealed, @unmanaged
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
    } else if (nameNode.kind == NodeKind.PROPERTYACCESS) {
      let propertyAccessNode = <PropertyAccessExpression>nameNode;
      let expression = propertyAccessNode.expression;
      if (expression.kind == NodeKind.IDENTIFIER) {
        let nameStr = (<IdentifierExpression>expression).text;
        assert(nameStr.length);
        let propStr = propertyAccessNode.property.text;
        assert(propStr.length);
        // @operator.binary, @operator.prefix, @operator.postfix
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
  /** Textual name. */
  text: string;
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
  /** Specific literal kind. */
  literalKind: LiteralKind;
}

/** Represents an `[]` literal expression. */
export class ArrayLiteralExpression extends LiteralExpression {
  /** Nested element expressions. */
  elementExpressions: (Expression | null)[];
}

/** Indicates the kind of an assertion. */
export enum AssertionKind {
  PREFIX,
  AS,
  NONNULL,
  CONST
}

/** Represents an assertion expression. */
export class AssertionExpression extends Expression {
  /** Specific kind of this assertion. */
  assertionKind: AssertionKind;
  /** Expression being asserted. */
  expression: Expression;
  /** Target type. */
  toType: TypeNode | null;
}

/** Represents a binary expression. */
export class BinaryExpression extends Expression {
  /** Operator token. */
  operator: Token;
  /** Left-hand side expression */
  left: Expression;
  /** Right-hand side expression. */
  right: Expression;
}

/** Represents a call expression. */
export class CallExpression extends Expression {
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
    if (typeArguments) {
      if (numTypeArguments = typeArguments.length) {
        return Range.join(typeArguments[0].range, typeArguments[numTypeArguments - 1].range);
      }
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
  /** Inline class declaration. */
  declaration: ClassDeclaration;
}

/** Represents a comma expression composed of multiple expressions. */
export class CommaExpression extends Expression {
  /** Sequential expressions. */
  expressions: Expression[];
}

/** Represents a `constructor` expression. */
export class ConstructorExpression extends IdentifierExpression {
}

/** Represents an element access expression, e.g., array access. */
export class ElementAccessExpression extends Expression {
  /** Expression being accessed. */
  expression: Expression;
  /** Element of the expression being accessed. */
  elementExpression: Expression;
}

/** Represents a float literal expression. */
export class FloatLiteralExpression extends LiteralExpression {
  /** Float value. */
  value: f64;
}

/** Represents a function expression using the 'function' keyword. */
export class FunctionExpression extends Expression {
  /** Inline function declaration. */
  declaration: FunctionDeclaration;
}

/** Represents an `instanceof` expression. */
export class InstanceOfExpression extends Expression {
  /** Expression being asserted. */
  expression: Expression;
  /** Type to test for. */
  isType: TypeNode;
}

/** Represents an integer literal expression. */
export class IntegerLiteralExpression extends LiteralExpression {
  /** Integer value. */
  value: i64;
}

/** Represents a `new` expression. Like a call but with its own kind. */
export class NewExpression extends Expression {
  /** Type being constructed. */
  typeName: TypeName;
  /** Provided type arguments. */
  typeArguments: TypeNode[] | null;
  /** Provided arguments. */
  arguments: Expression[];

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
    var args = this.arguments;
    var numArguments = args.length;
    if (numArguments) {
      return Range.join(args[0].range, args[numArguments - 1].range);
    }
    return this.typeName.range;
  }
}

/** Represents a `null` expression. */
export class NullExpression extends IdentifierExpression {
}

/** Represents an object literal expression. */
export class ObjectLiteralExpression extends LiteralExpression {
  /** Field names. */
  names: IdentifierExpression[];
  /** Field values. */
  values: Expression[];
}

/** Represents a parenthesized expression. */
export class ParenthesizedExpression extends Expression {
  /** Expression in parenthesis. */
  expression: Expression;
}

/** Represents a property access expression. */
export class PropertyAccessExpression extends Expression {
  /** Expression being accessed. */
  expression: Expression;
  /** Property of the expression being accessed. */
  property: IdentifierExpression;
}

/** Represents a regular expression literal expression. */
export class RegexpLiteralExpression extends LiteralExpression {
  /** Regular expression pattern. */
  pattern: string;
  /** Regular expression flags. */
  patternFlags: string;
}

/** Represents a ternary expression, i.e., short if notation. */
export class TernaryExpression extends Expression {
  /** Condition expression. */
  condition: Expression;
  /** Expression executed when condition is `true`. */
  ifThen: Expression;
  /** Expression executed when condition is `false`. */
  ifElse: Expression;
}

/** Represents a string literal expression. */
export class StringLiteralExpression extends LiteralExpression {
  /** String value without quotes. */
  value: string;
}

/** Represents a `super` expression. */
export class SuperExpression extends IdentifierExpression {
}

/** Represents a `this` expression. */
export class ThisExpression extends IdentifierExpression {
}

/** Represents a `true` expression. */
export class TrueExpression extends IdentifierExpression {
}

/** Represents a `false` expression. */
export class FalseExpression extends IdentifierExpression {
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
}

/** Represents a unary prefix expression, e.g. a negation. */
export class UnaryPrefixExpression extends UnaryExpression {
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
  /** Source kind. */
  sourceKind: SourceKind;
  /** Normalized path with file extension. */
  normalizedPath: string;
  /** Path used internally. */
  internalPath: string;
  /** Simple path (last part without extension). */
  simplePath: string;
  /** Contained statements. */
  statements: Statement[];
  /** Full source text. */
  text: string;
  /** Source map index. */
  debugInfoIndex: i32 = -1;
  /** Re-exported sources. */
  exportPaths: string[] | null = null;

  /** Constructs a new source node. */
  constructor(normalizedPath: string, text: string, kind: SourceKind) {
    super();
    this.kind = NodeKind.SOURCE;
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

  /** Rememberd column number. */
  private lineColumn: i32 = 0;

  /** Determines the line number at the specified position. */
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

  /** Gets the column number at the last position queried with `lineAt`. */
  columnAt(): i32 {
    return this.lineColumn;
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
  /** Key type. */
  keyType: NamedTypeNode;
  /** Value type. */
  valueType: TypeNode;
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
  /** Contained statements. */
  statements: Statement[];
}

/** Represents a `break` statement. */
export class BreakStatement extends Statement {
  /** Target label, if applicable. */
  label: IdentifierExpression | null;
}

/** Represents a `class` declaration. */
export class ClassDeclaration extends DeclarationStatement {
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
}

/** Represents a `continue` statement. */
export class ContinueStatement extends Statement {
  /** Target label, if applicable. */
  label: IdentifierExpression | null;
}

/** Represents a `do` statement. */
export class DoStatement extends Statement {
  /** Statement being looped over. */
  statement: Statement;
  /** Condition when to repeat. */
  condition: Expression;
}

/** Represents an empty statement, i.e., a semicolon terminating nothing. */
export class EmptyStatement extends Statement {
}

/** Represents an `enum` declaration. */
export class EnumDeclaration extends DeclarationStatement {
  /** Enum value declarations. */
  values: EnumValueDeclaration[];
}

/** Represents a value of an `enum` declaration. */
export class EnumValueDeclaration extends VariableLikeDeclarationStatement {
}

/** Represents an `export import` statement of an interface. */
export class ExportImportStatement extends Statement {
  /** Identifier being imported. */
  name: IdentifierExpression;
  /** Identifier being exported. */
  externalName: IdentifierExpression;
}

/** Represents a member of an `export` statement. */
export class ExportMember extends Node {
  /** Local identifier. */
  localName: IdentifierExpression;
  /** Exported identifier. */
  exportedName: IdentifierExpression;
}

/** Represents an `export` statement. */
export class ExportStatement extends Statement {
  /** Array of members if a set of named exports, or `null` if a file export. */
  members: ExportMember[] | null;
  /** Path being exported from, if applicable. */
  path: StringLiteralExpression | null;
  /** Internal path being referenced, if `path` is set. */
  internalPath: string | null;
  /** Whether this is a declared export. */
  isDeclare: bool;
}

/** Represents an `export default` statement. */
export class ExportDefaultStatement extends Statement {
  /** Declaration being exported as default. */
  declaration: DeclarationStatement;
}

/** Represents an expression that is used as a statement. */
export class ExpressionStatement extends Statement {
  /** Expression being used as a statement.*/
  expression: Expression;
}

/** Represents a field declaration within a `class`. */
export class FieldDeclaration extends VariableLikeDeclarationStatement {
  /** Parameter index if declared as a constructor parameter, otherwise `-1`. */
  parameterIndex: i32 = -1;
}

/** Represents a `for` statement. */
export class ForStatement extends Statement {
  /** Initializer statement, if present. Either a `VariableStatement` or `ExpressionStatement`. */
  initializer: Statement | null;
  /** Condition expression, if present. */
  condition: Expression | null;
  /** Incrementor expression, if present. */
  incrementor: Expression | null;
  /** Statement being looped over. */
  statement: Statement;
}

/** Represents a `for..of` statement. */
export class ForOfStatement extends Statement {
  /** Variable statement. Either a `VariableStatement` or `ExpressionStatement` of `IdentifierExpression`. */
  variable: Statement;
  /** Iterable expression being iterated. */
  iterable: Expression;
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
}

/** Represents an `if` statement. */
export class IfStatement extends Statement {
  /** Condition. */
  condition: Expression;
  /** Statement executed when condition is `true`. */
  ifTrue: Statement;
  /** Statement executed when condition is `false`. */
  ifFalse: Statement | null;
}

/** Represents an `import` declaration part of an {@link ImportStatement}. */
export class ImportDeclaration extends DeclarationStatement {
  /** Identifier being imported. */
  foreignName: IdentifierExpression;
}

/** Represents an `import` statement. */
export class ImportStatement extends Statement {
  /** Array of member declarations or `null` if an asterisk import. */
  declarations: ImportDeclaration[] | null;
  /** Name of the local namespace, if an asterisk import. */
  namespaceName: IdentifierExpression | null;
  /** Path being imported from. */
  path: StringLiteralExpression;
  /** Internal path being referenced. */
  internalPath: string;
}

/** Represents an `interfarce` declaration. */
export class InterfaceDeclaration extends ClassDeclaration {
}

/** Represents a method declaration within a `class`. */
export class MethodDeclaration extends FunctionDeclaration {
}

/** Represents a `namespace` declaration. */
export class NamespaceDeclaration extends DeclarationStatement {
  /** Array of namespace members. */
  members: Statement[];
}

/** Represents a `return` statement. */
export class ReturnStatement extends Statement {
  /** Value expression being returned, if present. */
  value: Expression | null;
}

/** Represents a single `case` within a `switch` statement. */
export class SwitchCase extends Node {
  /** Label expression. `null` indicates the default case. */
  label: Expression | null;
  /** Contained statements. */
  statements: Statement[];
}

/** Represents a `switch` statement. */
export class SwitchStatement extends Statement {
  /** Condition expression. */
  condition: Expression;
  /** Contained cases. */
  cases: SwitchCase[];
}

/** Represents a `throw` statement. */
export class ThrowStatement extends Statement {
  /** Value expression being thrown. */
  value: Expression;
}

/** Represents a `try` statement. */
export class TryStatement extends Statement {
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
  /** Type parameters, if any. */
  typeParameters: TypeParameterNode[] | null;
  /** Type being aliased. */
  type: TypeNode;
}

/** Represents a variable declaration part of a {@link VariableStatement}. */
export class VariableDeclaration extends VariableLikeDeclarationStatement {
}

/** Represents a variable statement wrapping {@link VariableDeclaration}s. */
export class VariableStatement extends Statement {
  /** Array of decorators. */
  decorators: DecoratorNode[] | null;
  /** Array of member declarations. */
  declarations: VariableDeclaration[];
}

/** Represents a void statement dropping an expression's value. */
export class VoidStatement extends Statement {
  /** Expression being dropped. */
  expression: Expression;
}

/** Represents a `while` statement. */
export class WhileStatement extends Statement {
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
