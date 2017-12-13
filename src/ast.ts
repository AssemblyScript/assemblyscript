/*

 Similar to TypeScript's syntax tree of node interfaces, but class-based.

 Node ~ NodeKind
 ├ ExportMember
 ├ Expression
 │ ├ LiteralExpression ~ LiteralKind
 │ │ ├ ArrayLiteralExpression
 │ │ ├ FloatLiteralExpression
 │ │ ├ IntegerLiteralExpression
 │ │ ├ RegexpLiteralExpression
 │ │ └ StringLiteralExpression
 │ ├ AssertionExpression
 │ ├ BinaryExpression
 │ ├ CallExpression
 │ ├ ElementAccessExpression
 │ ├ IdentifierExpression
 │ ├ ParenthesizedExpression
 │ ├ NewExpression
 │ ├ PropertyAccessExpression
 │ ├ TernaryExpression
 │ └ UnaryExpression
 │   ├ UnaryPostfixExpression
 │   └ UnaryPrefixExpression
 ├ Statement
 │ ├ BlockStatement
 │ ├ BreakStatement
 │ ├ ContinueStatement
 │ ├ DeclarationStatement
 │ │ ├ ClassDeclaration <> TypeParameter
 │ │ ├ EnumDeclaration <> EnumValueDeclaration
 │ │ ├ EnumValueDeclaration
 │ │ ├ FieldDeclaration
 │ │ ├ FunctionDeclaration <> TypeParameter, Parameter
 │ │ │ └ MethodDeclaration
 │ │ ├ ImportDeclaration
 │ │ ├ InterfaceDeclaration
 │ │ ├ NamespaceDeclaration
 │ │ └ VariableDeclaration
 │ ├ DoStatement
 │ ├ EmptyStatement
 │ ├ ExportImportStatement
 │ ├ ExportStatement <> ExportMember
 │ ├ ExpressionStatement
 │ ├ ForStatement
 │ ├ IfStatement
 │ ├ ImportStatement <> ImportDeclaration
 │ ├ ReturnStatement
 │ ├ SwitchStatement <> SwitchCase
 │ ├ ThrowStatement
 │ ├ TryStatement
 │ ├ VariableStatement <> VariableDeclaration
 │ └ WhileStatement
 ├ Parameter
 ├ Source
 ├ SwitchCase
 ├ TypeNode
 └ TypeParameter

 All nodes are backwards-serializable to their respective source except that
 formatting is lost, long integers become hex literals and semicolons will be
 inserted. Useful for testing.

 serialize(node)

*/

import { GETTER_PREFIX, SETTER_PREFIX, PATH_DELIMITER, PARENT_SUBST, STATIC_DELIMITER, INSTANCE_DELIMITER } from "./constants";
import { Token, Tokenizer, operatorTokenToString, Range } from "./tokenizer";
import { CharCode, I64, normalizePath, resolvePath } from "./util";

export { Range } from "./tokenizer";

export abstract class Node {

  kind: NodeKind;
  range: Range;
  parent: Node | null = null;

  abstract serialize(sb: string[]): void;
}

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
  UNARYPOSTFIX,
  UNARYPREFIX,

  // statements
  BLOCK,
  BREAK,
  CLASS,                // is also declaration
  CONTINUE,
  DECORATOR,
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
  VARIABLE,             // wraps declarations
  VARIABLEDECLARATION,
  WHILE
}

// types

export class TypeNode extends Node {

  kind = NodeKind.TYPE;
  identifier: IdentifierExpression;
  parameters: TypeNode[];
  nullable: bool;

  static create(identifier: IdentifierExpression, parameters: TypeNode[], nullable: bool, range: Range): TypeNode {
    const type: TypeNode = new TypeNode();
    type.range = range;
    type.identifier = identifier;
    type.parameters = parameters;
    type.nullable = nullable;
    return type;
  }

  serialize(sb: string[]): void {
    this.identifier.serialize(sb);
    if (this.parameters.length) {
      sb.push("<");
      for (let i: i32 = 0, k: i32 = this.parameters.length; i < k; ++i) {
        if (i > 0)
          sb.push(", ");
        this.parameters[i].serialize(sb);
      }
      sb.push(">");
    }
    if (this.nullable)
      sb.push(" | null");
  }
}

export class TypeParameter extends Node {

  kind = NodeKind.TYPEPARAMETER;
  identifier: IdentifierExpression;
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

export abstract class Expression extends Node {

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
    (expr.expression = expression).parent = expr;
    return expr;
  }

  static createUnaryPrefix(operator: Token, expression: Expression, range: Range): UnaryPrefixExpression {
    const expr: UnaryPrefixExpression = new UnaryPrefixExpression();
    expr.range = range;
    expr.operator = operator;
    (expr.expression = expression).parent = expr;
    return expr;
  }
}

export const enum LiteralKind {
  FLOAT,
  INTEGER,
  STRING,
  REGEXP,
  ARRAY,
  OBJECT
}

export abstract class LiteralExpression extends Expression {
  kind = NodeKind.LITERAL;
  literalKind: LiteralKind;
}

export class ArrayLiteralExpression extends LiteralExpression {

  literalKind = LiteralKind.ARRAY;
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

export const enum AssertionKind {
  PREFIX,
  AS
}

export class AssertionExpression extends Expression {

  kind = NodeKind.ASSERTION;
  assertionKind: AssertionKind;
  expression: Expression;
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

export class BinaryExpression extends Expression {

  kind = NodeKind.BINARY;
  operator: Token;
  left: Expression;
  right: Expression;

  serialize(sb: string[]): void {
    this.left.serialize(sb);
    sb.push(" ");
    sb.push(operatorTokenToString(this.operator));
    sb.push(" ");
    this.right.serialize(sb);
  }
}

export class CallExpression extends Expression {

  kind = NodeKind.CALL;
  expression: Expression;
  typeArguments: TypeNode[];
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

export class ElementAccessExpression extends Expression {

  kind = NodeKind.ELEMENTACCESS;
  expression: Expression;
  elementExpression: Expression;

  serialize(sb: string[]): void {
    this.expression.serialize(sb);
    sb.push("[");
    this.elementExpression.serialize(sb);
    sb.push("]");
  }
}

export class FloatLiteralExpression extends LiteralExpression {

  literalKind = LiteralKind.FLOAT;
  value: f64;

  serialize(sb: string[]): void {
    sb.push(this.value.toString(10));
  }
}

export class IdentifierExpression extends Expression {

  kind = NodeKind.IDENTIFIER;
  name: string;

  serialize(sb: string[]): void {
    sb.push(this.name);
  }
}

export class IntegerLiteralExpression extends LiteralExpression {

  literalKind = LiteralKind.INTEGER;
  value: I64;

  serialize(sb: string[]): void {
    sb.push(this.value.toString());
  }
}

export class NewExpression extends CallExpression {

  kind = NodeKind.NEW;

  serialize(sb: string[]): void {
    sb.push("new ");
    super.serialize(sb);
  }
}

export class NullExpression extends IdentifierExpression {
  kind = NodeKind.NULL;
  name = "null";
}

export class ParenthesizedExpression extends Expression {

  kind = NodeKind.PARENTHESIZED;
  expression: Expression;

  serialize(sb: string[]): void {
    sb.push("(");
    this.expression.serialize(sb);
    sb.push(")");
  }
}

export class PropertyAccessExpression extends Expression {

  kind = NodeKind.PROPERTYACCESS;
  expression: Expression;
  property: IdentifierExpression;

  serialize(sb: string[]): void {
    this.expression.serialize(sb);
    sb.push(".");
    this.property.serialize(sb);
  }
}

export class RegexpLiteralExpression extends LiteralExpression {

  literalKind = LiteralKind.REGEXP;
  value: string;

  serialize(sb: string[]): void {
    sb.push(this.value);
  }
}

export class TernaryExpression extends Expression {

  kind = NodeKind.TERNARY;
  condition: Expression;
  ifThen: Expression;
  ifElse: Expression;

  serialize(sb: string[]): void {
    this.condition.serialize(sb);
    sb.push(" ? ");
    this.ifThen.serialize(sb);
    sb.push(" : ");
    this.ifElse.serialize(sb);
  }
}

export class StringLiteralExpression extends LiteralExpression {

  literalKind = LiteralKind.STRING;
  value: string;

  serialize(sb: string[]): void {
    sb.push(JSON.stringify(this.value));
  }
}

export class SuperExpression extends IdentifierExpression {
  kind = NodeKind.SUPER;
  name = "super";
}

export class ThisExpression extends IdentifierExpression {
  kind = NodeKind.THIS;
  name = "this";
}

export class TrueExpression extends IdentifierExpression {
  kind = NodeKind.TRUE;
  name = "true";
}

export class FalseExpression extends IdentifierExpression {
  kind = NodeKind.FALSE;
  name = "false";
}

export abstract class UnaryExpression extends Expression {
  operator: Token;
  expression: Expression;
}

export class UnaryPostfixExpression extends UnaryExpression {

  kind = NodeKind.UNARYPOSTFIX;

  serialize(sb: string[]): void {
    this.expression.serialize(sb);
    switch (this.operator) {
      case Token.PLUS_PLUS: sb.push("++"); break;
      case Token.MINUS_MINUS: sb.push("--"); break;
      default: sb.push("INVALID"); break;
    }
  }
}

export class UnaryPrefixExpression extends UnaryExpression {

  kind = NodeKind.UNARYPREFIX;

  serialize(sb: string[]): void {
    sb.push(operatorTokenToString(this.operator));
    this.expression.serialize(sb);
  }
}

// statements

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
  GET,
  SET
}

export abstract class Statement extends Node {

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
    (stmt.identifier = identifier).parent = stmt;
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
    (stmt.expression = expression).parent = stmt;
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
    (stmt.identifier = identifier).parent = stmt;
    for (i = 0, k = (stmt.members = members).length; i < k; ++i) members[i].parent = stmt;
    if (stmt.modifiers = modifiers) for (i = 0, k = (<Modifier[]>modifiers).length; i < k; ++i) (<Modifier[]>modifiers)[i].parent = stmt;
    if (stmt.decorators = decorators) for (i = 0, k = (<Decorator[]>decorators).length; i < k; ++i) (<Decorator[]>decorators)[i].parent = stmt;
    return stmt;
  }

  static createEnumValue(identifier: IdentifierExpression, value: Expression | null, range: Range): EnumValueDeclaration {
    const stmt: EnumValueDeclaration = new EnumValueDeclaration();
    stmt.range = range;
    (stmt.identifier = identifier).parent = stmt;
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
    (stmt.asIdentifier = asIdentifier).parent = stmt;
    return stmt;
  }

  static createExportMember(identifier: IdentifierExpression, externalIdentifier: IdentifierExpression | null, range: Range): ExportMember {
    const elem: ExportMember = new ExportMember();
    elem.range = range;
    (elem.identifier = identifier).parent = elem;
    (elem.externalIdentifier = externalIdentifier ? <IdentifierExpression>externalIdentifier : identifier).parent = elem;
    return elem;
  }

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
    (stmt.statement = statement).parent = stmt;
    if (stmt.elseStatement = elseStatement) (<Statement>elseStatement).parent = stmt;
    return stmt;
  }

  static createImport(declarations: ImportDeclaration[], path: StringLiteralExpression, range: Range): ImportStatement {
    const stmt: ImportStatement = new ImportStatement();
    stmt.range = range;
    for (let i: i32 = 0, k: i32 = (stmt.declarations = declarations).length; i < k; ++i) declarations[i].parent = stmt;
    stmt.path = path;
    stmt.normalizedPath = resolvePath(normalizePath(path.value), range.source.normalizedPath);
    stmt.internalPath = mangleInternalPath(stmt.normalizedPath);
    return stmt;
  }

  static createImportDeclaration(externalIdentifier: IdentifierExpression, identifier: IdentifierExpression | null, range: Range): ImportDeclaration {
    const elem: ImportDeclaration = new ImportDeclaration();
    elem.range = range;
    (elem.identifier = identifier ? <IdentifierExpression>identifier : externalIdentifier).parent = elem;
    (elem.externalIdentifier = externalIdentifier).parent = elem;
    return elem;
  }

  static createInterface(identifier: IdentifierExpression, extendsType: TypeNode | null, members: DeclarationStatement[], modifiers: Modifier[] | null, range: Range): InterfaceDeclaration {
    const stmt: InterfaceDeclaration = new InterfaceDeclaration();
    stmt.range = range;
    let i: i32, k: i32;
    (stmt.identifier = identifier).parent = stmt;
    if (stmt.extendsType = extendsType) (<TypeNode>extendsType).parent = stmt;
    for (i = 0, k = (stmt.members = members).length; i < k; ++i) members[i].parent = stmt;
    if (stmt.modifiers = modifiers) for (i = 0, k = (<Modifier[]>modifiers).length; i < k; ++i) (<Modifier[]>modifiers)[i].parent = stmt;
    return stmt;
  }

  static createField(identifier: IdentifierExpression, type: TypeNode | null, initializer: Expression | null, modifiers: Modifier[] | null, decorators: Decorator[] | null, range: Range): FieldDeclaration {
    const stmt: FieldDeclaration = new FieldDeclaration();
    stmt.range = range;
    let i: i32, k: i32;
    (stmt.identifier = identifier).parent = stmt;
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

  static createParameter(identifier: IdentifierExpression, type: TypeNode | null, initializer: Expression | null, multiple: bool, range: Range): Parameter {
    const elem: Parameter = new Parameter();
    elem.range = range;
    (elem.identifier = identifier).parent = elem;
    if (elem.type = type) (<TypeNode>type).parent = elem;
    if (elem.initializer = initializer) (<Expression>initializer).parent = elem;
    elem.multiple = multiple;
    return elem;
  }

  static createFunction(identifier: IdentifierExpression, typeParameters: TypeParameter[], parameters: Parameter[], returnType: TypeNode | null, statements: Statement[] | null, modifiers: Modifier[] | null, decorators: Decorator[] | null, range: Range): FunctionDeclaration {
    const stmt: FunctionDeclaration = new FunctionDeclaration();
    stmt.range = range;
    let i: i32, k: i32;
    (stmt.identifier = identifier).parent = stmt;
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
    (stmt.identifier = identifier).parent = stmt;
    for (i = 0, k = (stmt.typeParameters = typeParameters).length; i < k; ++i) typeParameters[i].parent = stmt;
    for (i = 0, k = (stmt.parameters = parameters).length; i < k; ++i) parameters[i].parent = stmt;
    if (stmt.returnType = returnType) (<TypeNode>returnType).parent = stmt;;
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
    (stmt.identifier = identifier).parent = stmt;
    for (i = 0, k = (stmt.members = members).length; i < k; ++i) members[i].parent = stmt;
    if (stmt.modifiers = modifiers) for (i = 0, k = (<Modifier[]>modifiers).length; i < k; ++i) (<Modifier[]>modifiers)[i].parent = stmt;
    if (stmt.decorators = decorators) for (i = 0, k = (<Decorator[]>decorators).length; i < k; ++i) (<Decorator[]>decorators)[i].parent = stmt;
    return stmt;
  }

  static createReturn(expression: Expression | null, range: Range): ReturnStatement {
    const stmt: ReturnStatement = new ReturnStatement();
    stmt.range = range;
    if (stmt.expression = expression) (<Expression>expression).parent = stmt;
    return stmt;
  }

  static createSwitch(expression: Expression, cases: SwitchCase[], range: Range): SwitchStatement {
    const stmt: SwitchStatement = new SwitchStatement();
    stmt.range = range;
    (stmt.expression = expression).parent = stmt;
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
    (stmt.expression = expression).parent = stmt;
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

  static createVariable(declarations: VariableDeclaration[], modifiers: Modifier[] | null, decorators: Decorator[] | null, range: Range): VariableStatement {
    const stmt: VariableStatement = new VariableStatement();
    stmt.range = range;
    let i: i32, k: i32;
    for (i = 0, k = (stmt.declarations = declarations).length; i < k; ++i) declarations[i].parent = stmt;
    if (stmt.modifiers = modifiers) for (i = 0, k = (<Modifier[]>modifiers).length; i < k; ++i) (<Modifier[]>modifiers)[i].parent = stmt;
    if (stmt.decorators = decorators) for (i = 0, k = (<Decorator[]>decorators).length; i < k; ++i) (<Decorator[]>decorators)[i].parent = stmt;
    return stmt;
  }

  static createVariableDeclaration(identifier: IdentifierExpression, type: TypeNode | null, initializer: Expression | null, modifiers: Modifier[] | null, decorators: Decorator[] | null, range: Range): VariableDeclaration {
    const elem: VariableDeclaration = new VariableDeclaration();
    elem.range = range;
    (elem.identifier = identifier).parent = elem;
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

export class Source extends Node {

  kind = NodeKind.SOURCE;
  parent = null;
  path: string;
  normalizedPath: string;
  internalPath: string;
  statements: Statement[];

  text: string;
  tokenizer: Tokenizer | null = null;
  isEntry: bool;

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

  get isDeclaration(): bool { return !this.isEntry && this.path.endsWith(".d.ts"); }

  serialize(sb: string[]): void {
    for (let i: i32 = 0, k: i32 = this.statements.length; i < k; ++i) {
      const statement: Statement = this.statements[i];
      statement.serialize(sb);
      const last: string = sb[sb.length - 1];
      if (last.charCodeAt(last.length - 1) == CharCode.CLOSEBRACE)
        sb.push("\n");
      else
        sb.push(";\n");
    }
  }
}

export abstract class DeclarationStatement extends Statement {

  identifier: IdentifierExpression;
  modifiers: Modifier[] | null;
  decorators: Decorator[] | null = null;

  protected _cachedInternalName: string | null = null;

  get internalName(): string { return this._cachedInternalName === null ? this._cachedInternalName = mangleInternalName(this) : this._cachedInternalName; }
}

export abstract class VariableLikeDeclarationStatement extends DeclarationStatement {
  type: TypeNode | null;
  initializer: Expression | null;
}

export class BlockStatement extends Statement {

  kind = NodeKind.BLOCK;
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

export class BreakStatement extends Statement {

  kind = NodeKind.BREAK;
  label: IdentifierExpression | null;

  serialize(sb: string[]): void {
    if (this.label) {
      sb.push("break ");
      (<IdentifierExpression>this.label).serialize(sb);
    } else
      sb.push("break");
  }
}

export class ClassDeclaration extends DeclarationStatement {

  kind = NodeKind.CLASS;
  typeParameters: TypeParameter[];
  extendsType: TypeNode | null;
  implementsTypes: TypeNode[];
  members: DeclarationStatement[];

  get internalName(): string {
    if (this._cachedInternalName !== null)
      return this._cachedInternalName;
    const globalDecorator: Decorator | null = this.decorators ? getDecoratorByName("global", this.decorators) : null;
    if (globalDecorator && globalDecorator.expression.kind == NodeKind.IDENTIFIER && (<IdentifierExpression>globalDecorator.expression).name == "global")
      return this._cachedInternalName = this.identifier.name;
    else
      return this._cachedInternalName = mangleInternalName(this);
  }

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
    sb.push(this.identifier.name);
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

export class ContinueStatement extends Statement {

  kind = NodeKind.CONTINUE;
  label: IdentifierExpression | null;

  serialize(sb: string[]): void {
    if (this.label) {
      sb.push("continue ");
      (<IdentifierExpression>this.label).serialize(sb);
    } else
      sb.push("continue");
  }
}

export class Decorator extends Statement {

  kind = NodeKind.DECORATOR;
  expression: Expression;
  arguments: Expression[];

  serialize(sb: string[]): void {
    sb.push("@");
    this.expression.serialize(sb);
    sb.push("(");
    for (let i: i32 = 0, k: i32 = this.arguments.length; i < k; ++i) {
      if (i > 0)
        sb.push(", ");
      this.arguments[i].serialize(sb);
    }
    sb.push(")");
  }
}

export class DoStatement extends Statement {

  kind = NodeKind.DO;
  statement: Statement;
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

export class EmptyStatement extends Statement {

  kind = NodeKind.EMPTY;

  serialize(sb: string[]): void {}
}

export class EnumDeclaration extends DeclarationStatement {

  kind = NodeKind.ENUM;
  members: EnumValueDeclaration[];

  serialize(sb: string[]): void {
    let i: i32, k: i32;
    if (this.modifiers)
      for (i = 0, k = (<Modifier[]>this.modifiers).length; i < k; ++i) {
        (<Modifier[]>this.modifiers)[i].serialize(sb);
        sb.push(" ");
      }
    sb.push("enum ");
    this.identifier.serialize(sb);
    sb.push(" {\n");
    for (i = 0, k = this.members.length; i < k; ++i) {
      if (i > 0)
        sb.push(",\n");
      this.members[i].serialize(sb);
    }
    sb.push("\n}");
  }
}

export class EnumValueDeclaration extends DeclarationStatement {

  kind = NodeKind.ENUMVALUE;
  modifiers = null;
  value: Expression | null;

  serialize(sb: string[]): void {
    this.identifier.serialize(sb);
    if (this.value) {
      sb.push(" = ");
      (<Expression>this.value).serialize(sb);
    }
  }
}

export class ExportImportStatement extends Node {

  kind = NodeKind.EXPORTIMPORT;
  identifier: IdentifierExpression;
  asIdentifier: IdentifierExpression;

  serialize(sb: string[]): void {
    sb.push("export import ");
    this.asIdentifier.serialize(sb);
    sb.push(" = ");
    this.identifier.serialize(sb);
  }
}

export class ExportMember extends Node {

  kind = NodeKind.EXPORTMEMBER;
  identifier: IdentifierExpression;
  externalIdentifier: IdentifierExpression;

  serialize(sb: string[]): void {
    this.identifier.serialize(sb);
    if (this.externalIdentifier.name != this.identifier.name) {
      sb.push(" as ");
      (<IdentifierExpression>this.externalIdentifier).serialize(sb);
    }
  }
}

export class ExportStatement extends Statement {

  kind = NodeKind.EXPORT;
  modifiers: Modifier[] | null;
  members: ExportMember[];
  path: StringLiteralExpression | null;
  normalizedPath: string | null;
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

export class ExpressionStatement extends Statement {

  kind = NodeKind.EXPRESSION;
  expression: Expression;

  serialize(sb: string[]): void {
    this.expression.serialize(sb);
  }
}

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
    this.identifier.serialize(sb);
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

export class ForStatement extends Statement {

  kind = NodeKind.FOR;
  initializer: Statement | null;
  condition: Expression | null;
  incrementor: Expression | null;
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

export class FunctionDeclaration extends DeclarationStatement {

  kind = NodeKind.FUNCTION;
  typeParameters: TypeParameter[];
  parameters: Parameter[];
  returnType: TypeNode | null;
  statements: Statement[] | null;

  get internalName(): string {
    if (this._cachedInternalName !== null)
      return this._cachedInternalName;
    const globalDecorator: Decorator | null = this.decorators ? getDecoratorByName("global", this.decorators) : null;
    if (globalDecorator && globalDecorator.expression.kind == NodeKind.IDENTIFIER && (<IdentifierExpression>globalDecorator.expression).name == "global")
      return this._cachedInternalName = this.identifier.name;
    else
      return this._cachedInternalName = mangleInternalName(this);
  }

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
    this.identifier.serialize(sb);
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
    if (this.returnType) {
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

export class IfStatement extends Statement {

  kind = NodeKind.IF;
  condition: Expression;
  statement: Statement;
  elseStatement: Statement | null;

  serialize(sb: string[]): void {
    sb.push("if (");
    this.condition.serialize(sb);
    sb.push(") ");
    this.statement.serialize(sb);
    if (this.statement.kind != NodeKind.BLOCK)
      sb.push(";\n");
    if (this.elseStatement) {
      if (this.statement.kind == NodeKind.BLOCK)
        sb.push(" else ");
      else
        sb.push("else ");
      (<Statement>this.elseStatement).serialize(sb);
    }
  }
}

export class ImportDeclaration extends DeclarationStatement {

  kind = NodeKind.IMPORTDECLARATION;
  modifiers = null;
  externalIdentifier: IdentifierExpression;

  serialize(sb: string[]): void {
    this.externalIdentifier.serialize(sb);
    if (this.externalIdentifier != this.identifier) {
      sb.push(" as ");
      (<IdentifierExpression>this.identifier).serialize(sb);
    }
  }
}

export class ImportStatement extends Statement {

  kind = NodeKind.IMPORT;
  declarations: ImportDeclaration[];
  path: StringLiteralExpression;
  normalizedPath: string;
  internalPath: string;

  serialize(sb: string[]): void {
    sb.push("import {\n");
    for (let i: i32 = 0, k: i32 = this.declarations.length; i < k; ++i) {
      if (i > 0)
        sb.push(",\n");
      this.declarations[i].serialize(sb);
    }
    sb.push("\n} from ");
    this.path.serialize(sb);
  }
}

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
    this.identifier.serialize(sb);
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

export class NamespaceDeclaration extends DeclarationStatement {

  kind = NodeKind.NAMESPACE;
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
    this.identifier.serialize(sb);
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

export class Parameter extends Node {

  identifier: IdentifierExpression;
  type: TypeNode | null;
  initializer: Expression | null;
  multiple: bool;

  serialize(sb: string[]): void {
    if (this.multiple)
      sb.push("...");
    this.identifier.serialize(sb);
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

export class Modifier extends Node {

  modifierKind: ModifierKind;

  serialize(sb: string[]): void {
    switch (this.modifierKind) {
      case ModifierKind.ABSTRACT: sb.push("abstract"); break;
      case ModifierKind.ASYNC: sb.push("async"); break;
      case ModifierKind.CONST: sb.push("const"); break;
      case ModifierKind.DECLARE: sb.push("declare"); break;
      case ModifierKind.EXPORT: sb.push("export"); break;
      case ModifierKind.GET: sb.push("get"); break;
      case ModifierKind.IMPORT: sb.push("import"); break;
      case ModifierKind.PRIVATE: sb.push("private"); break;
      case ModifierKind.PROTECTED: sb.push("protected"); break;
      case ModifierKind.PUBLIC: sb.push("public"); break;
      case ModifierKind.SET: sb.push("set"); break;
      case ModifierKind.STATIC: sb.push("static"); break;
      default: sb.push("INVALID"); break;
    }
  }
}

export class ReturnStatement extends Statement {

  kind = NodeKind.RETURN;
  expression: Expression | null;

  serialize(sb: string[]): void {
    if (this.expression) {
      sb.push("return ");
      (<Expression>this.expression).serialize(sb);
    } else
      sb.push("return");
  }
}

export class SwitchCase extends Node {

  label: Expression | null; // null := default
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

export class SwitchStatement extends Statement {

  kind = NodeKind.SWITCH;
  expression: Expression;
  cases: SwitchCase[];

  serialize(sb: string[]): void {
    sb.push("switch (");
    this.expression.serialize(sb);
    sb.push(") {\n");
    for (let i: i32 = 0, k: i32 = this.cases.length; i < k; ++i) {
      this.cases[i].serialize(sb);
      sb.push("\n");
    }
    sb.push("}");
  }
}

export class ThrowStatement extends Statement {

  kind = NodeKind.THROW;
  expression: Expression;

  serialize(sb: string[]): void {
    sb.push("throw ");
    this.expression.serialize(sb);
    sb.push(";");
  }
}

export class TryStatement extends Statement {

  kind = NodeKind.TRY;
  statements: Statement[];
  catchVariable: IdentifierExpression | null;
  catchStatements: Statement[] | null;
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

export class VariableDeclaration extends VariableLikeDeclarationStatement {

  kind = NodeKind.VARIABLEDECLARATION;
  modifiers: Modifier[] | null;

  serialize(sb: string[]): void {
    this.identifier.serialize(sb);
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

export class VariableStatement extends Statement {

  kind = NodeKind.VARIABLE;
  modifiers: Modifier[] | null;
  decorators: Decorator[] | null;
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

export class WhileStatement extends Statement {

  kind = NodeKind.WHILE;
  condition: Expression;
  statement: Statement;

  serialize(sb: string[]): void {
    sb.push("while (");
    this.condition.serialize(sb);
    sb.push(") ");
    this.statement.serialize(sb);
  }
}

export function hasModifier(kind: ModifierKind, modifiers: Modifier[] | null): bool {
  if (modifiers)
    for (let i: i32 = 0, k: i32 = (<Modifier[]>modifiers).length; i < k; ++i)
      if ((<Modifier[]>modifiers)[i].modifierKind == kind)
        return true;
  return false;
}

export function getDecoratorByName(name: string, decorators: Decorator[]): Decorator | null {
  for (let i: i32 = 0, k: i32 = decorators.length; i < k; ++i) {
    const decorator: Decorator = decorators[i];
    const expression: Expression = decorator.expression;
    if (expression.kind == NodeKind.IDENTIFIER && (<IdentifierExpression>expression).name == name)
      return decorator;
  }
  return null;
}

export function serialize(node: Node, indent: i32 = 0): string {
  const sb: string[] = new Array(); // shared builder could grow too much
  node.serialize(sb);
  return sb.join("");
}

export function mangleInternalPath(path: string): string {
  // TODO: not necessary with current config
  /* if (PATH_DELIMITER.charCodeAt(0) != CharCode.SLASH)
    path = path.replace("/", PATH_DELIMITER);
  if (PARENT_SUBST != "..")
    path = path.replace("..", PARENT_SUBST); */
  return path;
}

export function mangleInternalName(declaration: DeclarationStatement): string {
  let name: string = declaration.identifier.name;
  let modifiers: Modifier[] | null;
  if (declaration.kind == NodeKind.METHOD && (modifiers = declaration.modifiers)) {
    for (let i: i32 = 0, k: i32 = modifiers.length; i < k; ++i) {
      const modifier: Modifier = modifiers[i];
      if (modifier.modifierKind == ModifierKind.GET) {
        name = GETTER_PREFIX + name;
        break;
      }
      else if (modifier.modifierKind == ModifierKind.SET) {
        name = SETTER_PREFIX + name;
        break;
      }
    }
  }
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

function builderEndsWith(sb: string[], code: CharCode): bool {
  if (sb.length) {
    const last: string = sb[sb.length - 1];
    return last.length ? last.charCodeAt(last.length - 1) == code : false;
  }
  return false;
}
