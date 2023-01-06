/**
 * @fileoverview A TypeScript parser for the AssemblyScript subset.
 *
 * Takes the tokens produced by the `Tokenizer` and builds an abstract
 * syntax tree composed of `Node`s wrapped in a `Source` out of it.
 *
 * @license Apache-2.0
 */

import {
  CommonFlags,
  LIBRARY_PREFIX,
  PATH_DELIMITER
} from "./common";

import {
  Tokenizer,
  Token,
  CommentHandler,
  IdentifierHandling,
  isIllegalVariableIdentifier
} from "./tokenizer";

import {
  Range,
  DiagnosticCode,
  DiagnosticEmitter,
  DiagnosticMessage
} from "./diagnostics";

import {
  CharCode,
  normalizePath
} from "./util";

import {
  Node,
  NodeKind,
  Source,
  SourceKind,
  TypeNode,
  TypeName,
  NamedTypeNode,
  FunctionTypeNode,
  ArrowKind,

  Expression,
  AssertionKind,
  CallExpression,
  ClassExpression,
  FunctionExpression,
  IdentifierExpression,
  StringLiteralExpression,

  Statement,
  BlockStatement,
  BreakStatement,
  ClassDeclaration,
  ContinueStatement,
  DeclarationStatement,
  DecoratorNode,
  DoStatement,
  EnumDeclaration,
  EnumValueDeclaration,
  ExportImportStatement,
  ExportMember,
  ExportStatement,
  ExpressionStatement,
  ForOfStatement,
  FunctionDeclaration,
  IfStatement,
  ImportDeclaration,
  ImportStatement,
  IndexSignatureNode,
  NamespaceDeclaration,
  ParameterNode,
  ParameterKind,
  ReturnStatement,
  SwitchCase,
  SwitchStatement,
  ThrowStatement,
  TryStatement,
  TypeDeclaration,
  TypeParameterNode,
  VariableStatement,
  VariableDeclaration,
  VoidStatement,
  WhileStatement,
  ModuleDeclaration,

  mangleInternalPath
} from "./ast";

/** Represents a dependee. */
class Dependee {
  constructor(
    public source: Source,
    public reportNode: Node
  ) {}
}

/** Parser interface. */
export class Parser extends DiagnosticEmitter {

  /** Source file names to be requested next. */
  backlog: string[] = new Array();
  /** Source file names already seen, that is processed or backlogged. */
  seenlog: Set<string> = new Set();
  /** Source file names already completely processed. */
  donelog: Set<string> = new Set();
  /** Optional handler to intercept comments while tokenizing. */
  onComment: CommentHandler | null = null;
  /** Current file being parsed. */
  currentSource: Source | null = null;
  /** Map of dependees being depended upon by a source, by path. */
  dependees: Map<string, Dependee> = new Map();
  /** An array of parsed sources. */
  sources: Source[];
  /** Current overridden module name. */
  currentModuleName: string | null = null;

  /** Constructs a new parser. */
  constructor(
    diagnostics: DiagnosticMessage[] | null = null,
    sources: Source[] = []
  ) {
    super(diagnostics);
    this.sources = sources;
  }

  /** Parses a file and adds its definitions to the program. */
  parseFile(
    /** Source text of the file, or `null` to indicate not found. */
    text: string | null,
    /** Normalized path of the file. */
    path: string,
    /** Whether this is an entry file. */
    isEntry: bool
  ): void {
    // the frontend gives us paths with file extensions
    let normalizedPath = normalizePath(path);
    let internalPath = mangleInternalPath(normalizedPath);

    // check if already processed
    if (this.donelog.has(internalPath)) return;
    this.donelog.add(internalPath); // do not parse again
    this.seenlog.add(internalPath); // do not request again

    // check if this is an error
    if (text == null) {
      let dependees = this.dependees;
      let dependee: Dependee | null = null;
      if (dependees.has(internalPath)) dependee = assert(dependees.get(internalPath));
      this.error(
        DiagnosticCode.File_0_not_found,
        dependee
          ? dependee.reportNode.range
          : null,
        path
      );
      return;
    }

    // create the source element
    let source = new Source(
      isEntry
        ? SourceKind.UserEntry
        : path.startsWith(LIBRARY_PREFIX)
          ? path.indexOf(PATH_DELIMITER, LIBRARY_PREFIX.length) < 0
            ? SourceKind.LibraryEntry
            : SourceKind.Library
          : SourceKind.User,
      normalizedPath,
      text
    );

    this.sources.push(source);
    this.currentSource = source;
    this.currentModuleName = null;

    // tokenize and parse
    let tn = new Tokenizer(source, this.diagnostics);
    tn.onComment = this.onComment;
    let statements = source.statements;
    while (!tn.skip(Token.EndOfFile)) {
      let statement = this.parseTopLevelStatement(tn, null);
      if (statement) {
        statements.push(statement);
      } else {
        this.skipStatement(tn);
      }
    }
  }

  /** Parses a top-level statement. */
  parseTopLevelStatement(
    tn: Tokenizer,
    namespace: NamespaceDeclaration | null = null
  ): Statement | null {
    let flags = namespace ? namespace.flags & CommonFlags.Ambient : CommonFlags.None;
    let startPos = -1;

    // check decorators
    let decorators: DecoratorNode[] | null = null;
    while (tn.skip(Token.At)) {
      if (startPos < 0) startPos = tn.tokenPos;
      let decorator = this.parseDecorator(tn);
      if (!decorator) {
        this.skipStatement(tn);
        continue;
      }
      if (!decorators) decorators = [decorator];
      else decorators.push(decorator);
    }

    // check modifiers
    let exportStart = 0;
    let exportEnd = 0;
    let defaultStart = 0;
    let defaultEnd = 0;
    if (tn.skip(Token.Export)) {
      if (startPos < 0) startPos = tn.tokenPos;
      flags |= CommonFlags.Export;
      exportStart = tn.tokenPos;
      exportEnd = tn.pos;
      if (tn.skip(Token.Default)) {
        defaultStart = tn.tokenPos;
        defaultEnd = tn.pos;
      }
    }

    let declareStart = 0;
    let declareEnd = 0;
    let contextIsAmbient = namespace != null && namespace.is(CommonFlags.Ambient);
    if (tn.skip(Token.Declare)) {
      if (contextIsAmbient) {
        this.error(
          DiagnosticCode.A_declare_modifier_cannot_be_used_in_an_already_ambient_context,
          tn.range()
        ); // recoverable
      } else {
        if (startPos < 0) startPos = tn.tokenPos;
        declareStart = startPos;
        declareEnd = tn.pos;
        flags |= CommonFlags.Declare | CommonFlags.Ambient;
      }
    } else if (contextIsAmbient) {
      flags |= CommonFlags.Ambient;
    }

    // parse the statement
    let statement: Statement | null = null;

    // handle declarations
    let first = tn.peek();
    if (startPos < 0) startPos = tn.nextTokenPos;
    switch (first) {
      case Token.Const: {
        tn.next();
        flags |= CommonFlags.Const;
        if (tn.skip(Token.Enum)) {
          statement = this.parseEnum(tn, flags, decorators, startPos);
        } else {
          statement = this.parseVariable(tn, flags, decorators, startPos);
        }
        decorators = null;
        break;
      }
      case Token.Let: flags |= CommonFlags.Let;
      case Token.Var: {
        tn.next();
        statement = this.parseVariable(tn, flags, decorators, startPos);
        decorators = null;
        break;
      }
      case Token.Enum: {
        tn.next();
        statement = this.parseEnum(tn, flags, decorators, startPos);
        decorators = null;
        break;
      }
      case Token.Function: {
        tn.next();
        statement = this.parseFunction(tn, flags, decorators, startPos);
        decorators = null;
        break;
      }
      case Token.Abstract: {
        let state = tn.mark();
        tn.next();
        let abstractStart = tn.tokenPos;
        let abstractEnd = tn.pos;
        let next = tn.peek(true);
        if (tn.nextTokenOnNewLine) {
          tn.reset(state);
          statement = this.parseStatement(tn, true);
          break;
        }
        if (next != Token.Class) {
          if (next == Token.Interface) {
            this.error(
              DiagnosticCode._abstract_modifier_can_only_appear_on_a_class_method_or_property_declaration,
              tn.range(abstractStart, abstractEnd)
            );
          }
          tn.reset(state);
          statement = this.parseStatement(tn, true);
          break;
        } else {
          tn.discard(state);
        }
        flags |= CommonFlags.Abstract;
        // fall through
      }
      case Token.Class:
      case Token.Interface: {
        tn.next();
        statement = this.parseClassOrInterface(tn, flags, decorators, startPos);
        decorators = null;
        break;
      }
      case Token.Namespace: {
        let state = tn.mark();
        tn.next();
        if (tn.peek(false, IdentifierHandling.Prefer) == Token.Identifier) {
          tn.discard(state);
          statement = this.parseNamespace(tn, flags, decorators, startPos);
          decorators = null;
        } else {
          tn.reset(state);
          statement = this.parseStatement(tn, true);
        }
        break;
      }
      case Token.Import: {
        tn.next();
        flags |= CommonFlags.Import;
        if (flags & CommonFlags.Export) {
          statement = this.parseExportImport(tn, startPos);
        } else {
          statement = this.parseImport(tn);
        }
        break;
      }
      case Token.Type: { // also identifier
        let state = tn.mark();
        tn.next();
        if (tn.peek(false, IdentifierHandling.Prefer) == Token.Identifier) {
          tn.discard(state);
          statement = this.parseTypeDeclaration(tn, flags, decorators, startPos);
          decorators = null;
        } else {
          tn.reset(state);
          statement = this.parseStatement(tn, true);
        }
        break;
      }
      case Token.Module: { // also identifier
        let state = tn.mark();
        tn.next();
        if (tn.peek(true) == Token.StringLiteral && !tn.nextTokenOnNewLine) {
          tn.discard(state);
          statement = this.parseModuleDeclaration(tn, flags);
        } else {
          tn.reset(state);
          statement = this.parseStatement(tn, true);
        }
        break;
      }
      default: {

        // handle plain exports
        if (flags & CommonFlags.Export) {
          if (defaultEnd && tn.skipIdentifier(IdentifierHandling.Prefer)) {
            if (declareEnd) {
              this.error(
                DiagnosticCode.An_export_assignment_cannot_have_modifiers,
                tn.range(declareStart, declareEnd)
              );
            }
            statement = this.parseExportDefaultAlias(tn, startPos, defaultStart, defaultEnd);
            defaultStart = defaultEnd = 0; // consume
          } else {
            statement = this.parseExport(tn, startPos, (flags & CommonFlags.Declare) != 0);
          }

        // handle non-declaration statements
        } else {
          if (exportEnd) {
            this.error(
              DiagnosticCode._0_modifier_cannot_be_used_here,
              tn.range(exportStart, exportEnd), "export"
            ); // recoverable
          }
          if (declareEnd) {
            this.error(
              DiagnosticCode._0_modifier_cannot_be_used_here,
              tn.range(declareStart, declareEnd), "declare"
            ); // recoverable
          }
          if (!namespace) {
            statement = this.parseStatement(tn, true);
          } // TODO: else?
        }
        break;
      }
    }

    // check for decorators that weren't consumed
    if (decorators) {
      for (let i = 0, k = decorators.length; i < k; ++i) {
        this.error(
          DiagnosticCode.Decorators_are_not_valid_here,
          decorators[i].range
        );
      }
    }

    // check if this an `export default` declaration
    if (defaultEnd && statement != null) {
      switch (statement.kind) {
        case NodeKind.EnumDeclaration:
        case NodeKind.FunctionDeclaration:
        case NodeKind.ClassDeclaration:
        case NodeKind.InterfaceDeclaration:
        case NodeKind.NamespaceDeclaration: {
          return Node.createExportDefaultStatement(<DeclarationStatement>statement, tn.range(startPos, tn.pos));
        }
        default: {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            tn.range(defaultStart, defaultEnd), "default"
          );
        }
      }
    }
    return statement;
  }

  /** Obtains the next file to parse. */
  nextFile(): string | null {
    let backlog = this.backlog;
    return backlog.length ? assert(backlog.shift()) : null;
  }

  /** Obtains the path of the dependee of the given imported file. */
  getDependee(dependent: string): string | null {
    let dependees = this.dependees;
    if (dependees.has(dependent)) {
      let dependee = assert(dependees.get(dependent));
      return dependee.source.internalPath;
    }
    return null;
  }

  /** Finishes parsing. */
  finish(): void {
    if (this.backlog.length) throw new Error("backlog is not empty");
    this.backlog = [];
    this.seenlog.clear();
    this.donelog.clear();
    this.dependees.clear();
  }

  // types

  /** Parses a type name. */
  parseTypeName(
    tn: Tokenizer
  ): TypeName | null {

    // at: Identifier ('.' Identifier)*

    let first = Node.createSimpleTypeName(tn.readIdentifier(), tn.range());
    let current = first;
    while (tn.skip(Token.Dot)) {
      if (tn.skip(Token.Identifier)) {
        let next = Node.createSimpleTypeName(tn.readIdentifier(), tn.range());
        current.next = next;
        current = next;
      } else {
        this.error(
          DiagnosticCode.Identifier_expected,
          tn.range(tn.pos)
        );
        return null;
      }
    }
    return first;
  }

  /** Parses a type. */
  parseType(
    tn: Tokenizer,
    acceptParenthesized: bool = true,
    suppressErrors: bool = false
  ): TypeNode | null {

    // before: Type

    // NOTE: this parses our limited subset
    let token = tn.next();
    let startPos = tn.tokenPos;

    let type: TypeNode;

    // '(' ...
    if (token == Token.OpenParen) {

      // '(' FunctionSignature ')' '|' 'null'?
      let isNullableSignature = tn.skip(Token.OpenParen);
      // FunctionSignature?
      let signature = this.tryParseFunctionType(tn);
      if (signature) {
        if (isNullableSignature) {
          if (!tn.skip(Token.CloseParen)) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), ")"
            );
            return null;
          }
          if (!tn.skip(Token.Bar)) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), "|"
            );
            return null;
          }
          if (!tn.skip(Token.Null)) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), "null"
            );
          }
          signature.isNullable = true;
        }
        return signature;
      } else if (isNullableSignature || this.tryParseSignatureIsSignature) {
        this.error(
          DiagnosticCode.Unexpected_token,
          tn.range()
        );
        return null;
      }

      // Type (',' Type)* ')'
      if (acceptParenthesized) {
        let innerType = this.parseType(tn, false, suppressErrors);
        if (!innerType) return null;
        if (!tn.skip(Token.CloseParen)) {
          if (!suppressErrors) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(tn.pos), ")"
            );
          }
          return null;
        }
        type = innerType;
        type.range.start = startPos;
        type.range.end = tn.pos;
      } else {
        this.error(
          DiagnosticCode.Unexpected_token,
          tn.range()
        );
        return null;
      }

    // 'void'
    } else if (token == Token.Void) {
      type = Node.createNamedType(
        Node.createSimpleTypeName("void", tn.range()), [], false, tn.range(startPos, tn.pos)
      );

    // 'this'
    } else if (token == Token.This) {
      type = Node.createNamedType(
        Node.createSimpleTypeName("this", tn.range()), [], false, tn.range(startPos, tn.pos)
      );

    // 'true'
    } else if (token == Token.True || token == Token.False) {
      type = Node.createNamedType(
        Node.createSimpleTypeName("bool", tn.range()), [], false, tn.range(startPos, tn.pos)
      );

    // 'null'
    } else if (token == Token.Null) {
      type = Node.createNamedType(
        Node.createSimpleTypeName("null", tn.range()), [], false, tn.range(startPos, tn.pos)
      );

    // StringLiteral
    } else if (token == Token.StringLiteral) {
      tn.readString();
      type = Node.createNamedType(
        Node.createSimpleTypeName("string", tn.range()), [], false, tn.range(startPos, tn.pos)
      );

    // Identifier
    } else if (token == Token.Identifier) {
      let name = this.parseTypeName(tn);
      if (!name) return null;
      let parameters: TypeNode[] | null = null;

      // Name<T>
      if (tn.skip(Token.LessThan)) {
        do {
          let parameter = this.parseType(tn, true, suppressErrors);
          if (!parameter) return null;
          if (!parameters) parameters = [ parameter ];
          else parameters.push(parameter);
        } while (tn.skip(Token.Comma));
        if (!tn.skip(Token.GreaterThan)) {
          if (!suppressErrors) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(tn.pos), ">"
            );
          }
          return null;
        }
      }
      if (!parameters) parameters = [];
      type = Node.createNamedType(name, parameters, false, tn.range(startPos, tn.pos));
    } else {
      if (!suppressErrors) {
        this.error(
          DiagnosticCode.Type_expected,
          tn.range()
        );
      }
      return null;
    }
    // ... | null
    while (tn.skip(Token.Bar)) {
      if (tn.skip(Token.Null)) {
        type.isNullable = true;
      } else {
        let notNullStart = tn.pos;
        let notNull = this.parseType(tn, false, true);
        if (!suppressErrors) {
          this.error(
            DiagnosticCode._0_expected,
            notNull ? notNull.range : tn.range(notNullStart), "null"
          );
        }
        return null;
      }
    }
    // ... [][]
    while (tn.skip(Token.OpenBracket)) {
      let bracketStart = tn.tokenPos;
      if (!tn.skip(Token.CloseBracket)) {
        if (!suppressErrors) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), "]"
          );
        }
        return null;
      }
      let bracketRange = tn.range(bracketStart, tn.pos);

      // ...[] | null
      let nullable = false;
      if (tn.skip(Token.Bar)) {
        if (tn.skip(Token.Null)) {
          nullable = true;
        } else {
          if (!suppressErrors) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), "null"
            );
          }
          return null;
        }
      }
      type = Node.createNamedType(
        Node.createSimpleTypeName("Array", bracketRange),
        [ type ],
        nullable,
        tn.range(startPos, tn.pos)
      );
      if (nullable) break;
    }

    return type;
  }

  // Indicates whether tryParseSignature determined that it is handling a Signature
  private tryParseSignatureIsSignature: bool = false;

  /** Parses a function type, as used in type declarations. */
  tryParseFunctionType(
    tn: Tokenizer
  ): FunctionTypeNode | null {

    // at '(': ('...'? Identifier '?'? ':' Type (','  '...'? Identifier '?'? ':' Type)* )? ')' '=>' Type

    let state = tn.mark();
    let startPos = tn.tokenPos;
    let parameters: ParameterNode[] | null = null;
    let thisType: NamedTypeNode | null = null;
    let isSignature: bool = false;
    let firstParamNameNoType: IdentifierExpression | null = null;
    let firstParamKind: ParameterKind = ParameterKind.Default;

    if (tn.skip(Token.CloseParen)) {
      isSignature = true;
      tn.discard(state);
      parameters = [];

    } else {
      isSignature = false; // not yet known
      do {
        let paramStart = -1;
        let kind = ParameterKind.Default;
        if (tn.skip(Token.Dot_Dot_Dot)) {
          paramStart = tn.tokenPos;
          isSignature = true;
          tn.discard(state);
          kind = ParameterKind.Rest;
        }
        if (tn.skip(Token.This)) {
          if (paramStart < 0) paramStart = tn.tokenPos;
          if (tn.skip(Token.Colon)) {
            isSignature = true;
            tn.discard(state);
            let type = this.parseType(tn, false);
            if (!type) return null;
            if (type.kind != NodeKind.NamedType) {
              this.error(
                DiagnosticCode.Identifier_expected,
                type.range
              );
              this.tryParseSignatureIsSignature = true;
              return null;
            }
            thisType = <NamedTypeNode>type;
          } else {
            tn.reset(state);
            this.tryParseSignatureIsSignature = false;
            return null;
          }
        } else if (tn.skipIdentifier()) {
          if (paramStart < 0) paramStart = tn.tokenPos;
          let name = Node.createIdentifierExpression(tn.readIdentifier(), tn.range(tn.tokenPos, tn.pos));
          if (tn.skip(Token.Question)) {
            isSignature = true;
            tn.discard(state);
            if (kind == ParameterKind.Rest) {
              this.error(
                DiagnosticCode.A_rest_parameter_cannot_be_optional,
                tn.range()
              ); // recoverable
            } else {
              kind = ParameterKind.Optional;
            }
          }
          if (tn.skip(Token.Colon)) {
            isSignature = true;
            tn.discard(state);
            let type = this.parseType(tn); // not suppressing errors because known
            if (!type) {
              this.tryParseSignatureIsSignature = isSignature;
              return null;
            }
            let param = Node.createParameter(kind, name, type, null, tn.range(paramStart, tn.pos));
            if (!parameters) parameters = [ param ];
            else parameters.push(param);
          } else {
            if (!isSignature) {
              if (tn.peek() == Token.Comma) {
                isSignature = true;
                tn.discard(state);
              }
            }
            if (isSignature) {
              let param = Node.createParameter(kind, name, Node.createOmittedType(tn.range(tn.pos)), null, tn.range(paramStart, tn.pos));
              if (!parameters) parameters = [ param ];
              else parameters.push(param);
              this.error(
                DiagnosticCode.Type_expected,
                param.type.range
              ); // recoverable
            } else if (!parameters) {
              // on '(' Identifier ^',' we don't yet know whether this is a
              // parenthesized or a function type, hence we have to delay the
              // respective diagnostic until we know for sure.
              firstParamNameNoType = name;
              firstParamKind = kind;
            }
          }
        } else if (parameters && tn.peek() == Token.CloseParen) { // allow trailing comma
          assert(isSignature && parameters.length);
          break;
        } else {
          if (isSignature) {
            this.error(
              DiagnosticCode.Identifier_expected,
              tn.range()
            );
          } else {
            tn.reset(state);
          }
          this.tryParseSignatureIsSignature = isSignature;
          return null;
        }
      } while (tn.skip(Token.Comma));
      if (!tn.skip(Token.CloseParen)) {
        if (isSignature) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ")"
          );
        } else {
          tn.reset(state);
        }
        this.tryParseSignatureIsSignature = isSignature;
        return null;
      }
    }

    let returnType: TypeNode | null;
    if (tn.skip(Token.Equals_GreaterThan)) {
      if (!isSignature) {
        isSignature = true;
        tn.discard(state);
        if (firstParamNameNoType) { // now we know
          let param = Node.createParameter(
            firstParamKind,
            firstParamNameNoType,
            Node.createOmittedType(firstParamNameNoType.range.atEnd),
            null,
            firstParamNameNoType.range
          );
          if (!parameters) parameters = [ param ];
          else parameters.push(param);
          this.error(
            DiagnosticCode.Type_expected,
            param.type.range
          ); // recoverable
        }
      }
      returnType = this.parseType(tn);
      if (!returnType) {
        this.tryParseSignatureIsSignature = isSignature;
        return null;
      }
    } else {
      if (isSignature) {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), "=>"
        );
      } else {
        tn.reset(state);
      }
      this.tryParseSignatureIsSignature = isSignature;
      return null;
    }
    this.tryParseSignatureIsSignature = true;

    if (!parameters) parameters = [];

    return Node.createFunctionType(
      parameters,
      returnType,
      thisType,
      false,
      tn.range(startPos, tn.pos)
    );
  }

  // statements

  parseDecorator(
    tn: Tokenizer
  ): DecoratorNode | null {

    // at '@': Identifier ('.' Identifier)* '(' Arguments

    let startPos = tn.tokenPos;
    if (tn.skipIdentifier()) {
      let name = tn.readIdentifier();
      let expression: Expression = Node.createIdentifierExpression(name, tn.range(startPos, tn.pos));
      while (tn.skip(Token.Dot)) {
        if (tn.skipIdentifier(IdentifierHandling.Prefer)) {
          name = tn.readIdentifier();
          expression = Node.createPropertyAccessExpression(
            expression,
            Node.createIdentifierExpression(name, tn.range()),
            tn.range(startPos, tn.pos)
          );
        } else {
          this.error(
            DiagnosticCode.Identifier_expected,
            tn.range()
          );
          return null;
        }
      }
      let args: Expression[] | null;
      if (tn.skip(Token.OpenParen)) {
        args = this.parseArguments(tn);
        if (args) {
          return Node.createDecorator(expression, args, tn.range(startPos, tn.pos));
        }
      } else {
        return Node.createDecorator(expression, null, tn.range(startPos, tn.pos));
      }
    } else {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
    }
    return null;
  }

  parseVariable(
    tn: Tokenizer,
    flags: CommonFlags,
    decorators: DecoratorNode[] | null,
    startPos: i32,
    isFor: bool = false
  ): VariableStatement | null {

    // at ('const' | 'let' | 'var'): VariableDeclaration (',' VariableDeclaration)* ';'?

    let declarations = new Array<VariableDeclaration>();
    do {
      let declaration = this.parseVariableDeclaration(tn, flags, decorators, isFor);
      if (!declaration) return null;
      declaration.overriddenModuleName = this.currentModuleName;
      declarations.push(declaration);
    } while (tn.skip(Token.Comma));

    let ret = Node.createVariableStatement(decorators, declarations, tn.range(startPos, tn.pos));
    tn.skip(Token.Semicolon);
    return ret;
  }

  parseVariableDeclaration(
    tn: Tokenizer,
    parentFlags: CommonFlags,
    parentDecorators: DecoratorNode[] | null,
    isFor: bool = false
  ): VariableDeclaration | null {

    // before: Identifier (':' Type)? ('=' Expression)?

    if (!tn.skipIdentifier()) {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
      return null;
    }
    let identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    if (isIllegalVariableIdentifier(identifier.text)) {
      this.error(
        DiagnosticCode.Identifier_expected,
        identifier.range
      );
    }
    let flags = parentFlags;
    if (tn.skip(Token.Exclamation)) {
      flags |= CommonFlags.DefinitelyAssigned;
    }

    let type: TypeNode | null = null;
    if (tn.skip(Token.Colon)) {
      type = this.parseType(tn, true);
    }

    let initializer: Expression | null = null;
    if (tn.skip(Token.Equals)) {
      if (flags & CommonFlags.Ambient) {
        this.error(
          DiagnosticCode.Initializers_are_not_allowed_in_ambient_contexts,
          tn.range()
        ); // recoverable
      }
      initializer = this.parseExpression(tn, Precedence.Comma + 1);
      if (!initializer) return null;
      if (flags & CommonFlags.DefinitelyAssigned) {
        this.error(
          DiagnosticCode.Declarations_with_initializers_cannot_also_have_definite_assignment_assertions,
          initializer.range
        );
      }
    } else if (!isFor) {
      if (flags & CommonFlags.Const) {
        if (!(flags & CommonFlags.Ambient)) {
          this.error(
            DiagnosticCode._const_declarations_must_be_initialized,
            identifier.range
          ); // recoverable
        }
      } else if (!type) { // neither type nor initializer
        this.error(
          DiagnosticCode.Type_expected,
          tn.range(tn.pos)
        ); // recoverable
      }
    }
    let range = Range.join(identifier.range, tn.range());
    if ((flags & CommonFlags.DefinitelyAssigned) != 0 && (flags & CommonFlags.Ambient) != 0) {
      this.error(
        DiagnosticCode.A_definite_assignment_assertion_is_not_permitted_in_this_context,
        range
      );
    }
    return Node.createVariableDeclaration(
      identifier,
      parentDecorators,
      flags,
      type,
      initializer,
      range
    );
  }

  parseEnum(
    tn: Tokenizer,
    flags: CommonFlags,
    decorators: DecoratorNode[] | null,
    startPos: i32
  ): EnumDeclaration | null {

    // at 'enum': Identifier '{' (EnumValueDeclaration (',' EnumValueDeclaration )*)? '}' ';'?

    if (tn.next() != Token.Identifier) {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
      return null;
    }
    let identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    if (tn.next() != Token.OpenBrace) {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), "{"
      );
      return null;
    }
    let members = new Array<EnumValueDeclaration>();
    while (!tn.skip(Token.CloseBrace)) {
      let member = this.parseEnumValue(tn, CommonFlags.None);
      if (!member) return null;
      members.push(member);
      if (!tn.skip(Token.Comma)) {
        if (tn.skip(Token.CloseBrace)) {
          break;
        } else {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), "}"
          );
          return null;
        }
      }
    }
    let ret = Node.createEnumDeclaration(
      identifier,
      decorators,
      flags,
      members,
      tn.range(startPos, tn.pos)
    );
    ret.overriddenModuleName = this.currentModuleName;
    tn.skip(Token.Semicolon);
    return ret;
  }

  parseEnumValue(
    tn: Tokenizer,
    parentFlags: CommonFlags
  ): EnumValueDeclaration | null {

    // before: Identifier ('=' Expression)?

    if (!tn.skipIdentifier()) {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
      return null;
    }
    let identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    let value: Expression | null = null;
    if (tn.skip(Token.Equals)) {
      value = this.parseExpression(tn, Precedence.Comma + 1);
      if (!value) return null;
    }
    return Node.createEnumValueDeclaration(
      identifier,
      parentFlags,
      value,
      Range.join(identifier.range, tn.range())
    );
  }

  parseReturn(
    tn: Tokenizer
  ): ReturnStatement | null {

    // at 'return': Expression | (';' | '}' | ...'\n')

    let startPos = tn.tokenPos;
    let expr: Expression | null = null;
    if (
      tn.peek(true) != Token.Semicolon &&
      tn.nextToken != Token.CloseBrace &&
      !tn.nextTokenOnNewLine
    ) {
      if (!(expr = this.parseExpression(tn))) return null;
    }

    let ret = Node.createReturnStatement(expr, tn.range(startPos, tn.pos));
    tn.skip(Token.Semicolon);
    return ret;
  }

  parseTypeParameters(
    tn: Tokenizer
  ): TypeParameterNode[] | null {

    // at '<': TypeParameter (',' TypeParameter)* '>'

    let typeParameters = new Array<TypeParameterNode>();
    let seenOptional = false;
    let start = tn.tokenPos;
    while (!tn.skip(Token.GreaterThan)) {
      let typeParameter = this.parseTypeParameter(tn);
      if (!typeParameter) return null;
      if (typeParameter.defaultType) {
        seenOptional = true;
      } else if (seenOptional) {
        this.error(
          DiagnosticCode.Required_type_parameters_may_not_follow_optional_type_parameters,
          typeParameter.range
        );
        typeParameter.defaultType = null;
      }
      typeParameters.push(typeParameter);
      if (!tn.skip(Token.Comma)) {
        if (tn.skip(Token.GreaterThan)) {
          break;
        } else {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ">"
          );
          return null;
        }
      }
    }
    if (!typeParameters.length) {
      this.error(
        DiagnosticCode.Type_parameter_list_cannot_be_empty,
        tn.range(start, tn.pos)
      ); // recoverable
    }
    return typeParameters;
  }

  parseTypeParameter(
    tn: Tokenizer
  ): TypeParameterNode | null {

    // before: Identifier ('extends' Type)? ('=' Type)?

    if (tn.next() == Token.Identifier) {
      let identifier = Node.createIdentifierExpression(
        tn.readIdentifier(),
        tn.range()
      );
      let extendsType: NamedTypeNode | null = null;
      if (tn.skip(Token.Extends)) {
        let type = this.parseType(tn);
        if (!type) return null;
        if (type.kind != NodeKind.NamedType) {
          this.error(
            DiagnosticCode.Identifier_expected,
            type.range
          );
          return null;
        }
        extendsType = <NamedTypeNode>type;
      }
      let defaultType: NamedTypeNode | null = null;
      if (tn.skip(Token.Equals)) {
        let type = this.parseType(tn);
        if (!type) return null;
        if (type.kind != NodeKind.NamedType) {
          this.error(
            DiagnosticCode.Identifier_expected,
            type.range
          );
          return null;
        }
        defaultType = <NamedTypeNode>type;
      }
      return Node.createTypeParameter(
        identifier,
        extendsType,
        defaultType,
        Range.join(identifier.range, tn.range())
      );
    } else {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
    }
    return null;
  }

  private parseParametersThis: NamedTypeNode | null = null;

  parseParameters(
    tn: Tokenizer,
    isConstructor: bool = false
  ): ParameterNode[] | null {

    // at '(': (Parameter (',' Parameter)*)? ')'

    let parameters = new Array<ParameterNode>();
    let seenRest: ParameterNode | null = null;
    let seenOptional = false;
    let reportedRest = false;
    let thisType: TypeNode | null = null;

    // check if there is a leading `this` parameter
    this.parseParametersThis = null;
    if (tn.skip(Token.This)) {
      if (tn.skip(Token.Colon)) {
        thisType = this.parseType(tn); // reports
        if (!thisType) return null;
        if (thisType.kind == NodeKind.NamedType) {
          this.parseParametersThis = <NamedTypeNode>thisType;
        } else {
          this.error(
            DiagnosticCode.Identifier_expected,
            thisType.range
          );
        }
      } else {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), ":"
        );
        return null;
      }
      if (!tn.skip(Token.Comma)) {
        if (tn.skip(Token.CloseParen)) {
          return parameters;
        } else {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ")"
          );
          return null;
        }
      }
    }

    while (!tn.skip(Token.CloseParen)) {
      let param = this.parseParameter(tn, isConstructor); // reports
      if (!param) return null;
      if (seenRest && !reportedRest) {
        this.error(
          DiagnosticCode.A_rest_parameter_must_be_last_in_a_parameter_list,
          seenRest.name.range
        );
        reportedRest = true;
      }
      switch (param.parameterKind) {
        default: {
          if (seenOptional) {
            this.error(
              DiagnosticCode.A_required_parameter_cannot_follow_an_optional_parameter,
              param.name.range
            );
          }
          break;
        }
        case ParameterKind.Optional: {
          seenOptional = true;
          break;
        }
        case ParameterKind.Rest: {
          seenRest = param;
          break;
        }
      }
      parameters.push(param);
      if (!tn.skip(Token.Comma)) {
        if (tn.skip(Token.CloseParen)) {
          break;
        } else {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ")"
          );
          return null;
        }
      }
    }
    return parameters;
  }

  parseParameter(
    tn: Tokenizer,
    isConstructor: bool = false
  ): ParameterNode | null {

    // before: ('public' | 'private' | 'protected' | '...')? Identifier '?'? (':' Type)? ('=' Expression)?

    let isRest = false;
    let isOptional = false;
    let startRange: Range | null = null;
    let accessFlags: CommonFlags = CommonFlags.None;
    if (isConstructor) {
      if (tn.skip(Token.Public)) {
        startRange = tn.range();
        accessFlags |= CommonFlags.Public;
      } else if (tn.skip(Token.Protected)) {
        startRange = tn.range();
        accessFlags |= CommonFlags.Protected;
      } else if (tn.skip(Token.Private)) {
        startRange = tn.range();
        accessFlags |= CommonFlags.Private;
      }
      if (tn.peek() == Token.Readonly) {
        let state = tn.mark();
        tn.next();
        if (tn.peek() != Token.Colon) { // modifier
          tn.discard(state);
          if (!startRange) startRange = tn.range();
          accessFlags |= CommonFlags.Readonly;
        } else { // identifier
          tn.reset(state);
        }
      }
    }
    if (tn.skip(Token.Dot_Dot_Dot)) {
      if (accessFlags) {
        this.error(
          DiagnosticCode.A_parameter_property_cannot_be_declared_using_a_rest_parameter,
          tn.range()
        );
      } else {
        startRange = tn.range();
      }
      isRest = true;
    }
    if (tn.skipIdentifier()) {
      if (!isRest) startRange = tn.range();
      let identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      let type: TypeNode | null = null;
      if (isOptional = tn.skip(Token.Question)) {
        if (isRest) {
          this.error(
            DiagnosticCode.A_rest_parameter_cannot_be_optional,
            identifier.range
          );
        }
      }
      if (tn.skip(Token.Colon)) {
        type = this.parseType(tn);
        if (!type) return null;
      } else {
        type = Node.createOmittedType(tn.range(tn.pos));
      }
      let initializer: Expression | null = null;
      if (tn.skip(Token.Equals)) {
        if (isRest) {
          this.error(
            DiagnosticCode.A_rest_parameter_cannot_have_an_initializer,
            identifier.range
          );
        }
        if (isOptional) {
          this.error(
            DiagnosticCode.Parameter_cannot_have_question_mark_and_initializer,
            identifier.range
          );
        } else {
          isOptional = true;
        }
        initializer = this.parseExpression(tn, Precedence.Comma + 1);
        if (!initializer) return null;
      }
      let param = Node.createParameter(
        isRest
          ? ParameterKind.Rest
          : isOptional
            ? ParameterKind.Optional
            : ParameterKind.Default,
        identifier,
        type,
        initializer,
        Range.join(assert(startRange), tn.range())
      );
      param.flags |= accessFlags;
      return param;
    } else {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
    }
    return null;
  }

  parseFunction(
    tn: Tokenizer,
    flags: CommonFlags,
    decorators: DecoratorNode[] | null,
    startPos: i32
  ): FunctionDeclaration | null {

    // at 'function':
    //  Identifier
    //  ('<' TypeParameters)?
    //  '(' Parameters (':' Type)?
    //  '{' Statement* '}'
    //  ';'?

    if (!tn.skipIdentifier()) {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range(tn.pos)
      );
      return null;
    }

    let name = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    let signatureStart = -1;

    let typeParameters: TypeParameterNode[] | null = null;
    if (tn.skip(Token.LessThan)) {
      signatureStart = tn.tokenPos;
      typeParameters = this.parseTypeParameters(tn);
      if (!typeParameters) return null;
      flags |= CommonFlags.Generic;
    }

    if (!tn.skip(Token.OpenParen)) {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(tn.pos), "("
      );
      return null;
    }

    if (signatureStart < 0) {
      signatureStart = tn.tokenPos;
    }

    let parameters = this.parseParameters(tn);
    if (!parameters) return null;
    let thisType = this.parseParametersThis;

    let isSetter = (flags & CommonFlags.Set) != 0;
    if (isSetter) {
      if (parameters.length != 1) {
        this.error(
          DiagnosticCode.A_set_accessor_must_have_exactly_one_parameter,
          name.range
        ); // recoverable
      }
      if (parameters.length > 0 && parameters[0].initializer) {
        this.error(
          DiagnosticCode.A_set_accessor_parameter_cannot_have_an_initializer,
          name.range
        ); // recoverable
      }
    }

    if (flags & CommonFlags.Get) {
      if (parameters.length) {
        this.error(
          DiagnosticCode.A_get_accessor_cannot_have_parameters,
          name.range
        ); // recoverable
      }
    }

    let returnType: TypeNode | null = null;
    if (tn.skip(Token.Colon)) {
      returnType = this.parseType(tn, true, isSetter);
      if (!returnType) return null;
    }

    if (!returnType) {
      returnType = Node.createOmittedType(
        tn.range(tn.pos)
      );
      if (!isSetter) {
        this.error(
          DiagnosticCode.Type_expected,
          returnType.range
        ); // recoverable
      }
    }

    let signature = Node.createFunctionType(
      parameters,
      returnType,
      thisType,
      false,
      tn.range(signatureStart, tn.pos)
    );

    let body: Statement | null = null;
    if (tn.skip(Token.OpenBrace)) {
      if (flags & CommonFlags.Ambient) {
        this.error(
          DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts,
          tn.range()
        ); // recoverable
      }

      body = this.parseBlockStatement(tn, false);
      if (!body) return null;
    } else if (!(flags & CommonFlags.Ambient)) {
      this.error(
        DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration,
        tn.range(tn.pos)
      );
    }

    let ret = Node.createFunctionDeclaration(
      name,
      decorators,
      flags,
      typeParameters,
      signature,
      body,
      ArrowKind.None,
      tn.range(startPos, tn.pos)
    );
    ret.overriddenModuleName = this.currentModuleName;
    tn.skip(Token.Semicolon);
    return ret;
  }

  parseFunctionExpression(tn: Tokenizer): FunctionExpression | null {
    let startPos = tn.tokenPos;
    let name: IdentifierExpression;
    let arrowKind = ArrowKind.None;

    // either at 'function':
    //  Identifier?
    //  '(' Parameters (':' Type)?
    //  Statement

    if (tn.token == Token.Function) {
      if (tn.skipIdentifier()) {
        name = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      } else { // empty name
        name = Node.createEmptyIdentifierExpression(tn.range(tn.pos));
      }
      if (!tn.skip(Token.OpenParen)) {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(tn.pos), "("
        );
        return null;
      }

      // or at '(' of arrow function:
      //  Parameters (':' Type)?
      //  Statement

    } else {
      arrowKind = ArrowKind.Parenthesized;
      assert(tn.token == Token.OpenParen);
      name = Node.createEmptyIdentifierExpression(tn.range(tn.tokenPos));
    }

    // TODO: type parameters? doesn't seem worth it.

    let signatureStart = tn.pos;
    let parameters = this.parseParameters(tn);
    if (!parameters) return null;

    return this.parseFunctionExpressionCommon(tn, name, parameters, this.parseParametersThis, arrowKind, startPos, signatureStart);
  }

  private parseFunctionExpressionCommon(
    tn: Tokenizer,
    name: IdentifierExpression,
    parameters: ParameterNode[],
    explicitThis: NamedTypeNode | null,
    arrowKind: ArrowKind,
    startPos: i32 = -1,
    signatureStart: i32 = -1
  ): FunctionExpression | null {
    if (startPos < 0) startPos = name.range.start;
    if (signatureStart < 0) signatureStart = startPos;

    let returnType: TypeNode | null = null;
    if (arrowKind != ArrowKind.Single && tn.skip(Token.Colon)) {
      returnType = this.parseType(tn);
      if (!returnType) return null;
    } else {
      returnType = Node.createOmittedType(tn.range(tn.pos));
    }

    if (arrowKind) {
      if (!tn.skip(Token.Equals_GreaterThan)) {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(tn.pos), "=>"
        );
        return null;
      }
    }

    let signature = Node.createFunctionType(
      parameters,
      returnType,
      explicitThis,
      false,
      tn.range(signatureStart, tn.pos)
    );

    let body: Statement | null = null;
    if (arrowKind) {
      if (tn.skip(Token.OpenBrace)) {
        body = this.parseBlockStatement(tn, false);
      } else {
        let bodyExpression = this.parseExpression(tn, Precedence.Comma + 1);
        if (bodyExpression) body = Node.createExpressionStatement(bodyExpression);
      }
    } else {
      if (!tn.skip(Token.OpenBrace)) {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(tn.pos), "{"
        );
        return null;
      }
      body = this.parseBlockStatement(tn, false);
    }
    if (!body) return null;

    let declaration = Node.createFunctionDeclaration(
      name,
      null,
      CommonFlags.None,
      null,
      signature,
      body,
      arrowKind,
      tn.range(startPos, tn.pos)
    );
    return Node.createFunctionExpression(declaration);
  }

  parseClassOrInterface(
    tn: Tokenizer,
    flags: CommonFlags,
    decorators: DecoratorNode[] | null,
    startPos: i32
  ): ClassDeclaration | null {

    // at ('class' | 'interface'):
    //   Identifier
    //   ('<' TypeParameters)?
    //   ('extends' Type)?
    //   ('implements' Type (',' Type)*)?
    //   '{' ClassMember* '}'

    let isInterface = tn.token == Token.Interface;

    if (!tn.skipIdentifier()) {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
      return null;
    }

    let identifier = Node.createIdentifierExpression(
      tn.readIdentifier(),
      tn.range()
    );

    let typeParameters: TypeParameterNode[] | null = null;
    if (tn.skip(Token.LessThan)) {
      typeParameters = this.parseTypeParameters(tn);
      if (!typeParameters) return null;
      flags |= CommonFlags.Generic;
    }

    let extendsType: NamedTypeNode | null = null;
    if (tn.skip(Token.Extends)) {
      let type = this.parseType(tn);
      if (!type) return null;
      if (type.kind != NodeKind.NamedType) {
        this.error(
          DiagnosticCode.Identifier_expected,
          type.range
        );
        return null;
      }
      extendsType = <NamedTypeNode>type;
    }

    let implementsTypes: NamedTypeNode[] | null = null;
    if (tn.skip(Token.Implements)) {
      if (isInterface) {
        this.error(
          DiagnosticCode.Interface_declaration_cannot_have_implements_clause,
          tn.range()
        ); // recoverable
      }
      do {
        let type = this.parseType(tn);
        if (!type) return null;
        if (type.kind != NodeKind.NamedType) {
          this.error(
            DiagnosticCode.Identifier_expected,
            type.range
          );
          return null;
        }
        if (!isInterface) {
          if (!implementsTypes) implementsTypes = [];
          implementsTypes.push(<NamedTypeNode>type);
        }
      } while (tn.skip(Token.Comma));
    }

    if (!tn.skip(Token.OpenBrace)) {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), "{"
      );
      return null;
    }

    let members = new Array<DeclarationStatement>();
    let declaration: ClassDeclaration;
    if (isInterface) {
      assert(!implementsTypes);
      declaration = Node.createInterfaceDeclaration(
        identifier,
        decorators,
        flags,
        typeParameters,
        extendsType,
        null,
        members,
        tn.range(startPos, tn.pos)
      );
    } else {
      declaration = Node.createClassDeclaration(
        identifier,
        decorators,
        flags,
        typeParameters,
        extendsType,
        implementsTypes,
        members,
        tn.range(startPos, tn.pos)
      );
    }
    if (!tn.skip(Token.CloseBrace)) {
      do {
        let member = this.parseClassMember(tn, declaration);
        if (member) {
          if (member.kind == NodeKind.IndexSignature) {
            declaration.indexSignature = <IndexSignatureNode>member;
          } else {
            assert(member instanceof DeclarationStatement);
            members.push(<DeclarationStatement>member);
          }
        } else {
          this.skipStatement(tn);
          if (tn.skip(Token.EndOfFile)) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), "}"
            );
            return null;
          }
        }
      } while (!tn.skip(Token.CloseBrace));
    }
    declaration.range.end = tn.pos;
    declaration.overriddenModuleName = this.currentModuleName;
    return declaration;
  }

  parseClassExpression(tn: Tokenizer): ClassExpression | null {

    // at 'class': Identifier? '{' ... '}'

    let startPos = tn.tokenPos;
    let name: IdentifierExpression;

    if (tn.skipIdentifier()) {
      name = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    } else {
      name = Node.createEmptyIdentifierExpression(tn.range(tn.pos));
    }

    if (!tn.skip(Token.OpenBrace)) {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(tn.pos), "{"
      );
      return null;
    }

    let members = new Array<DeclarationStatement>();
    let declaration = Node.createClassDeclaration(
      name,
      null,
      CommonFlags.None,
      null,
      null,
      null,
      members,
      tn.range(startPos, tn.pos)
    );
    if (!tn.skip(Token.CloseBrace)) {
      do {
        let member = this.parseClassMember(tn, declaration);
        if (member) {
          if (member.kind == NodeKind.IndexSignature) {
            declaration.indexSignature = <IndexSignatureNode>member;
          } else {
            assert(declaration instanceof DeclarationStatement);
            members.push(<DeclarationStatement>member);
          }
        } else {
          this.skipStatement(tn);
          if (tn.skip(Token.EndOfFile)) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), "}"
            );
            return null;
          }
        }
      } while (!tn.skip(Token.CloseBrace));
    }
    declaration.range.end = tn.pos;
    return Node.createClassExpression(declaration);
  }

  parseClassMember(
    tn: Tokenizer,
    parent: ClassDeclaration
  ): Node | null {

    // before:
    //   'declare'?
    //   ('public' | 'private' | 'protected')?
    //   ('static' | 'abstract')?
    //   'override'?
    //   'readonly'?
    //   ('get' | 'set')?
    //   Identifier ...

    let isInterface = parent.kind == NodeKind.InterfaceDeclaration;
    let startPos = 0;
    let decorators: DecoratorNode[] | null = null;
    if (tn.skip(Token.At)) {
      startPos = tn.tokenPos;
      do {
        let decorator = this.parseDecorator(tn);
        if (!decorator) break;
        if (!decorators) decorators = new Array();
        decorators.push(decorator);
      } while (tn.skip(Token.At));
      if (isInterface && decorators) {
        this.error(
          DiagnosticCode.Decorators_are_not_valid_here,
          Range.join(decorators[0].range, decorators[decorators.length - 1].range)
        );
      }
    }

    // inherit ambient status
    let flags = parent.flags & CommonFlags.Ambient;

    // interface methods are always overridden if used
    if (isInterface) flags |= CommonFlags.Overridden;

    let declareStart = 0;
    let declareEnd = 0;
    let contextIsAmbient = parent.is(CommonFlags.Ambient);
    if (tn.skip(Token.Declare)) {
      if (isInterface) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(), "declare"
        );
      } else {
        if (contextIsAmbient) {
          this.error(
            DiagnosticCode.A_declare_modifier_cannot_be_used_in_an_already_ambient_context,
            tn.range()
          ); // recoverable
        } else {
          flags |= CommonFlags.Declare | CommonFlags.Ambient;
          declareStart = tn.tokenPos;
          declareEnd = tn.pos;
        }
      }
      if (!startPos) startPos = tn.tokenPos;
    } else if (contextIsAmbient) {
      flags |= CommonFlags.Ambient;
    }

    let accessStart = 0;
    let accessEnd = 0;
    if (tn.skip(Token.Public)) {
      if (isInterface) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(), "public"
        );
      } else {
        flags |= CommonFlags.Public;
        accessStart = tn.tokenPos;
        accessEnd = tn.pos;
      }
      if (!startPos) startPos = tn.tokenPos;
    } else if (tn.skip(Token.Private)) {
      if (isInterface) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(), "private"
        );
      } else {
        flags |= CommonFlags.Private;
        accessStart = tn.tokenPos;
        accessEnd = tn.pos;
      }
      if (!startPos) startPos = tn.tokenPos;
    } else if (tn.skip(Token.Protected)) {
      if (isInterface) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(), "protected"
        );
      } else {
        flags |= CommonFlags.Protected;
        accessStart = tn.tokenPos;
        accessEnd = tn.pos;
      }
      if (!startPos) startPos = tn.tokenPos;
    }

    let staticStart = 0;
    let staticEnd = 0;
    let abstractStart = 0;
    let abstractEnd = 0;
    if (tn.skip(Token.Static)) {
      if (isInterface) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(), "static"
        );
      } else {
        flags |= CommonFlags.Static;
        staticStart = tn.tokenPos;
        staticEnd = tn.pos;
      }
      if (!startPos) startPos = tn.tokenPos;
    } else {
      flags |= CommonFlags.Instance;
      if (tn.skip(Token.Abstract)) {
        if (isInterface || !parent.is(CommonFlags.Abstract)) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            tn.range(), "abstract"
          );
        } else {
          flags |= CommonFlags.Abstract;
          abstractStart = tn.tokenPos;
          abstractEnd = tn.pos;
        }
        if (!startPos) startPos = tn.tokenPos;
      }
      if (parent.flags & CommonFlags.Generic) flags |= CommonFlags.GenericContext;
    }

    let overrideStart = 0;
    let overrideEnd = 0;
    if (tn.skip(Token.Override)) {
      if (isInterface || parent.extendsType == null) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(), "override"
        );
      } else {
        flags |= CommonFlags.Override;
        overrideStart = tn.tokenPos;
        overrideEnd = tn.pos;
      }
      if (!startPos) startPos = tn.tokenPos;
    }

    let readonlyStart = 0;
    let readonlyEnd = 0;
    if (tn.peek() == Token.Readonly) {
      let state = tn.mark();
      tn.next();
      if (tn.peek() != Token.Colon) { // modifier
        tn.discard(state);
        flags |= CommonFlags.Readonly;
        readonlyStart = tn.tokenPos;
        readonlyEnd = tn.pos;
        if (!startPos) startPos = readonlyStart;
      } else { // identifier
        tn.reset(state);
      }
    }

    // check if accessor: ('get' | 'set') ^\n Identifier
    let state = tn.mark();
    let isConstructor = false;
    let isGetter = false;
    let getStart = 0;
    let getEnd = 0;
    let isSetter = false;
    let setStart = 0;
    let setEnd = 0;
    if (!isInterface) {
      if (tn.skip(Token.Get)) {
        if (tn.peek(true, IdentifierHandling.Prefer) == Token.Identifier && !tn.nextTokenOnNewLine) {
          flags |= CommonFlags.Get;
          isGetter = true;
          getStart = tn.tokenPos;
          getEnd = tn.pos;
          if (!startPos) startPos = getStart;
          if (flags & CommonFlags.Readonly) {
            this.error(
              DiagnosticCode._0_modifier_cannot_be_used_here,
              tn.range(readonlyStart, readonlyEnd), "readonly"
            ); // recoverable
          }
        } else {
          tn.reset(state);
        }
      } else if (tn.skip(Token.Set)) {
        if (tn.peek(true, IdentifierHandling.Prefer) == Token.Identifier && !tn.nextTokenOnNewLine) {
          flags |= CommonFlags.Set;
          isSetter = true;
          setStart = tn.tokenPos;
          setEnd = tn.pos;
          if (!startPos) startPos = setStart;
          if (flags & CommonFlags.Readonly) {
            this.error(
              DiagnosticCode._0_modifier_cannot_be_used_here,
              tn.range(readonlyStart, readonlyEnd), "readonly"
            ); // recoverable
          }
        } else {
          tn.reset(state);
        }
      } else if (tn.skip(Token.Constructor)) {
        flags |= CommonFlags.Constructor;
        isConstructor = true;
        if (!startPos) startPos = tn.tokenPos;
        if (flags & CommonFlags.Static) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            tn.range(staticStart, staticEnd), "static"
          ); // recoverable
        }
        if (flags & CommonFlags.Abstract) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            tn.range(abstractStart, abstractEnd), "abstract"
          ); // recoverable
        }
        if (flags & CommonFlags.Readonly) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            tn.range(readonlyStart, readonlyEnd), "readonly"
          ); // recoverable
        }
      }
    }

    let isGetterOrSetter = isGetter || isSetter;
    let name: IdentifierExpression;
    if (isConstructor) {
      name = Node.createConstructorExpression(tn.range());
    } else {
      if (!isGetterOrSetter && tn.skip(Token.OpenBracket)) {
        if (!startPos) startPos = tn.tokenPos;
        // TODO: also handle symbols, which might have some of these modifiers
        if (flags & CommonFlags.Public) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            tn.range(accessStart, accessEnd), "public"
          ); // recoverable
        } else if (flags & CommonFlags.Protected) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            tn.range(accessStart, accessEnd), "protected"
          ); // recoverable
        } else if (flags & CommonFlags.Private) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            tn.range(accessStart, accessEnd), "private"
          ); // recoverable
        }
        if (flags & CommonFlags.Static) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            tn.range(staticStart, staticEnd), "static"
          ); // recoverable
        }
        if (flags & CommonFlags.Override) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            tn.range(overrideStart, overrideEnd), "override"
          );
        }
        if (flags & CommonFlags.Abstract) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            tn.range(abstractStart, abstractEnd), "abstract"
          ); // recoverable
        }
        let retIndex = this.parseIndexSignature(tn, flags, decorators);
        if (!retIndex) {
          if (flags & CommonFlags.Readonly) {
            this.error(
              DiagnosticCode._0_modifier_cannot_be_used_here,
              tn.range(readonlyStart, readonlyEnd), "readonly"
            ); // recoverable
          }
          return null;
        }
        tn.skip(Token.Semicolon);
        return retIndex;
      }
      if (!tn.skipIdentifier(IdentifierHandling.Always)) {
        this.error(
          DiagnosticCode.Identifier_expected,
          tn.range()
        );
        return null;
      }
      if (!startPos) startPos = tn.tokenPos;
      name = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    }
    let typeParameters: TypeParameterNode[] | null = null;
    if (tn.skip(Token.LessThan)) {
      let typeParametersStart = tn.tokenPos;
      typeParameters = this.parseTypeParameters(tn);
      if (!typeParameters) return null;
      if (isConstructor) {
        this.error(
          DiagnosticCode.Type_parameters_cannot_appear_on_a_constructor_declaration,
          tn.range(typeParametersStart, tn.pos)
        ); // recoverable
      } else if (isGetterOrSetter) {
        this.error(
          DiagnosticCode.An_accessor_cannot_have_type_parameters,
          tn.range(typeParametersStart, tn.pos)
        ); // recoverable
      } else {
        flags |= CommonFlags.Generic;
      }
    }

    // method: '(' Parameters (':' Type)? '{' Statement* '}' ';'?
    if (tn.skip(Token.OpenParen)) {
      if (flags & CommonFlags.Declare) {
        this.error(
          DiagnosticCode._0_modifier_cannot_appear_on_class_elements_of_this_kind,
          tn.range(declareStart, declareEnd), "declare"
        ); // recoverable
      }

      let signatureStart = tn.tokenPos;
      let parameters = this.parseParameters(tn, isConstructor);
      if (!parameters) return null;
      let thisType = this.parseParametersThis;
      if (isConstructor) {
        for (let i = 0, k = parameters.length; i < k; ++i) {
          let parameter = parameters[i];
          if (parameter.isAny(
            CommonFlags.Public |
            CommonFlags.Protected |
            CommonFlags.Private |
            CommonFlags.Readonly
          )) {
            let implicitFieldDeclaration = Node.createFieldDeclaration(
              parameter.name,
              null,
              parameter.flags | CommonFlags.Instance,
              parameter.type,
              null, // initialized via parameter
              parameter.range
            );
            implicitFieldDeclaration.parameterIndex = i;
            parameter.implicitFieldDeclaration = implicitFieldDeclaration;
            parent.members.push(implicitFieldDeclaration);
          }
        }
      } else if (isGetter) {
        if (parameters.length) {
          this.error(
            DiagnosticCode.A_get_accessor_cannot_have_parameters,
            name.range
          );
        }
      } else if (isSetter) {
        if (parameters.length != 1) {
          this.error(
            DiagnosticCode.A_set_accessor_must_have_exactly_one_parameter,
            name.range
          );
        }
        if (parameters.length > 0 && parameters[0].initializer) {
          this.error(
            DiagnosticCode.A_set_accessor_parameter_cannot_have_an_initializer,
            name.range
          );
        }
      } else if (name.text == "constructor") {
        this.error(
          DiagnosticCode._0_keyword_cannot_be_used_here,
          name.range, "constructor"
        );
      }

      let returnType: TypeNode | null = null;
      if (tn.skip(Token.Colon)) {
        if (name.kind == NodeKind.Constructor) {
          this.error(
            DiagnosticCode.Type_annotation_cannot_appear_on_a_constructor_declaration,
            tn.range()
          );
        } else if (isSetter) {
          this.error(
            DiagnosticCode.A_set_accessor_cannot_have_a_return_type_annotation,
            tn.range()
          );
        }
        returnType = this.parseType(tn, isSetter || name.kind == NodeKind.Constructor);
        if (!returnType) return null;
      } else {
        returnType = Node.createOmittedType(tn.range(tn.pos));
        if (!isSetter && name.kind != NodeKind.Constructor) {
          this.error(
            DiagnosticCode.Type_expected,
            returnType.range
          ); // recoverable
        }
      }

      let signature = Node.createFunctionType(
        parameters,
        returnType,
        thisType,
        false,
        tn.range(signatureStart, tn.pos)
      );

      let body: Statement | null = null;
      if (tn.skip(Token.OpenBrace)) {
        if (flags & CommonFlags.Ambient) {
          this.error(
            DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts,
            tn.range()
          ); // recoverable
        } else if (flags & CommonFlags.Abstract) {
          this.error(
            DiagnosticCode.Method_0_cannot_have_an_implementation_because_it_is_marked_abstract,
            tn.range(), name.text
          ); // recoverable
        } else if (isInterface) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ";"
          ); // recoverable
        }
        body = this.parseBlockStatement(tn, false);
        if (!body) return null;
      } else if (!isInterface && !(flags & (CommonFlags.Ambient | CommonFlags.Abstract))) {
        this.error(
          DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration,
          tn.range()
        ); // recoverable
      }

      let retMethod = Node.createMethodDeclaration(
        name,
        decorators,
        flags,
        typeParameters,
        signature,
        body,
        tn.range(startPos, tn.pos)
      );
      if (!(isInterface && tn.skip(Token.Comma))) {
        tn.skip(Token.Semicolon);
      }
      return retMethod;

    } else if (isConstructor) {
      this.error(
        DiagnosticCode.Constructor_implementation_is_missing,
        name.range
      );

    } else if (isGetterOrSetter) {
      this.error(
        DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration,
        name.range
      );

    // field: (':' Type)? ('=' Expression)? ';'?
    } else {
      if (flags & CommonFlags.Declare) {
        this.error(
          DiagnosticCode.Not_implemented_0,
          tn.range(declareStart, declareEnd), "Ambient fields"
        ); // recoverable
      }

      if (flags & CommonFlags.Abstract) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(abstractStart, abstractEnd), "abstract"
        ); // recoverable
      }

      if (flags & CommonFlags.Get) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(getStart, getEnd), "get"
        ); // recoverable
      }

      if (flags & CommonFlags.Set) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(setStart, setEnd), "set"
        ); // recoverable
      }

      let type: TypeNode | null = null;
      if (tn.skip(Token.Question)) {
        this.error(
          DiagnosticCode.Optional_properties_are_not_supported,
          tn.range(startPos, tn.pos)
        );
      }
      if (tn.skip(Token.Exclamation)) {
        flags |= CommonFlags.DefinitelyAssigned;
      }
      if (tn.skip(Token.Colon)) {
        type = this.parseType(tn);
        if (!type) return null;
      } else {
        this.error(
          DiagnosticCode.Type_expected,
          tn.range()
        ); // recoverable
      }
      let initializer: Expression | null = null;
      if (tn.skip(Token.Equals)) {
        if (flags & CommonFlags.Ambient) {
          this.error(
            DiagnosticCode.Initializers_are_not_allowed_in_ambient_contexts,
            tn.range()
          ); // recoverable
        }
        initializer = this.parseExpression(tn);
        if (!initializer) return null;
        if (flags & CommonFlags.DefinitelyAssigned) {
          this.error(
            DiagnosticCode.Declarations_with_initializers_cannot_also_have_definite_assignment_assertions,
            name.range
          );
        }
      }
      let range = tn.range(startPos, tn.pos);
      if ((flags & CommonFlags.DefinitelyAssigned) != 0 && (isInterface || (flags & CommonFlags.Ambient) != 0)) {
        this.error(
          DiagnosticCode.A_definite_assignment_assertion_is_not_permitted_in_this_context,
          range
        );
      }
      let retField = Node.createFieldDeclaration(
        name,
        decorators,
        flags,
        type,
        initializer,
        range
      );
      if (!(isInterface && tn.skip(Token.Comma))) {
        tn.skip(Token.Semicolon);
      }
      return retField;
    }
    return null;
  }

  parseIndexSignature(
    tn: Tokenizer,
    flags: CommonFlags,
    decorators: DecoratorNode[] | null,
  ): IndexSignatureNode | null {

    // at: '[': 'key' ':' Type ']' ':' Type

    if (decorators && decorators.length > 0) {
      this.error(
        DiagnosticCode.Decorators_are_not_valid_here,
        Range.join(decorators[0].range, decorators[decorators.length - 1].range)
      ); // recoverable
    }

    let start = tn.tokenPos;
    if (tn.skipIdentifier()) {
      let id = tn.readIdentifier();
      if (id == "key") {
        if (tn.skip(Token.Colon)) {
          let keyType = this.parseType(tn);
          if (!keyType) return null;
          if (keyType.kind != NodeKind.NamedType) {
            this.error(
              DiagnosticCode.Type_expected,
              tn.range()
            );
            return null;
          }
          if (tn.skip(Token.CloseBracket)) {
            if (tn.skip(Token.Colon)) {
              let valueType = this.parseType(tn);
              if (!valueType) return null;
              if (valueType.kind != NodeKind.NamedType) {
                this.error(
                  DiagnosticCode.Identifier_expected,
                  valueType.range
                );
                return null;
              }
              return Node.createIndexSignature(<NamedTypeNode>keyType, valueType, flags, tn.range(start, tn.pos));
            } else {
              this.error(
                DiagnosticCode._0_expected,
                tn.range(), ":"
              );
            }
          } else {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), "]"
            );
          }
        } else {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ":"
          );
        }
      } else {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), "key"
        );
      }
    } else {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
    }
    return null;
  }

  parseNamespace(
    tn: Tokenizer,
    flags: CommonFlags,
    decorators: DecoratorNode[] | null,
    startPos: i32
  ): NamespaceDeclaration | null {

    // at 'namespace': Identifier '{' (Variable | Function)* '}'

    if (tn.skipIdentifier()) {
      let identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      if (tn.skip(Token.OpenBrace)) {
        let members = new Array<Statement>();
        let declaration = Node.createNamespaceDeclaration(
          identifier,
          decorators,
          flags,
          members,
          tn.range(startPos, tn.pos)
        );
        while (!tn.skip(Token.CloseBrace)) {
          let member = this.parseTopLevelStatement(tn, declaration);
          if (member) {
            if (member.kind == NodeKind.Export) {
              this.error(
                DiagnosticCode.A_default_export_can_only_be_used_in_a_module,
                member.range,
              );
              return null;
            }
            members.push(member);
          } else {
            this.skipStatement(tn);
            if (tn.skip(Token.EndOfFile)) {
              this.error(
                DiagnosticCode._0_expected,
                tn.range(), "}"
              );
              return null;
            }
          }
        }
        declaration.range.end = tn.pos;
        declaration.overriddenModuleName = this.currentModuleName;
        tn.skip(Token.Semicolon);
        return declaration;
      } else {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), "{"
        );
      }
    } else {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
    }
    return null;
  }

  parseExport(
    tn: Tokenizer,
    startPos: i32,
    isDeclare: bool
  ): ExportStatement | null {

    // at 'export': '{' ExportMember (',' ExportMember)* }' ('from' StringLiteral)? ';'?

    let path: StringLiteralExpression | null = null;
    let currentSource = assert(this.currentSource);
    if (tn.skip(Token.OpenBrace)) {
      let members = new Array<ExportMember>();
      while (!tn.skip(Token.CloseBrace)) {
        let member = this.parseExportMember(tn);
        if (!member) return null;
        members.push(member);
        if (!tn.skip(Token.Comma)) {
          if (tn.skip(Token.CloseBrace)) {
            break;
          } else {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), "}"
            );
            return null;
          }
        }
      }
      if (tn.skip(Token.From)) {
        if (tn.skip(Token.StringLiteral)) {
          path = Node.createStringLiteralExpression(tn.readString(), tn.range());
        } else {
          this.error(
            DiagnosticCode.String_literal_expected,
            tn.range()
          );
          return null;
        }
      }
      let ret = Node.createExportStatement(members, path, isDeclare, tn.range(startPos, tn.pos));
      if (path) {
        let internalPath = assert(ret.internalPath);
        if (!this.seenlog.has(internalPath)) {
          this.dependees.set(internalPath, new Dependee(currentSource, path));
          this.backlog.push(internalPath);
          this.seenlog.add(internalPath);
        }
      }
      tn.skip(Token.Semicolon);
      return ret;
    } else if (tn.skip(Token.Asterisk)) {
      if (tn.skip(Token.From)) {
        if (tn.skip(Token.StringLiteral)) {
          path = Node.createStringLiteralExpression(tn.readString(), tn.range());
          let ret = Node.createExportStatement(null, path, isDeclare, tn.range(startPos, tn.pos));
          let internalPath = assert(ret.internalPath);
          let source = tn.source;
          let exportPaths = source.exportPaths;
          if (!exportPaths) source.exportPaths = [ internalPath ];
          else if (!exportPaths.includes(internalPath)) exportPaths.push(internalPath);
          if (!this.seenlog.has(internalPath)) {
            this.dependees.set(internalPath, new Dependee(currentSource, path));
            this.backlog.push(internalPath);
          }
          tn.skip(Token.Semicolon);
          return ret;
        } else {
          this.error(
            DiagnosticCode.String_literal_expected,
            tn.range()
          );
        }
      } else {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), "from"
        );
      }
    } else {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), "{"
      );
    }
    return null;
  }

  parseExportMember(
    tn: Tokenizer
  ): ExportMember | null {

    // before: Identifier ('as' Identifier)?

    if (tn.skipIdentifier(IdentifierHandling.Always)) {
      let identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      let asIdentifier: IdentifierExpression | null = null;
      if (tn.skip(Token.As)) {
        if (tn.skipIdentifier(IdentifierHandling.Always)) {
          asIdentifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
        } else {
          this.error(
            DiagnosticCode.Identifier_expected,
            tn.range()
          );
          return null;
        }
      }
      if (asIdentifier) {
        return Node.createExportMember(
          identifier,
          asIdentifier,
          Range.join(identifier.range, asIdentifier.range)
        );
      }
      return Node.createExportMember(
        identifier,
        null,
        identifier.range
      );
    } else {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
    }
    return null;
  }

  parseExportDefaultAlias(
    tn: Tokenizer,
    startPos: i32,
    defaultStart: i32,
    defaultEnd: i32
  ): ExportStatement {

    // at 'export' 'default': [Known-To-Be-]Identifier

    let name = tn.readIdentifier();
    let range = tn.range();
    let ret = Node.createExportStatement([
      Node.createExportMember(
        Node.createIdentifierExpression(name, range),
        Node.createIdentifierExpression("default", tn.range(defaultStart, defaultEnd)),
        range
      )
    ], null, false, tn.range(startPos, tn.pos));
    tn.skip(Token.Semicolon);
    return ret;
  }

  parseImport(
    tn: Tokenizer
  ): ImportStatement | null {

    // at 'import':
    //  ('{' (ImportMember (',' ImportMember)* '}') | ('*' 'as' Identifier)?
    //  'from' StringLiteral ';'?

    let startPos = tn.tokenPos;
    let members: ImportDeclaration[] | null = null;
    let namespaceName: IdentifierExpression | null = null;
    let skipFrom = false;
    if (tn.skip(Token.OpenBrace)) { // import { ... } from "file"
      members = new Array();
      while (!tn.skip(Token.CloseBrace)) {
        let member = this.parseImportDeclaration(tn);
        if (!member) return null;
        members.push(member);
        if (!tn.skip(Token.Comma)) {
          if (tn.skip(Token.CloseBrace)) {
            break;
          } else {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), "}"
            );
            return null;
          }
        }
      }
    } else if (tn.skip(Token.Asterisk)) { // import * from "file"
      if (tn.skip(Token.As)) {
        if (tn.skipIdentifier()) {
          namespaceName = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
        } else {
          this.error(
            DiagnosticCode.Identifier_expected,
            tn.range()
          );
          return null;
        }
      } else {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), "as"
        );
        return null;
      }
    } else if (tn.skip(Token.Identifier, IdentifierHandling.Prefer)) { // import Name from "file"
      let name = tn.readIdentifier();
      let range = tn.range();
      members = [
        Node.createImportDeclaration(
          Node.createIdentifierExpression("default", range),
          Node.createIdentifierExpression(name, range),
          range
        )
      ];
      if (tn.skip(Token.Comma)) {
        // TODO: default + star, default + members
        this.error(
          DiagnosticCode.Not_implemented_0,
          tn.range(),
          "Mixed default and named imports"
        );
        return null;
      }
    } else { // import "file"
      skipFrom = true;
    }

    if (skipFrom || tn.skip(Token.From)) {
      if (tn.skip(Token.StringLiteral)) {
        let path = Node.createStringLiteralExpression(tn.readString(), tn.range());
        let ret: ImportStatement;
        if (namespaceName) {
          assert(!members);
          ret = Node.createWildcardImportStatement(namespaceName, path, tn.range(startPos, tn.pos));
        } else {
          ret = Node.createImportStatement(members, path, tn.range(startPos, tn.pos));
        }
        let internalPath = ret.internalPath;
        if (!this.seenlog.has(internalPath)) {
          this.dependees.set(internalPath, new Dependee(assert(this.currentSource), path));
          this.backlog.push(internalPath);
        }
        tn.skip(Token.Semicolon);
        return ret;
      } else {
        this.error(
          DiagnosticCode.String_literal_expected,
          tn.range()
        );
      }
    } else {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), "from"
      );
    }
    return null;
  }

  parseImportDeclaration(
    tn: Tokenizer
  ): ImportDeclaration | null {

    // before: Identifier ('as' Identifier)?

    if (tn.skipIdentifier(IdentifierHandling.Always)) {
      let identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      let asIdentifier: IdentifierExpression | null = null;
      if (tn.skip(Token.As)) {
        if (tn.skipIdentifier()) {
          asIdentifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
        } else {
          this.error(
            DiagnosticCode.Identifier_expected,
            tn.range()
          );
          return null;
        }
      }
      if (asIdentifier) {
        return Node.createImportDeclaration(
          identifier,
          asIdentifier,
          Range.join(identifier.range, asIdentifier.range)
        );
      }
      return Node.createImportDeclaration(
        identifier,
        null,
        identifier.range
      );
    } else {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
    }
    return null;
  }

  parseExportImport(
    tn: Tokenizer,
    startPos: i32
  ): ExportImportStatement | null {

    // at 'export' 'import': Identifier ('=' Identifier)? ';'?

    if (tn.skipIdentifier()) {
      let asIdentifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      if (tn.skip(Token.Equals)) {
        if (tn.skipIdentifier()) {
          let identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
          let ret = Node.createExportImportStatement(identifier, asIdentifier, tn.range(startPos, tn.pos));
          tn.skip(Token.Semicolon);
          return ret;
        } else {
          this.error(
            DiagnosticCode.Identifier_expected,
            tn.range()
          );
        }
      } else {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), "="
        );
      }
    } else {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
    }
    return null;
  }

  parseStatement(
    tn: Tokenizer,
    topLevel: bool = false
  ): Statement | null {

    // at previous token

    let state = tn.mark();
    let token = tn.next();
    let statement: Statement | null = null;
    switch (token) {
      case Token.Break: {
        statement = this.parseBreak(tn);
        break;
      }
      case Token.Const: {
        statement = this.parseVariable(tn, CommonFlags.Const, null, tn.tokenPos);
        break;
      }
      case Token.Continue: {
        statement = this.parseContinue(tn);
        break;
      }
      case Token.Do: {
        statement = this.parseDoStatement(tn);
        break;
      }
      case Token.For: {
        statement = this.parseForStatement(tn);
        break;
      }
      case Token.If: {
        statement = this.parseIfStatement(tn);
        break;
      }
      case Token.Let: {
        statement = this.parseVariable(tn, CommonFlags.Let, null, tn.tokenPos);
        break;
      }
      case Token.Var: {
        statement = this.parseVariable(tn, CommonFlags.None, null, tn.tokenPos);
        break;
      }
      case Token.OpenBrace: {
        statement = this.parseBlockStatement(tn, topLevel);
        break;
      }
      case Token.Return: {
        if (topLevel) {
          this.error(
            DiagnosticCode.A_return_statement_can_only_be_used_within_a_function_body,
            tn.range()
          ); // recoverable
        }
        statement = this.parseReturn(tn);
        break;
      }
      case Token.Semicolon: {
        return Node.createEmptyStatement(tn.range(tn.tokenPos));
      }
      case Token.Switch: {
        statement = this.parseSwitchStatement(tn);
        break;
      }
      case Token.Throw: {
        statement = this.parseThrowStatement(tn);
        break;
      }
      case Token.Try: {
        statement = this.parseTryStatement(tn);
        break;
      }
      case Token.Void: {
        statement = this.parseVoidStatement(tn);
        break;
      }
      case Token.While: {
        statement = this.parseWhileStatement(tn);
        break;
      }
      case Token.Type: { // also identifier
        if (tn.peek(false, IdentifierHandling.Prefer) == Token.Identifier) {
          statement = this.parseTypeDeclaration(tn, CommonFlags.None, null, tn.tokenPos);
          break;
        }
        // fall-through
      }
      default: {
        tn.reset(state);
        statement = this.parseExpressionStatement(tn);
        break;
      }
    }
    if (!statement) { // has been reported
      tn.reset(state);
      this.skipStatement(tn);
    } else {
      tn.discard(state);
    }
    return statement;
  }

  parseBlockStatement(
    tn: Tokenizer,
    topLevel: bool
  ): BlockStatement | null {

    // at '{': Statement* '}' ';'?

    let startPos = tn.tokenPos;
    let statements = new Array<Statement>();
    while (!tn.skip(Token.CloseBrace)) {
      let state = tn.mark();
      let statement = this.parseStatement(tn, topLevel);
      if (!statement) {
        if (tn.token == Token.EndOfFile) return null;
        tn.reset(state);
        this.skipStatement(tn);
      } else {
        tn.discard(state);
        statements.push(statement);
      }
    }
    let ret = Node.createBlockStatement(statements, tn.range(startPos, tn.pos));
    tn.skip(Token.Semicolon);
    return ret;
  }

  parseBreak(
    tn: Tokenizer
  ): BreakStatement | null {

    // at 'break': Identifier? ';'?

    let identifier: IdentifierExpression | null = null;
    if (tn.peek(true) == Token.Identifier && !tn.nextTokenOnNewLine) {
      tn.next(IdentifierHandling.Prefer);
      identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    }
    let ret = Node.createBreakStatement(identifier, tn.range());
    tn.skip(Token.Semicolon);
    return ret;
  }

  parseContinue(
    tn: Tokenizer
  ): ContinueStatement | null {

    // at 'continue': Identifier? ';'?

    let identifier: IdentifierExpression | null = null;
    if (tn.peek(true) == Token.Identifier && !tn.nextTokenOnNewLine) {
      tn.next(IdentifierHandling.Prefer);
      identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    }
    let ret = Node.createContinueStatement(identifier, tn.range());
    tn.skip(Token.Semicolon);
    return ret;
  }

  parseDoStatement(
    tn: Tokenizer
  ): DoStatement | null {

    // at 'do': Statement 'while' '(' Expression ')' ';'?

    let startPos = tn.tokenPos;
    let statement = this.parseStatement(tn);
    if (!statement) return null;

    if (tn.skip(Token.While)) {

      if (tn.skip(Token.OpenParen)) {
        let condition = this.parseExpression(tn);
        if (!condition) return null;

        if (tn.skip(Token.CloseParen)) {
          let ret = Node.createDoStatement(statement, condition, tn.range(startPos, tn.pos));
          tn.skip(Token.Semicolon);
          return ret;
        } else {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ")"
          );
        }
      } else {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), "("
        );
      }
    } else {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), "while"
      );
    }
    return null;
  }

  parseExpressionStatement(
    tn: Tokenizer
  ): ExpressionStatement | null {

    // at previous token

    let expr = this.parseExpression(tn);
    if (!expr) return null;

    let ret = Node.createExpressionStatement(expr);
    tn.skip(Token.Semicolon);
    return ret;
  }

  parseForStatement(
    tn: Tokenizer
  ): Statement | null {

    // at 'for': '(' Statement? Expression? ';' Expression? ')' Statement

    let startPos = tn.tokenPos;

    if (tn.skip(Token.OpenParen)) {
      let initializer: Statement | null = null;

      if (tn.skip(Token.Const)) {
        initializer = this.parseVariable(tn, CommonFlags.Const, null, tn.tokenPos, true);
      } else if (tn.skip(Token.Let)) {
        initializer = this.parseVariable(tn, CommonFlags.Let, null, tn.tokenPos, true);
      } else if (tn.skip(Token.Var)) {
        initializer = this.parseVariable(tn, CommonFlags.None, null, tn.tokenPos, true);

      } else if (!tn.skip(Token.Semicolon)) {
        initializer = this.parseExpressionStatement(tn);
        if (!initializer) return null;
      }

      if (initializer) {
        if (tn.skip(Token.Of)) {
          // TODO: for (let [key, val] of ...)
          if (initializer.kind == NodeKind.Expression) {
            if ((<ExpressionStatement>initializer).expression.kind != NodeKind.Identifier) {
              this.error(
                DiagnosticCode.Identifier_expected,
                initializer.range
              );
              return null;
            }
            return this.parseForOfStatement(tn, startPos, initializer);
          }
          if (initializer.kind == NodeKind.Variable) {
            let declarations = (<VariableStatement>initializer).declarations;
            for (let i = 0, k = declarations.length; i < k; ++i) {
              let declaration = declarations[i];
              let initializer = declaration.initializer;
              if (initializer) {
                this.error(
                  DiagnosticCode.The_variable_declaration_of_a_for_of_statement_cannot_have_an_initializer,
                  initializer.range
                ); // recoverable
              }
            }
            return this.parseForOfStatement(tn, startPos, initializer);
          }
          this.error(
            DiagnosticCode.Identifier_expected,
            initializer.range
          );
          return null;
        }
        // non-for..of needs type or initializer
        if (initializer.kind == NodeKind.Variable) {
          let declarations = (<VariableStatement>initializer).declarations;
          for (let i = 0, k = declarations.length; i < k; ++i) {
            let declaration = declarations[i];
            if (!declaration.initializer) {
              if (declaration.flags & CommonFlags.Const) {
                this.error(
                  DiagnosticCode._const_declarations_must_be_initialized,
                  declaration.name.range
                );
              } else if (!declaration.type) {
                this.error(
                  DiagnosticCode.Type_expected,
                  declaration.name.range.atEnd
                );
              }
            }
          }
        }
      }

      if (tn.token == Token.Semicolon) {
        let condition: ExpressionStatement | null = null;
        if (!tn.skip(Token.Semicolon)) {
          condition = this.parseExpressionStatement(tn);
          if (!condition) return null;
        }

        if (tn.token == Token.Semicolon) {
          let incrementor: Expression | null = null;
          if (!tn.skip(Token.CloseParen)) {
            incrementor = this.parseExpression(tn);
            if (!incrementor) return null;

            if (!tn.skip(Token.CloseParen)) {
              this.error(
                DiagnosticCode._0_expected,
                tn.range(), ")"
              );
              return null;
            }
          }

          let statement = this.parseStatement(tn);
          if (!statement) return null;

          return Node.createForStatement(
            initializer,
            condition
              ? condition.expression
              : null,
            incrementor,
            statement,
            tn.range(startPos, tn.pos)
          );

        } else {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ";"
          );
        }
      } else {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), ";"
        );
      }
    } else {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), "("
      );
    }
    return null;
  }

  parseForOfStatement(
    tn: Tokenizer,
    startPos: i32,
    variable: Statement,
  ): ForOfStatement | null {

    // at 'of': Expression ')' Statement

    let iterable = this.parseExpression(tn);
    if (!iterable) return null;

    if (!tn.skip(Token.CloseParen)) {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), ")"
      );
      return null;
    }

    let statement = this.parseStatement(tn);
    if (!statement) return null;

    return Node.createForOfStatement(
      variable,
      iterable,
      statement,
      tn.range(startPos, tn.pos)
    );
  }

  parseIfStatement(
    tn: Tokenizer
  ): IfStatement | null {

    // at 'if': '(' Expression ')' Statement ('else' Statement)?

    let startPos = tn.tokenPos;
    if (tn.skip(Token.OpenParen)) {
      let condition = this.parseExpression(tn);
      if (!condition) return null;
      if (tn.skip(Token.CloseParen)) {
        let statement = this.parseStatement(tn);
        if (!statement) return null;
        let elseStatement: Statement | null = null;
        if (tn.skip(Token.Else)) {
          elseStatement = this.parseStatement(tn);
          if (!elseStatement) return null;
        }
        return Node.createIfStatement(
          condition,
          statement,
          elseStatement,
          tn.range(startPos, tn.pos)
        );
      } else {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), ")"
        );
      }
    } else {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), "("
      );
    }
    return null;
  }

  parseSwitchStatement(
    tn: Tokenizer
  ): SwitchStatement | null {

    // at 'switch': '(' Expression ')' '{' SwitchCase* '}' ';'?

    let startPos = tn.tokenPos;
    if (tn.skip(Token.OpenParen)) {
      let condition = this.parseExpression(tn);
      if (!condition) return null;
      if (tn.skip(Token.CloseParen)) {
        if (tn.skip(Token.OpenBrace)) {
          let switchCases = new Array<SwitchCase>();
          while (!tn.skip(Token.CloseBrace)) {
            let switchCase = this.parseSwitchCase(tn);
            if (!switchCase) return null;
            switchCases.push(switchCase);
          }
          let ret = Node.createSwitchStatement(condition, switchCases, tn.range(startPos, tn.pos));
          tn.skip(Token.Semicolon);
          return ret;
        } else {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), "{"
          );
        }
      } else {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), ")"
        );
      }
    } else {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), "("
      );
    }
    return null;
  }

  parseSwitchCase(
    tn: Tokenizer
  ): SwitchCase | null {

    let startPos = tn.tokenPos;
    let statements: Statement[],
        statement: Statement | null;

    // 'case' Expression ':' Statement*

    if (tn.skip(Token.Case)) {
      let label = this.parseExpression(tn);
      if (!label) return null;
      if (tn.skip(Token.Colon)) {
        statements = new Array<Statement>();
        while (
          tn.peek() != Token.Case &&
          tn.nextToken != Token.Default &&
          tn.nextToken != Token.CloseBrace
        ) {
          statement = this.parseStatement(tn);
          if (!statement) return null;
          statements.push(statement);
        }
        return Node.createSwitchCase(label, statements, tn.range(startPos, tn.pos));
      } else {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), ":"
        );
      }

      // 'default' ':' Statement*

    } else if (tn.skip(Token.Default)) {
      if (tn.skip(Token.Colon)) {
        statements = new Array<Statement>();
        while (
          tn.peek() != Token.Case &&
          tn.nextToken != Token.Default &&
          tn.nextToken != Token.CloseBrace
        ) {
          statement = this.parseStatement(tn);
          if (!statement) return null;
          statements.push(statement);
        }
        return Node.createSwitchCase(null, statements, tn.range(startPos, tn.pos));
      } else {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), ":"
        );
      }
    } else {
      this.error(
        DiagnosticCode._case_or_default_expected,
        tn.range()
      );
    }
    return null;
  }

  parseThrowStatement(
    tn: Tokenizer
  ): ThrowStatement | null {

    // at 'throw': Expression ';'?

    let startPos = tn.tokenPos;
    let expression = this.parseExpression(tn);
    if (!expression) return null;
    let ret = Node.createThrowStatement(expression, tn.range(startPos, tn.pos));
    tn.skip(Token.Semicolon);
    return ret;
  }

  parseTryStatement(
    tn: Tokenizer
  ): TryStatement | null {

    // at 'try':
    //   '{' Statement* '}'
    //   ('catch' '(' VariableMember ')' '{' Statement* '}')?
    //   ('finally' '{' Statement* '}'? ';'?

    let startPos = tn.tokenPos;
    let stmt: Statement | null;
    if (tn.skip(Token.OpenBrace)) {
      let bodyStatements = new Array<Statement>();
      while (!tn.skip(Token.CloseBrace)) {
        stmt = this.parseStatement(tn);
        if (!stmt) return null;
        bodyStatements.push(stmt);
      }
      let catchVariable: IdentifierExpression | null = null;
      let catchStatements: Statement[] | null = null;
      let finallyStatements: Statement[] | null = null;
      if (tn.skip(Token.Catch)) {
        if (!tn.skip(Token.OpenParen)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), "("
          );
          return null;
        }
        if (!tn.skipIdentifier()) {
          this.error(
            DiagnosticCode.Identifier_expected,
            tn.range()
          );
          return null;
        }
        catchVariable = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
        if (!tn.skip(Token.CloseParen)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ")"
          );
          return null;
        }
        if (!tn.skip(Token.OpenBrace)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), "{"
          );
          return null;
        }
        catchStatements = [];
        while (!tn.skip(Token.CloseBrace)) {
          stmt = this.parseStatement(tn);
          if (!stmt) return null;
          catchStatements.push(stmt);
        }
      }
      if (tn.skip(Token.Finally)) {
        if (!tn.skip(Token.OpenBrace)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), "{"
          );
          return null;
        }
        finallyStatements = [];
        while (!tn.skip(Token.CloseBrace)) {
          stmt = this.parseStatement(tn);
          if (!stmt) return null;
          finallyStatements.push(stmt);
        }
      }
      if (!(catchStatements || finallyStatements)) {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), "catch"
        );
        return null;
      }
      let ret = Node.createTryStatement(
        bodyStatements,
        catchVariable,
        catchStatements,
        finallyStatements,
        tn.range(startPos, tn.pos)
      );
      tn.skip(Token.Semicolon);
      return ret;
    } else {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), "{"
      );
    }
    return null;
  }

  private getRecursiveDepthForTypeDeclaration(
    identifierName: string,
    type: TypeNode,
    depth: i32 = 0
  ): i32 {
    switch (type.kind) {
      case NodeKind.NamedType: {
        let typeArguments = (<NamedTypeNode>type).typeArguments;
        if (typeArguments) {
          for (let i = 0, k = typeArguments.length; i < k; i++) {
            let res = this.getRecursiveDepthForTypeDeclaration(identifierName, typeArguments[i], depth + 1);
            if (res != -1) return res;
          }
        }
        if ((<NamedTypeNode>type).name.identifier.text == identifierName) {
          return depth;
        }
        break;
      }
      case NodeKind.FunctionType: {
        let fnType = <FunctionTypeNode>type;
        let res = this.getRecursiveDepthForTypeDeclaration(identifierName, fnType.returnType, depth + 1);
        if (res != -1) return res;
        let params = fnType.parameters;
        for (let i = 0, k = params.length; i < k; i++) {
          res = this.getRecursiveDepthForTypeDeclaration(identifierName, params[i].type, depth + 1);
          if (res != -1) return res;
        }
        break;
      }
    }
    return -1;
  }

  parseTypeDeclaration(
    tn: Tokenizer,
    flags: CommonFlags,
    decorators: DecoratorNode[] | null,
    startPos: i32
  ): TypeDeclaration | null {

    // at 'type': Identifier ('<' TypeParameters '>')? '=' '|'? Type ';'?

    if (tn.skipIdentifier()) {
      let name = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      let typeParameters: TypeParameterNode[] | null = null;
      if (tn.skip(Token.LessThan)) {
        typeParameters = this.parseTypeParameters(tn);
        if (!typeParameters) return null;
        flags |= CommonFlags.Generic;
      }
      if (tn.skip(Token.Equals)) {
        tn.skip(Token.Bar);
        let type = this.parseType(tn);
        if (!type) return null;
        let depth = this.getRecursiveDepthForTypeDeclaration(name.text, type);
        if (depth >= 0) {
          if (depth == 0) {
            this.error(
              DiagnosticCode.Type_alias_0_circularly_references_itself,
              tn.range(), name.text
            );
          } else {
            this.error(
              DiagnosticCode.Not_implemented_0,
              tn.range(), "Recursion in type aliases"
            );
          }
          return null;
        }
        let ret = Node.createTypeDeclaration(
          name,
          decorators,
          flags,
          typeParameters,
          type,
          tn.range(startPos, tn.pos)
        );
        tn.skip(Token.Semicolon);
        ret.overriddenModuleName = this.currentModuleName;
        return ret;
      } else {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), "="
        );
      }
    } else {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
    }
    return null;
  }

  parseModuleDeclaration(
    tn: Tokenizer,
    flags: CommonFlags
  ): ModuleDeclaration | null {

    // at 'module': StringLiteral ';'?

    let startPos = tn.tokenPos;
    assert(tn.next() == Token.StringLiteral); // checked earlier
    let moduleName = tn.readString();
    let ret = Node.createModuleDeclaration(moduleName, flags, tn.range(startPos, tn.pos));
    this.currentModuleName = moduleName;
    tn.skip(Token.Semicolon);
    return ret;
  }

  parseVoidStatement(
    tn: Tokenizer
  ): VoidStatement | null {

    // at 'void': Expression ';'?

    let startPos = tn.tokenPos;
    let expression = this.parseExpression(tn, Precedence.Grouping);
    if (!expression) return null;
    let ret = Node.createVoidStatement(expression, tn.range(startPos, tn.pos));
    tn.skip(Token.Semicolon);
    return ret;
  }

  parseWhileStatement(
    tn: Tokenizer
  ): WhileStatement | null {

    // at 'while': '(' Expression ')' Statement ';'?

    let startPos = tn.tokenPos;
    if (tn.skip(Token.OpenParen)) {
      let expression = this.parseExpression(tn);
      if (!expression) return null;
      if (tn.skip(Token.CloseParen)) {
        let statement = this.parseStatement(tn);
        if (!statement) return null;
        let ret = Node.createWhileStatement(expression, statement, tn.range(startPos, tn.pos));
        tn.skip(Token.Semicolon);
        return ret;
      } else {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), ")"
        );
      }
    } else {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), "("
      );
    }
    return null;
  }

  // expressions

  parseExpressionStart(
    tn: Tokenizer
  ): Expression | null {
    let token = tn.next(IdentifierHandling.Prefer);
    let startPos = tn.tokenPos;
    switch (token) {

      // TODO: SpreadExpression, YieldExpression
      case Token.Dot_Dot_Dot:
      case Token.Yield: // fallthrough to unsupported UnaryPrefixExpression

      // UnaryPrefixExpression
      case Token.Exclamation:
      case Token.Tilde:
      case Token.Plus:
      case Token.Minus:
      case Token.TypeOf:
      case Token.Void:
      case Token.Delete: {
        let operand = this.parseExpression(tn, Precedence.UnaryPrefix);
        if (!operand) return null;
        return Node.createUnaryPrefixExpression(token, operand, tn.range(startPos, tn.pos));
      }
      case Token.Plus_Plus:
      case Token.Minus_Minus: {
        let operand = this.parseExpression(tn, Precedence.UnaryPrefix);
        if (!operand) return null;
        switch (operand.kind) {
          case NodeKind.Identifier:
          case NodeKind.ElementAccess:
          case NodeKind.PropertyAccess: break;
          default: {
            this.error(
              DiagnosticCode.The_operand_of_an_increment_or_decrement_operator_must_be_a_variable_or_a_property_access,
              operand.range
            );
          }
        }
        return Node.createUnaryPrefixExpression(token, operand, tn.range(startPos, tn.pos));
      }

      // NewExpression
      case Token.New: {
        if (!tn.skipIdentifier()) {
          this.error(
            DiagnosticCode.Identifier_expected,
            tn.range()
          );
          return null;
        }
        let typeName = this.parseTypeName(tn);
        if (!typeName) return null;
        let typeArguments: TypeNode[] | null = null;
        let arguments_: Expression[] | null = null;
        if (
          tn.skip(Token.OpenParen) ||
          (typeArguments = this.tryParseTypeArgumentsBeforeArguments(tn))
        ) {
          arguments_ = this.parseArguments(tn);
          if (!arguments_) return null;
        } else {
          arguments_ = []; // new Type;
        }
        return Node.createNewExpression(
          typeName,
          typeArguments,
          arguments_,
          tn.range(startPos, tn.pos)
        );
      }

      // Special IdentifierExpression
      case Token.Null: return Node.createNullExpression(tn.range());
      case Token.True: return Node.createTrueExpression(tn.range());
      case Token.False: return Node.createFalseExpression(tn.range());
      case Token.This: return Node.createThisExpression(tn.range());
      case Token.Constructor: return Node.createConstructorExpression(tn.range());

      // ParenthesizedExpression or FunctionExpression
      case Token.OpenParen: {

        // determine whether this is a function expression
        if (tn.skip(Token.CloseParen)) { // must be a function expression (fast route)
          return this.parseFunctionExpressionCommon(
            tn,
            Node.createEmptyIdentifierExpression(tn.range(startPos)),
            [],
            null,
            ArrowKind.Parenthesized
          );
        }
        let state = tn.mark();
        let again = true;
        do {
          switch (tn.next(IdentifierHandling.Prefer)) {

            // function expression
            case Token.Dot_Dot_Dot: {
              tn.reset(state);
              return this.parseFunctionExpression(tn);
            }
            // can be both
            case Token.Identifier: {
              tn.readIdentifier();
              switch (tn.next()) {

                // if we got here, check for arrow
                case Token.CloseParen: {
                  if (
                    !tn.skip(Token.Colon) &&
                    !tn.skip(Token.Equals_GreaterThan)
                  ) {
                    again = false;
                    break;
                  }
                  // fall-through
                }
                // function expression
                case Token.Colon: {    // type annotation
                  tn.reset(state);
                  return this.parseFunctionExpression(tn);
                }
                // optional parameter or parenthesized
                case Token.Question: {
                  if (
                    tn.skip(Token.Colon) ||   // optional parameter with type
                    tn.skip(Token.Comma) ||   // optional parameter without type
                    tn.skip(Token.CloseParen) // last optional parameter without type
                  ) {
                    tn.reset(state);
                    return this.parseFunctionExpression(tn);
                  }
                  again = false; // parenthesized
                  break;
                }
                case Token.Comma: {
                  break; // continue
                }
                // parenthesized expression
                // case Token.EQUALS:  // missing type annotation for simplicity
                default: {
                  again = false;
                  break;
                }
              }
              break;
            }
            // parenthesized expression
            default: {
              again = false;
              break;
            }
          }
        } while (again);
        tn.reset(state);

        // parse parenthesized
        let inner = this.parseExpression(tn);
        if (!inner) return null;
        if (!tn.skip(Token.CloseParen)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ")"
          );
          return null;
        }
        inner = Node.createParenthesizedExpression(inner, tn.range(startPos, tn.pos));
        return this.maybeParseCallExpression(tn, inner);
      }
      // ArrayLiteralExpression
      case Token.OpenBracket: {
        let elementExpressions = new Array<Expression>();
        while (!tn.skip(Token.CloseBracket)) {
          let expr: Expression | null;
          if (tn.peek() == Token.Comma) {
            expr = Node.createOmittedExpression(tn.range(tn.pos));
          } else {
            expr = this.parseExpression(tn, Precedence.Comma + 1);
            if (!expr) return null;
          }
          elementExpressions.push(expr);
          if (!tn.skip(Token.Comma)) {
            if (tn.skip(Token.CloseBracket)) {
              break;
            } else {
              this.error(
                DiagnosticCode._0_expected,
                tn.range(), "]"
              );
              return null;
            }
          }
        }
        return Node.createArrayLiteralExpression(elementExpressions, tn.range(startPos, tn.pos));
      }
      // ObjectLiteralExpression
      case Token.OpenBrace: {
        let startPos = tn.tokenPos;
        let names = new Array<IdentifierExpression>();
        let values = new Array<Expression>();
        let name: IdentifierExpression;
        while (!tn.skip(Token.CloseBrace)) {
          if (!tn.skipIdentifier()) {
            if (!tn.skip(Token.StringLiteral)) {
              this.error(
                DiagnosticCode.Identifier_expected,
                tn.range(),
              );
              return null;
            }
            name = Node.createIdentifierExpression(tn.readString(), tn.range());
            name.isQuoted = true;
          } else {
            name = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
          }
          names.push(name);
          if (tn.skip(Token.Colon)) {
            let value = this.parseExpression(tn, Precedence.Comma + 1);
            if (!value) return null;
            values.push(value);
          } else if (!name.isQuoted) {
            values.push(name);
          } else {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), ":"
            );
            return null;
          }
          if (!tn.skip(Token.Comma)) {
            if (tn.skip(Token.CloseBrace)) {
              break;
            } else {
              this.error(
                DiagnosticCode._0_expected,
                tn.range(), "}"
              );
              return null;
            }
          }
        }
        return Node.createObjectLiteralExpression(names, values, tn.range(startPos, tn.pos));
      }
      // AssertionExpression (unary prefix)
      case Token.LessThan: {
        let toType = this.parseType(tn);
        if (!toType) return null;
        if (!tn.skip(Token.GreaterThan)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ">"
          );
          return null;
        }
        let expr = this.parseExpression(tn, Precedence.Call);
        if (!expr) return null;
        return Node.createAssertionExpression(
          AssertionKind.Prefix,
          expr,
          toType,
          tn.range(startPos, tn.pos)
        );
      }
      case Token.Identifier: {
        let identifierText = tn.readIdentifier();
        if (identifierText == "null") return Node.createNullExpression(tn.range()); // special
        let identifier = Node.createIdentifierExpression(identifierText, tn.range(startPos, tn.pos));
        if (tn.skip(Token.TemplateLiteral)) {
          return this.parseTemplateLiteral(tn, identifier);
        }
        if (tn.peek(true) == Token.Equals_GreaterThan && !tn.nextTokenOnNewLine) {
          return this.parseFunctionExpressionCommon(
            tn,
            Node.createEmptyIdentifierExpression(tn.range(startPos)),
            [
              Node.createParameter(
                ParameterKind.Default,
                identifier,
                Node.createOmittedType(identifier.range.atEnd),
                null,
                identifier.range
              )
            ],
            null,
            ArrowKind.Single,
            startPos
          );
        }
        return this.maybeParseCallExpression(tn, identifier, true);
      }
      case Token.Super: {
        if (tn.peek() != Token.Dot && tn.nextToken != Token.OpenParen) {
          this.error(
            DiagnosticCode._super_must_be_followed_by_an_argument_list_or_member_access,
            tn.range()
          );
        }
        let expr = Node.createSuperExpression(tn.range(startPos, tn.pos));
        return this.maybeParseCallExpression(tn, expr);
      }
      case Token.StringLiteral: {
        return Node.createStringLiteralExpression(tn.readString(), tn.range(startPos, tn.pos));
      }
      case Token.TemplateLiteral: {
        return this.parseTemplateLiteral(tn);
      }
      case Token.IntegerLiteral: {
        let value = tn.readInteger();
        tn.checkForIdentifierStartAfterNumericLiteral();
        return Node.createIntegerLiteralExpression(value, tn.range(startPos, tn.pos));
      }
      case Token.FloatLiteral: {
        let value = tn.readFloat();
        tn.checkForIdentifierStartAfterNumericLiteral();
        return Node.createFloatLiteralExpression(value, tn.range(startPos, tn.pos));
      }
      // RegexpLiteralExpression
      // note that this also continues on invalid ones so the surrounding AST remains intact
      case Token.Slash: {
        let regexpPattern = tn.readRegexpPattern(); // also reports
        if (!tn.skip(Token.Slash)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), "/"
          );
          return null;
        }
        return Node.createRegexpLiteralExpression(
          regexpPattern,
          tn.readRegexpFlags(), // also reports
          tn.range(startPos, tn.pos)
        );
      }
      case Token.Function: {
        let expr = this.parseFunctionExpression(tn);
        if (!expr) return null;
        return this.maybeParseCallExpression(tn, expr);
      }
      case Token.Class: {
        return this.parseClassExpression(tn);
      }
      default: {
        if (token == Token.EndOfFile) {
          this.error(
            DiagnosticCode.Unexpected_end_of_text,
            tn.range(startPos)
          );
        } else {
          this.error(
            DiagnosticCode.Expression_expected,
            tn.range()
          );
        }
        return null;
      }
    }
  }

  tryParseTypeArgumentsBeforeArguments(
    tn: Tokenizer
  ): TypeNode[] | null {

    // at '<': Type (',' Type)* '>' '('

    let state = tn.mark();
    if (!tn.skip(Token.LessThan)) return null;
    let start = tn.tokenPos;
    let typeArguments: TypeNode[] | null = null;
    do {
      if (tn.peek() == Token.GreaterThan) {
        break;
      }
      let type = this.parseType(tn, true, true);
      if (!type) {
        tn.reset(state);
        return null;
      }
      if (!typeArguments) typeArguments = [ type ];
      else typeArguments.push(type);
    } while (tn.skip(Token.Comma));
    if (tn.skip(Token.GreaterThan)) {
      let end = tn.pos;
      if (tn.skip(Token.OpenParen)) {
        if (!typeArguments) {
          this.error(
            DiagnosticCode.Type_argument_list_cannot_be_empty,
            tn.range(start, end)
          );
        }
        return typeArguments;
      }
    }
    tn.reset(state);
    return null;
  }

  parseArguments(
    tn: Tokenizer
  ): Expression[] | null {

    // at '(': (Expression (',' Expression)*)? ')'

    let args = new Array<Expression>();
    while (!tn.skip(Token.CloseParen)) {
      let expr = this.parseExpression(tn, Precedence.Comma + 1);
      if (!expr) return null;
      args.push(expr);
      if (!tn.skip(Token.Comma)) {
        if (tn.skip(Token.CloseParen)) {
          break;
        } else {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ")"
          );
          return null;
        }
      }
    }
    return args;
  }

  parseExpression(
    tn: Tokenizer,
    precedence: Precedence = Precedence.Comma
  ): Expression | null {
    assert(precedence != Precedence.None);
    let expr = this.parseExpressionStart(tn);
    if (!expr) return null;
    let startPos = expr.range.start;

    // precedence climbing
    // see: http://www.engr.mun.ca/~theo/Misc/exp_parsing.htm#climbing
    let nextPrecedence: Precedence;
    while (
      (nextPrecedence = determinePrecedence(tn.peek())) >= precedence
    ) {
      let token = tn.next();
      switch (token) {

        // AssertionExpression
        case Token.As: {
          if (tn.skip(Token.Const)) {
            expr = Node.createAssertionExpression(
              AssertionKind.Const,
              expr,
              null,
              tn.range(startPos, tn.pos)
            );
          } else {
            let toType = this.parseType(tn); // reports
            if (!toType) return null;
            expr = Node.createAssertionExpression(
              AssertionKind.As,
              expr,
              toType,
              tn.range(startPos, tn.pos)
            );
          }
          break;
        }
        case Token.Exclamation: {
          expr = Node.createAssertionExpression(
            AssertionKind.NonNull,
            expr,
            null,
            tn.range(startPos, tn.pos)
          );
          expr = this.maybeParseCallExpression(tn, expr);
          break;
        }
        // InstanceOfExpression
        case Token.InstanceOf: {
          let isType = this.parseType(tn); // reports
          if (!isType) return null;
          expr = Node.createInstanceOfExpression(
            expr,
            isType,
            tn.range(startPos, tn.pos)
          );
          break;
        }
        // ElementAccessExpression
        case Token.OpenBracket: {
          let next = this.parseExpression(tn); // reports
          if (!next) return null;
          if (!tn.skip(Token.CloseBracket)) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), "]"
            );
            return null;
          }
          expr = Node.createElementAccessExpression(
            expr,
            next,
            tn.range(startPos, tn.pos)
          );
          expr = this.maybeParseCallExpression(tn, expr);
          break;
        }
        // UnaryPostfixExpression
        case Token.Plus_Plus:
        case Token.Minus_Minus: {
          if (
            expr.kind != NodeKind.Identifier &&
            expr.kind != NodeKind.ElementAccess &&
            expr.kind != NodeKind.PropertyAccess
          ) {
            this.error(
              DiagnosticCode.The_operand_of_an_increment_or_decrement_operator_must_be_a_variable_or_a_property_access,
              expr.range
            );
          }
          expr = Node.createUnaryPostfixExpression(
            token,
            expr,
            tn.range(startPos, tn.pos)
          );
          break;
        }
        // TernaryExpression
        case Token.Question: {
          let ifThen = this.parseExpression(tn);
          if (!ifThen) return null;
          if (!tn.skip(Token.Colon)) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), ":"
            );
            return null;
          }
          let ifElse = this.parseExpression(tn, precedence > Precedence.Comma
            ? Precedence.Comma + 1
            : Precedence.Comma
          );
          if (!ifElse) return null;
          expr = Node.createTernaryExpression(
            expr,
            ifThen,
            ifElse,
            tn.range(startPos, tn.pos)
          );
          break;
        }
        // CommaExpression
        case Token.Comma: {
          let commaExprs: Expression[] = [ expr ];
          do {
            expr = this.parseExpression(tn, Precedence.Comma + 1);
            if (!expr) return null;
            commaExprs.push(expr);
          } while (tn.skip(Token.Comma));
          expr = Node.createCommaExpression(commaExprs, tn.range(startPos, tn.pos));
          break;
        }
        // PropertyAccessExpression
        case Token.Dot: {
          if (tn.skipIdentifier(IdentifierHandling.Always)) { // expr '.' Identifier
            let next = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
            expr = Node.createPropertyAccessExpression(
              expr,
              next,
              tn.range(startPos, tn.pos)
            );
          } else {
            let next = this.parseExpression(tn, nextPrecedence + 1);
            if (!next) return null;
            if (next.kind == NodeKind.Call) { // expr '.' CallExpression
              expr = this.joinPropertyCall(tn, startPos, expr, <CallExpression>next);
              if (!expr) return null;
            } else {
              this.error(
                DiagnosticCode.Identifier_expected,
                next.range
              );
              return null;
            }
          }
          if (tn.skip(Token.TemplateLiteral)) {
            expr = this.parseTemplateLiteral(tn, expr);
            if (!expr) return null;
          } else {
            expr = this.maybeParseCallExpression(tn, expr, true);
          }
          break;
        }
        // BinaryExpression (right associative)
        case Token.Equals:
        case Token.Plus_Equals:
        case Token.Minus_Equals:
        case Token.Asterisk_Asterisk_Equals:
        case Token.Asterisk_Equals:
        case Token.Slash_Equals:
        case Token.Percent_Equals:
        case Token.LessThan_LessThan_Equals:
        case Token.GreaterThan_GreaterThan_Equals:
        case Token.GreaterThan_GreaterThan_GreaterThan_Equals:
        case Token.Ampersand_Equals:
        case Token.Caret_Equals:
        case Token.Bar_Equals:
        case Token.Asterisk_Asterisk: {
          let next = this.parseExpression(tn, nextPrecedence);
          if (!next) return null;
          expr = Node.createBinaryExpression(token, expr, next, tn.range(startPos, tn.pos));
          break;
        }
        // BinaryExpression
        case Token.LessThan:
        case Token.GreaterThan:
        case Token.LessThan_Equals:
        case Token.GreaterThan_Equals:
        case Token.Equals_Equals:
        case Token.Equals_Equals_Equals:
        case Token.Exclamation_Equals_Equals:
        case Token.Exclamation_Equals:
        case Token.Plus:
        case Token.Minus:
        case Token.Asterisk:
        case Token.Slash:
        case Token.Percent:
        case Token.LessThan_LessThan:
        case Token.GreaterThan_GreaterThan:
        case Token.GreaterThan_GreaterThan_GreaterThan:
        case Token.Ampersand:
        case Token.Bar:
        case Token.Caret:
        case Token.Ampersand_Ampersand:
        case Token.Bar_Bar: {
          let next = this.parseExpression(tn, nextPrecedence + 1);
          if (!next) return null;
          expr = Node.createBinaryExpression(token, expr, next, tn.range(startPos, tn.pos));
          break;
        }
        default: assert(false); // filtered by determinePrecedence
      }
    }
    return expr;
  }

  private parseTemplateLiteral(tn: Tokenizer, tag: Expression | null = null): Expression | null {
    // at '`': ... '`'
    let startPos = tag ? tag.range.start : tn.tokenPos;
    let parts = new Array<string>();
    let rawParts = new Array<string>();
    let exprs = new Array<Expression>();
    parts.push(tn.readString(0, tag != null));
    rawParts.push(tn.source.text.substring(tn.readStringStart, tn.readStringEnd));
    while (tn.readingTemplateString) {
      let expr = this.parseExpression(tn);
      if (!expr) return null;
      exprs.push(expr);
      if (!tn.skip(Token.CloseBrace)) {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), "}"
        );
        return null;
      }
      parts.push(tn.readString(CharCode.Backtick, tag != null));
      rawParts.push(tn.source.text.substring(tn.readStringStart, tn.readStringEnd));
    }
    return Node.createTemplateLiteralExpression(tag, parts, rawParts, exprs, tn.range(startPos, tn.pos));
  }

  private joinPropertyCall(
    tn: Tokenizer,
    startPos: i32,
    expr: Expression,
    call: CallExpression
  ): Expression | null {
    let callee = call.expression;
    switch (callee.kind) {
      case NodeKind.Identifier: { // join property access and use as call target
        call.expression = Node.createPropertyAccessExpression(
          expr,
          <IdentifierExpression>callee,
          tn.range(startPos, tn.pos)
        );
        break;
      }
      case NodeKind.Call: { // join call target und wrap the original call around it
        let inner = this.joinPropertyCall(tn, startPos, expr, <CallExpression>callee);
        if (!inner) return null;
        call.expression = inner;
        call.range = tn.range(startPos, tn.pos);
        break;
      }
      default: {
        this.error(
          DiagnosticCode.Identifier_expected,
          call.range
        );
        return null;
      }
    }
    return call;
  }

  private maybeParseCallExpression(
    tn: Tokenizer,
    expr: Expression,
    potentiallyGeneric: bool = false
  ): Expression {
    let typeArguments: TypeNode[] | null = null;
    while (
      tn.skip(Token.OpenParen) ||
      potentiallyGeneric &&
      (typeArguments = this.tryParseTypeArgumentsBeforeArguments(tn))
    ) {
      let args = this.parseArguments(tn);
      if (!args) break;
      expr = Node.createCallExpression( // is again callable
        expr,
        typeArguments,
        args,
        tn.range(expr.range.start, tn.pos)
      );
      potentiallyGeneric = false;
    }
    return expr;
  }

  /** Skips over a statement on errors in an attempt to reduce unnecessary diagnostic noise. */
  skipStatement(tn: Tokenizer): void {
    tn.peek(true);
    if (tn.nextTokenOnNewLine) tn.next(); // if reset() to the previous line
    do {
      let nextToken = tn.peek(true);
      if (
        nextToken == Token.EndOfFile ||   // next step should handle this
        nextToken == Token.Semicolon      // end of the statement for sure
      ) {
        tn.next();
        break;
      }
      if (tn.nextTokenOnNewLine) break;   // end of the statement maybe
      switch (tn.next()) {
        case Token.Identifier: {
          tn.readIdentifier();
          break;
        }
        case Token.StringLiteral:
        case Token.TemplateLiteral: {
          tn.readString();
          break;
        }
        case Token.IntegerLiteral: {
          tn.readInteger();
          tn.checkForIdentifierStartAfterNumericLiteral();
          break;
        }
        case Token.FloatLiteral: {
          tn.readFloat();
          tn.checkForIdentifierStartAfterNumericLiteral();
          break;
        }
        case Token.OpenBrace: {
          this.skipBlock(tn);
          break;
        }
      }
    } while (true);
    tn.readingTemplateString = false;
  }

  /** Skips over a block on errors in an attempt to reduce unnecessary diagnostic noise. */
  skipBlock(tn: Tokenizer): void {
    // at '{': ... '}'
    let depth = 1;
    let again = true;
    do {
      switch (tn.next()) {
        case Token.EndOfFile: {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), "}"
          );
          again = false;
          break;
        }
        case Token.OpenBrace: {
          ++depth;
          break;
        }
        case Token.CloseBrace: {
          --depth;
          if (!depth) again = false;
          break;
        }
        case Token.Identifier: {
          tn.readIdentifier();
          break;
        }
        case Token.StringLiteral:{
          tn.readString();
          break;
        }
        case Token.TemplateLiteral: {
          tn.readString();
          while(tn.readingTemplateString){
            this.skipBlock(tn);
            tn.readString(CharCode.Backtick);
          }
          break;
        }
        case Token.IntegerLiteral: {
          tn.readInteger();
          tn.checkForIdentifierStartAfterNumericLiteral();
          break;
        }
        case Token.FloatLiteral: {
          tn.readFloat();
          tn.checkForIdentifierStartAfterNumericLiteral();
          break;
        }
      }
    } while (again);
  }
}

/** Operator precedence from least to largest. */
export const enum Precedence {
  None,
  Comma,
  Spread,
  Yield,
  Assignment,
  Conditional,
  LogicalOr,
  LogicalAnd,
  BitwiseOr,
  BitwiseXor,
  BitwiseAnd,
  Equality,
  Relational,
  Shift,
  Additive,
  Multiplicative,
  Exponentiated,
  UnaryPrefix,
  UnaryPostfix,
  Call,
  MemberAccess,
  Grouping
}

/** Determines the precende of a non-starting token. */
function determinePrecedence(kind: Token): Precedence {
  switch (kind) {
    case Token.Comma: return Precedence.Comma;
    case Token.Equals:
    case Token.Plus_Equals:
    case Token.Minus_Equals:
    case Token.Asterisk_Asterisk_Equals:
    case Token.Asterisk_Equals:
    case Token.Slash_Equals:
    case Token.Percent_Equals:
    case Token.LessThan_LessThan_Equals:
    case Token.GreaterThan_GreaterThan_Equals:
    case Token.GreaterThan_GreaterThan_GreaterThan_Equals:
    case Token.Ampersand_Equals:
    case Token.Caret_Equals:
    case Token.Bar_Equals: return Precedence.Assignment;
    case Token.Question: return Precedence.Conditional;
    case Token.Bar_Bar: return Precedence.LogicalOr;
    case Token.Ampersand_Ampersand: return Precedence.LogicalAnd;
    case Token.Bar: return Precedence.BitwiseOr;
    case Token.Caret: return Precedence.BitwiseXor;
    case Token.Ampersand: return Precedence.BitwiseAnd;
    case Token.Equals_Equals:
    case Token.Exclamation_Equals:
    case Token.Equals_Equals_Equals:
    case Token.Exclamation_Equals_Equals: return Precedence.Equality;
    case Token.As:
    case Token.In:
    case Token.InstanceOf:
    case Token.LessThan:
    case Token.GreaterThan:
    case Token.LessThan_Equals:
    case Token.GreaterThan_Equals: return Precedence.Relational;
    case Token.LessThan_LessThan:
    case Token.GreaterThan_GreaterThan:
    case Token.GreaterThan_GreaterThan_GreaterThan: return Precedence.Shift;
    case Token.Plus:
    case Token.Minus: return Precedence.Additive;
    case Token.Asterisk:
    case Token.Slash:
    case Token.Percent: return Precedence.Multiplicative;
    case Token.Asterisk_Asterisk: return Precedence.Exponentiated;
    case Token.Plus_Plus:
    case Token.Minus_Minus: return Precedence.UnaryPostfix;
    case Token.Dot:
    case Token.OpenBracket:
    case Token.Exclamation: return Precedence.MemberAccess;
  }
  return Precedence.None;
}
