/*

 This is a custom parser specifically written for the AssemblyScript subset. It accepts some of the
 most common TypeScript-only patterns that it knows an appropriate error message for but, though it
 uses TypeScript's codes for diagnostics, doesn't ultimately aim at full compatibility.

*/

import {
  Program,
  LIBRARY_PREFIX,
  PATH_DELIMITER
} from "./program";

import {
  Tokenizer,
  Token,
  Range
} from "./tokenizer";

import {
  DiagnosticCode,
  DiagnosticEmitter
} from "./diagnostics";

import {
  normalize as normalizePath
} from "./util/path";

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
  ModifierNode,
  ModifierKind,
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

  addModifier,
  getModifier,
  hasModifier,
  setReusableModifiers

} from "./ast";

/** Parser interface. */
export class Parser extends DiagnosticEmitter {

  /** Program being created. */
  program: Program;
  /** Log of source file names to be requested. */
  backlog: string[] = new Array();
  /** Log of source file names already processed. */
  seenlog: Set<string> = new Set();

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

    // check if already parsed
    var normalizedPath = normalizePath(path);
    for (var i = 0, k = this.program.sources.length; i < k; ++i) {
      if (this.program.sources[i].normalizedPath == normalizedPath) return;
    }
    this.seenlog.add(normalizedPath);

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
    this.program.sources.push(source);

    // tokenize and parse
    var tn = new Tokenizer(source, this.program.diagnostics);
    source.tokenizer = tn;
    while (!tn.skip(Token.ENDOFFILE)) {
      var statement = this.parseTopLevelStatement(tn);
      if (statement) {
        statement.parent = source;
        source.statements.push(statement);
      }
    }
    tn.finish();
  }

  /** Parses a top-level statement. */
  parseTopLevelStatement(
    tn: Tokenizer,
    isNamespaceMember: bool = false
  ): Statement | null {

    // check decorators
    var decorators: DecoratorNode[] | null = null;
    while (tn.skip(Token.AT)) {
      var decorator = this.parseDecorator(tn);
      if (!decorator) break;
      if (!decorators) decorators = [];
      decorators.push(decorator);
    }

    // check modifiers
    var modifiers: ModifierNode[] | null = null;
    if (tn.skip(Token.EXPORT)) {
      modifiers = addModifier(Node.createModifier(ModifierKind.EXPORT, tn.range()), modifiers);
    }
    if (tn.skip(Token.DECLARE)) {
      modifiers = addModifier(Node.createModifier(ModifierKind.DECLARE, tn.range()), modifiers);
      tn.peek(true);
      if (tn.nextTokenOnNewLine) {
        this.error(
          DiagnosticCode.Line_break_not_permitted_here,
          tn.range(tn.pos)
        ); // recoverable, compatibility
      }
    }

    // parse the statement
    var statement: Statement | null = null;
    var modifier: ModifierNode | null;

    // handle declarations
    switch (tn.peek()) {
      case Token.CONST: {
        tn.next();
        modifiers = addModifier(Node.createModifier(ModifierKind.CONST, tn.range()), modifiers);
        if (tn.skip(Token.ENUM)) {
          statement = this.parseEnum(tn, modifiers, decorators);
          break;
        } else {
          statement = this.parseVariable(tn, modifiers, decorators);
          decorators = null;
        }
        break;
      }
      case Token.LET: {
        modifiers = addModifier(Node.createModifier(ModifierKind.LET, tn.range()), modifiers);
        // fall-through
      }
      case Token.VAR: {
        tn.next();
        statement = this.parseVariable(tn, modifiers, decorators);
        decorators = null;
        break;
      }
      case Token.ENUM: {
        tn.next();
        statement = this.parseEnum(tn, modifiers, decorators);
        decorators = null;
        break;
      }
      case Token.FUNCTION: {
        tn.next();
        statement = this.parseFunction(tn, modifiers, decorators);
        decorators = null;
        break;
      }
      case Token.ABSTRACT: {
        tn.next();
        if (!tn.skip(Token.CLASS)) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(tn.pos), "class"
          );
          break;
        }
        modifiers = addModifier(
          Node.createModifier(ModifierKind.ABSTRACT, tn.range()), modifiers
        );
        // fall through
      }
      case Token.CLASS: {
        tn.next();
        statement = this.parseClass(tn, modifiers, decorators);
        decorators = null;
        break;
      }
      case Token.NAMESPACE: {
        tn.next();
        statement = this.parseNamespace(tn, modifiers, decorators);
        decorators = null;
        break;
      }
      case Token.IMPORT: {
        tn.next();
        if (modifier = getModifier(ModifierKind.EXPORT, modifiers)) {
          statement = this.parseExportImport(tn, modifier.range);
        } else {
          statement = this.parseImport(tn);
        }
        if (modifiers) setReusableModifiers(modifiers);
        break;
      }
      case Token.TYPE: {
        tn.next();
        statement = this.parseTypeDeclaration(tn, modifiers, decorators);
        decorators = null;
        break;
      }
      default: {

        // handle plain exports
        if (hasModifier(ModifierKind.EXPORT, modifiers)) {
          statement = this.parseExport(tn, modifiers); // TODO: why exactly does this have modifiers again? 'declare'?

        // handle non-declaration statements
        } else {
          if (modifiers) {
            if (modifier = getModifier(ModifierKind.DECLARE, modifiers)) {
              this.error(
                DiagnosticCode._0_modifier_cannot_be_used_here,
                modifier.range, "declare"
              ); // recoverable
            }
            setReusableModifiers(modifiers);
          }
          if (!isNamespaceMember) {
            statement = this.parseStatement(tn, true);
          }
        }
        break;
      }
    }

    // check for decorators that weren't consumed
    if (decorators) {
      for (var i = 0, k = decorators.length; i < k; ++i) {
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
      var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      var parameters = new Array<TypeNode>();
      var nullable = false;

      // Name<T>
      if (tn.skip(Token.LESSTHAN)) {
        do {
          var parameter = this.parseType(tn, true, suppressErrors);
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
      var bracketStart = tn.tokenPos;
      if (!tn.skip(Token.CLOSEBRACKET)) {
        if (!suppressErrors) {
          this.error(
            DiagnosticCode._0_expected,
            tn.range(), "]"
          );
        }
        return null;
      }
      var bracketRange = tn.range(bracketStart, tn.pos);

      // ...[] | null
      nullable = false;
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
        var kind = ParameterKind.DEFAULT;
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
          var name = Node.createIdentifierExpression(tn.readIdentifier(), tn.range(tn.tokenPos, tn.pos));
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
            var type = this.parseType(tn); // not suppressing errors because known
            if (!type) {
              this.tryParseSignatureIsSignature = isSignature;
              return null;
            }
            var param = new ParameterNode();
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
      var name = tn.readIdentifier();
      var expression: Expression = Node.createIdentifierExpression(name, tn.range(startPos, tn.pos));
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
      var args: Expression[] | null;
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
    modifiers: ModifierNode[] | null,
    decorators: DecoratorNode[] | null
  ): VariableStatement | null {

    // at ('const' | 'let' | 'var'): VariableDeclaration (',' VariableDeclaration)* ';'?

    var startPos = modifiers && modifiers.length ? modifiers[0].range.start : tn.tokenPos;
    var members = new Array<VariableDeclaration>();
    var isDeclare = hasModifier(ModifierKind.DECLARE, modifiers);
    do {
      var member = this.parseVariableDeclaration(tn, isDeclare, modifiers, decorators);
      if (!member) return null;
      members.push(<VariableDeclaration>member);
    } while (tn.skip(Token.COMMA));

    var ret = Node.createVariableStatement(members, modifiers, decorators, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseVariableDeclaration(
    tn: Tokenizer,
    isDeclare: bool = false,
    parentModifiers: ModifierNode[] | null,
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

    var type: CommonTypeNode | null = null;
    if (tn.skip(Token.COLON)) {
      type = this.parseType(tn);
    }

    var initializer: Expression | null = null;
    if (tn.skip(Token.EQUALS)) {
      if (isDeclare) {
        this.error(
          DiagnosticCode.Initializers_are_not_allowed_in_ambient_contexts,
          tn.range()
        ); // recoverable
      }
      initializer = this.parseExpression(tn, Precedence.COMMA + 1);
      if (!initializer) return null;
    } else {
      if (hasModifier(ModifierKind.CONST, parentModifiers)) {
        if (!hasModifier(ModifierKind.DECLARE, parentModifiers)) {
          this.error(
            DiagnosticCode._const_declarations_must_be_initialized,
            identifier.range
          );
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
      parentModifiers,
      parentDecorators,
      Range.join(identifier.range, tn.range())
    );
  }

  parseEnum(
    tn: Tokenizer,
    modifiers: ModifierNode[] | null,
    decorators: DecoratorNode[] | null
  ): EnumDeclaration | null {

    // at 'enum': Identifier '{' (EnumValueDeclaration (',' EnumValueDeclaration )*)? '}' ';'?

    var startPos = modifiers && modifiers.length ? modifiers[0].range.start : tn.tokenPos;
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
    if (!tn.skip(Token.CLOSEBRACE)) {
      do {
        var member = this.parseEnumValue(tn);
        if (!member) return null;
        members.push(<EnumValueDeclaration>member);
      } while (tn.skip(Token.COMMA));
      if (!tn.skip(Token.CLOSEBRACE)) {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), "}"
        );
        return null;
      }
    }
    var ret = Node.createEnumDeclaration(
      identifier,
      members,
      modifiers,
      decorators,
      tn.range(startPos, tn.pos)
    );
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseEnumValue(
    tn: Tokenizer
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
    if (!tn.skip(Token.GREATERTHAN)) {
      do {
        var typeParameter = this.parseTypeParameter(tn);
        if (!typeParameter) return null;
        typeParameters.push(<TypeParameterNode>typeParameter);
      } while (tn.skip(Token.COMMA));
      if (!tn.skip(Token.GREATERTHAN)) {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), ">"
        );
        return null;
      }
    } else {
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
      var identifier = Node.createIdentifierExpression(
        tn.readIdentifier(),
        tn.range()
      );
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
    tn: Tokenizer
  ): ParameterNode[] | null {

    // at '(': (Parameter (',' Parameter)*)? ')'

    var parameters = new Array<ParameterNode>();
    var seenRest: ParameterNode | null = null;
    var seenOptional = false;
    var reportedRest = false;

    if (tn.peek() != Token.CLOSEPAREN) {
      do {
        var param = this.parseParameter(tn);
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
      } while (tn.skip(Token.COMMA));
    }
    if (!tn.skip(Token.CLOSEPAREN)) {
      this.error(
        DiagnosticCode._0_expected,
        tn.range(), ")"
      );
      return null;
    }
    return parameters;
  }

  parseParameter(
    tn: Tokenizer,
    suppressErrors: bool = false
  ): ParameterNode | null {

    // before: '...'? Identifier '?'? (':' Type)? ('=' Expression)?

    var isRest = false;
    var isOptional = false;
    var startRange: Range | null = null;
    if (tn.skip(Token.DOT_DOT_DOT)) {
      isRest = true;
      startRange = tn.range();
    }
    if (tn.skip(Token.IDENTIFIER)) {
      if (!isRest) startRange = tn.range();
      var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      var type: CommonTypeNode | null = null;
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
      }
      var initializer: Expression | null = null;
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
      return Node.createParameter(
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
    modifiers: ModifierNode[] | null,
    decorators: DecoratorNode[] | null
  ): FunctionDeclaration | null {

    // at 'function':
    //  Identifier
    //  ('<' TypeParameters)?
    //  '(' Parameters (':' Type)?
    //  '{' Statement* '}'
    //  ';'?

    var startPos = modifiers && modifiers.length ? modifiers[0].range.start : tn.tokenPos;

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

    var isSetter = hasModifier(ModifierKind.SET, modifiers);
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

    var isGetter = hasModifier(ModifierKind.GET, modifiers);
    if (isGetter && parameters.length) {
      this.error(
        DiagnosticCode.A_get_accessor_cannot_have_parameters,
        name.range
      ); // recoverable
    }

    var returnType: CommonTypeNode | null = null;
    if (tn.skip(Token.COLON)) {
      returnType = this.parseType(tn, isSetter);
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

    var isDeclare = hasModifier(ModifierKind.DECLARE, modifiers);

    var body: Statement | null = null;
    if (tn.skip(Token.OPENBRACE)) {
      if (isDeclare) {
        this.error(
          DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts,
          tn.range()
        ); // recoverable
      }

      body = this.parseBlockStatement(tn, false);
      if (!body) return null;
    } else if (!isDeclare) {
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
      modifiers,
      decorators,
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
      null,
      tn.range(startPos, tn.pos)
    );
    return Node.createFunctionExpression(declaration, isArrow);
  }

  parseClass(
    tn: Tokenizer,
    modifiers: ModifierNode[] | null,
    decorators: DecoratorNode[] | null
  ): ClassDeclaration | null {

    // at 'class':
    //   Identifier
    //   ('<' TypeParameters)?
    //   ('extends' Type)?
    //   ('implements' Type (',' Type)*)?
    //   '{' ClassMember* '}'

    var startPos = decorators && decorators.length
      ? decorators[0].range.start
      : modifiers && modifiers.length
      ? modifiers[0].range.start
      : tn.tokenPos;

    if (tn.skip(Token.IDENTIFIER)) {

      var identifier = Node.createIdentifierExpression(
        tn.readIdentifier(),
        tn.range()
      );

      var typeParameters: TypeParameterNode[] | null;
      if (tn.skip(Token.LESSTHAN)) {
        typeParameters = this.parseTypeParameters(tn);
        if (!typeParameters) return null;
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

      var implementsTypes = new Array<TypeNode>();
      if (tn.skip(Token.IMPLEMENTS)) {
        do {
          var type = this.parseType(tn);
          if (!type) return null;
          implementsTypes.push(<TypeNode>type);
        } while (tn.skip(Token.COMMA));
      }

      if (tn.skip(Token.OPENBRACE)) {

        var members = new Array<DeclarationStatement>();
        if (!tn.skip(Token.CLOSEBRACE)) {
          var isDeclare = hasModifier(ModifierKind.DECLARE, modifiers);
          do {
            var member = this.parseClassMember(tn, isDeclare);
            if (!member) return null;
            members.push(<DeclarationStatement>member);
          } while (!tn.skip(Token.CLOSEBRACE));
        }
        return Node.createClassDeclaration(
          identifier,
          typeParameters,
          extendsType,
          implementsTypes,
          members,
          modifiers,
          decorators,
          tn.range(startPos, tn.pos)
        );

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

  parseClassMember(
    tn: Tokenizer,
    parentIsDeclare: bool
  ): DeclarationStatement | null {

    // before:
    //   ('public' | 'private' | 'protected')?
    //   ('static' | 'abstract')?
    //   ('get' | 'set')?
    //   Identifier ...

    var startPos = tn.pos;

    var decorators = new Array<DecoratorNode>();
    while (tn.skip(Token.AT)) {
      var decorator = this.parseDecorator(tn);
      if (!decorator) break;
      decorators.push(<DecoratorNode>decorator);
    }

    var modifiers: ModifierNode[] | null = null;

    if (tn.skip(Token.PUBLIC)) {
      modifiers = addModifier(Node.createModifier(ModifierKind.PUBLIC, tn.range()), modifiers);
    } else if (tn.skip(Token.PRIVATE)) {
      modifiers = addModifier(Node.createModifier(ModifierKind.PRIVATE, tn.range()), modifiers);
    } else if (tn.skip(Token.PROTECTED)) {
      modifiers = addModifier(Node.createModifier(ModifierKind.PROTECTED, tn.range()), modifiers);
    }

    if (tn.skip(Token.STATIC)) {
      modifiers = addModifier(Node.createModifier(ModifierKind.STATIC, tn.range()), modifiers);
    } else if (tn.skip(Token.ABSTRACT)) {
      modifiers = addModifier(Node.createModifier(ModifierKind.ABSTRACT, tn.range()), modifiers);
    }

    if (tn.skip(Token.READONLY)) {
      modifiers = addModifier(Node.createModifier(ModifierKind.READONLY, tn.range()), modifiers);
    }

    // check if accessor: ('get' | 'set') ^\n Identifier
    var state = tn.mark();

    var isGetter = false;
    var isSetter = false;

    if (isGetter = tn.skip(Token.GET)) {
      if (tn.peek(true, true) == Token.IDENTIFIER && !tn.nextTokenOnNewLine) {
        modifiers = addModifier(Node.createModifier(ModifierKind.GET, tn.range()), modifiers);
      } else {
        tn.reset(state);
        isGetter = false;
      }

    } else if (isSetter = tn.skip(Token.SET)) { // can't be both
      if (tn.peek(true, true) == Token.IDENTIFIER && !tn.nextTokenOnNewLine) {
        modifiers = addModifier(Node.createModifier(ModifierKind.SET, tn.range()), modifiers);
      } else {
        tn.reset(state);
        isSetter = false;
      }
    }

    var isConstructor = tn.skip(Token.CONSTRUCTOR);
    if (isConstructor || tn.skip(Token.IDENTIFIER)) {

      var name = isConstructor
        ? Node.createConstructorExpression(tn.range())
        : Node.createIdentifierExpression(tn.readIdentifier(), tn.range());

      var typeParameters: TypeParameterNode[] | null = null;
      if (tn.skip(Token.LESSTHAN)) {
        if (isConstructor) {
          this.error(
            DiagnosticCode.Type_parameters_cannot_appear_on_a_constructor_declaration,
            tn.range()
          ); // recoverable
        }
        typeParameters = this.parseTypeParameters(tn);
        if (!typeParameters) return null;
      }

      // method: '(' Parameters (':' Type)? '{' Statement* '}' ';'?
      if (tn.skip(Token.OPENPAREN)) {
        var signatureStart = tn.tokenPos;
        var parameters = this.parseParameters(tn);
        if (!parameters) return null;

        if (isGetter && parameters.length) {
          this.error(
            DiagnosticCode.A_get_accessor_cannot_have_parameters,
            name.range
          );
        }

        if (isSetter) {
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

        var returnType: CommonTypeNode | null = null;
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

        var signature = Node.createSignature(
          parameters,
          returnType,
          null,
          false,
          tn.range(signatureStart, tn.pos)
        );

        var body: Statement | null = null;
        if (tn.skip(Token.OPENBRACE)) {
          if (parentIsDeclare) {
            this.error(
              DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts,
              tn.range()
            ); // recoverable
          }
          body = this.parseBlockStatement(tn, false);
          if (!body) return null;
        } else if (!parentIsDeclare) {
          this.error(
            DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration,
            tn.range()
          ); // recoverable
        }

        var retMethod = Node.createMethodDeclaration(
          name,
          typeParameters,
          signature,
          body,
          modifiers,
          decorators,
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
        var modifier: ModifierNode | null;

        if (modifier = getModifier(ModifierKind.ABSTRACT, modifiers)) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            modifier.range, "abstract"
          ); // recoverable
        }

        if (modifier = getModifier(ModifierKind.GET, modifiers)) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            modifier.range, "get"
          ); // recoverable
        }

        if (modifier = getModifier(ModifierKind.SET, modifiers)) {
          this.error(
            DiagnosticCode._0_modifier_cannot_be_used_here,
            modifier.range, "set"
          ); // recoverable
        }

        var type: CommonTypeNode | null = null;
        if (tn.skip(Token.COLON)) {
          type = this.parseType(tn);
          if (!type) return null;
        } else {
          this.error(
            DiagnosticCode.Type_expected,
            tn.range()
          ); // recoverable
        }
        var initializer: Expression | null = null;
        if (tn.skip(Token.EQUALS)) {
          initializer = this.parseExpression(tn);
          if (!initializer) return null;
        }
        var retField = Node.createFieldDeclaration(
          name,
          type,
          initializer,
          modifiers,
          decorators,
          tn.range(startPos, tn.pos)
        );
        tn.skip(Token.SEMICOLON);
        return retField;
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
    modifiers: ModifierNode[] | null,
    decorators: DecoratorNode[] | null
  ): NamespaceDeclaration | null {

    // at 'namespace': Identifier '{' (Variable | Function)* '}'

    var startPos = modifiers && modifiers.length ? modifiers[0].range.start : tn.tokenPos;
    if (tn.skip(Token.IDENTIFIER)) {
      var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      if (tn.skip(Token.OPENBRACE)) {
        var members = new Array<Statement>();
        while (!tn.skip(Token.CLOSEBRACE)) {
          var member = this.parseTopLevelStatement(tn, true);
          if (!member) return null;
          members.push(member);
        }
        var ret = Node.createNamespaceDeclaration(
          identifier,
          members,
          modifiers,
          decorators,
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
    modifiers: ModifierNode[] | null
  ): ExportStatement | null {

    // at 'export': '{' ExportMember (',' ExportMember)* }' ('from' StringLiteral)? ';'?

    var startPos = modifiers && modifiers.length ? modifiers[0].range.start : tn.tokenPos;

    if (tn.skip(Token.OPENBRACE)) {
      var members = new Array<ExportMember>();
      if (!tn.skip(Token.CLOSEBRACE)) {
        do {
          var member = this.parseExportMember(tn);
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
      var path: StringLiteralExpression | null = null;
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
      var ret = Node.createExportStatement(members, path, modifiers, tn.range(startPos, tn.pos));
      if (ret.normalizedPath && !this.seenlog.has(<string>ret.normalizedPath)) {
        this.backlog.push(<string>ret.normalizedPath);
        this.seenlog.add(<string>ret.normalizedPath);
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
      var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      var asIdentifier: IdentifierExpression | null = null;
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
          var member = this.parseImportDeclaration(tn);
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
        var path = Node.createStringLiteralExpression(tn.readString(), tn.range());
        var ret: ImportStatement;
        if (namespaceName) {
          assert(!members);
          ret = Node.createImportStatementWithWildcard(namespaceName, path, tn.range(startPos, tn.pos));
        } else {
          ret = Node.createImportStatement(members, path, tn.range(startPos, tn.pos));
        }
        if (!this.seenlog.has(ret.normalizedPath)) {
          this.backlog.push(ret.normalizedPath);
          this.seenlog.add(ret.normalizedPath);
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
      var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      var asIdentifier: IdentifierExpression | null = null;
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
    startRange: Range
  ): ExportImportStatement | null {

    // at 'export' 'import': Identifier ('=' Identifier)? ';'?

    if (tn.skip(Token.IDENTIFIER)) {
      var asIdentifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      if (tn.skip(Token.EQUALS)) {
        if (tn.skip(Token.IDENTIFIER)) {
          var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
          var ret = Node.createExportImportStatement(identifier, asIdentifier, Range.join(startRange, tn.range()));
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
    switch (token) {
      case Token.BREAK: {
        return this.parseBreak(tn);
      }
      case Token.CONST: {
        return this.parseVariable(tn, [
          Node.createModifier(ModifierKind.CONST, tn.range())
        ], null);
      }
      case Token.CONTINUE: {
        return this.parseContinue(tn);
      }
      case Token.DO: {
        return this.parseDoStatement(tn);
      }
      case Token.FOR: {
        return this.parseForStatement(tn);
      }
      case Token.IF: {
        return this.parseIfStatement(tn);
      }
      case Token.LET: {
        return this.parseVariable(tn, [
          Node.createModifier(ModifierKind.LET, tn.range())
        ], null);
      }
      case Token.VAR: {
        return this.parseVariable(tn, null, null);
      }
      case Token.OPENBRACE: {
        return this.parseBlockStatement(tn, topLevel);
      }
      case Token.RETURN: {
        if (topLevel) {
          this.error(
            DiagnosticCode.A_return_statement_can_only_be_used_within_a_function_body,
            tn.range()
          ); // recoverable
        }
        return this.parseReturn(tn);
      }
      case Token.SEMICOLON: {
        return Node.createEmptyStatement(tn.range(tn.tokenPos));
      }
      case Token.SWITCH: {
        return this.parseSwitchStatement(tn);
      }
      case Token.THROW: {
        return this.parseThrowStatement(tn);
      }
      case Token.TRY: {
        return this.parseTryStatement(tn);
      }
      case Token.TYPE: {
        return this.parseTypeDeclaration(tn, null);
      }
      case Token.VOID: {
        return this.parseVoidStatement(tn);
      }
      case Token.WHILE: {
        return this.parseWhileStatement(tn);
      }
      default: {
        tn.reset(state);
        return this.parseExpressionStatement(tn);
      }
    }
  }

  parseBlockStatement(
    tn: Tokenizer,
    topLevel: bool
  ): BlockStatement | null {

    // at '{': Statement* '}' ';'?

    var startPos = tn.tokenPos;
    var statements = new Array<Statement>();
    while (!tn.skip(Token.CLOSEBRACE)) {
      var statement = this.parseStatement(tn, topLevel);
      if (!statement) return null;
      statements.push(statement);
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
        var condition = this.parseExpression(tn);
        if (!condition) return null;

        if (tn.skip(Token.CLOSEPAREN)) {
          var ret = Node.createDoStatement(<Statement>statement, <Expression>condition, tn.range(startPos, tn.pos));
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

      var initializer: Statement | null = null;

      if (tn.skip(Token.LET) || tn.skip(Token.CONST) || tn.skip(Token.VAR)) {
        initializer = this.parseVariable(tn, null, null);

      } else if (!tn.skip(Token.SEMICOLON)) {
        initializer = this.parseExpressionStatement(tn);
        if (!initializer) return null;
      }

      if (tn.token == Token.SEMICOLON) {
        var condition: ExpressionStatement | null = null;
        if (!tn.skip(Token.SEMICOLON)) {
          condition = this.parseExpressionStatement(tn);
          if (!condition) return null;
        }

        if (tn.token == Token.SEMICOLON) {
          var incrementor: Expression | null = null;
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

          var statement = this.parseStatement(tn);
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
      var condition = this.parseExpression(tn);
      if (!condition) return null;
      if (tn.skip(Token.CLOSEPAREN)) {
        var statement = this.parseStatement(tn);
        if (!statement) return null;
        var elseStatement: Statement | null = null;
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
      var condition = this.parseExpression(tn);
      if (!condition) return null;
      if (tn.skip(Token.CLOSEPAREN)) {
        if (tn.skip(Token.OPENBRACE)) {
          var cases = new Array<SwitchCase>();
          while (!tn.skip(Token.CLOSEBRACE)) {
            var case_ = this.parseSwitchCase(tn);
            if (!case_) return null;
            cases.push(<SwitchCase>case_);
          }
          var ret = Node.createSwitchStatement(condition, cases, tn.range(startPos, tn.pos));
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
      var label = this.parseExpression(tn);
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
      var statements = new Array<Statement>();
      while (!tn.skip(Token.CLOSEBRACE)) {
        stmt = this.parseStatement(tn);
        if (!stmt) return null;
        statements.push(<Statement>stmt);
      }
      var catchVariable: IdentifierExpression | null = null;
      var catchStatements: Statement[] | null = null;
      var finallyStatements: Statement[] | null = null;
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
      var ret = Node.createTryStatement(
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
    modifiers: ModifierNode[] | null = null,
    decorators: DecoratorNode[] | null = null
  ): TypeDeclaration | null {

    // at 'type': Identifier '=' Type ';'?

    var startPos = decorators && decorators.length ? decorators[0].range.start
                 : modifiers && modifiers.length ? modifiers[0].range.start
                 : tn.tokenPos;
    if (tn.skip(Token.IDENTIFIER)) {
      var name = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      if (tn.skip(Token.EQUALS)) {
        var type = this.parseType(tn);
        if (!type) return null;
        var ret = Node.createTypeDeclaration(name, type, modifiers, decorators, tn.range(startPos, tn.pos));
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
      var expression = this.parseExpression(tn);
      if (!expression) return null;
      if (tn.skip(Token.CLOSEPAREN)) {
        var statement = this.parseStatement(tn);
        if (!statement) return null;
        var ret = Node.createWhileStatement(expression, statement, tn.range(startPos, tn.pos));
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
      var operand: Expression | null;

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
        var state = tn.mark();
        var again = true;
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
                case Token.QUESTION:   // optional parameter
                case Token.COLON: {    // type annotation
                  tn.reset(state);
                  return this.parseFunctionExpression(tn);
                }
                // can be both
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
        var elementExpressions = new Array<Expression | null>();
        if (!tn.skip(Token.CLOSEBRACKET)) {
          do {
            if (tn.peek() == Token.COMMA) {
              expr = null; // omitted
            } else {
              expr = this.parseExpression(tn, Precedence.COMMA + 1);
              if (!expr) return null;
            }
            elementExpressions.push(expr);
            if (tn.peek() == Token.CLOSEBRACKET) break;
          } while (tn.skip(Token.COMMA));
          if (!tn.skip(Token.CLOSEBRACKET)) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), "]"
            );
            return null;
          }
        }
        return Node.createArrayLiteralExpression(elementExpressions, tn.range(startPos, tn.pos));
      }
      // AssertionExpression (unary prefix)
      case Token.LESSTHAN: {
        var toType = this.parseType(tn);
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
        var regexpPattern = tn.readRegexpPattern(); // also reports
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
      var type = this.parseType(tn, true, true);
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
    if (!tn.skip(Token.CLOSEPAREN)) {
      do {
        var expr = this.parseExpression(tn, Precedence.COMMA + 1);
        if (!expr) return null;
        args.push(expr);
      } while (tn.skip(Token.COMMA));
      if (!tn.skip(Token.CLOSEPAREN)) {
        this.error(
          DiagnosticCode._0_expected,
          tn.range(), ")"
        );
        return null;
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

    // CallExpression
    var typeArguments = this.tryParseTypeArgumentsBeforeArguments(tn); // skips '(' on success
    // there might be better ways to distinguish a LESSTHAN from a CALL with type arguments
    if (typeArguments || tn.skip(Token.OPENPAREN)) {
      var args = this.parseArguments(tn);
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
          var toType = this.parseType(tn);
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
          var ifThen = this.parseExpression(tn);
          if (!ifThen) return null;
          if (!tn.skip(Token.COLON)) {
            this.error(
              DiagnosticCode._0_expected,
              tn.range(), ":"
            );
            return null;
          }
          var ifElse = this.parseExpression(tn);
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
          var commaExprs: Expression[] = [ expr ];
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
              var propertyCall = <CallExpression>next;
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
