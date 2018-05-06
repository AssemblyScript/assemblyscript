/**
 * A TypeScript parser for the AssemblyScript subset.
 * @module parser
 *//***/

import {
  Program,
  CommonFlags,
  LIBRARY_PREFIX,
  PATH_DELIMITER
} from "./program";

import {
  Tokenizer,
  Token,
  Range,
  CommentHandler
} from "./tokenizer";

import {
  DiagnosticCode,
  DiagnosticEmitter
} from "./diagnostics";

import {
  normalizePath
} from "./util";

import {
  Node,
  NodeKind,
  Source,
  SourceKind,
  CommonTypeNode,
  TypeNode,
  SignatureNode,

  Expression,
  AssertionKind,
  CallExpression,
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
  ForStatement,
  FunctionExpression,
  FunctionDeclaration,
  IfStatement,
  ImportDeclaration,
  ImportStatement,
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

  mangleInternalPath
} from "./ast";

const builtinsFile = LIBRARY_PREFIX + "builtins.ts";

/** Parser interface. */
export class Parser extends DiagnosticEmitter {

  /** Program being created. */
  program: Program;
  /** Log of source file names to be requested. */
  backlog: string[] = new Array();
  /** Log of source file names already processed. */
  seenlog: Set<string> = new Set();
  /** Optional handler to intercept comments while tokenizing. */
  onComment: CommentHandler | null = null;

  /** Constructs a new parser. */
  constructor() {
    super();
    this.program = new Program(this.diagnostics);
  }

  /** Parses a file and adds its definitions to the program. */
  parseFile(
    text: string,
    path: string,
    isEntry: bool
  ): void {
    var program = this.program;

    // check if already parsed
    var normalizedPath = normalizePath(path);
    var internalPath = mangleInternalPath(normalizedPath);
    var sources = program.sources;
    for (let i = 0, k = sources.length; i < k; ++i) {
      if (sources[i].internalPath == internalPath) return;
    }
    this.seenlog.add(internalPath);

    // create the source element
    var source = new Source(
      normalizedPath,
      text,
      isEntry
        ? SourceKind.ENTRY
        : path.startsWith(LIBRARY_PREFIX) && path.indexOf(PATH_DELIMITER, LIBRARY_PREFIX.length) < 0
          ? SourceKind.LIBRARY
          : SourceKind.DEFAULT
    );
    sources.push(source);

    // mark the special builtins library file
    if (source.normalizedPath == builtinsFile) {
      source.set(CommonFlags.BUILTIN);
    }

    // tokenize and parse
    var tn = new Tokenizer(source, program.diagnostics);
    tn.onComment = this.onComment;
    source.tokenizer = tn;
    var statements = source.statements;
    while (!tn.skip(Token.ENDOFFILE)) {
      let statement = this.parseTopLevelStatement(tn);
      if (statement) {
        statement.parent = source;
        statements.push(statement);
      }
    }
    tn.finish();
  }

  /** Parses a top-level statement. */
  parseTopLevelStatement(
    tn: Tokenizer,
    namespace: Node | null = null
  ): Statement | null {
    var flags = CommonFlags.NONE;
    var startPos: i32 = -1;

    // check decorators
    var decorators: DecoratorNode[] | null = null;
    while (tn.skip(Token.AT)) {
      if (startPos < 0) startPos = tn.tokenPos;
      let decorator = this.parseDecorator(tn);
      if (!decorator) {
        this.skipStatement(tn);
        continue;
      }
      if (!decorators) decorators = [];
      decorators.push(decorator);
    }

    // mark builtins
    flags |= (tn.source.flags & CommonFlags.BUILTIN);

    // check modifiers
    var exportStart: i32 = 0;
    var exportEnd: i32 = 0;
    if (tn.skip(Token.EXPORT)) {
      if (tn.skip(Token.DEFAULT)) {
        this.error(
          DiagnosticCode.Operation_not_supported,
          tn.range()
        );
      }
      if (startPos < 0) startPos = tn.tokenPos;
      flags |= CommonFlags.EXPORT;
      exportStart = tn.tokenPos;
      exportEnd = tn.pos;
    }

    var declareStart: i32 = 0;
    var declareEnd: i32 = 0;
    var contextIsAmbient = namespace != null && namespace.is(CommonFlags.AMBIENT);
    if (tn.skip(Token.DECLARE)) {
      if (startPos < 0) startPos = tn.tokenPos;
      if (contextIsAmbient) {
        this.error(
          DiagnosticCode.A_declare_modifier_cannot_be_used_in_an_already_ambient_context,
          tn.range()
        ); // recoverable
      }
      flags |= CommonFlags.DECLARE | CommonFlags.AMBIENT;
    } else if (contextIsAmbient) {
      flags |= CommonFlags.AMBIENT;
    }

    // parse the statement
    var statement: Statement | null = null;

    // handle declarations
    var first = tn.peek();
    if (startPos < 0) startPos = tn.nextTokenPos;
    switch (first) {
      case Token.CONST: {
        tn.next();
        flags |= CommonFlags.CONST;
        if (tn.skip(Token.ENUM)) {
          statement = this.parseEnum(tn, flags, decorators, startPos);
          break;
        } else {
          statement = this.parseVariable(tn, flags, decorators, startPos);
          decorators = null;
        }
        break;
      }
      case Token.LET: flags |= CommonFlags.LET;
      case Token.VAR: {
        tn.next();
        statement = this.parseVariable(tn, flags, decorators, startPos);
        decorators = null;
        break;
      }
      case Token.ENUM: {
        tn.next();
        statement = this.parseEnum(tn, flags, decorators, startPos);
        decorators = null;
        break;
      }
      case Token.FUNCTION: {
        tn.next();
        statement = this.parseFunction(tn, flags, decorators, startPos);
        decorators = null;
        break;
      }
      case Token.ABSTRACT: {
        tn.next();
        flags |= CommonFlags.ABSTRACT;
        if (!tn.skip(Token.CLASS)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(tn.pos), "class"
          );
          break;
        }
        // fall through
      }
      case Token.CLASS:
      case Token.INTERFACE: {
        tn.next();
        statement = this.parseClassOrInterface(tn, flags, decorators, startPos);
        decorators = null;
        break;
      }
      case Token.NAMESPACE: {
        tn.next();
        statement = this.parseNamespace(tn, flags, decorators, startPos);
        decorators = null;
        break;
      }
      case Token.IMPORT: {
        tn.next();
        flags |= CommonFlags.IMPORT;
        if (flags & CommonFlags.EXPORT) {
          statement = this.parseExportImport(tn, startPos);
        } else {
          statement = this.parseImport(tn);
        }
        break;
      }
      case Token.TYPE: {
        tn.next();
        statement = this.parseTypeDeclaration(tn, flags, decorators, startPos);
        decorators = null;
        break;
      }
      default: {

        // handle plain exports
        if (flags & CommonFlags.EXPORT) {
          statement = this.parseExport(tn, flags, startPos);

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
    return statement;
  }

  /** Obtains the next file to parse. */
  nextFile(): string | null {
    var backlog = this.backlog;
    return backlog.length ? backlog.shift() : null;
  }

  /** Finishes parsing and returns the program. */
  finish(): Program {
    if (this.backlog.length) throw new Error("backlog is not empty");
    this.backlog = [];
    this.seenlog.clear();
    return this.program;
  }

  /** Parses a type. */
  parseType(
    tn: Tokenizer,
    acceptParenthesized: bool = true,
    suppressErrors: bool = false
  ): CommonTypeNode | null {

    // NOTE: this parses our limited subset
    var token = tn.next();
    var startPos = tn.tokenPos;

    // 'void'
    if (token == Token.VOID) {
      return Node.createType(
        Node.createIdentifierExpression("void", tn.range()), [], false, tn.range(startPos, tn.pos)
      );
    }

    var type: CommonTypeNode;

    // '(' ...
    if (token == Token.OPENPAREN) {

      // '(' FunctionSignature ')' '|' 'null'?
      let isNullableSignature = tn.skip(Token.OPENPAREN);
      // FunctionSignature?
      let signature = this.tryParseSignature(tn);
      if (signature) {
        if (isNullableSignature) {
          if (!tn.skip(Token.CLOSEPAREN)) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), ")"
            );
            return null;
          }
          if (!tn.skip(Token.BAR)) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), "|"
            );
            return null;
          }
          if (!tn.skip(Token.NULL)) {
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
        if (!tn.skip(Token.CLOSEPAREN)) {
          if (!suppressErrors) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(tn.pos), "}"
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

    // 'this'
    } else if (token == Token.THIS) {
      type = Node.createType(
        Node.createThisExpression(tn.range()), [], false, tn.range(startPos, tn.pos)
      );

    // 'true'
    } else if (token == Token.TRUE || token == Token.FALSE) {
      type = Node.createType(
        Node.createIdentifierExpression("bool", tn.range()), [], false, tn.range(startPos, tn.pos)
      );

    // StringLiteral
    } else if (token == Token.STRINGLITERAL) {
      tn.readString();
      type = Node.createType(
        Node.createIdentifierExpression("string", tn.range()), [], false, tn.range(startPos, tn.pos)
      );

    // Identifier
    } else if (token == Token.IDENTIFIER) {
      let identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      let parameters = new Array<TypeNode>();
      let nullable = false;

      // Name<T>
      if (tn.skip(Token.LESSTHAN)) {
        do {
          let parameter = this.parseType(tn, true, suppressErrors);
          if (!parameter) return null;
          parameters.push(<TypeNode>parameter);
        } while (tn.skip(Token.COMMA));
        if (!tn.skip(Token.GREATERTHAN)) {
          if (!suppressErrors) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(tn.pos), ">"
            );
          }
          return null;
        }
      }
      // ... | null
      if (tn.skip(Token.BAR)) {
        if (tn.skip(Token.NULL)) {
          nullable = true;
        } else {
          if (!suppressErrors) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(tn.pos), "null"
            );
          }
          return null;
        }
      }
      type = Node.createType(identifier, parameters, nullable, tn.range(startPos, tn.pos));

    } else {
      if (!suppressErrors) {
        this.error(
          DiagnosticCode.Identifier_expected,
          tn.range()
        );
      }
      return null;
    }
    // ... [][]
    while (tn.skip(Token.OPENBRACKET)) {
      let bracketStart = tn.tokenPos;
      if (!tn.skip(Token.CLOSEBRACKET)) {
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
      if (tn.skip(Token.BAR)) {
        if (tn.skip(Token.NULL)) {
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
      type = Node.createType(
        Node.createIdentifierExpression("Array", bracketRange),
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

  /** Parses a function signature, as used in type declarations. */
  tryParseSignature(
    tn: Tokenizer
  ): SignatureNode | null {

    // at '(': ('...'? Identifier '?'? ':' Type (','  '...'? Identifier '?'? ':' Type)* )? ')' '=>' Type

    var state = tn.mark();
    var startPos = tn.tokenPos;
    var parameters: ParameterNode[] | null = null;
    var thisType: TypeNode | null = null;
    var isSignature: bool = false;

    if (tn.skip(Token.CLOSEPAREN)) {
      isSignature = true;
      tn.discard(state);
      parameters = [];

    } else {
      isSignature = false; // not yet known
      do {
        let kind = ParameterKind.DEFAULT;
        if (tn.skip(Token.DOT_DOT_DOT)) {
          isSignature = true;
          tn.discard(state);
          kind = ParameterKind.REST;
        }
        if (tn.skip(Token.THIS)) {
          if (tn.skip(Token.COLON)) {
            isSignature = true;
            tn.discard(state);
            let t = this.parseType(tn, false);
            if (!t) return null;
            if (t.kind != NodeKind.TYPE) {
              this.error(
                DiagnosticCode.Operation_not_supported,
                t.range
              );
              this.tryParseSignatureIsSignature = true;
              return null;
            }
            thisType = <TypeNode>t;
          } else {
            tn.reset(state);
            this.tryParseSignatureIsSignature = false;
            return null;
          }
        } else if (tn.skip(Token.IDENTIFIER)) {
          let name = Node.createIdentifierExpression(tn.readIdentifier(), tn.range(tn.tokenPos, tn.pos));
          if (tn.skip(Token.QUESTION)) {
            isSignature = true;
            tn.discard(state);
            if (kind == ParameterKind.REST) {
              this.error(
                DiagnosticCode.A_rest_parameter_cannot_be_optional,
                tn.range()
              ); // recoverable
            } else {
              kind = ParameterKind.OPTIONAL;
            }
          }
          if (tn.skip(Token.COLON)) {
            isSignature = true;
            tn.discard(state);
            let type = this.parseType(tn); // not suppressing errors because known
            if (!type) {
              this.tryParseSignatureIsSignature = isSignature;
              return null;
            }
            let param = new ParameterNode();
            param.parameterKind = kind;
            param.name = name;
            param.type = type;
            if (!parameters) parameters = [ param ];
            else parameters.push(param);
          } else {
            if (isSignature) {
              this.error(
                DiagnosticCode.Type_expected,
                tn.range()
              ); // recoverable
            }
          }
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
      } while (tn.skip(Token.COMMA));
      if (!tn.skip(Token.CLOSEPAREN)) {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), ")"
        );
        this.tryParseSignatureIsSignature = isSignature;
        return null;
      }
    }

    var returnType: CommonTypeNode | null;
    if (tn.skip(Token.EQUALS_GREATERTHAN)) {
      isSignature = true;
      tn.discard(state);
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
    return Node.createSignature(
      parameters || [],
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

    var startPos = tn.tokenPos;
    if (tn.skip(Token.IDENTIFIER)) {
      let name = tn.readIdentifier();
      let expression: Expression = Node.createIdentifierExpression(name, tn.range(startPos, tn.pos));
      while (tn.skip(Token.DOT)) {
        if (tn.skip(Token.IDENTIFIER)) {
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
      if (tn.skip(Token.OPENPAREN)) {
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
    startPos: i32
  ): VariableStatement | null {

    // at ('const' | 'let' | 'var'): VariableDeclaration (',' VariableDeclaration)* ';'?

    var members = new Array<VariableDeclaration>();
    do {
      let member = this.parseVariableDeclaration(tn, flags, decorators);
      if (!member) return null;
      members.push(<VariableDeclaration>member);
    } while (tn.skip(Token.COMMA));

    var ret = Node.createVariableStatement(members, decorators, flags, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseVariableDeclaration(
    tn: Tokenizer,
    parentFlags: CommonFlags,
    parentDecorators: DecoratorNode[] | null
  ): VariableDeclaration | null {

    // before: Identifier (':' Type)? ('=' Expression)?

    if (!tn.skip(Token.IDENTIFIER)) {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
      return null;
    }
    var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    var flags = parentFlags;

    var type: CommonTypeNode | null = null;
    if (tn.skip(Token.COLON)) {
      type = this.parseType(tn);
    }

    var initializer: Expression | null = null;
    if (tn.skip(Token.EQUALS)) {
      if (flags & CommonFlags.AMBIENT) {
        this.error(
          DiagnosticCode.Initializers_are_not_allowed_in_ambient_contexts,
          tn.range()
        ); // recoverable
      }
      initializer = this.parseExpression(tn, Precedence.COMMA + 1);
      if (!initializer) return null;
    } else {
      if (flags & CommonFlags.CONST) {
        if (!(flags & CommonFlags.AMBIENT)) {
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
    return Node.createVariableDeclaration(
      identifier,
      type,
      initializer,
      parentDecorators,
      flags,
      Range.join(identifier.range, tn.range())
    );
  }

  parseEnum(
    tn: Tokenizer,
    flags: CommonFlags,
    decorators: DecoratorNode[] | null,
    startPos: i32
  ): EnumDeclaration | null {

    // at 'enum': Identifier '{' (EnumValueDeclaration (',' EnumValueDeclaration )*)? '}' ';'?

    if (tn.next() != Token.IDENTIFIER) {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
      return null;
    }
    var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    if (tn.next() != Token.OPENBRACE) {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), "{"
      );
      return null;
    }
    var members = new Array<EnumValueDeclaration>();
    while (!tn.skip(Token.CLOSEBRACE)) {
      let member = this.parseEnumValue(tn, CommonFlags.NONE);
      if (!member) return null;
      members.push(<EnumValueDeclaration>member);
      if (!tn.skip(Token.COMMA)) {
        if (tn.skip(Token.CLOSEBRACE)) {
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
    var ret = Node.createEnumDeclaration(
      identifier,
      members,
      decorators,
      flags,
      tn.range(startPos, tn.pos)
    );
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseEnumValue(
    tn: Tokenizer,
    parentFlags: CommonFlags
  ): EnumValueDeclaration | null {

    // before: Identifier ('=' Expression)?

    if (!tn.skip(Token.IDENTIFIER)) {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
      return null;
    }
    var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    var value: Expression | null = null;
    if (tn.skip(Token.EQUALS)) {
      value = this.parseExpression(tn, Precedence.COMMA + 1);
      if (!value) return null;
    }
    return Node.createEnumValueDeclaration(
      identifier,
      value,
      parentFlags,
      Range.join(identifier.range, tn.range())
    );
  }

  parseReturn(
    tn: Tokenizer
  ): ReturnStatement | null {

    // at 'return': Expression | (';' | '}' | ...'\n')

    var expr: Expression | null = null;
    if (
      tn.peek(true) != Token.SEMICOLON &&
      tn.nextToken != Token.CLOSEBRACE &&
      !tn.nextTokenOnNewLine
    ) {
      if (!(expr = this.parseExpression(tn))) return null;
    }

    var ret = Node.createReturnStatement(expr, tn.range());
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseTypeParameters(
    tn: Tokenizer
  ): TypeParameterNode[] | null {

    // at '<': TypeParameter (',' TypeParameter)* '>'

    var typeParameters = new Array<TypeParameterNode>();
    while (!tn.skip(Token.GREATERTHAN)) {
      let typeParameter = this.parseTypeParameter(tn);
      if (!typeParameter) return null;
      typeParameters.push(<TypeParameterNode>typeParameter);
      if (!tn.skip(Token.COMMA)) {
        if (tn.skip(Token.GREATERTHAN)) {
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
    if (typeParameters.length === 0) {
      this.error(
        DiagnosticCode.Type_parameter_list_cannot_be_empty,
        tn.range()
      ); // recoverable
    }
    return typeParameters;
  }

  parseTypeParameter(
    tn: Tokenizer
  ): TypeParameterNode | null {

    // before: Identifier ('extends' Type)?

    if (tn.next() == Token.IDENTIFIER) {
      let identifier = Node.createIdentifierExpression(
        tn.readIdentifier(),
        tn.range()
      );
      let extendsType: TypeNode | null = null;
      if (tn.skip(Token.EXTENDS)) {
        let t = this.parseType(tn);
        if (!t) return null;
        if (t.kind != NodeKind.TYPE) {
          this.error(
            DiagnosticCode.Operation_not_supported,
            t.range
          );
          return null;
        }
        extendsType = <TypeNode>t;
      }
      return Node.createTypeParameter(
        identifier,
        extendsType,
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

  parseParameters(
    tn: Tokenizer,
    isConstructor: bool = false
  ): ParameterNode[] | null {

    // at '(': (Parameter (',' Parameter)*)? ')'

    var parameters = new Array<ParameterNode>();
    var seenRest: ParameterNode | null = null;
    var seenOptional = false;
    var reportedRest = false;

    while (!tn.skip(Token.CLOSEPAREN)) {
      let param = this.parseParameter(tn, isConstructor);
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
        case ParameterKind.OPTIONAL: {
          seenOptional = true;
          break;
        }
        case ParameterKind.REST: {
          seenRest = param;
          break;
        }
      }
      parameters.push(param);
      if (!tn.skip(Token.COMMA)) {
        if (tn.skip(Token.CLOSEPAREN)) {
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

    var isRest = false;
    var isOptional = false;
    var startRange: Range | null = null;
    var accessFlags: CommonFlags = CommonFlags.NONE;
    if (tn.skip(Token.PUBLIC)) {
      startRange = tn.range();
      if (!isConstructor) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          startRange, "public"
        );
      }
      accessFlags |= CommonFlags.PUBLIC;
    } else if (tn.skip(Token.PROTECTED)) {
      startRange = tn.range();
      if (!isConstructor) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          startRange, "protected"
        );
      }
      accessFlags |= CommonFlags.PROTECTED;
    } else if (tn.skip(Token.PRIVATE)) {
      startRange = tn.range();
      if (!isConstructor) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          startRange, "private"
        );
      }
      accessFlags |= CommonFlags.PRIVATE;
    }
    if (tn.skip(Token.READONLY)) {
      if (!startRange) startRange = tn.range();
      if (!isConstructor) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          startRange, "readonly"
        );
      }
      accessFlags |= CommonFlags.READONLY;
    }
    if (tn.skip(Token.DOT_DOT_DOT)) {
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
    if (tn.skip(Token.IDENTIFIER)) {
      if (!isRest) startRange = tn.range();
      let identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      let type: CommonTypeNode | null = null;
      if (isOptional = tn.skip(Token.QUESTION)) {
        if (isRest) {
          this.error(
            DiagnosticCode.A_rest_parameter_cannot_be_optional,
            identifier.range
          );
        }
      }
      if (tn.skip(Token.COLON)) {
        type = this.parseType(tn);
        if (!type) return null;
      } else {
        type = Node.createOmittedType(tn.range(tn.pos));
      }
      let initializer: Expression | null = null;
      if (tn.skip(Token.EQUALS)) {
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
        initializer = this.parseExpression(tn, Precedence.COMMA + 1);
        if (!initializer) return null;
      }
      let param = Node.createParameter(
        identifier,
        type,
        initializer,
        isRest
          ? ParameterKind.REST
          : isOptional
            ? ParameterKind.OPTIONAL
            : ParameterKind.DEFAULT,
        Range.join(<Range>startRange, tn.range())
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

    if (!tn.skip(Token.IDENTIFIER)) {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range(tn.pos)
      );
      return null;
    }

    var name = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    var signatureStart: i32 = -1;

    var typeParameters: TypeParameterNode[] | null = null;
    if (tn.skip(Token.LESSTHAN)) {
      signatureStart = tn.tokenPos;
      typeParameters = this.parseTypeParameters(tn);
      if (!typeParameters) return null;
      flags |= CommonFlags.GENERIC;
    }

    if (!tn.skip(Token.OPENPAREN)) {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(tn.pos), "("
      );
      return null;
    }

    if (signatureStart < 0) {
      signatureStart = tn.tokenPos;
    }

    var parameters = this.parseParameters(tn);
    if (!parameters) return null;

    var isSetter = (flags & CommonFlags.SET) != 0;
    if (isSetter) {
      if (parameters.length != 1) {
        this.error(
          DiagnosticCode.A_set_accessor_must_have_exactly_one_parameter,
          name.range
        ); // recoverable
      }
      if (parameters.length && parameters[0].initializer) {
        this.error(
          DiagnosticCode.A_set_accessor_parameter_cannot_have_an_initializer,
          name.range
        ); // recoverable
      }
    }

    if (flags & CommonFlags.GET) {
      if (parameters.length) {
        this.error(
          DiagnosticCode.A_get_accessor_cannot_have_parameters,
          name.range
        ); // recoverable
      }
    }

    var returnType: CommonTypeNode | null = null;
    if (tn.skip(Token.COLON)) {
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

    var signature = Node.createSignature(
      parameters,
      returnType,
      null,
      false,
      tn.range(signatureStart, tn.pos)
    );

    var body: Statement | null = null;
    if (tn.skip(Token.OPENBRACE)) {
      if (flags & CommonFlags.AMBIENT) {
        this.error(
          DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts,
          tn.range()
        ); // recoverable
      }

      body = this.parseBlockStatement(tn, false);
      if (!body) return null;
    } else if (!(flags & CommonFlags.AMBIENT)) {
      this.error(
        DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration,
        tn.range(tn.pos)
      );
    }

    var ret = Node.createFunctionDeclaration(
      name,
      typeParameters,
      signature,
      body,
      decorators,
      flags,
      tn.range(startPos, tn.pos)
    );
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseFunctionExpression(tn: Tokenizer): FunctionExpression | null {
    var startPos = tn.tokenPos;
    var name: IdentifierExpression;
    var isArrow = false;

    // either at 'function':
    //  Identifier?
    //  '(' Parameters (':' Type)?
    //  Statement

    if (tn.token == Token.FUNCTION) {
      if (tn.skip(Token.IDENTIFIER)) {
        name = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      } else { // empty name
        name = Node.createEmptyIdentifierExpression(tn.range(tn.pos));
      }
      if (!tn.skip(Token.OPENPAREN)) {
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
      isArrow = true;
      assert(tn.token == Token.OPENPAREN);
      name = Node.createEmptyIdentifierExpression(tn.range(tn.tokenPos));
    }

    // TODO: type parameters? doesn't seem worth it.

    var signatureStart = tn.pos;
    var parameters = this.parseParameters(tn);
    if (!parameters) return null;

    return this.parseFunctionExpressionCommon(tn, name, parameters, isArrow, startPos, signatureStart);
  }

  private parseFunctionExpressionCommon(
    tn: Tokenizer,
    name: IdentifierExpression,
    parameters: ParameterNode[],
    isArrow: bool,
    startPos: i32 = -1,
    signatureStart: i32 = -1
  ): FunctionExpression | null {
    if (startPos < 0) startPos = name.range.start;
    if (signatureStart < 0) signatureStart = startPos;

    var returnType: CommonTypeNode | null = null;
    if (tn.skip(Token.COLON)) {
      returnType = this.parseType(tn);
      if (!returnType) return null;
    } else {
      returnType = Node.createOmittedType(tn.range(tn.pos));
      this.error(
        DiagnosticCode.Type_expected,
        returnType.range
      ); // recoverable
    }

    if (isArrow) {
      if (!tn.skip(Token.EQUALS_GREATERTHAN)) {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(tn.pos), "=>"
        );
        return null;
      }
    }

    var signature = Node.createSignature(
      parameters,
      returnType,
      null,
      false,
      tn.range(signatureStart, tn.pos)
    );

    var body: Statement | null;
    if (isArrow) {
      body = this.parseStatement(tn, false);
    } else {
      if (!tn.skip(Token.OPENBRACE)) {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(tn.pos), "{"
        );
        return null;
      }
      body = this.parseBlockStatement(tn, false);
    }
    if (!body) return null;

    var declaration = Node.createFunctionDeclaration(
      name,
      null,
      signature,
      body,
      null,
      isArrow ? CommonFlags.ARROW : CommonFlags.NONE,
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

    var isInterface = tn.token == Token.INTERFACE;

    if (!tn.skip(Token.IDENTIFIER)) {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
      return null;
    }

    var identifier = Node.createIdentifierExpression(
      tn.readIdentifier(),
      tn.range()
    );

    var typeParameters: TypeParameterNode[] | null;
    if (tn.skip(Token.LESSTHAN)) {
      typeParameters = this.parseTypeParameters(tn);
      if (!typeParameters) return null;
      flags |= CommonFlags.GENERIC;
    } else {
      typeParameters = [];
    }

    var extendsType: TypeNode | null = null;
    if (tn.skip(Token.EXTENDS)) {
      let t = this.parseType(tn);
      if (!t) return null;
      if (t.kind != NodeKind.TYPE) {
        this.error(
          DiagnosticCode.Operation_not_supported,
          t.range
        );
        return null;
      }
      extendsType = <TypeNode>t;
    }

    var implementsTypes: TypeNode[] | null = null;
    if (tn.skip(Token.IMPLEMENTS)) {
      if (isInterface) {
        this.error(
          DiagnosticCode.Interface_declaration_cannot_have_implements_clause,
          tn.range()
        ); // recoverable
      }
      do {
        let type = this.parseType(tn);
        if (!type) return null;
        if (!isInterface) {
          if (!implementsTypes) implementsTypes = [];
          implementsTypes.push(<TypeNode>type);
        }
      } while (tn.skip(Token.COMMA));
    }

    if (!tn.skip(Token.OPENBRACE)) {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), "{"
      );
      return null;
    }

    var members = new Array<DeclarationStatement>();
    var declaration: ClassDeclaration;
    if (isInterface) {
      assert(!implementsTypes);
      declaration = Node.createInterfaceDeclaration(
        identifier,
        typeParameters,
        extendsType,
        members,
        decorators,
        flags,
        tn.range(startPos, tn.pos)
      );
    } else {
      declaration = Node.createClassDeclaration(
        identifier,
        typeParameters,
        extendsType,
        implementsTypes,
        members,
        decorators,
        flags,
        tn.range(startPos, tn.pos)
      );
    }
    if (!tn.skip(Token.CLOSEBRACE)) {
      do {
        let member = this.parseClassMember(tn, declaration);
        if (!member) return null;
        member.parent = declaration;
        members.push(<DeclarationStatement>member);
      } while (!tn.skip(Token.CLOSEBRACE));
    }
    return declaration;
  }

  parseClassMember(
    tn: Tokenizer,
    parent: ClassDeclaration
  ): DeclarationStatement | null {

    // before:
    //   ('public' | 'private' | 'protected')?
    //   ('static' | 'abstract')?
    //   'readonly'?
    //   ('get' | 'set')?
    //   Identifier ...

    var startPos = tn.pos;

    var decorators = new Array<DecoratorNode>();
    while (tn.skip(Token.AT)) {
      let decorator = this.parseDecorator(tn);
      if (!decorator) break;
      decorators.push(<DecoratorNode>decorator);
    }

    var flags = parent.flags & CommonFlags.AMBIENT; // inherit

    if (tn.skip(Token.PUBLIC)) {
      flags |= CommonFlags.PUBLIC;
    } else if (tn.skip(Token.PRIVATE)) {
      flags |= CommonFlags.PRIVATE;
    } else if (tn.skip(Token.PROTECTED)) {
      flags |= CommonFlags.PROTECTED;
    }

    var staticStart: i32 = 0;
    var staticEnd: i32 = 0;
    var abstractStart: i32 = 0;
    var abstractEnd: i32 = 0;
    if (tn.skip(Token.STATIC)) {
      flags |= CommonFlags.STATIC;
      staticStart = tn.tokenPos;
      staticEnd = tn.pos;
    } else {
      if (tn.skip(Token.ABSTRACT)) {
        flags |= (CommonFlags.ABSTRACT | CommonFlags.INSTANCE);
        abstractStart = tn.tokenPos;
        abstractEnd = tn.pos;
      } else {
        flags |= CommonFlags.INSTANCE;
      }
      if (parent.flags & CommonFlags.GENERIC) {
        flags |= CommonFlags.GENERIC_CONTEXT;
      }
    }

    var readonlyStart: i32 = 0;
    var readonlyEnd: i32 = 0;
    if (tn.skip(Token.READONLY)) {
      flags |= CommonFlags.READONLY;
      readonlyStart = tn.tokenPos;
      readonlyEnd = tn.pos;
    }

    // check if accessor: ('get' | 'set') ^\n Identifier
    var state = tn.mark();
    var isConstructor = false;
    var isGetter = false;
    var getStart: i32 = 0;
    var getEnd: i32 = 0;
    var isSetter = false;
    var setStart: i32 = 0;
    var setEnd: i32 = 0;
    if (tn.skip(Token.GET)) {
      if (tn.peek(true, true) == Token.IDENTIFIER && !tn.nextTokenOnNewLine) {
        flags |= CommonFlags.GET;
        isGetter = true;
        setStart = tn.tokenPos;
        setEnd = tn.pos;
        if (flags & CommonFlags.READONLY) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            tn.range(readonlyStart, readonlyEnd), "readonly"
          ); // recoverable
        }
      } else {
        tn.reset(state);
      }
    } else if (tn.skip(Token.SET)) {
      if (tn.peek(true, true) == Token.IDENTIFIER && !tn.nextTokenOnNewLine) {
        flags |= CommonFlags.SET | CommonFlags.SET;
        isSetter = true;
        setStart = tn.tokenPos;
        setEnd = tn.pos;
        if (flags & CommonFlags.READONLY) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            tn.range(readonlyStart, readonlyEnd), "readonly"
          ); // recoverable
        }
      } else {
        tn.reset(state);
      }
    } else if (tn.skip(Token.CONSTRUCTOR)) {
      flags |= CommonFlags.CONSTRUCTOR;
      isConstructor = true;
      if (flags & CommonFlags.STATIC) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(staticStart, staticEnd), "static"
        ); // recoverable
      }
      if (flags & CommonFlags.ABSTRACT) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(abstractStart, abstractEnd), "abstract"
        ); // recoverable
      }
      if (flags & CommonFlags.READONLY) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(readonlyStart, readonlyEnd), "readonly"
        ); // recoverable
      }
    }

    if (!isConstructor && !tn.skip(Token.IDENTIFIER)) {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
      return null;
    }

    var name = isConstructor
      ? Node.createConstructorExpression(tn.range())
      : Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    var typeParameters: TypeParameterNode[] | null = null;
    if (tn.skip(Token.LESSTHAN)) {
      let typeParametersStart = tn.tokenPos;
      typeParameters = this.parseTypeParameters(tn);
      if (!typeParameters) return null;
      if (isConstructor) {
        this.error(
          DiagnosticCode.Type_parameters_cannot_appear_on_a_constructor_declaration,
          tn.range(typeParametersStart, tn.pos)
        ); // recoverable
      } else if (isGetter || isSetter) {
        this.error(
          DiagnosticCode.An_accessor_cannot_have_type_parameters,
          tn.range(typeParametersStart, tn.pos)
        ); // recoverable
      } else {
        flags |= CommonFlags.GENERIC;
      }
    }

    // method: '(' Parameters (':' Type)? '{' Statement* '}' ';'?
    if (tn.skip(Token.OPENPAREN)) {
      let signatureStart = tn.tokenPos;
      let parameters = this.parseParameters(tn, isConstructor);
      if (!parameters) return null;
      if (isConstructor) {
        for (let i = 0, k = parameters.length; i < k; ++i) {
          let parameter = parameters[i];
          if (parameter.isAny(
            CommonFlags.PUBLIC |
            CommonFlags.PROTECTED |
            CommonFlags.PRIVATE |
            CommonFlags.READONLY
          )) {
            let implicitFieldDeclaration = Node.createFieldDeclaration(
              parameter.name,
              parameter.type,
              null, // initialized via parameter
              null,
              parameter.flags | CommonFlags.INSTANCE,
              parameter.range
            );
            implicitFieldDeclaration.parameterIndex = i;
            implicitFieldDeclaration.parent = parent;
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
        if (parameters.length && parameters[0].initializer) {
          this.error(
            DiagnosticCode.A_set_accessor_parameter_cannot_have_an_initializer,
            name.range
          );
        }
      }

      let returnType: CommonTypeNode | null = null;
      if (tn.skip(Token.COLON)) {
        if (name.kind == NodeKind.CONSTRUCTOR) {
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
        returnType = this.parseType(tn, name.kind == NodeKind.CONSTRUCTOR || isSetter);
        if (!returnType) return null;
      } else {
        returnType = Node.createOmittedType(tn.range(tn.pos));
        if (!isSetter && name.kind != NodeKind.CONSTRUCTOR) {
          this.error(
            DiagnosticCode.Type_expected,
            returnType.range
          ); // recoverable
        }
      }

      let signature = Node.createSignature(
        parameters,
        returnType,
        null,
        false,
        tn.range(signatureStart, tn.pos)
      );

      let body: Statement | null = null;
      if (tn.skip(Token.OPENBRACE)) {
        if (flags & CommonFlags.AMBIENT) {
          this.error(
            DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts,
            tn.range()
          ); // recoverable
        }
        body = this.parseBlockStatement(tn, false);
        if (!body) return null;
      } else if (!(flags & CommonFlags.AMBIENT)) {
        this.error(
          DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration,
          tn.range()
        ); // recoverable
      }

      let retMethod = Node.createMethodDeclaration(
        name,
        typeParameters,
        signature,
        body,
        decorators,
        flags,
        tn.range(startPos, tn.pos)
      );
      tn.skip(Token.SEMICOLON);
      return retMethod;

    } else if (isConstructor) {
      this.error(
        DiagnosticCode.Constructor_implementation_is_missing,
        name.range
      );

    } else if (isGetter || isSetter) {
      this.error(
        DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration,
        name.range
      );

    // field: (':' Type)? ('=' Expression)? ';'?
    } else {
      if (flags & CommonFlags.ABSTRACT) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(abstractStart, abstractEnd), "abstract"
        ); // recoverable
      }

      if (flags & CommonFlags.GET) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(getStart, getEnd), "get"
        ); // recoverable
      }

      if (flags & CommonFlags.SET) {
        this.error(
          DiagnosticCode._0_modifier_cannot_be_used_here,
          tn.range(setStart, setEnd), "set"
        ); // recoverable
      }

      let type: CommonTypeNode | null = null;
      if (tn.skip(Token.COLON)) {
        type = this.parseType(tn);
        if (!type) return null;
      } else {
        this.error(
          DiagnosticCode.Type_expected,
          tn.range()
        ); // recoverable
      }
      let initializer: Expression | null = null;
      if (tn.skip(Token.EQUALS)) {
        initializer = this.parseExpression(tn);
        if (!initializer) return null;
      }
      let retField = Node.createFieldDeclaration(
        name,
        type,
        initializer,
        decorators,
        flags,
        tn.range(startPos, tn.pos)
      );
      tn.skip(Token.SEMICOLON);
      return retField;
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

    if (tn.skip(Token.IDENTIFIER)) {
      let identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      if (tn.skip(Token.OPENBRACE)) {
        let members = new Array<Statement>();
        let ns = Node.createNamespaceDeclaration(
          identifier,
          members,
          decorators,
          flags,
          tn.range(startPos, tn.pos)
        );
        while (!tn.skip(Token.CLOSEBRACE)) {
          let member = this.parseTopLevelStatement(tn, ns);
          if (!member) return null;
          member.parent = ns;
          members.push(member);
        }
        tn.skip(Token.SEMICOLON);
        return ns;
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
    flags: CommonFlags,
    startPos: i32
  ): ExportStatement | null {

    // at 'export': '{' ExportMember (',' ExportMember)* }' ('from' StringLiteral)? ';'?

    if (tn.skip(Token.OPENBRACE)) {
      let members = new Array<ExportMember>();
      if (!tn.skip(Token.CLOSEBRACE)) {
        do {
          let member = this.parseExportMember(tn);
          if (!member) return null;
          members.push(member);
        } while (tn.skip(Token.COMMA));
        if (!tn.skip(Token.CLOSEBRACE)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), "}"
          );
          return null;
        }
      }
      let path: StringLiteralExpression | null = null;
      if (tn.skip(Token.FROM)) {
        if (tn.skip(Token.STRINGLITERAL)) {
          path = Node.createStringLiteralExpression(tn.readString(), tn.range());
        } else {
          this.error(
            DiagnosticCode.String_literal_expected,
            tn.range()
          );
          return null;
        }
      }
      let ret = Node.createExportStatement(members, path, flags, tn.range(startPos, tn.pos));
      let internalPath = ret.internalPath;
      if (internalPath != null && !this.seenlog.has(internalPath)) {
        this.backlog.push(internalPath);
        this.seenlog.add(internalPath);
      }
      tn.skip(Token.SEMICOLON);
      return ret;
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

    if (tn.skip(Token.IDENTIFIER)) {
      let identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      let asIdentifier: IdentifierExpression | null = null;
      if (tn.skip(Token.AS)) {
        if (tn.skip(Token.IDENTIFIER)) {
          asIdentifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
        } else {
          this.error(
            DiagnosticCode.Identifier_expected,
            tn.range()
          );
          return null;
        }
      }
      return Node.createExportMember(
        identifier,
        asIdentifier,
        asIdentifier
          ? Range.join(identifier.range, asIdentifier.range)
          : identifier.range
      );
    } else {
      this.error(
        DiagnosticCode.Identifier_expected,
        tn.range()
      );
    }
    return null;
  }

  parseImport(
    tn: Tokenizer
  ): ImportStatement | null {

    // at 'import':
    //  ('{' (ImportMember (',' ImportMember)* '}') | ('*' 'as' Identifier)?
    //  'from' StringLiteral ';'?

    var startPos = tn.tokenPos;
    var members: ImportDeclaration[] | null = null;
    var namespaceName: IdentifierExpression | null = null;
    var skipFrom = false;
    if (tn.skip(Token.OPENBRACE)) {
      members = new Array();
      if (!tn.skip(Token.CLOSEBRACE)) {
        do {
          let member = this.parseImportDeclaration(tn);
          if (!member) return null;
          members.push(member);
        } while (tn.skip(Token.COMMA));
        if (!tn.skip(Token.CLOSEBRACE)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), "}"
          );
          return null;
        }
      }
    } else if (tn.skip(Token.ASTERISK)) {
      if (tn.skip(Token.AS)) {
        if (tn.skip(Token.IDENTIFIER)) {
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
    } else {
      skipFrom = true;
    }

    if (skipFrom || tn.skip(Token.FROM)) {
      if (tn.skip(Token.STRINGLITERAL)) {
        let path = Node.createStringLiteralExpression(tn.readString(), tn.range());
        let ret: ImportStatement;
        if (namespaceName) {
          assert(!members);
          ret = Node.createImportStatementWithWildcard(namespaceName, path, tn.range(startPos, tn.pos));
        } else {
          ret = Node.createImportStatement(members, path, tn.range(startPos, tn.pos));
        }
        let internalPath = ret.internalPath;
        if (!this.seenlog.has(internalPath)) {
          this.backlog.push(internalPath);
          this.seenlog.add(internalPath);
        }
        tn.skip(Token.SEMICOLON);
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

    if (tn.skip(Token.IDENTIFIER)) {
      let identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      let asIdentifier: IdentifierExpression | null = null;
      if (tn.skip(Token.AS)) {
        if (tn.skip(Token.IDENTIFIER)) {
          asIdentifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
        } else {
          this.error(
            DiagnosticCode.Identifier_expected,
            tn.range()
          );
          return null;
        }
      }
      return Node.createImportDeclaration(
        identifier,
        asIdentifier,
        asIdentifier
          ? Range.join(identifier.range, asIdentifier.range)
          : identifier.range
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

    if (tn.skip(Token.IDENTIFIER)) {
      let asIdentifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      if (tn.skip(Token.EQUALS)) {
        if (tn.skip(Token.IDENTIFIER)) {
          let identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
          let ret = Node.createExportImportStatement(identifier, asIdentifier, tn.range(startPos, tn.pos));
          tn.skip(Token.SEMICOLON);
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

    var state = tn.mark();
    var token = tn.next();
    var statement: Statement | null = null;
    switch (token) {
      case Token.BREAK: {
        statement = this.parseBreak(tn);
        break;
      }
      case Token.CONST: {
        statement = this.parseVariable(tn, CommonFlags.CONST, null, tn.tokenPos);
        break;
      }
      case Token.CONTINUE: {
        statement = this.parseContinue(tn);
        break;
      }
      case Token.DO: {
        statement = this.parseDoStatement(tn);
        break;
      }
      case Token.FOR: {
        statement = this.parseForStatement(tn);
        break;
      }
      case Token.IF: {
        statement = this.parseIfStatement(tn);
        break;
      }
      case Token.LET: {
        statement = this.parseVariable(tn, CommonFlags.LET, null, tn.tokenPos);
        break;
      }
      case Token.VAR: {
        statement = this.parseVariable(tn, CommonFlags.NONE, null, tn.tokenPos);
        break;
      }
      case Token.OPENBRACE: {
        statement = this.parseBlockStatement(tn, topLevel);
        break;
      }
      case Token.RETURN: {
        if (topLevel) {
          this.error(
            DiagnosticCode.A_return_statement_can_only_be_used_within_a_function_body,
            tn.range()
          ); // recoverable
        }
        statement = this.parseReturn(tn);
        break;
      }
      case Token.SEMICOLON: {
        return Node.createEmptyStatement(tn.range(tn.tokenPos));
      }
      case Token.SWITCH: {
        statement = this.parseSwitchStatement(tn);
        break;
      }
      case Token.THROW: {
        statement = this.parseThrowStatement(tn);
        break;
      }
      case Token.TRY: {
        statement = this.parseTryStatement(tn);
        break;
      }
      case Token.TYPE: {
        statement = this.parseTypeDeclaration(tn, CommonFlags.NONE, null, tn.tokenPos);
        break;
      }
      case Token.VOID: {
        statement = this.parseVoidStatement(tn);
        break;
      }
      case Token.WHILE: {
        statement = this.parseWhileStatement(tn);
        break;
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

    var startPos = tn.tokenPos;
    var statements = new Array<Statement>();
    while (!tn.skip(Token.CLOSEBRACE)) {
      let state = tn.mark();
      let statement = this.parseStatement(tn, topLevel);
      if (!statement) {
        tn.reset(state);
        this.skipStatement(tn);
      } else {
        tn.discard(state);
        statements.push(statement);
      }
    }
    var ret = Node.createBlockStatement(statements, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseBreak(
    tn: Tokenizer
  ): BreakStatement | null {

    // at 'break': Identifier? ';'?

    var identifier: IdentifierExpression | null = null;
    if (tn.peek(true) == Token.IDENTIFIER && !tn.nextTokenOnNewLine) {
      tn.next(true);
      identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    }
    var ret = Node.createBreakStatement(identifier, tn.range());
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseContinue(
    tn: Tokenizer
  ): ContinueStatement | null {

    // at 'continue': Identifier? ';'?

    var identifier: IdentifierExpression | null = null;
    if (tn.peek(true) == Token.IDENTIFIER && !tn.nextTokenOnNewLine) {
      tn.next(true);
      identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    }
    var ret = Node.createContinueStatement(identifier, tn.range());
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseDoStatement(
    tn: Tokenizer
  ): DoStatement | null {

    // at 'do': Statement 'while' '(' Expression ')' ';'?

    var startPos = tn.tokenPos;
    var statement = this.parseStatement(tn);
    if (!statement) return null;

    if (tn.skip(Token.WHILE)) {

      if (tn.skip(Token.OPENPAREN)) {
        let condition = this.parseExpression(tn);
        if (!condition) return null;

        if (tn.skip(Token.CLOSEPAREN)) {
          let ret = Node.createDoStatement(<Statement>statement, <Expression>condition, tn.range(startPos, tn.pos));
          tn.skip(Token.SEMICOLON);
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

    var expr = this.parseExpression(tn);
    if (!expr) return null;

    var ret = Node.createExpressionStatement(expr);
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseForStatement(
    tn: Tokenizer
  ): ForStatement | null {

    // at 'for': '(' Statement? Expression? ';' Expression? ')' Statement

    var startPos = tn.tokenPos;

    if (tn.skip(Token.OPENPAREN)) {
      let initializer: Statement | null = null;

      if (tn.skip(Token.CONST)) {
        initializer = this.parseVariable(tn, CommonFlags.CONST, null, tn.tokenPos);
      } else if (tn.skip(Token.LET)) {
        initializer = this.parseVariable(tn, CommonFlags.LET, null, tn.tokenPos);
      } else if (tn.skip(Token.VAR)) {
        initializer = this.parseVariable(tn, CommonFlags.NONE, null, tn.tokenPos);

      } else if (!tn.skip(Token.SEMICOLON)) {
        initializer = this.parseExpressionStatement(tn);
        if (!initializer) return null;
      }

      if (tn.token == Token.SEMICOLON) {
        let condition: ExpressionStatement | null = null;
        if (!tn.skip(Token.SEMICOLON)) {
          condition = this.parseExpressionStatement(tn);
          if (!condition) return null;
        }

        if (tn.token == Token.SEMICOLON) {
          let incrementor: Expression | null = null;
          if (!tn.skip(Token.CLOSEPAREN)) {
            incrementor = this.parseExpression(tn);
            if (!incrementor) return null;

            if (!tn.skip(Token.CLOSEPAREN)) {
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

  parseIfStatement(
    tn: Tokenizer
  ): IfStatement | null {

    // at 'if': '(' Expression ')' Statement ('else' Statement)?

    var startPos = tn.tokenPos;
    if (tn.skip(Token.OPENPAREN)) {
      let condition = this.parseExpression(tn);
      if (!condition) return null;
      if (tn.skip(Token.CLOSEPAREN)) {
        let statement = this.parseStatement(tn);
        if (!statement) return null;
        let elseStatement: Statement | null = null;
        if (tn.skip(Token.ELSE)) {
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

    var startPos = tn.tokenPos;
    if (tn.skip(Token.OPENPAREN)) {
      let condition = this.parseExpression(tn);
      if (!condition) return null;
      if (tn.skip(Token.CLOSEPAREN)) {
        if (tn.skip(Token.OPENBRACE)) {
          let cases = new Array<SwitchCase>();
          while (!tn.skip(Token.CLOSEBRACE)) {
            let case_ = this.parseSwitchCase(tn);
            if (!case_) return null;
            cases.push(<SwitchCase>case_);
          }
          let ret = Node.createSwitchStatement(condition, cases, tn.range(startPos, tn.pos));
          tn.skip(Token.SEMICOLON);
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

    var startPos = tn.tokenPos;
    var statements: Statement[],
        statement: Statement | null;

    // 'case' Expression ':' Statement*

    if (tn.skip(Token.CASE)) {
      let label = this.parseExpression(tn);
      if (!label) return null;
      if (tn.skip(Token.COLON)) {
        statements = new Array<Statement>();
        while (tn.peek() != Token.CASE && tn.nextToken != Token.DEFAULT && tn.nextToken != Token.CLOSEBRACE) {
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

    } else if (tn.skip(Token.DEFAULT)) {
      if (tn.skip(Token.COLON)) {
        statements = new Array<Statement>();
        while (tn.peek() != Token.CASE && tn.nextToken != Token.DEFAULT && tn.nextToken != Token.CLOSEBRACE) {
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

    var startPos = tn.tokenPos;
    var expression = this.parseExpression(tn);
    if (!expression) return null;
    var ret = Node.createThrowStatement(<Expression>expression, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseTryStatement(
    tn: Tokenizer
  ): TryStatement | null {

    // at 'try':
    //   '{' Statement* '}'
    //   ('catch' '(' VariableMember ')' '{' Statement* '}')?
    //   ('finally' '{' Statement* '}'? ';'?

    var startPos = tn.tokenPos;
    var stmt: Statement | null;
    if (tn.skip(Token.OPENBRACE)) {
      let statements = new Array<Statement>();
      while (!tn.skip(Token.CLOSEBRACE)) {
        stmt = this.parseStatement(tn);
        if (!stmt) return null;
        statements.push(<Statement>stmt);
      }
      let catchVariable: IdentifierExpression | null = null;
      let catchStatements: Statement[] | null = null;
      let finallyStatements: Statement[] | null = null;
      if (tn.skip(Token.CATCH)) {
        if (!tn.skip(Token.OPENPAREN)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), "("
          );
          return null;
        }
        if (!tn.skip(Token.IDENTIFIER)) {
          this.error(
            DiagnosticCode.Identifier_expected,
            tn.range()
          );
          return null;
        }
        catchVariable = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
        if (!tn.skip(Token.CLOSEPAREN)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ")"
          );
          return null;
        }
        if (!tn.skip(Token.OPENBRACE)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), "{"
          );
          return null;
        }
        catchStatements = [];
        while (!tn.skip(Token.CLOSEBRACE)) {
          stmt = this.parseStatement(tn);
          if (!stmt) return null;
          catchStatements.push(<Statement>stmt);
        }
      }
      if (tn.skip(Token.FINALLY)) {
        if (!tn.skip(Token.OPENBRACE)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), "{"
          );
          return null;
        }
        finallyStatements = [];
        while (!tn.skip(Token.CLOSEBRACE)) {
          stmt = this.parseStatement(tn);
          if (!stmt) return null;
          finallyStatements.push(<Statement>stmt);
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
        statements,
        catchVariable,
        catchStatements,
        finallyStatements,
        tn.range(startPos, tn.pos)
      );
      tn.skip(Token.SEMICOLON);
      return ret;
    } else {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), "{"
      );
    }
    return null;
  }

  parseTypeDeclaration(
    tn: Tokenizer,
    flags: CommonFlags,
    decorators: DecoratorNode[] | null,
    startPos: i32
  ): TypeDeclaration | null {

    // at 'type': Identifier ('<' TypeParameters '>')? '=' Type ';'?

    if (tn.skip(Token.IDENTIFIER)) {
      let name = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      let typeParameters: TypeParameterNode[] | null = null;
      if (tn.skip(Token.LESSTHAN)) {
        typeParameters = this.parseTypeParameters(tn);
        if (!typeParameters) return null;
        flags |= CommonFlags.GENERIC;
      }
      if (tn.skip(Token.EQUALS)) {
        let type = this.parseType(tn);
        if (!type) return null;
        let ret = Node.createTypeDeclaration(
          name,
          typeParameters,
          type,
          decorators,
          flags,
          tn.range(startPos, tn.pos)
        );
        tn.skip(Token.SEMICOLON);
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

  parseVoidStatement(
    tn: Tokenizer
  ): VoidStatement | null {

    // at 'void': Expression ';'?

    var startPos = tn.tokenPos;
    var expression = this.parseExpression(tn, Precedence.GROUPING);
    if (!expression) return null;
    var ret = Node.createVoidStatement(expression, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseWhileStatement(
    tn: Tokenizer
  ): WhileStatement | null {

    // at 'while': '(' Expression ')' Statement ';'?

    var startPos = tn.tokenPos;
    if (tn.skip(Token.OPENPAREN)) {
      let expression = this.parseExpression(tn);
      if (!expression) return null;
      if (tn.skip(Token.CLOSEPAREN)) {
        let statement = this.parseStatement(tn);
        if (!statement) return null;
        let ret = Node.createWhileStatement(expression, statement, tn.range(startPos, tn.pos));
        tn.skip(Token.SEMICOLON);
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
  // see: http://www.engr.mun.ca/~theo/Misc/exp_parsing.htm#climbing

  parseExpressionStart(
    tn: Tokenizer
  ): Expression | null {

    var token = tn.next(true);
    var startPos = tn.tokenPos;
    var expr: Expression | null = null;

    if (token == Token.NULL) {
      return Node.createNullExpression(tn.range());
    }
    if (token == Token.TRUE) {
      return Node.createTrueExpression(tn.range());
    }
    if (token == Token.FALSE) {
      return Node.createFalseExpression(tn.range());
    }

    var p = determinePrecedenceStart(token);
    if (p != Precedence.INVALID) {
      let operand: Expression | null;

      // TODO: SpreadExpression, YieldExpression (currently become unsupported UnaryPrefixExpressions)

      // NewExpression
      if (token == Token.NEW) {
        operand = this.parseExpression(tn, Precedence.CALL);
        if (!operand) return null;
        if (operand.kind == NodeKind.CALL) {
          return Node.createNewExpression(
            (<CallExpression>operand).expression,
            (<CallExpression>operand).typeArguments,
            (<CallExpression>operand).arguments,
            tn.range(startPos, tn.pos)
          );
        } else {
          this.error(
            DiagnosticCode.Operation_not_supported,
            tn.range()
          );
        }
        return null;
      } else {
        operand = this.parseExpression(tn, p);
        if (!operand) return null;
      }

      // UnaryPrefixExpression
      if (token == Token.PLUS_PLUS || token == Token.MINUS_MINUS) {
        if (
          operand.kind != NodeKind.IDENTIFIER &&
          operand.kind != NodeKind.ELEMENTACCESS &&
          operand.kind != NodeKind.PROPERTYACCESS
        ) {
          this.error(
            DiagnosticCode.The_operand_of_an_increment_or_decrement_operator_must_be_a_variable_or_a_property_access,
            operand.range
          );
        }
      }
      return Node.createUnaryPrefixExpression(token, operand, tn.range(startPos, tn.pos));
    }

    switch (token) {

      // ParenthesizedExpression
      // FunctionExpression
      case Token.OPENPAREN: {

        // determine whether this is a function expression
        if (tn.skip(Token.CLOSEPAREN)) { // must be a function expression (fast route)
          return this.parseFunctionExpressionCommon(
            tn,
            Node.createEmptyIdentifierExpression(tn.range(startPos)),
            [],
            true
          );
        }
        let state = tn.mark();
        let again = true;
        do {
          switch (tn.next(true)) {

            // function expression
            case Token.DOT_DOT_DOT: {
              tn.reset(state);
              return this.parseFunctionExpression(tn);
            }
            // can be both
            case Token.IDENTIFIER: {
              tn.readIdentifier();
              switch (tn.next()) {

                // if we got here, check for arrow
                case Token.CLOSEPAREN: {
                  if (!tn.skip(Token.EQUALS_GREATERTHAN)) {
                    again = false;
                    break;
                  }
                  // fall-through
                }
                // function expression
                case Token.COLON: {    // type annotation
                  tn.reset(state);
                  return this.parseFunctionExpression(tn);
                }
                // can be both
                case Token.QUESTION:   // optional parameter or ternary
                case Token.COMMA: {
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
        expr = this.parseExpression(tn);
        if (!expr) return null;
        if (!tn.skip(Token.CLOSEPAREN)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ")"
          );
          return null;
        }
        return Node.createParenthesizedExpression(expr, tn.range(startPos, tn.pos));
      }
      // ArrayLiteralExpression
      case Token.OPENBRACKET: {
        let elementExpressions = new Array<Expression | null>();
        while (!tn.skip(Token.CLOSEBRACKET)) {
          if (tn.peek() == Token.COMMA) {
            expr = null; // omitted
          } else {
            expr = this.parseExpression(tn, Precedence.COMMA + 1);
            if (!expr) return null;
          }
          elementExpressions.push(expr);
          if (!tn.skip(Token.COMMA)) {
            if (tn.skip(Token.CLOSEBRACKET)) {
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
      // AssertionExpression (unary prefix)
      case Token.LESSTHAN: {
        let toType = this.parseType(tn);
        if (!toType) return null;
        if (!tn.skip(Token.GREATERTHAN)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), ">"
          );
          return null;
        }
        expr = this.parseExpression(tn, Precedence.CALL);
        if (!expr) return null;
        return Node.createAssertionExpression(
          AssertionKind.PREFIX,
          expr,
          toType,
          tn.range(startPos, tn.pos)
        );
      }
      case Token.IDENTIFIER: {
        return Node.createIdentifierExpression(tn.readIdentifier(), tn.range(startPos, tn.pos));
      }
      case Token.THIS: {
        return Node.createThisExpression(tn.range(startPos, tn.pos));
      }
      case Token.CONSTRUCTOR: {
        return Node.createConstructorExpression(tn.range(startPos, tn.pos));
      }
      case Token.SUPER: {
        return Node.createSuperExpression(tn.range(startPos, tn.pos));
      }
      case Token.STRINGLITERAL: {
        return Node.createStringLiteralExpression(tn.readString(), tn.range(startPos, tn.pos));
      }
      case Token.INTEGERLITERAL: {
        return Node.createIntegerLiteralExpression(tn.readInteger(), tn.range(startPos, tn.pos));
      }
      case Token.FLOATLITERAL: {
        return Node.createFloatLiteralExpression(tn.readFloat(), tn.range(startPos, tn.pos));
      }
      // RegexpLiteralExpression
      // note that this also continues on invalid ones so the surrounding AST remains intact
      case Token.SLASH: {
        let regexpPattern = tn.readRegexpPattern(); // also reports
        if (!tn.skip(Token.SLASH)) {
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
      case Token.FUNCTION: {
        return this.parseFunctionExpression(tn);
      }
      default: {
        this.error(
          DiagnosticCode.Expression_expected,
          tn.range()
        );
        return null;
      }
    }
  }

  tryParseTypeArgumentsBeforeArguments(
    tn: Tokenizer
  ): CommonTypeNode[] | null {

    // at '<': Type (',' Type)* '>' '('

    var state = tn.mark();
    if (!tn.skip(Token.LESSTHAN)) return null;
    var typeArguments = new Array<CommonTypeNode>();
    do {
      if (tn.peek() === Token.GREATERTHAN) {
        break;
      }
      let type = this.parseType(tn, true, true);
      if (!type) {
        tn.reset(state);
        return null;
      }
      typeArguments.push(type);
    } while (tn.skip(Token.COMMA));
    if (tn.skip(Token.GREATERTHAN) && tn.skip(Token.OPENPAREN)) {
      return typeArguments;
    }
    tn.reset(state);
    return null;
  }

  parseArguments(
    tn: Tokenizer
  ): Expression[] | null {

    // at '(': (Expression (',' Expression)*)? ')'

    var args = new Array<Expression>();
    while (!tn.skip(Token.CLOSEPAREN)) {
      let expr = this.parseExpression(tn, Precedence.COMMA + 1);
      if (!expr) return null;
      args.push(expr);
      if (!tn.skip(Token.COMMA)) {
        if (tn.skip(Token.CLOSEPAREN)) {
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
    precedence: Precedence = 0
  ): Expression | null {

    var expr = this.parseExpressionStart(tn);
    if (!expr) return null;
    var startPos = expr.range.start;

    // CallExpression with type arguments
    var typeArguments: CommonTypeNode[] | null;
    while (
      // there might be better ways to distinguish a LESSTHAN from a CALL with type arguments
      (typeArguments = this.tryParseTypeArgumentsBeforeArguments(tn)) ||
      tn.skip(Token.OPENPAREN)
    ) {
      let args = this.parseArguments(tn);
      if (!args) return null;
      expr = Node.createCallExpression(expr, typeArguments, args, tn.range(startPos, tn.pos));
    }

    var token: Token;
    var next: Expression | null = null;
    var nextPrecedence: Precedence;
    while (
      (nextPrecedence = determinePrecedence(token = tn.peek())) >= precedence
    ) { // precedence climbing
      tn.next();
      switch (token) {
        // AssertionExpression
        case Token.AS: {
          let toType = this.parseType(tn);
          if (!toType) return null;
          expr = Node.createAssertionExpression(
            AssertionKind.AS,
            expr,
            toType,
            tn.range(startPos, tn.pos)
          );
          break;
        }
        // ElementAccessExpression
        case Token.OPENBRACKET: {
          next = this.parseExpression(tn);
          if (!next) return null;
          if (!tn.skip(Token.CLOSEBRACKET)) {
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
          break;
        }
        // UnaryPostfixExpression
        case Token.PLUS_PLUS:
        case Token.MINUS_MINUS: {
          if (
            expr.kind != NodeKind.IDENTIFIER &&
            expr.kind != NodeKind.ELEMENTACCESS &&
            expr.kind != NodeKind.PROPERTYACCESS
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
        case Token.QUESTION: {
          let ifThen = this.parseExpression(tn);
          if (!ifThen) return null;
          if (!tn.skip(Token.COLON)) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), ":"
            );
            return null;
          }
          let ifElse = this.parseExpression(tn, precedence > Precedence.COMMA ? Precedence.COMMA + 1 : 0);
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
        case Token.COMMA: {
          let commaExprs: Expression[] = [ expr ];
          do {
            expr = this.parseExpression(tn, Precedence.COMMA + 1);
            if (!expr) return null;
            commaExprs.push(expr);
          } while (tn.skip(Token.COMMA));
          expr = Node.createCommaExpression(commaExprs, tn.range(startPos, tn.pos));
          break;
        }
        default: {
          next = this.parseExpression(tn,
            isRightAssociative(token)
              ? nextPrecedence
              : nextPrecedence + 1
          );
          if (!next) return null;

          // PropertyAccessExpression
          if (token == Token.DOT) {
            if (next.kind == NodeKind.IDENTIFIER) {
              expr = Node.createPropertyAccessExpression(
                expr,
                <IdentifierExpression>next,
                tn.range(startPos, tn.pos)
              );
            } else if (next.kind == NodeKind.CALL) { // join
              let propertyCall = <CallExpression>next;
              if (propertyCall.expression.kind == NodeKind.IDENTIFIER) {
                propertyCall.expression = Node.createPropertyAccessExpression(
                  expr,
                  <IdentifierExpression>propertyCall.expression,
                  tn.range(startPos, tn.pos)
                );
              } else {
                this.error(
                  DiagnosticCode.Identifier_expected,
                  propertyCall.expression.range
                );
                return null;
              }
              expr = propertyCall;
            } else {
              this.error(
                DiagnosticCode.Identifier_expected,
                next.range
              );
              return null;
            }

          // BinaryExpression
          } else {
            expr = Node.createBinaryExpression(token, expr, next, tn.range(startPos, tn.pos));
          }
          break;
        }
      }
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
        nextToken == Token.ENDOFFILE ||   // next step should handle this
        nextToken == Token.SEMICOLON      // end of the statement for sure
      ) {
        tn.next();
        break;
      }
      if (tn.nextTokenOnNewLine) break;   // end of the statement maybe
      switch (tn.next()) {
        case Token.IDENTIFIER: {
          tn.readIdentifier();
          break;
        }
        case Token.STRINGLITERAL: {
          tn.readString();
          break;
        }
        case Token.INTEGERLITERAL: {
          tn.readInteger();
          break;
        }
        case Token.FLOATLITERAL: {
          tn.readFloat();
          break;
        }
      }
    } while (true);
  }

  /** Skips over a block on errors in an attempt to reduce unnecessary diagnostic noise. */
  // skipBlock(tn: Tokenizer): void {
  //   var depth = 0;
  //   var token: Token;
  //   do {
  //     token = tn.next();
  //     if (token == Token.OPENBRACE) {
  //       ++depth;
  //     } else if (token == Token.CLOSEBRACE) {
  //       if (depth) --depth;
  //       if (!depth) break; // done
  //     }
  //   } while (token != Token.ENDOFFILE);
  // }
}

/** Operator precedence from least to largest. */
export const enum Precedence {
  COMMA,
  SPREAD,
  YIELD,
  ASSIGNMENT,
  CONDITIONAL,
  LOGICAL_OR,
  LOGICAL_AND,
  BITWISE_OR,
  BITWISE_XOR,
  BITWISE_AND,
  EQUALITY,
  RELATIONAL,
  SHIFT,
  ADDITIVE,
  MULTIPLICATIVE,
  EXPONENTIATED,
  UNARY_PREFIX,
  UNARY_POSTFIX,
  CALL,
  MEMBERACCESS,
  GROUPING,
  INVALID = -1
}

/** Determines the precedence of a starting token. */
function determinePrecedenceStart(kind: Token): i32 {
  switch (kind) {
    case Token.DOT_DOT_DOT: return Precedence.SPREAD;
    case Token.YIELD: return Precedence.YIELD;
    case Token.EXCLAMATION:
    case Token.TILDE:
    case Token.PLUS:
    case Token.MINUS:
    case Token.PLUS_PLUS:
    case Token.MINUS_MINUS:
    case Token.TYPEOF:
    case Token.VOID:
    case Token.DELETE: return Precedence.UNARY_PREFIX;
    case Token.NEW: return Precedence.MEMBERACCESS;
    default: return Precedence.INVALID;
  }
}

/** Determines the precende of a non-starting token. */
function determinePrecedence(kind: Token): i32 {
  switch (kind) {
    case Token.COMMA: return Precedence.COMMA;
    case Token.EQUALS:
    case Token.PLUS_EQUALS:
    case Token.MINUS_EQUALS:
    case Token.ASTERISK_ASTERISK_EQUALS:
    case Token.ASTERISK_EQUALS:
    case Token.SLASH_EQUALS:
    case Token.PERCENT_EQUALS:
    case Token.LESSTHAN_LESSTHAN_EQUALS:
    case Token.GREATERTHAN_GREATERTHAN_EQUALS:
    case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS:
    case Token.AMPERSAND_EQUALS:
    case Token.CARET_EQUALS:
    case Token.BAR_EQUALS: return Precedence.ASSIGNMENT;
    case Token.QUESTION: return Precedence.CONDITIONAL;
    case Token.BAR_BAR: return Precedence.LOGICAL_OR;
    case Token.AMPERSAND_AMPERSAND: return Precedence.LOGICAL_AND;
    case Token.BAR: return Precedence.BITWISE_OR;
    case Token.CARET: return Precedence.BITWISE_XOR;
    case Token.AMPERSAND: return Precedence.BITWISE_AND;
    case Token.EQUALS_EQUALS:
    case Token.EXCLAMATION_EQUALS:
    case Token.EQUALS_EQUALS_EQUALS:
    case Token.EXCLAMATION_EQUALS_EQUALS: return Precedence.EQUALITY;
    case Token.AS:
    case Token.IN:
    case Token.INSTANCEOF:
    case Token.LESSTHAN:
    case Token.GREATERTHAN:
    case Token.LESSTHAN_EQUALS:
    case Token.GREATERTHAN_EQUALS: return Precedence.RELATIONAL;
    case Token.LESSTHAN_LESSTHAN:
    case Token.GREATERTHAN_GREATERTHAN:
    case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN: return Precedence.SHIFT;
    case Token.PLUS:
    case Token.MINUS: return Precedence.ADDITIVE;
    case Token.ASTERISK:
    case Token.SLASH:
    case Token.PERCENT: return Precedence.MULTIPLICATIVE;
    case Token.ASTERISK_ASTERISK: return Precedence.EXPONENTIATED;
    case Token.PLUS_PLUS:
    case Token.MINUS_MINUS: return Precedence.UNARY_POSTFIX;
    case Token.DOT:
    case Token.NEW:
    case Token.OPENBRACKET: return Precedence.MEMBERACCESS;
    default: return Precedence.INVALID;
  }
}

/** Determines whether a non-starting token is right associative. */
function isRightAssociative(kind: Token): bool {
  switch (kind) {
    case Token.EQUALS:
    case Token.PLUS_EQUALS:
    case Token.MINUS_EQUALS:
    case Token.ASTERISK_ASTERISK_EQUALS:
    case Token.ASTERISK_EQUALS:
    case Token.SLASH_EQUALS:
    case Token.PERCENT_EQUALS:
    case Token.LESSTHAN_LESSTHAN_EQUALS:
    case Token.GREATERTHAN_GREATERTHAN_EQUALS:
    case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS:
    case Token.AMPERSAND_EQUALS:
    case Token.CARET_EQUALS:
    case Token.BAR_EQUALS:
    case Token.QUESTION:
    case Token.ASTERISK_ASTERISK: return true;
    default: return false;
  }
}
