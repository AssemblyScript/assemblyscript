import {
  PATH_DELIMITER,
  STATIC_DELIMITER,
  INSTANCE_DELIMITER
} from "./constants";

import {
  Token,
  Tokenizer,
  Range
} from "./tokenizer";

import{
  CharCode
} from "./util/charcode";

import {
  I64
} from "./util/i64";

import {
  normalize as normalizePath,
  resolve as resolvePath
} from "./util/path";

export { Range } from "./tokenizer";

/** Indicates the kind of a node. */
export enum NodeKind {

  SOURCE,

  // types
  TYPE,
  TYPEPARAMETER,

  // expressions
  IDENTIFIER,
  ASSERTION,
  BINARY,
  CALL,
  ELEMENTACCESS,
  FALSE,
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
  CASE,
  CLASS,                // is also declaration
  CONTINUE,
  DO,
  EMPTY,
  ENUM,                 // is also declaration
  ENUMVALUE,            // is also declaration
  EXPORT,
  EXPORTIMPORT,
  EXPORTMEMBER,
  EXPRESSION,
  INTERFACE,
  FOR,
  FUNCTION,             // is also declaration
  IF,
  IMPORT,               // wraps declarations
  IMPORTDECLARATION,
  METHOD,               // is also declaration
  NAMESPACE,            // is also declaration
  FIELD,
  RETURN,
  SWITCH,
  THROW,
  TRY,
  TYPEDECLARATION,
  VARIABLE,             // wraps declarations
  VARIABLEDECLARATION,
  WHILE,

  // other
  DECORATOR,
  MODIFIER,
  PARAMETER
}

/** Base class of all nodes. */
export abstract class Node {

  /** Node kind indicator. */
  kind: NodeKind;
  /** Source range. */
  range: Range;
  /** Parent node. */
  parent: Node | null = null;

  /** Serializes this node to its TypeScript representation. Note that formatting is lost and long integers become hex literals. */
  abstract serialize(sb: string[]): void;

  // types

  static createType(identifier: IdentifierExpression, typeArguments: TypeNode[], isNullable: bool, range: Range): TypeNode {
    const type: TypeNode = new TypeNode();
    type.range = range;
    type.identifier = identifier;
    type.typeArguments = typeArguments;
    type.isNullable = isNullable;
    return type;
  }

  // expressions

  static createIdentifier(name: string, range: Range): IdentifierExpression {
    const expr: IdentifierExpression = new IdentifierExpression();
    expr.range = range;
    expr.name = name;
    return expr;
  }

  static createArrayLiteral(elementExpressions: (Expression | null)[], range: Range): ArrayLiteralExpression {
    const expr: ArrayLiteralExpression = new ArrayLiteralExpression();
    expr.range = range;
    for (let i: i32 = 0, k: i32 = (expr.elementExpressions = elementExpressions).length; i < k; ++i)
      if (elementExpressions[i]) (<Expression>elementExpressions[i]).parent = expr;
    return expr;
  }

  static createAssertion(assertionKind: AssertionKind, expression: Expression, toType: TypeNode, range: Range): AssertionExpression {
    const expr: AssertionExpression = new AssertionExpression();
    expr.range = range;
    expr.assertionKind = assertionKind;
    (expr.expression = expression).parent = expr;
    (expr.toType = toType).parent = expr;
    return expr;
  }

  static createBinary(operator: Token, left: Expression, right: Expression, range: Range): BinaryExpression {
    const expr: BinaryExpression = new BinaryExpression();
    expr.range = range;
    expr.operator = operator;
    (expr.left = left).parent = expr;
    (expr.right = right).parent = expr;
    return expr;
  }

  static createCall(expression: Expression, typeArguments: TypeNode[], args: Expression[], range: Range): CallExpression {
    const expr: CallExpression = new CallExpression();
    expr.range = range;
    (expr.expression = expression).parent = expr;
    let i: i32, k: i32;
    for (i = 0, k = (expr.typeArguments = typeArguments).length; i < k; ++i) typeArguments[i].parent = expr;
    for (i = 0, k = (expr.arguments = args).length; i < k; ++i) args[i].parent = expr;
    return expr;
  }

  static createConstructor(range: Range): ConstructorExpression {
    const expr: ConstructorExpression = new ConstructorExpression();
    expr.range = range;
    return expr;
  }

  static createElementAccess(expression: Expression, element: Expression, range: Range): ElementAccessExpression {
    const expr: ElementAccessExpression = new ElementAccessExpression();
    expr.range = range;
    (expr.expression = expression).parent = expr;
    (expr.elementExpression = element).parent = expr;
    return expr;
  }

  static createFalse(range: Range): FalseExpression {
    const expr: FalseExpression = new FalseExpression();
    expr.range = range;
    return expr;
  }

  static createFloatLiteral(value: f64, range: Range): FloatLiteralExpression {
    const expr: FloatLiteralExpression = new FloatLiteralExpression();
    expr.range = range;
    expr.value = value;
    return expr;
  }

  static createIntegerLiteral(value: I64, range: Range): IntegerLiteralExpression {
    const expr: IntegerLiteralExpression = new IntegerLiteralExpression();
    expr.range = range;
    expr.value = value;
    return expr;
  }

  static createNew(expression: Expression, typeArguments: TypeNode[], args: Expression[], range: Range): NewExpression {
    const expr: NewExpression = new NewExpression();
    expr.range = range;
    (expr.expression = expression).parent = expr;
    let i: i32, k: i32;
    for (i = 0, k = (expr.typeArguments = typeArguments).length; i < k; ++i) typeArguments[i].parent = expr;
    for (i = 0, k = (expr.arguments = args).length; i < k; ++i) args[i].parent = expr;
    return expr;
  }

  static createNull(range: Range): NullExpression {
    const expr: NullExpression = new NullExpression();
    expr.range = range;
    return expr;
  }

  static createParenthesized(expression: Expression, range: Range): ParenthesizedExpression {
    const expr: ParenthesizedExpression = new ParenthesizedExpression();
    expr.range = range;
    (expr.expression = expression).parent = expr;
    return expr;
  }

  static createPropertyAccess(expression: Expression, property: IdentifierExpression, range: Range): PropertyAccessExpression {
    const expr: PropertyAccessExpression = new PropertyAccessExpression();
    expr.range = range;
    (expr.expression = expression).parent = expr;
    (expr.property = property).parent = expr;
    return expr;
  }

  static createRegexpLiteral(value: string, range: Range): RegexpLiteralExpression {
    const expr: RegexpLiteralExpression = new RegexpLiteralExpression();
    expr.range = range;
    expr.value = value;
    return expr;
  }

  static createTernary(condition: Expression, ifThen: Expression, ifElse: Expression, range: Range): TernaryExpression {
    const expr: TernaryExpression = new TernaryExpression();
    expr.range = range;
    (expr.condition = condition).parent = expr;
    (expr.ifThen = ifThen).parent = expr;
    (expr.ifElse = ifElse).parent = expr;
    return expr;
  }

  static createStringLiteral(value: string, range: Range): StringLiteralExpression {
    const expr: StringLiteralExpression = new StringLiteralExpression();
    expr.range = range;
    expr.value = value;
    return expr;
  }

  static createSuper(range: Range): SuperExpression {
    const expr: SuperExpression = new SuperExpression();
    expr.range = range;
    return expr;
  }

  static createThis(range: Range): ThisExpression {
    const expr: ThisExpression = new ThisExpression();
    expr.range = range;
    return expr;
  }

  static createTrue(range: Range): TrueExpression {
    const expr: TrueExpression = new TrueExpression();
    expr.range = range;
    return expr;
  }

  static createUnaryPostfix(operator: Token, expression: Expression, range: Range): UnaryPostfixExpression {
    const expr: UnaryPostfixExpression = new UnaryPostfixExpression();
    expr.range = range;
    expr.operator = operator;
    (expr.operand = expression).parent = expr;
    return expr;
  }

  static createUnaryPrefix(operator: Token, expression: Expression, range: Range): UnaryPrefixExpression {
    const expr: UnaryPrefixExpression = new UnaryPrefixExpression();
    expr.range = range;
    expr.operator = operator;
    (expr.operand = expression).parent = expr;
    return expr;
  }

  // statements

  static createBlock(statements: Statement[], range: Range): BlockStatement {
    const stmt: BlockStatement = new BlockStatement();
    stmt.range = range;
    for (let i: i32 = 0, k: i32 = (stmt.statements = statements).length; i < k; ++i) statements[i].parent = stmt;
    return stmt;
  }

  static createBreak(label: IdentifierExpression | null, range: Range): BreakStatement {
    const stmt: BreakStatement = new BreakStatement();
    stmt.range = range;
    if (stmt.label = label) (<IdentifierExpression>label).parent = stmt;
    return stmt;
  }

  static createClass(identifier: IdentifierExpression, typeParameters: TypeParameter[], extendsType: TypeNode | null, implementsTypes: TypeNode[], members: DeclarationStatement[], modifiers: Modifier[] | null, decorators: Decorator[] | null, range: Range): ClassDeclaration {
    const stmt: ClassDeclaration = new ClassDeclaration();
    stmt.range = range;
    let i: i32, k: i32;
    (stmt.name = identifier).parent = stmt;
    for (i = 0, k = (stmt.typeParameters = typeParameters).length; i < k; ++i) typeParameters[i].parent = stmt;
    if (stmt.extendsType = extendsType) (<TypeNode>extendsType).parent = stmt;
    for (i = 0, k = (stmt.implementsTypes = implementsTypes).length; i < k; ++i) implementsTypes[i].parent = stmt;
    for (i = 0, k = (stmt.members = members).length; i < k; ++i) members[i].parent = stmt;
    if (stmt.modifiers = modifiers) for (i = 0, k = (<Modifier[]>modifiers).length; i < k; ++i) (<Modifier[]>modifiers)[i].parent = stmt;
    if (stmt.decorators = decorators) for (i = 0, k = (<Decorator[]>decorators).length; i < k; ++i) (<Decorator[]>decorators)[i].parent = stmt;
    return stmt;
  }

  static createContinue(label: IdentifierExpression | null, range: Range): ContinueStatement {
    const stmt: ContinueStatement = new ContinueStatement();
    stmt.range = range;
    if (stmt.label = label) (<IdentifierExpression>label).parent = stmt;
    return stmt;
  }

  static createDecorator(expression: Expression, args: Expression[], range: Range): Decorator {
    const stmt: Decorator = new Decorator();
    stmt.range = range;
    (stmt.name = expression).parent = stmt;
    for (let i: i32 = 0, k: i32 = (stmt.arguments = args).length; i < k; ++i) args[i].parent = stmt;
    return stmt;
  }

  static createDo(statement: Statement, condition: Expression, range: Range): DoStatement {
    const stmt: DoStatement = new DoStatement();
    stmt.range = range;
    (stmt.statement = statement).parent = stmt;
    (stmt.condition = condition).parent = stmt;
    return stmt;
  }

  static createEmpty(range: Range): EmptyStatement {
    const stmt: EmptyStatement = new EmptyStatement();
    stmt.range = range;
    return stmt;
  }

  static createEnum(identifier: IdentifierExpression, members: EnumValueDeclaration[], modifiers: Modifier[] | null, decorators: Decorator[] | null, range: Range): EnumDeclaration {
    const stmt: EnumDeclaration = new EnumDeclaration();
    stmt.range = range;
    let i: i32, k: i32;
    (stmt.name = identifier).parent = stmt;
    for (i = 0, k = (stmt.values = members).length; i < k; ++i) members[i].parent = stmt;
    if (stmt.modifiers = modifiers) for (i = 0, k = (<Modifier[]>modifiers).length; i < k; ++i) (<Modifier[]>modifiers)[i].parent = stmt;
    if (stmt.decorators = decorators) for (i = 0, k = (<Decorator[]>decorators).length; i < k; ++i) (<Decorator[]>decorators)[i].parent = stmt;
    return stmt;
  }

  static createEnumValue(identifier: IdentifierExpression, value: Expression | null, range: Range): EnumValueDeclaration {
    const stmt: EnumValueDeclaration = new EnumValueDeclaration();
    stmt.range = range;
    (stmt.name = identifier).parent = stmt;
    if (stmt.value = value) (<Expression>value).parent = stmt;
    return stmt;
  }

  static createExport(members: ExportMember[], path: StringLiteralExpression | null, modifiers: Modifier[] | null, range: Range): ExportStatement {
    const stmt: ExportStatement = new ExportStatement();
    stmt.range = range;
    let i: i32, k: i32;
    for (i = 0, k = (stmt.members = members).length; i < k; ++i) members[i].parent = stmt;
    stmt.path = path;
    stmt.normalizedPath = path ? resolvePath(normalizePath(path.value), range.source.normalizedPath) : null;
    stmt.internalPath = stmt.normalizedPath ? mangleInternalPath(stmt.normalizedPath) : null;
    if (stmt.modifiers = modifiers) for (i = 0, k = (<Modifier[]>modifiers).length; i < k; ++i) (<Modifier[]>modifiers)[i].parent = stmt;
    return stmt;
  }

  static createExportImport(identifier: IdentifierExpression, asIdentifier: IdentifierExpression, range: Range): ExportImportStatement {
    const stmt: ExportImportStatement = new ExportImportStatement();
    stmt.range = range;
    (stmt.identifier = identifier).parent = stmt;
    (stmt.externalIdentifier = asIdentifier).parent = stmt;
    return stmt;
  }

  static createExportMember(identifier: IdentifierExpression, externalIdentifier: IdentifierExpression | null, range: Range): ExportMember {
    const elem: ExportMember = new ExportMember();
    elem.range = range;
    (elem.identifier = identifier).parent = elem;
    (elem.externalIdentifier = externalIdentifier ? <IdentifierExpression>externalIdentifier : identifier).parent = elem;
    return elem;
  }

  /** Creates an expression statement. */
  static createExpression(expression: Expression): ExpressionStatement {
    const stmt: ExpressionStatement = new ExpressionStatement();
    stmt.range = expression.range;
    (stmt.expression = expression).parent = stmt;
    return stmt;
  }

  static createIf(condition: Expression, statement: Statement, elseStatement: Statement | null, range: Range): IfStatement {
    const stmt: IfStatement = new IfStatement();
    stmt.range = range;
    (stmt.condition = condition).parent = stmt;
    (stmt.ifTrue = statement).parent = stmt;
    if (stmt.ifFalse = elseStatement) (<Statement>elseStatement).parent = stmt;
    return stmt;
  }

  static createImport(declarations: ImportDeclaration[], path: StringLiteralExpression, range: Range): ImportStatement {
    const stmt: ImportStatement = new ImportStatement();
    stmt.range = range;
    for (let i: i32 = 0, k: i32 = (stmt.declarations = declarations).length; i < k; ++i) declarations[i].parent = stmt;
    stmt.namespaceName = null;
    stmt.path = path;
    stmt.normalizedPath = resolvePath(normalizePath(path.value), range.source.normalizedPath);
    stmt.internalPath = mangleInternalPath(stmt.normalizedPath);
    return stmt;
  }

  static createImportAll(identifier: IdentifierExpression, path: StringLiteralExpression, range: Range): ImportStatement {
    const stmt: ImportStatement = new ImportStatement();
    stmt.range = range;
    stmt.declarations = null;
    stmt.namespaceName = identifier;
    stmt.path = path;
    stmt.normalizedPath = resolvePath(normalizePath(path.value), range.source.normalizedPath);
    stmt.internalPath = mangleInternalPath(stmt.normalizedPath);
    return stmt;
  }

  static createImportDeclaration(externalIdentifier: IdentifierExpression, identifier: IdentifierExpression | null, range: Range): ImportDeclaration {
    const elem: ImportDeclaration = new ImportDeclaration();
    elem.range = range;
    (elem.name = identifier ? <IdentifierExpression>identifier : externalIdentifier).parent = elem;
    (elem.externalIdentifier = externalIdentifier).parent = elem;
    return elem;
  }

  static createInterface(identifier: IdentifierExpression, extendsType: TypeNode | null, members: DeclarationStatement[], modifiers: Modifier[] | null, range: Range): InterfaceDeclaration {
    const stmt: InterfaceDeclaration = new InterfaceDeclaration();
    stmt.range = range;
    let i: i32, k: i32;
    (stmt.name = identifier).parent = stmt;
    if (stmt.extendsType = extendsType) (<TypeNode>extendsType).parent = stmt;
    for (i = 0, k = (stmt.members = members).length; i < k; ++i) members[i].parent = stmt;
    if (stmt.modifiers = modifiers) for (i = 0, k = (<Modifier[]>modifiers).length; i < k; ++i) (<Modifier[]>modifiers)[i].parent = stmt;
    return stmt;
  }

  static createField(identifier: IdentifierExpression, type: TypeNode | null, initializer: Expression | null, modifiers: Modifier[] | null, decorators: Decorator[] | null, range: Range): FieldDeclaration {
    const stmt: FieldDeclaration = new FieldDeclaration();
    stmt.range = range;
    let i: i32, k: i32;
    (stmt.name = identifier).parent = stmt;
    if (stmt.type = type) (<TypeNode>type).parent = stmt;
    if (stmt.initializer = initializer) (<Expression>initializer).parent = stmt;
    if (stmt.modifiers = modifiers) for (i = 0, k = (<Modifier[]>modifiers).length; i < k; ++i) (<Modifier[]>modifiers)[i].parent = stmt;
    if (stmt.decorators = decorators) for (i = 0, k = (<Decorator[]>decorators).length; i < k; ++i) (<Decorator[]>decorators)[i].parent = stmt;
    return stmt;
  }

  static createFor(initializer: Statement | null, condition: Expression | null, incrementor: Expression | null, statement: Statement, range: Range): ForStatement {
    const stmt: ForStatement = new ForStatement();
    stmt.range = range;
    if (stmt.initializer = initializer) (<Statement>initializer).parent = stmt;
    if (stmt.condition = condition) (<Expression>condition).parent = stmt;
    if (stmt.incrementor = incrementor) (<Expression>incrementor).parent = stmt;
    (stmt.statement = statement).parent = stmt;
    return stmt;
  }

  static createTypeParameter(identifier: IdentifierExpression, extendsType: TypeNode | null, range: Range): TypeParameter {
    const elem: TypeParameter = new TypeParameter();
    elem.range = range;
    (elem.identifier = identifier).parent = elem;
    if (elem.extendsType = extendsType) (<TypeNode>extendsType).parent = elem;
    return elem;
  }

  static createParameter(identifier: IdentifierExpression, type: TypeNode | null, initializer: Expression | null, isRest: bool, range: Range): Parameter {
    const elem: Parameter = new Parameter();
    elem.range = range;
    (elem.name = identifier).parent = elem;
    if (elem.type = type) (<TypeNode>type).parent = elem;
    if (elem.initializer = initializer) (<Expression>initializer).parent = elem;
    elem.isRest = isRest;
    return elem;
  }

  static createFunction(identifier: IdentifierExpression, typeParameters: TypeParameter[], parameters: Parameter[], returnType: TypeNode | null, statements: Statement[] | null, modifiers: Modifier[] | null, decorators: Decorator[] | null, range: Range): FunctionDeclaration {
    const stmt: FunctionDeclaration = new FunctionDeclaration();
    stmt.range = range;
    let i: i32, k: i32;
    (stmt.name = identifier).parent = stmt;
    for (i = 0, k = (stmt.typeParameters = typeParameters).length; i < k; ++i) typeParameters[i].parent = stmt;
    for (i = 0, k = (stmt.parameters = parameters).length; i < k; ++i) parameters[i].parent = stmt;
    if (stmt.returnType = returnType) (<TypeNode>returnType).parent = stmt;
    if (stmt.statements = statements) for (i = 0, k = (<Statement[]>statements).length; i < k; ++i) (<Statement[]>statements)[i].parent = stmt;
    if (stmt.modifiers = modifiers) for (i = 0, k = (<Modifier[]>modifiers).length; i < k; ++i) (<Modifier[]>modifiers)[i].parent = stmt;
    if (stmt.decorators = decorators) for (i = 0, k = (<Decorator[]>decorators).length; i < k; ++i) (<Decorator[]>decorators)[i].parent = stmt;
    return stmt;
  }

  static createMethod(identifier: IdentifierExpression, typeParameters: TypeParameter[], parameters: Parameter[], returnType: TypeNode | null, statements: Statement[] | null, modifiers: Modifier[] | null, decorators: Decorator[] | null, range: Range): MethodDeclaration {
    const stmt: MethodDeclaration = new MethodDeclaration();
    stmt.range = range;
    let i: i32, k: i32;
    (stmt.name = identifier).parent = stmt;
    for (i = 0, k = (stmt.typeParameters = typeParameters).length; i < k; ++i) typeParameters[i].parent = stmt;
    for (i = 0, k = (stmt.parameters = parameters).length; i < k; ++i) parameters[i].parent = stmt;
    if (stmt.returnType = returnType) (<TypeNode>returnType).parent = stmt;
    if (stmt.statements = statements) for (i = 0, k = (<Statement[]>statements).length; i < k; ++i) (<Statement[]>statements)[i].parent = stmt;
    if (stmt.modifiers = modifiers) for (i = 0, k = (<Modifier[]>modifiers).length; i < k; ++i) (<Modifier[]>modifiers)[i].parent = stmt;
    if (stmt.decorators = decorators) for (i = 0, k = (<Decorator[]>decorators).length; i < k; ++i) (<Decorator[]>decorators)[i].parent = stmt;
    return stmt;
  }

  static createModifier(kind: ModifierKind, range: Range): Modifier {
    const elem: Modifier = new Modifier();
    elem.range = range;
    elem.modifierKind = kind;
    return elem;
  }

  static createNamespace(identifier: IdentifierExpression, members: Statement[], modifiers: Modifier[] | null, decorators: Decorator[] | null, range: Range): NamespaceDeclaration {
    const stmt: NamespaceDeclaration = new NamespaceDeclaration();
    stmt.range = range;
    let i: i32, k: i32;
    (stmt.name = identifier).parent = stmt;
    for (i = 0, k = (stmt.members = members).length; i < k; ++i) members[i].parent = stmt;
    if (stmt.modifiers = modifiers) for (i = 0, k = (<Modifier[]>modifiers).length; i < k; ++i) (<Modifier[]>modifiers)[i].parent = stmt;
    if (stmt.decorators = decorators) for (i = 0, k = (<Decorator[]>decorators).length; i < k; ++i) (<Decorator[]>decorators)[i].parent = stmt;
    return stmt;
  }

  static createReturn(expression: Expression | null, range: Range): ReturnStatement {
    const stmt: ReturnStatement = new ReturnStatement();
    stmt.range = range;
    if (stmt.value = expression) (<Expression>expression).parent = stmt;
    return stmt;
  }

  static createSwitch(expression: Expression, cases: SwitchCase[], range: Range): SwitchStatement {
    const stmt: SwitchStatement = new SwitchStatement();
    stmt.range = range;
    (stmt.condition = expression).parent = stmt;
    for (let i: i32 = 0, k: i32 = (stmt.cases = cases).length; i < k; ++i) cases[i].parent = stmt;
    return stmt;
  }

  static createSwitchCase(label: Expression | null, statements: Statement[], range: Range): SwitchCase {
    const elem: SwitchCase = new SwitchCase();
    elem.range = range;
    if (elem.label = label) (<Expression>label).parent = elem;
    for (let i: i32 = 0, k: i32 = (elem.statements = statements).length; i < k; ++i) statements[i].parent = elem;
    return elem;
  }

  static createThrow(expression: Expression, range: Range): ThrowStatement {
    const stmt: ThrowStatement = new ThrowStatement();
    stmt.range = range;
    (stmt.value = expression).parent = stmt;
    return stmt;
  }

  static createTry(statements: Statement[], catchVariable: IdentifierExpression | null, catchStatements: Statement[] | null, finallyStatements: Statement[] | null, range: Range): TryStatement {
    const stmt: TryStatement = new TryStatement();
    stmt.range = range;
    let i: i32, k: i32;
    for (i = 0, k = (stmt.statements = statements).length; i < k; ++i) statements[i].parent = stmt;
    if (stmt.catchVariable = catchVariable) (<IdentifierExpression>catchVariable).parent = stmt;
    if (stmt.catchStatements = catchStatements) for (i = 0, k = (<Statement[]>catchStatements).length; i < k; ++i) (<Statement[]>catchStatements)[i].parent = stmt;
    if (stmt.finallyStatements = finallyStatements) for (i = 0, k = (<Statement[]>finallyStatements).length; i < k; ++i) (<Statement[]>finallyStatements)[i].parent = stmt;
    return stmt;
  }

  static createTypeDeclaration(identifier: IdentifierExpression, alias: TypeNode, modifiers: Modifier[] | null, decorators: Decorator[] | null, range: Range): TypeDeclaration {
    const stmt: TypeDeclaration = new TypeDeclaration();
    stmt.range = range;
    (stmt.name = identifier).parent = stmt;
    (stmt.alias = alias).parent = stmt;
    let i: i32, k: i32;
    if (stmt.modifiers = modifiers) for (i = 0, k = (<Modifier[]>modifiers).length; i < k; ++i) (<Modifier[]>modifiers)[i].parent = stmt;
    if (stmt.decorators = decorators) for (i = 0, k = (<Decorator[]>decorators).length; i < k; ++i) (<Decorator[]>decorators)[i].parent = stmt;
    return stmt;
  }

  static createVariable(declarations: VariableDeclaration[], modifiers: Modifier[] | null, decorators: Decorator[] | null, range: Range): VariableStatement {
    const stmt: VariableStatement = new VariableStatement();
    stmt.range = range;
    let i: i32, k: i32;
    for (i = 0, k = (stmt.declarations = declarations).length; i < k; ++i) declarations[i].parent = stmt;
    if (stmt.modifiers = modifiers) for (i = 0, k = (<Modifier[]>modifiers).length; i < k; ++i) (<Modifier[]>modifiers)[i].parent = stmt;
    if (stmt.decorators = decorators) for (i = 0, k = (<Decorator[]>decorators).length; i < k; ++i) (<Decorator[]>decorators)[i].parent = stmt;
    return stmt;
  }

  static createVariableDeclaration(name: IdentifierExpression, type: TypeNode | null, initializer: Expression | null, modifiers: Modifier[] | null, decorators: Decorator[] | null, range: Range): VariableDeclaration {
    const elem: VariableDeclaration = new VariableDeclaration();
    elem.range = range;
    (elem.name = name).parent = elem;
    if (elem.type = type) (<TypeNode>type).parent = elem;
    if (elem.initializer = initializer) (<Expression>initializer).parent = elem;
    elem.modifiers = modifiers;
    elem.decorators = decorators;
    return elem;
  }

  static createWhile(condition: Expression, statement: Statement, range: Range): WhileStatement {
    const stmt: WhileStatement = new WhileStatement();
    stmt.range = range;
    (stmt.condition = condition).parent = stmt;
    (stmt.statement = statement).parent = stmt;
    return stmt;
  }
}

// types

/** Represents a type annotation. */
export class TypeNode extends Node {

  kind = NodeKind.TYPE;

  /** Identifier reference. */
  identifier: IdentifierExpression;
  /** Type argument references. */
  typeArguments: TypeNode[];
  /** Whether nullable or not. */
  isNullable: bool;

  serialize(sb: string[]): void {
    this.identifier.serialize(sb);
    if (this.typeArguments.length) {
      sb.push("<");
      for (let i: i32 = 0, k: i32 = this.typeArguments.length; i < k; ++i) {
        if (i > 0)
          sb.push(", ");
        this.typeArguments[i].serialize(sb);
      }
      sb.push(">");
    }
    if (this.isNullable)
      sb.push(" | null");
  }
}

/** Represents a type parameter. */
export class TypeParameter extends Node {

  kind = NodeKind.TYPEPARAMETER;

  /** Identifier reference. */
  identifier: IdentifierExpression;
  /** Extended type reference, if any. */
  extendsType: TypeNode | null;

  serialize(sb: string[]): void {
    this.identifier.serialize(sb);
    if (this.extendsType) {
      sb.push(" extends ");
      (<TypeNode>this.extendsType).serialize(sb);
    }
  }
}

// expressions

/** Base class of all expression nodes. */
export abstract class Expression extends Node { }

/** Represents an identifier expression. */
export class IdentifierExpression extends Expression {

  kind = NodeKind.IDENTIFIER;

  /** Textual name. */
  name: string;

  serialize(sb: string[]): void {
    sb.push(this.name);
  }
}

/** Indicates the kind of a literal. */
export const enum LiteralKind {
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

  // kind = NodeKind.LITERAL
  literalKind = LiteralKind.ARRAY;

  /** Nested element expressions. */
  elementExpressions: (Expression | null)[];

  serialize(sb: string[]): void {
    sb.push("[");
    for (let i: i32 = 0, k: i32 = this.elementExpressions.length; i < k; ++i) {
      if (i > 0)
        sb.push(", ");
      if (this.elementExpressions[i])
        (<Expression>this.elementExpressions[i]).serialize(sb);
    }
    sb.push("]");
  }
}

/** Indicates the kind of an assertion. */
export const enum AssertionKind {
  PREFIX,
  AS
}

/** Represents an assertion expression. */
export class AssertionExpression extends Expression {

  kind = NodeKind.ASSERTION;

  /** Specific kind of this assertion. */
  assertionKind: AssertionKind;
  /** Expression being asserted. */
  expression: Expression;
  /** Target type. */
  toType: TypeNode;

  serialize(sb: string[]): void {
    if (this.assertionKind == AssertionKind.PREFIX) {
      sb.push("<");
      this.toType.serialize(sb);
      sb.push(">");
      this.expression.serialize(sb);
    } else {
      this.expression.serialize(sb);
      sb.push(" as ");
      this.toType.serialize(sb);
    }
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

  serialize(sb: string[]): void {
    this.left.serialize(sb);
    sb.push(" ");
    sb.push(Token.operatorToString(this.operator));
    sb.push(" ");
    this.right.serialize(sb);
  }
}

/** Represents a call expression. */
export class CallExpression extends Expression {

  kind = NodeKind.CALL;

  /** Called expression. Usually an identifier or property access expression. */
  expression: Expression;
  /** Provided type arguments. */
  typeArguments: TypeNode[];
  /** Provided arguments. */
  arguments: Expression[];

  serialize(sb: string[]): void {
    this.expression.serialize(sb);
    let i: i32, k: i32 = this.typeArguments.length;
    if (k) {
      sb.push("<");
      for (i = 0; i < k; ++i) {
        if (i > 0)
          sb.push(", ");
        this.typeArguments[i].serialize(sb);
      }
      sb.push(">(");
    } else
      sb.push("(");
    for (i = 0, k = this.arguments.length; i < k; ++i) {
      if (i > 0)
        sb.push(", ");
      this.arguments[i].serialize(sb);
    }
    sb.push(")");
  }
}

/** Represents a `constructor` expression. */
export class ConstructorExpression extends IdentifierExpression {
  kind = NodeKind.CONSTRUCTOR;
  name = "this";
}

/** Represents an element access expression, e.g., array access. */
export class ElementAccessExpression extends Expression {

  kind = NodeKind.ELEMENTACCESS;

  /** Expression being accessed. */
  expression: Expression;
  /** Element of the expression being accessed. */
  elementExpression: Expression;

  serialize(sb: string[]): void {
    this.expression.serialize(sb);
    sb.push("[");
    this.elementExpression.serialize(sb);
    sb.push("]");
  }
}

/** Represents a float literal expression. */
export class FloatLiteralExpression extends LiteralExpression {

  // kind = NodeKind.LITERAL
  literalKind = LiteralKind.FLOAT;

  /** Float value. */
  value: f64;

  serialize(sb: string[]): void {
    sb.push(this.value.toString(10));
  }
}

/** Represents an integer literal expression. */
export class IntegerLiteralExpression extends LiteralExpression {

  // kind = NodeKind.LITERAL
  literalKind = LiteralKind.INTEGER;

  /** Integer value. */
  value: I64;

  serialize(sb: string[]): void {
    sb.push(this.value.toString());
  }
}

/** Represents a `new` expression. Like a call but with its own kind. */
export class NewExpression extends CallExpression {

  kind = NodeKind.NEW;

  serialize(sb: string[]): void {
    sb.push("new ");
    super.serialize(sb);
  }
}

/** Represents a `null` expression. */
export class NullExpression extends IdentifierExpression {
  kind = NodeKind.NULL;
  name = "null";
}

/** Represents a parenthesized expression. */
export class ParenthesizedExpression extends Expression {

  kind = NodeKind.PARENTHESIZED;

  /** Expression in parenthesis. */
  expression: Expression;

  serialize(sb: string[]): void {
    sb.push("(");
    this.expression.serialize(sb);
    sb.push(")");
  }
}

/** Represents a property access expression. */
export class PropertyAccessExpression extends Expression {

  kind = NodeKind.PROPERTYACCESS;

  /** Expression being accessed. */
  expression: Expression;
  /** Property of the expression being accessed. */
  property: IdentifierExpression;

  serialize(sb: string[]): void {
    this.expression.serialize(sb);
    sb.push(".");
    this.property.serialize(sb);
  }
}

/** Represents a regular expression literal expression. */
export class RegexpLiteralExpression extends LiteralExpression {

  // kind = NodeKind.LITERAL
  literalKind = LiteralKind.REGEXP;

  /** Value of the expression. */
  value: string;

  serialize(sb: string[]): void {
    sb.push(this.value);
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

  serialize(sb: string[]): void {
    this.condition.serialize(sb);
    sb.push(" ? ");
    this.ifThen.serialize(sb);
    sb.push(" : ");
    this.ifElse.serialize(sb);
  }
}

/** Represents a string literal expression. */
export class StringLiteralExpression extends LiteralExpression {

  literalKind = LiteralKind.STRING;

  /** String value without quotes. */
  value: string;

  serialize(sb: string[]): void {
    sb.push(JSON.stringify(this.value));
  }
}

/** Represents a `super` expression. */
export class SuperExpression extends IdentifierExpression {
  kind = NodeKind.SUPER;
  name = "super";
}

/** Represents a `this` expression. */
export class ThisExpression extends IdentifierExpression {
  kind = NodeKind.THIS;
  name = "this";
}

/** Represents a `true` expression. */
export class TrueExpression extends IdentifierExpression {
  kind = NodeKind.TRUE;
  name = "true";
}

/** Represents a `false` expression. */
export class FalseExpression extends IdentifierExpression {
  kind = NodeKind.FALSE;
  name = "false";
}

/** Base class of all unary expressions. */
export abstract class UnaryExpression extends Expression {

  // kind varies

  /** Operator token. */
  operator: Token;
  /** Operand expression. */
  operand: Expression;
}

/** Represents a unary postfix expression, e.g. a postfix increment. */
export class UnaryPostfixExpression extends UnaryExpression {

  kind = NodeKind.UNARYPOSTFIX;

  serialize(sb: string[]): void {
    this.operand.serialize(sb);
    switch (this.operator) {
      case Token.PLUS_PLUS: sb.push("++"); break;
      case Token.MINUS_MINUS: sb.push("--"); break;
      default: sb.push("INVALID"); break;
    }
  }
}

/** Represents a unary prefix expression, e.g. a negation. */
export class UnaryPrefixExpression extends UnaryExpression {

  kind = NodeKind.UNARYPREFIX;

  serialize(sb: string[]): void {
    sb.push(Token.operatorToString(this.operator));
    this.operand.serialize(sb);
  }
}

// statements

/** Indicates the specific kind of a modifier. */
export enum ModifierKind {
  ASYNC,
  CONST,
  DECLARE,
  EXPORT,
  IMPORT,
  STATIC,
  ABSTRACT,
  PUBLIC,
  PRIVATE,
  PROTECTED,
  READONLY,
  GET,
  SET,
}

/** Base class of all statement nodes. */
export abstract class Statement extends Node { }

/** A top-level source node. */
export class Source extends Node {

  kind = NodeKind.SOURCE;
  parent = null;

  /** Path as provided to the parser. */
  path: string;
  /** Normalized path. */
  normalizedPath: string;
  /** Path used internally. */
  internalPath: string;
  /** Contained statements. */
  statements: Statement[];
  /** Full source text. */
  text: string;
  /** Tokenizer reference. */
  tokenizer: Tokenizer | null = null;
  /** Whether an entry file or not. */
  isEntry: bool;

  /** Constructs a new source node. */
  constructor(path: string, text: string, isEntry: bool = false) {
    super();
    this.path = path;
    this.normalizedPath = normalizePath(path, true);
    this.internalPath = mangleInternalPath(this.normalizedPath);
    this.statements = new Array();
    this.range = new Range(this, 0, text.length);
    this.text = text;
    this.isEntry = isEntry;
  }

  serialize(sb: string[]): void {
    for (let i: i32 = 0, k: i32 = this.statements.length; i < k; ++i) {
      const statement: Statement = this.statements[i];
      statement.serialize(sb);
      if (builderEndsWith(sb, CharCode.CLOSEBRACE))
        sb.push("\n");
      else
        sb.push(";\n");
    }
  }
}

/** Base class of all declaration statements. */
export abstract class DeclarationStatement extends Statement {

  // kind varies

  /** Simple name being declared. */
  name: IdentifierExpression;
  /** Array of modifiers. */
  modifiers: Modifier[] | null;
  /** Array of decorators. */
  decorators: Decorator[] | null = null;

  protected _cachedInternalName: string | null = null;

  /** Gets the mangled internal name of this declaration. */
  get internalName(): string { return this._cachedInternalName === null ? this._cachedInternalName = mangleInternalName(this) : this._cachedInternalName; }
}

/** Base class of all variable-like declaration statements with a type and initializer. */
export abstract class VariableLikeDeclarationStatement extends DeclarationStatement {

  // kind varies

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

  serialize(sb: string[]): void {
    sb.push("{\n");
    for (let i: i32 = 0, k: i32 = this.statements.length; i < k; ++i) {
      this.statements[i].serialize(sb);
      if (builderEndsWith(sb, CharCode.CLOSEBRACE))
        sb.push("\n");
      else
        sb.push(";\n");
    }
    sb.push("}");
  }
}

/** Represents a `break` statement. */
export class BreakStatement extends Statement {

  kind = NodeKind.BREAK;

  /** Target label, if applicable. */
  label: IdentifierExpression | null;

  serialize(sb: string[]): void {
    if (this.label) {
      sb.push("break ");
      (<IdentifierExpression>this.label).serialize(sb);
    } else
      sb.push("break");
  }
}

/** Represents a `class` declaration. */
export class ClassDeclaration extends DeclarationStatement {

  kind = NodeKind.CLASS;

  /** Accepted type parameters. */
  typeParameters: TypeParameter[];
  /** Base class type being extended. */
  extendsType: TypeNode | null;
  /** Interface types being implemented. */
  implementsTypes: TypeNode[];
  /** Class member declarations. */
  members: DeclarationStatement[];

  serialize(sb: string[]): void {
    let i: i32, k: i32;
    if (this.decorators)
      for (i = 0, k = this.decorators.length; i < k; ++i) {
        this.decorators[i].serialize(sb);
        sb.push("\n");
      }
    if (this.modifiers)
      for (i = 0, k = (<Modifier[]>this.modifiers).length; i < k; ++i) {
        (<Modifier[]>this.modifiers)[i].serialize(sb);
        sb.push(" ");
      }
    sb.push("class ");
    sb.push(this.name.name);
    if (this.typeParameters.length) {
      sb.push("<");
      for (i = 0, k = this.typeParameters.length; i < k; ++i) {
        if (i > 0)
          sb.push(", ");
        this.typeParameters[i].serialize(sb);
      }
      sb.push(">");
    }
    if (this.extendsType) {
      sb.push(" extends ");
      this.extendsType.serialize(sb);
    }
    if (this.implementsTypes.length) {
      sb.push(" implements ");
      for (i = 0, k = this.implementsTypes.length; i < k; ++i) {
        if (i > 0)
          sb.push(", ");
        this.implementsTypes[i].serialize(sb);
      }
    }
    sb.push(" {\n");
    for (i = 0, k = this.members.length; i < k; ++i) {
      this.members[i].serialize(sb);
      if (builderEndsWith(sb, CharCode.CLOSEBRACE))
        sb.push("\n");
      else
        sb.push(";\n");
    }
    sb.push("}");
  }
}

/** Represents a `continue` statement. */
export class ContinueStatement extends Statement {

  kind = NodeKind.CONTINUE;

  /** Target label, if applicable. */
  label: IdentifierExpression | null;

  serialize(sb: string[]): void {
    if (this.label) {
      sb.push("continue ");
      (<IdentifierExpression>this.label).serialize(sb);
    } else
      sb.push("continue");
  }
}

/** Depresents a decorator. */
export class Decorator extends Statement {

  kind = NodeKind.DECORATOR;

  /** Name expression. */
  name: Expression;
  /** Argument expressions. */
  arguments: Expression[];

  serialize(sb: string[]): void {
    sb.push("@");
    this.name.serialize(sb);
    sb.push("(");
    for (let i: i32 = 0, k: i32 = this.arguments.length; i < k; ++i) {
      if (i > 0)
        sb.push(", ");
      this.arguments[i].serialize(sb);
    }
    sb.push(")");
  }
}

/** Represents a `do` statement. */
export class DoStatement extends Statement {

  kind = NodeKind.DO;

  /** Statement being looped over. */
  statement: Statement;
  /** Condition when to repeat. */
  condition: Expression;

  serialize(sb: string[]): void {
    sb.push("do ");
    this.statement.serialize(sb);
    if (this.statement.kind == NodeKind.BLOCK)
      sb.push(" while (");
    else
      sb.push(";\nwhile (");
    this.condition.serialize(sb);
    sb.push(")");
  }
}

/** Represents an empty statement, i.e., a semicolon terminating nothing. */
export class EmptyStatement extends Statement {

  kind = NodeKind.EMPTY;

  serialize(sb: string[]): void {}
}

/** Represents an `enum` declaration. */
export class EnumDeclaration extends DeclarationStatement {

  kind = NodeKind.ENUM;

  /** Enum value declarations. */
  values: EnumValueDeclaration[];

  serialize(sb: string[]): void {
    let i: i32, k: i32;
    if (this.modifiers)
      for (i = 0, k = (<Modifier[]>this.modifiers).length; i < k; ++i) {
        (<Modifier[]>this.modifiers)[i].serialize(sb);
        sb.push(" ");
      }
    sb.push("enum ");
    this.name.serialize(sb);
    sb.push(" {\n");
    for (i = 0, k = this.values.length; i < k; ++i) {
      if (i > 0)
        sb.push(",\n");
      this.values[i].serialize(sb);
    }
    sb.push("\n}");
  }
}

/** Represents a value of an `enum` declaration. */
export class EnumValueDeclaration extends DeclarationStatement {

  kind = NodeKind.ENUMVALUE;
  modifiers = null;
  // name is inherited

  /** Value expression. */
  value: Expression | null;

  serialize(sb: string[]): void {
    this.name.serialize(sb);
    if (this.value) {
      sb.push(" = ");
      (<Expression>this.value).serialize(sb);
    }
  }
}

/** Represents an `export import` statement of an interface. */
export class ExportImportStatement extends Node {

  kind = NodeKind.EXPORTIMPORT;

  /** Identifier being imported. */
  identifier: IdentifierExpression;
  /** Identifier being exported. */
  externalIdentifier: IdentifierExpression;

  serialize(sb: string[]): void {
    sb.push("export import ");
    this.externalIdentifier.serialize(sb);
    sb.push(" = ");
    this.identifier.serialize(sb);
  }
}

/** Represents a member of an `export` statement. */
export class ExportMember extends Node {

  kind = NodeKind.EXPORTMEMBER;

  /** Identifier being exported. */
  identifier: IdentifierExpression;
  /** Identifier seen when imported again. */
  externalIdentifier: IdentifierExpression;

  serialize(sb: string[]): void {
    this.identifier.serialize(sb);
    if (this.externalIdentifier.name != this.identifier.name) {
      sb.push(" as ");
      (<IdentifierExpression>this.externalIdentifier).serialize(sb);
    }
  }
}

/** Represents an `export` statement. */
export class ExportStatement extends Statement {

  kind = NodeKind.EXPORT;

  /** Array of modifiers. */
  modifiers: Modifier[] | null;
  /** Array of members. */
  members: ExportMember[];
  /** Path being exported from, if applicable. */
  path: StringLiteralExpression | null;
  /** Normalized path, if `path` is set. */
  normalizedPath: string | null;
  /** Mangled internal path being referenced, if `path` is set. */
  internalPath: string | null;

  serialize(sb: string[]): void {
    let i: i32, k: i32;
    if (this.modifiers)
      for (i = 0, k = (<Modifier[]>this.modifiers).length; i < k; ++i) {
        (<Modifier[]>this.modifiers)[i].serialize(sb);
        sb.push(" ");
      }
    sb.push("export {\n");
    for (i = 0, k = this.members.length; i < k; ++i) {
      if (i > 0)
        sb.push(",\n");
      this.members[i].serialize(sb);
    }
    if (this.path) {
      sb.push("\n} from ");
      this.path.serialize(sb);
    } else
      sb.push("\n}");
  }
}

/** Represents an expression statement, i.e., an expression being used as a statement */
export class ExpressionStatement extends Statement {

  kind = NodeKind.EXPRESSION;

  /** Expression being used as a statement.*/
  expression: Expression;

  serialize(sb: string[]): void {
    this.expression.serialize(sb);
  }
}

/** Represents a field declaration within a `class`. */
export class FieldDeclaration extends VariableLikeDeclarationStatement {

  kind = NodeKind.FIELD;

  serialize(sb: string[]): void {
    let i: i32, k: i32;
    if (this.decorators)
      for (i = 0, k = this.decorators.length; i < k; ++i) {
        this.decorators[i].serialize(sb);
        sb.push("\n");
      }
    if (this.modifiers)
      for (i = 0, k = (<Modifier[]>this.modifiers).length; i < k; ++i) {
        (<Modifier[]>this.modifiers)[i].serialize(sb);
        sb.push(" ");
      }
    this.name.serialize(sb);
    if (this.type) {
      sb.push(": ");
      (<TypeNode>this.type).serialize(sb);
    }
    if (this.initializer) {
      sb.push(" = ");
      (<Expression>this.initializer).serialize(sb);
    }
  }
}

/** Represents a `for` statement. */
export class ForStatement extends Statement {

  kind = NodeKind.FOR;

  /** Initializer statement, if present. Either a {@link VariableStatement} or {@link ExpressionStatement}.  */
  initializer: Statement | null;
  /** Condition expression, if present. */
  condition: Expression | null;
  /** Incrementor expression, if present. */
  incrementor: Expression | null;
  /** Statement being looped over. */
  statement: Statement;

  serialize(sb: string[]): void {
    sb.push("for (");
    if (this.initializer)
      this.initializer.serialize(sb);
    if (this.condition) {
      sb.push("; ");
      this.condition.serialize(sb);
    } else
      sb.push(";");
    if (this.incrementor) {
      sb.push("; ");
      this.incrementor.serialize(sb);
    } else
      sb.push(";");
    sb.push(") ");
    this.statement.serialize(sb);
  }
}

/** Represents a `function` declaration. */
export class FunctionDeclaration extends DeclarationStatement {

  kind = NodeKind.FUNCTION;

  /** Accepted type parameters. */
  typeParameters: TypeParameter[];
  /** Accepted parameters. */
  parameters: Parameter[];
  /** Return type. */
  returnType: TypeNode | null;
  /** Contained statements. */
  statements: Statement[] | null;

  serialize(sb: string[]): void {
    let i: i32, k: i32;
    if (this.decorators)
      for (i = 0, k = this.decorators.length; i < k; ++i) {
        this.decorators[i].serialize(sb);
        sb.push("\n");
      }
    if (this.modifiers)
      for (i = 0, k = (<Modifier[]>this.modifiers).length; i < k; ++i) {
        (<Modifier[]>this.modifiers)[i].serialize(sb);
        sb.push(" ");
      }
    sb.push("function ");
    this.serializeCommon(sb);
  }

  protected serializeCommon(sb: string[]): void {
    this.name.serialize(sb);
    let i: i32, k: i32;
    if (this.typeParameters.length) {
      sb.push("<");
      for (i = 0, k = this.typeParameters.length; i < k; ++i) {
        if (i > 0)
          sb.push(", ");
        this.typeParameters[i].serialize(sb);
      }
      sb.push(">");
    }
    sb.push("(");
    for (i = 0, k = this.parameters.length; i < k; ++i) {
      if (i > 0)
        sb.push(", ");
      this.parameters[i].serialize(sb);
    }
    if (this.returnType && !hasModifier(ModifierKind.SET, this.modifiers)) {
      sb.push("): ");
      (<TypeNode>this.returnType).serialize(sb);
    } else
      sb.push(")");
    if (this.statements) {
      sb.push(" {\n");
      for (i = 0, k = (<Statement[]>this.statements).length; i < k; ++i) {
        const statement: Statement = (<Statement[]>this.statements)[i];
        statement.serialize(sb);
        if (builderEndsWith(sb, CharCode.CLOSEBRACE))
          sb.push("\n");
        else
          sb.push(";\n");
      }
      sb.push("}");
    }
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

  serialize(sb: string[]): void {
    sb.push("if (");
    this.condition.serialize(sb);
    sb.push(") ");
    this.ifTrue.serialize(sb);
    if (this.ifTrue.kind != NodeKind.BLOCK)
      sb.push(";\n");
    if (this.ifFalse) {
      if (this.ifTrue.kind == NodeKind.BLOCK)
        sb.push(" else ");
      else
        sb.push("else ");
      (<Statement>this.ifFalse).serialize(sb);
    }
  }
}

/** Represents an `import` declaration, a single member within an {@link ImportStatement}. */
export class ImportDeclaration extends DeclarationStatement {

  kind = NodeKind.IMPORTDECLARATION;
  modifiers = null;

  /** Identifier being imported. */
  externalIdentifier: IdentifierExpression;

  serialize(sb: string[]): void {
    this.externalIdentifier.serialize(sb);
    if (this.externalIdentifier != this.name) {
      sb.push(" as ");
      (<IdentifierExpression>this.name).serialize(sb);
    }
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

  serialize(sb: string[]): void {
    if (this.declarations) {
      sb.push("import {\n");
      for (let i: i32 = 0, k: i32 = this.declarations.length; i < k; ++i) {
        if (i > 0)
          sb.push(",\n");
        this.declarations[i].serialize(sb);
      }
      sb.push("\n}");
    } else {
      sb.push("import * as ");
      if (this.namespaceName)
        this.namespaceName.serialize(sb);
      else
        throw new Error("missing asterisk import identifier");
    }
    sb.push(" from ");
    this.path.serialize(sb);
  }
}

/** Represents an `interfarce` declaration. */
export class InterfaceDeclaration extends ClassDeclaration {

  kind = NodeKind.INTERFACE;

  serialize(sb: string[]): void {
    let i: i32, k: i32;
    if (this.decorators)
      for (i = 0, k = this.decorators.length; i < k; ++i) {
        this.decorators[i].serialize(sb);
        sb.push("\n");
      }
    if (this.modifiers)
      for (i = 0, k = (<Modifier[]>this.modifiers).length; i < k; ++i) {
        (<Modifier[]>this.modifiers)[i].serialize(sb);
        sb.push(" ");
      }
    sb.push("interface ");
    this.name.serialize(sb);
    if (this.typeParameters.length) {
      sb.push("<");
      for (i = 0, k =  this.typeParameters.length; i < k; ++i) {
        if (i > 0)
          sb.push(", ");
        this.typeParameters[i].serialize(sb);
      }
      sb.push(">");
    }
    if (this.extendsType) {
      sb.push(" extends ");
      (<TypeNode>this.extendsType).serialize(sb);
    }
    sb.push(" {\n");
    for (i = 0, k = this.members.length; i < k; ++i) {
      this.members[i].serialize(sb);
      if (builderEndsWith(sb, CharCode.CLOSEBRACE))
        sb.push("\n");
      else
        sb.push(";\n");
    }
    sb.push("}");
  }
}

/** Represents a method declaration within a `class`. */
export class MethodDeclaration extends FunctionDeclaration {

  kind = NodeKind.METHOD;

  serialize(sb: string[]): void {
    let i: i32, k: i32;
    if (this.decorators)
      for (i = 0, k = this.decorators.length; i < k; ++i) {
        this.decorators[i].serialize(sb);
        sb.push("\n");
      }
    if (this.modifiers)
      for (i = 0, k = (<Modifier[]>this.modifiers).length; i < k; ++i) {
        (<Modifier[]>this.modifiers)[i].serialize(sb);
        sb.push(" ");
      }
    super.serializeCommon(sb);
  }
}

/** Represents a `namespace` declaration. */
export class NamespaceDeclaration extends DeclarationStatement {

  kind = NodeKind.NAMESPACE;

  /** Array of namespace members. */
  members: Statement[];

  serialize(sb: string[]): void {
    let i: i32, k: i32;
    if (this.decorators)
      for (i = 0, k = this.decorators.length; i < k; ++i) {
        this.decorators[i].serialize(sb);
        sb.push("\n");
      }
    if (this.modifiers)
      for (i = 0, k = (<Modifier[]>this.modifiers).length; i < k; ++i) {
        (<Modifier[]>this.modifiers)[i].serialize(sb);
        sb.push(" ");
      }
    sb.push("namespace ");
    this.name.serialize(sb);
    sb.push(" {\n");
    for (i = 0, k = this.members.length; i < k; ++i) {
      this.members[i].serialize(sb);
      if (builderEndsWith(sb, CharCode.CLOSEBRACE))
        sb.push("\n");
      else
        sb.push(";\n");
    }
    sb.push("}");
  }
}

/** Represents a function parameter. */
export class Parameter extends Node {

  kind = NodeKind.PARAMETER;

  /** Parameter name. */
  name: IdentifierExpression;
  /** Parameter type. */
  type: TypeNode | null;
  /** Initializer expression, if present. */
  initializer: Expression | null;
  /** Whether a rest parameter or not. */
  isRest: bool;

  serialize(sb: string[]): void {
    if (this.isRest)
      sb.push("...");
    this.name.serialize(sb);
    if (this.type) {
      sb.push(": ");
      (<TypeNode>this.type).serialize(sb);
    }
    if (this.initializer) {
      sb.push(" = ");
      (<Expression>this.initializer).serialize(sb);
    }
  }
}

/** Represents a single modifier. */
export class Modifier extends Node {

  kind = NodeKind.MODIFIER;

  /** Specific modifier kind. */
  modifierKind: ModifierKind;

  serialize(sb: string[]): void {
    sb.push(this.toString());
  }

  /** Returns the TypeScript representation of this modifier. */
  toString(): string {
    switch (this.modifierKind) {
      case ModifierKind.ABSTRACT: return "abstract";
      case ModifierKind.ASYNC: return "async";
      case ModifierKind.CONST: return "const";
      case ModifierKind.DECLARE: return "declare";
      case ModifierKind.EXPORT: return "export";
      case ModifierKind.GET: return "get";
      case ModifierKind.IMPORT: return "import";
      case ModifierKind.PRIVATE: return "private";
      case ModifierKind.PROTECTED: return "protected";
      case ModifierKind.PUBLIC: return "public";
      case ModifierKind.READONLY: return "readonly";
      case ModifierKind.SET: return "set";
      case ModifierKind.STATIC: return "static";
      default: assert(false); return "";
    }
  }
}

/** Represents a `return` statement. */
export class ReturnStatement extends Statement {

  kind = NodeKind.RETURN;

  /** Value expression being returned, if present. */
  value: Expression | null;

  serialize(sb: string[]): void {
    if (this.value) {
      sb.push("return ");
      (<Expression>this.value).serialize(sb);
    } else
      sb.push("return");
  }
}

/** Represents a single `case` within a `switch` statement. */
export class SwitchCase extends Node {

  kind = NodeKind.CASE;

  /** Label expression. `null` indicates the default case. */
  label: Expression | null;
  /** Contained statements. */
  statements: Statement[];

  serialize(sb: string[]): void {
    if (this.label) {
      sb.push("case ");
      (<Expression>this.label).serialize(sb);
      sb.push(":\n");
    } else
      sb.push("default:\n");
    for (let i: i32 = 0, k: i32 = this.statements.length; i < k; ++i) {
      if (i > 0)
        sb.push("\n");
      this.statements[i].serialize(sb);
      if (builderEndsWith(sb, CharCode.CLOSEBRACE))
        sb.push("\n");
      else
        sb.push(";\n");
    }
  }
}

/** Represents a `switch` statement. */
export class SwitchStatement extends Statement {

  kind = NodeKind.SWITCH;

  /** Condition expression. */
  condition: Expression;
  /** Contained cases. */
  cases: SwitchCase[];

  serialize(sb: string[]): void {
    sb.push("switch (");
    this.condition.serialize(sb);
    sb.push(") {\n");
    for (let i: i32 = 0, k: i32 = this.cases.length; i < k; ++i) {
      this.cases[i].serialize(sb);
      sb.push("\n");
    }
    sb.push("}");
  }
}

/** Represents a `throw` statement. */
export class ThrowStatement extends Statement {

  kind = NodeKind.THROW;

  /** Value expression being thrown. */
  value: Expression;

  serialize(sb: string[]): void {
    sb.push("throw ");
    this.value.serialize(sb);
    sb.push(";");
  }
}

/** Represents a `try` statement. */
export class TryStatement extends Statement {

  kind = NodeKind.TRY;

  /** Contained statements. */
  statements: Statement[];
  /** Variable identifier for a caught exception, if a `catch` clause is present. */
  catchVariable: IdentifierExpression | null;
  /** Statements being executed when an exception has been caught, if a `catch` clause is present. */
  catchStatements: Statement[] | null;
  /** Statements being executed in any case, if a `finally` clause is present. */
  finallyStatements: Statement[] | null;

  serialize(sb: string[]): void {
    sb.push("try {\n");
    let i: i32, k: i32;
    for (i = 0, k = this.statements.length; i < k; ++i) {
      this.statements[i].serialize(sb);
      sb.push(";\n");
    }
    if (this.catchVariable) {
      sb.push("} catch (");
      (<IdentifierExpression>this.catchVariable).serialize(sb);
      sb.push(") {\n");
      if (this.catchStatements)
        for (i = 0, k = (<Statement[]>this.catchStatements).length; i < k; ++i) {
          (<Statement[]>this.catchStatements)[i].serialize(sb);
          sb.push(";\n");
        }
    }
    if (this.finallyStatements) {
      sb.push("} finally {\n");
      for (i = 0, k = (<Statement[]>this.finallyStatements).length; i < k; ++i) {
        (<Statement[]>this.finallyStatements)[i].serialize(sb);
        sb.push(";\n");
      }
    }
    sb.push("}");
  }
}

/** Represents a `type` declaration. */
export class TypeDeclaration extends DeclarationStatement {

  kind = NodeKind.TYPEDECLARATION;

  /** Type being aliased. */
  alias: TypeNode;

  serialize(sb: string[]): void {
    let i: i32, k: i32;
    if (this.decorators)
      for (i = 0, k = this.decorators.length; i < k; ++i) {
        this.decorators[i].serialize(sb);
        sb.push("\n");
      }
    if (this.modifiers)
      for (i = 0, k = (<Modifier[]>this.modifiers).length; i < k; ++i) {
        (<Modifier[]>this.modifiers)[i].serialize(sb);
        sb.push(" ");
      }
    sb.push("type ");
    this.name.serialize(sb);
    sb.push(" = ");
    this.alias.serialize(sb);
  }
}

/** Represents a single variable declaration within a {@link VariableStatement}. */
export class VariableDeclaration extends VariableLikeDeclarationStatement {

  kind = NodeKind.VARIABLEDECLARATION;

  /** Array of modifiers. */
  modifiers: Modifier[] | null;

  serialize(sb: string[]): void {
    this.name.serialize(sb);
    if (this.type) {
      sb.push(": ");
      (<TypeNode>this.type).serialize(sb);
    }
    if (this.initializer) {
      sb.push(" = ");
      (<Expression>this.initializer).serialize(sb);
    }
  }
}

/** Represents a variable statement, i.e., a `var`, `let` or `const` statement. */
export class VariableStatement extends Statement {

  kind = NodeKind.VARIABLE;

  /** Array of modifiers. */
  modifiers: Modifier[] | null;
  /** Array of decorators. */
  decorators: Decorator[] | null;
  /** Array of member declarations. */
  declarations: VariableDeclaration[];

  serialize(sb: string[]): void {
    let isConst: bool = false;
    let i: i32, k: i32;
    if (this.decorators)
      for (i = 0, k = this.decorators.length; i < k; ++i) {
        this.decorators[i].serialize(sb);
        sb.push("\n");
      }
    if (this.modifiers)
      for (i = 0, k = (<Modifier[]>this.modifiers).length; i < k; ++i) {
        (<Modifier[]>this.modifiers)[i].serialize(sb);
        sb.push(" ");
        if ((<Modifier[]>this.modifiers)[i].modifierKind == ModifierKind.CONST)
          isConst = true;
      }
    if (!isConst)
      sb.push("let ");
    for (i = 0, k = this.declarations.length; i < k; ++i) {
      if (i > 0)
        sb.push(", ");
      this.declarations[i].serialize(sb);
    }
  }
}

/** Represents a `while` statement. */
export class WhileStatement extends Statement {

  kind = NodeKind.WHILE;

  /** Condition expression. */
  condition: Expression;
  /** Statement being looped over. */
  statement: Statement;

  serialize(sb: string[]): void {
    sb.push("while (");
    this.condition.serialize(sb);
    sb.push(") ");
    this.statement.serialize(sb);
  }
}

/** Cached unused modifiers for reuse. */
let reusableModifiers: Modifier[] | null = null;

export function setReusableModifiers(modifiers: Modifier[]) {
  reusableModifiers = modifiers;
}

/** Creates a new modifiers array. */
export function createModifiers(): Modifier[] {
  let ret: Modifier[];
  if (reusableModifiers != null) {
    ret = reusableModifiers;
    reusableModifiers = null;
  } else
    ret = new Array(1);
  ret.length = 0;
  return ret;
}

/** Adds a modifier to a modifiers array. Creates and returns a new array if `null`. */
export function addModifier(modifier: Modifier, modifiers: Modifier[] | null): Modifier[] {
  if (modifiers == null)
    modifiers = createModifiers();
  modifiers.push(modifier);
  return modifiers;
}

/** Gets a specific modifier from the specified array of modifiers. */
export function getModifier(kind: ModifierKind, modifiers: Modifier[] | null): Modifier | null {
  if (modifiers)
    for (let i: i32 = 0, k: i32 = modifiers.length; i < k; ++i)
      if (modifiers[i].modifierKind == kind)
        return modifiers[i];
  return null;
}

/** Tests whether a specific modifier exists in the specified array of modifiers. */
export function hasModifier(kind: ModifierKind, modifiers: Modifier[] | null): bool {
  return getModifier(kind, modifiers) != null;
}

/** Gets a specific decorator within the specified decorators, if present. */
export function getDecorator(name: string, decorators: Decorator[] | null): Decorator | null {
  if (decorators)
    for (let i: i32 = 0, k: i32 = decorators.length; i < k; ++i) {
      const decorator: Decorator = decorators[i];
      const expression: Expression = decorator.name;
      if (expression.kind == NodeKind.IDENTIFIER && (<IdentifierExpression>expression).name == name)
        return decorator;
    }
  return null;
}

/** Tests if a specific decorator is present within the specified decorators. */
export function hasDecorator(name: string, decorators: Decorator[] | null): bool {
  return getDecorator(name, decorators) != null;
}

/** Serializes the specified node to its TypeScript representation. */
export function serialize(node: Node): string {
  const sb: string[] = new Array(); // shared builder could grow too much
  node.serialize(sb);
  return sb.join("");
}

/** Mangles a path to an internal path. */
export function mangleInternalPath(path: string): string {
  // TODO: not necessary with current config
  /* if (PATH_DELIMITER.charCodeAt(0) != CharCode.SLASH)
    path = path.replace("/", PATH_DELIMITER);
  if (PARENT_SUBST != "..")
    path = path.replace("..", PARENT_SUBST); */
  return path;
}

/** Mangles a declaration's name to an internal name. */
export function mangleInternalName(declaration: DeclarationStatement): string {
  let name: string = declaration.name.name;
  let parent: Node | null = declaration.parent;
  if (!parent)
    return name;
  if (declaration.kind == NodeKind.VARIABLEDECLARATION && parent.kind == NodeKind.VARIABLE) // skip over
    if (!(parent = parent.parent))
      return name;
  if (parent.kind == NodeKind.CLASS)
    return (<ClassDeclaration>parent).internalName + (hasModifier(ModifierKind.STATIC, declaration.modifiers) ? STATIC_DELIMITER : INSTANCE_DELIMITER) + name;
  if (parent.kind == NodeKind.NAMESPACE || parent.kind == NodeKind.ENUM)
    return (<DeclarationStatement>parent).internalName + STATIC_DELIMITER + name;
  return declaration.range.source.internalPath + PATH_DELIMITER + name;
}

/** Tests if the specified builder ends with the specified char code. */
function builderEndsWith(sb: string[], code: CharCode): bool {
  if (sb.length) {
    const last: string = sb[sb.length - 1];
    return select<bool>(last.charCodeAt(last.length - 1) == code, false, last.length > 0);
  }
  return false;
}
