import { Token } from "./parsing";

/** Indicates the kind of a node. */
export const enum NodeKind {
  SOURCE = 0,
  NAMEDTYPE = 1,
  FUNCTIONTYPE = 2,
  TYPENAME = 3,
  TYPEPARAMETER = 4,
  PARAMETER = 5,
  IDENTIFIER = 6,
  ASSERTION = 7,
  BINARY = 8,
  CALL = 9,
  CLASS = 10,
  COMMA = 11,
  ELEMENTACCESS = 12,
  FALSE = 13,
  FUNCTION = 14,
  INSTANCEOF = 15,
  LITERAL = 16,
  NEW = 17,
  NULL = 18,
  PARENTHESIZED = 19,
  PROPERTYACCESS = 20,
  TERNARY = 21,
  SUPER = 22,
  THIS = 23,
  TRUE = 24,
  CONSTRUCTOR = 25,
  UNARYPOSTFIX = 26,
  UNARYPREFIX = 27,
  BLOCK = 28,
  BREAK = 29,
  CONTINUE = 30,
  DO = 31,
  EMPTY = 32,
  EXPORT = 33,
  EXPORTDEFAULT = 34,
  EXPORTIMPORT = 35,
  EXPRESSION = 36,
  FOR = 37,
  IF = 38,
  IMPORT = 39,
  RETURN = 40,
  SWITCH = 41,
  THROW = 42,
  TRY = 43,
  VARIABLE = 44,
  VOID = 45,
  WHILE = 46,
  CLASSDECLARATION = 47,
  ENUMDECLARATION = 48,
  ENUMVALUEDECLARATION = 49,
  FIELDDECLARATION = 50,
  FUNCTIONDECLARATION = 51,
  IMPORTDECLARATION = 52,
  INDEXSIGNATUREDECLARATION = 53,
  INTERFACEDECLARATION = 54,
  METHODDECLARATION = 55,
  NAMESPACEDECLARATION = 56,
  TYPEDECLARATION = 57,
  VARIABLEDECLARATION = 58,
  DECORATOR = 59,
  EXPORTMEMBER = 60,
  SWITCHCASE = 61,
  COMMENT = 62
}
/** Checks if a node represents a constant value. */
declare function nodeIsConstantValue(kind: NodeKind): bool;
/** Checks if a node might be callable. */
declare function nodeIsCallable(kind: NodeKind): bool;
/** Checks if a node might be callable with generic arguments. */
declare function nodeIsGenericCallable(kind: NodeKind): bool;
/** Base class of all nodes. */
export interface Node {
  /** Node kind indicator. */
  kind: NodeKind;
  /** Source range. */
  range: Range;
  
}
export interface TypeNode extends Node {
  /** Whether nullable or not. */
  isNullable: bool;
  /** Tests if this type has a generic component matching one of the given type parameters. */
  hasGenericComponent(typeParameterNodes: TypeParameterNode[]): bool;
}
/** Represents a type name. */
export interface TypeName extends Node {
  /** Identifier of this part. */
  identifier: IdentifierExpression;
  /** Next part of the type name or `null` if this is the last part. */
  next: TypeName | null;
}
/** Represents a named type. */
export interface NamedTypeNode extends TypeNode {
  /** Type name. */
  name: TypeName;
  /** Type argument references. */
  typeArguments: TypeNode[] | null;
}
/** Represents a function type. */
export interface FunctionTypeNode extends TypeNode {
  /** Accepted parameters. */
  parameters: ParameterNode[];
  /** Return type. */
  returnType: TypeNode;
  /** Explicitly provided this type, if any. */
  explicitThisType: NamedTypeNode | null;
}
/** Represents a type parameter. */
export interface TypeParameterNode extends Node {
  /** Identifier reference. */
  name: IdentifierExpression;
  /** Extended type reference, if any. */
  extendsType: NamedTypeNode | null;
  /** Default type if omitted, if any. */
  defaultType: NamedTypeNode | null;
}
/** Represents the kind of a parameter. */
export enum ParameterKind {
  /** No specific flags. */
  DEFAULT = 0,
  /** Is an optional parameter. */
  OPTIONAL = 1,
  /** Is a rest parameter. */
  REST = 2
}
/** Represents a function parameter. */
export interface ParameterNode extends Node {
  /** Parameter kind. */
  parameterKind: ParameterKind;
  /** Parameter name. */
  name: IdentifierExpression;
  /** Parameter type. */
  type: TypeNode;
  /** Initializer expression, if present. */
  initializer: Expression | null;
  /** Implicit field declaration, if applicable. */
  implicitFieldDeclaration: FieldDeclaration | null;
  /** Common flags indicating specific traits. */
  flags: CommonFlags;
  /** Tests if this node has the specified flag or flags. */
  is(flag: CommonFlags): bool;
  /** Tests if this node has one of the specified flags. */
  isAny(flag: CommonFlags): bool;
  /** Sets a specific flag or flags. */
  set(flag: CommonFlags): void;
}
/** Built-in decorator kinds. */
export enum DecoratorKind {
  CUSTOM = 0,
  GLOBAL = 1,
  OPERATOR = 2,
  OPERATOR_BINARY = 3,
  OPERATOR_PREFIX = 4,
  OPERATOR_POSTFIX = 5,
  UNMANAGED = 6,
  SEALED = 7,
  INLINE = 8,
  EXTERNAL = 9,
  BUILTIN = 10,
  LAZY = 11,
  UNSAFE = 12
}

export namespace DecoratorKind {
  /** Returns the kind of the specified decorator name node. Defaults to {@link DecoratorKind.CUSTOM}. */
  declare function fromNode(nameNode: Expression): DecoratorKind;
}
/** Represents a decorator. */
export interface DecoratorNode extends Node{
  /** Built-in kind, if applicable. */
  decoratorKind: DecoratorKind;
  /** Name expression. */
  name: Expression;
  /** Argument expressions. */
  arguments: Array<Expression>;
}
/** Comment kinds. */
export const enum CommentKind {
  /** Line comment. */
  LINE = 0,
  /** Triple-slash comment. */
  TRIPLE = 1,
  /** Block comment. */
  BLOCK = 2
}
/** Represents a comment. */
export interface CommentNode extends Node{
  /** Comment kind. */
  commentKind: CommentKind;
  /** Comment text. */
  text: string;
}

// export type Type = "primitive" | "reference";

// export type empty = []; 

// export type Cons<T> = [T, List<T>]

// export type List<T> = empty | Cons<T>


// export type IntList = List<i32>;

// export type MakeMaybe<T> = ["Some", T] | ["None"];

/** Base class of all expression nodes. */


export interface Expression extends Node {
_expressionBrand: void;
// contextualType?: Type; // Used to temporarily assign a contextual type during overload resolution
}



/** Indicates the kind of a literal. */
export const enum LiteralKind {
FLOAT = 0,
INTEGER = 1,
STRING = 2,
REGEXP = 3,
ARRAY = 4,
OBJECT = 5
}

/** Base class of all literal expressions. */
export interface LiteralExpression extends Expression {
/** Specific literal kind. */
literalKind: LiteralKind;
}

/** Represents an `[]` literal expression. */
export interface ArrayLiteralExpression extends LiteralExpression {
readonly literalKind: LiteralKind.ARRAY;
/** Nested element expressions. */
elementExpressions: Array<Expression>;
}


/** Represents an integer literal expression. */
export interface IntegerLiteralExpression extends LiteralExpression {
literalKind : LiteralKind.INTEGER;
/** Integer value. */
value: I64;
}


/** Represents an object literal expression. */
export interface ObjectLiteralExpression extends LiteralExpression {
literalKind : LiteralKind.OBJECT;

/** Field names. */
names: Array<IdentifierExpression>
/** Field values. */
values: Array<Expression>;
}

/** Represents a regular expression literal expression. */
export interface RegexpLiteralExpression extends LiteralExpression {
literalKind: LiteralKind.REGEXP;

/** Regular expression pattern. */
pattern: string;
/** Regular expression flags. */
patternFlags: string;
}

/** Represents a string literal expression. */
export interface StringLiteralExpression extends LiteralExpression {
literalKind: LiteralKind.STRING;
/** String value without quotes. */
value: string;
}


/** Represents a float literal expression. */
export interface FloatLiteralExpression extends LiteralExpression {
literalKind: LiteralKind.FLOAT;

/** Float value. */
value: f64;
}

export type Lit = IntegerLiteralExpression 
| ArrayLiteralExpression
| ObjectLiteralExpression
| RegexpLiteralExpression
| StringLiteralExpression
| FloatLiteralExpression
;

type Symbol = CommonFlags | string

// Identifers
/** Represents a `super` expression. */
export interface SuperExpression extends IdentifierExpression {
text: "super";
}

/** Represents a `this` expression. */
export interface ThisExpression extends IdentifierExpression {
text: "this";
}

/** Represents a `true` expression. */
export interface TrueExpression extends IdentifierExpression {
text: "true";
}

/** Represents a `false` expression. */
export interface FalseExpression extends IdentifierExpression {
text: "false";
}


/** Represents a `null` expression. */
export interface NullExpression extends IdentifierExpression {
text: "null";
}

type NULL = IdentifierExpression & {text: "null", symbol: "null"}



/** Represents an identifier expression. */
export interface IdentifierExpression extends Expression {
/** Textual name. */
text: string;
/** Symbol. */
symbol: Symbol; // TODO: symbol
/** Whether quoted or not. */
isQuoted: bool;
}

/** Represents a `constructor` expression. */
export interface ConstructorExpression extends IdentifierExpression {
text: "constructor";
isQuoted: false;
}




/** Indicates the kind of an assertion. */
export enum AssertionKind {
PREFIX,
AS,
NONNULL
}

/** Represents an assertion expression. */
export interface AssertionExpression extends Expression {

/** Specific kind of this assertion. */
assertionKind: AssertionKind;
/** Expression being asserted. */
expression: Expression;
/** Target type. */
toType: TypeNode | null;
}

/** Represents a binary expression. */
export interface BinaryExpression extends Expression {
/** Operator token. */
operator: Token;
/** Left-hand side expression */
left: Expression;
/** Right-hand side expression. */
right: Expression;
}

/** Represents a call expression. */
export interface CallExpression extends Expression {

/** Called expression. Usually an identifier or property access expression. */
expression: Expression;
/** Provided type arguments. */
typeArguments: TypeNode[] | null;
/** Provided arguments. */
arguments: Expression[];

/** Gets the type arguments range for reporting. */
typeArgumentsRange(): Range;

/** Gets the arguments range for reporting. */
argumentsRange(): Range;
}

/** Represents a class expression using the 'class' keyword. */
export interface ClassExpression extends Expression {

/** Inline class declaration. */
declaration: ClassDeclaration;
}

/** Represents a comma expression composed of multiple expressions. */
export interface CommaExpression extends Expression {

/** Sequential expressions. */
expressions: Expression[];
}


/** Represents an element access expression, e.g., array access. */
export interface ElementAccessExpression extends Expression {

/** Expression being accessed. */
expression: Expression;
/** Element of the expression being accessed. */
elementExpression: Expression;
}


/** Represents a function expression using the 'function' keyword. */
export interface FunctionExpression extends Expression{

/** Inline function declaration. */
declaration: FunctionDeclaration;
}

/** Represents an `instanceof` expression. */
export interface InstanceOfExpression extends Expression{

/** Expression being asserted. */
expression: Expression;
/** Type to test for. */
isType: TypeNode;
}

/** Represents a `new` expression. Like a call but with its own kind. */
export interface NewExpression extends CallExpression {
}


/** Represents a parenthesized expression. */
export interface ParenthesizedExpression extends Expression{

/** Expression in parenthesis. */
expression: Expression;
}

/** Represents a property access expression. */
export interface PropertyAccessExpression extends Expression{

/** Expression being accessed. */
expression: Expression;
/** Property of the expression being accessed. */
property: IdentifierExpression;
}


/** Represents a ternary expression, i.e., short if notation. */
export interface TernaryExpression extends Expression{

/** Condition expression. */
condition: Expression;
/** Expression executed when condition is `true`. */
ifThen: Expression;
/** Expression executed when condition is `false`. */
ifElse: Expression;
}






/** Base class of all unary expressions. */
export interface UnaryExpression extends Expression {
/** Operator token. */
operator: Token;
/** Operand expression. */
operand: Expression;
}

/** Represents a unary postfix expression, e.g. a postfix increment. */
export interface UnaryPostfixExpression extends UnaryExpression{
}

/** Represents a unary prefix expression, e.g. a negation. */
export interface UnaryPrefixExpression extends UnaryExpression{
}


/** Base cAlass of all statement nodes. */
export interface Statement extends Node {
}


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
export interface Source extends Node {
  parent: null;
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
  debugInfoIndex: i32;
  /** Re-exported sources. */
  exportPaths: Set<string> | null;
  /** Constructs a new source node. */
  new(normalizedPath: string, text: string, kind: SourceKind): Source;
  readonly isLibrary: bool;
}

export interface Range {
source: Source;
start: i32;
end: i32;
readonly atStart: Range;
readonly atEnd: Range;
readonly line: i32;
readonly column: i32;
toString(): string;
debugInfoRef: usize;
}

/** Base class of all declaration statements. */
export interface DeclarationStatement extends Statement {
  /** Simple name being declared. */
  name: IdentifierExpression;
  /** Array of decorators. */
  decorators: DecoratorNode[] | null;
  /** Common flags indicating specific traits. */
  flags: CommonFlags;
  /** Tests if this node has the specified flag or flags. */
  is(flag: CommonFlags): bool;
  /** Tests if this node has one of the specified flags. */
  isAny(flag: CommonFlags): bool;
  /** Sets a specific flag or flags. */
  set(flag: CommonFlags): void;
}
/** Represents an index signature declaration. */
export interface IndexSignatureDeclaration extends DeclarationStatement{
  /** Key type. */
  keyType: NamedTypeNode;
  /** Value type. */
  valueType: TypeNode;
}
/** Base class of all variable-like declaration statements. */
export interface VariableLikeDeclarationStatement extends DeclarationStatement {
  /** Variable type. */
  type: TypeNode | null;
  /** Variable initializer. */
  initializer: Expression | null;
}
/** Represents a block statement. */
export interface BlockStatement extends Statement{
  /** Contained statements. */
  statements: Statement[];
}
/** Represents a `break` statement. */
export interface BreakStatement extends Statement{
  /** Target label, if applicable. */
  label: IdentifierExpression | null;
}
/** Represents a `class` declaration. */
export interface ClassDeclaration extends DeclarationStatement{
  /** Accepted type parameters. */
  typeParameters: TypeParameterNode[] | null;
  /** Base class type being extended, if any. */
  extendsType: NamedTypeNode | null;
  /** Interface types being implemented, if any. */
  implementsTypes: NamedTypeNode[] | null;
  /** Class member declarations. */
  members: DeclarationStatement[];
  readonly isGeneric: bool;
}
/** Represents a `continue` statement. */
export interface ContinueStatement extends Statement{
  /** Target label, if applicable. */
  label: IdentifierExpression | null;
}
/** Represents a `do` statement. */
export interface DoStatement extends Statement{
  /** Statement being looped over. */
  statement: Statement;
  /** Condition when to repeat. */
  condition: Expression;
}
/** Represents an empty statement, i.e., a semicolon terminating nothing. */
export interface EmptyStatement extends Statement{
}
/** Represents an `enum` declaration. */
export interface EnumDeclaration extends DeclarationStatement{
  /** Enum value declarations. */
  values: EnumValueDeclaration[];
}
/** Represents a value of an `enum` declaration. */
export interface EnumValueDeclaration extends VariableLikeDeclarationStatement{
  /** Value expression. */
  value: Expression | null;
}
/** Represents an `export import` statement of an interface. */
export interface ExportImportStatement extends Node{
  /** Identifier being imported. */
  name: IdentifierExpression;
  /** Identifier being exported. */
  externalName: IdentifierExpression;
}
/** Represents a member of an `export` statement. */
export interface ExportMember extends Node{
  /** Local identifier. */
  localName: IdentifierExpression;
  /** Exported identifier. */
  exportedName: IdentifierExpression;
}
/** Represents an `export` statement. */
export interface ExportStatement extends Statement{
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
export interface ExportDefaultStatement extends Statement{
  /** Declaration being exported as default. */
  declaration: DeclarationStatement;
}
/** Represents an expression that is used as a statement. */
export interface ExpressionStatement extends Statement{
  /** Expression being used as a statement.*/
  expression: Expression;
}
/** Represents a field declaration within a `class`. */
export interface FieldDeclaration extends VariableLikeDeclarationStatement{
  /** Parameter index if declared as a constructor parameter, otherwise `-1`. */
  parameterIndex: i32;
}
/** Represents a `for` statement. */
export interface ForStatement extends Statement{
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
  NONE = 0,
  /** Parenthesized parameter list. */
  ARROW_PARENTHESIZED = 1,
  /** Single parameter without parenthesis. */
  ARROW_SINGLE = 2
}
/** Represents a `function` declaration. */
export interface FunctionDeclaration extends DeclarationStatement{
  /** Type parameters, if any. */
  typeParameters: TypeParameterNode[] | null;
  /** Function signature. */
  signature: FunctionTypeNode;
  /** Body statement. Usually a block. */
  body: Statement | null;
  /** Arrow function kind, if applicable. */
  arrowKind: ArrowKind;
  readonly isGeneric: bool;
  /** Clones this function declaration. */
  clone(): FunctionDeclaration;
}
/** Represents an `if` statement. */
export interface IfStatement extends Statement{
  /** Condition. */
  condition: Expression;
  /** Statement executed when condition is `true`. */
  ifTrue: Statement;
  /** Statement executed when condition is `false`. */
  ifFalse: Statement | null;
}
/** Represents an `import` declaration part of an {@link ImportStatement}. */
export interface ImportDeclaration extends DeclarationStatement{
  /** Identifier being imported. */
  foreignName: IdentifierExpression;
}
/** Represents an `import` statement. */
export interface ImportStatement extends Statement{
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
export interface InterfaceDeclaration extends ClassDeclaration{
}
/** Represents a method declaration within a `class`. */
export interface MethodDeclaration extends FunctionDeclaration{
}
/** Represents a `namespace` declaration. */
export interface NamespaceDeclaration extends DeclarationStatement{
  /** Array of namespace members. */
  members: Statement[];
}
/** Represents a `return` statement. */
export interface ReturnStatement extends Statement{
  /** Value expression being returned, if present. */
  value: Expression | null;
}
/** Represents a single `case` within a `switch` statement. */
export interface SwitchCase extends Node{
  /** Label expression. `null` indicates the default case. */
  label: Expression | null;
  /** Contained statements. */
  statements: Statement[];
}
/** Represents a `switch` statement. */
export interface SwitchStatement extends Statement{
  /** Condition expression. */
  condition: Expression;
  /** Contained cases. */
  cases: SwitchCase[];
}
/** Represents a `throw` statement. */
export interface ThrowStatement extends Statement{
  /** Value expression being thrown. */
  value: Expression;
}
/** Represents a `try` statement. */
export interface TryStatement extends Statement{
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
export interface TypeDeclaration extends DeclarationStatement {
  /** Type parameters, if any. */
  typeParameters: TypeParameterNode[] | null;
  /** Type being aliased. */
  type: TypeNode;
}
/** Represents a variable declaration part of a {@link VariableStatement}. */
export interface VariableDeclaration extends VariableLikeDeclarationStatement{
}
/** Represents a variable statement wrapping {@link VariableDeclaration}s. */
export interface VariableStatement extends Statement{
  /** Array of decorators. */
  decorators: DecoratorNode[] | null;
  /** Array of member declarations. */
  declarations: VariableDeclaration[];
}
/** Represents a void statement dropping an expression's value. */
export interface VoidStatement extends Statement{
  /** Expression being dropped. */
  expression: Expression;
}
/** Represents a `while` statement. */
export interface WhileStatement extends Statement{
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
export function isTypeOmitted(type: TypeNode): bool {
  if (type.kind == NodeKind.NAMEDTYPE) {
    let name = (<NamedTypeNode>type).name;
    return !(name.next || name.identifier.text.length);
  }
  return false;
}

/** Indicates traits of a {@link Node} or {@link Element}. */
export const enum CommonFlags {
  /** No flags set. */
  NONE = 0,

  // Basic modifiers

  /** Has an `import` modifier. */
  IMPORT = 1 << 0,
  /** Has an `export` modifier. */
  EXPORT = 1 << 1,
  /** Has a `declare` modifier. */
  DECLARE = 1 << 2,
  /** Has a `const` modifier. */
  CONST = 1 << 3,
  /** Has a `let` modifier. */
  LET = 1 << 4,
  /** Has a `static` modifier. */
  STATIC = 1 << 5,
  /** Has a `readonly` modifier. */
  READONLY = 1 << 6,
  /** Has an `abstract` modifier. */
  ABSTRACT = 1 << 7,
  /** Has a `public` modifier. */
  PUBLIC = 1 << 8,
  /** Has a `private` modifier. */
  PRIVATE = 1 << 9,
  /** Has a `protected` modifier. */
  PROTECTED = 1 << 10,
  /** Has a `get` modifier. */
  GET = 1 << 11,
  /** Has a `set` modifier. */
  SET = 1 << 12,
  /** Has a definite assignment assertion `!` as in `x!: i32;`. */
  DEFINITE_ASSIGNMENT = 1 << 13,

  // Extended modifiers usually derived from basic modifiers

  /** Is ambient, that is either declared or nested in a declared element. */
  AMBIENT = 1 << 14,
  /** Is generic. */
  GENERIC = 1 << 15,
  /** Is part of a generic context. */
  GENERIC_CONTEXT = 1 << 16,
  /** Is an instance member. */
  INSTANCE = 1 << 17,
  /** Is a constructor. */
  CONSTRUCTOR = 1 << 18,
  /** Is a module export. */
  MODULE_EXPORT = 1 << 19,
  /** Is a module import. */
  MODULE_IMPORT = 1 << 20,

  // Compilation states

  /** Is resolved. */
  RESOLVED = 1 << 21,
  /** Is compiled. */
  COMPILED = 1 << 22,
  /** Has a constant value and is therefore inlined. */
  INLINED = 1 << 23,
  /** Is scoped. */
  SCOPED = 1 << 24,
  /** Is a trampoline. */
  TRAMPOLINE = 1 << 25,
  /** Is a virtual method. */
  VIRTUAL = 1 << 26,
  /** Is the main function. */
  MAIN = 1 << 27,

  // Other

  /** Is quoted. */
  QUOTED = 1 << 28
}