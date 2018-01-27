/*

 This is a custom parser specifically written for the AssemblyScript subset. It
 accepts some of the most common TypeScript-only patterns that it knows an
 appropriate error message for but, though it uses TypeScript's codes for
 diagnostics, doesn't ultimately aim at full compatibility.

*/

import {
  Program
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
  TypeNode,

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
  Decorator,
  DoStatement,
  EnumDeclaration,
  EnumValueDeclaration,
  ExportImportStatement,
  ExportMember,
  ExportStatement,
  ExpressionStatement,
  FieldDeclaration,
  ForStatement,
  FunctionDeclaration,
  IfStatement,
  ImportDeclaration,
  ImportStatement,
  MethodDeclaration,
  Modifier,
  ModifierKind,
  NamespaceDeclaration,
  Parameter,
  ReturnStatement,
  SwitchCase,
  SwitchStatement,
  ThrowStatement,
  TryStatement,
  TypeDeclaration,
  TypeParameter,
  VariableStatement,
  VariableDeclaration,
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
  parseFile(text: string, path: string, isEntry: bool): void {
    var normalizedPath = normalizePath(path);
    for (var i = 0, k = this.program.sources.length; i < k; ++i)
      if (this.program.sources[i].normalizedPath == normalizedPath)
        return; // already parsed
    this.seenlog.add(normalizedPath);

    var source = new Source(path, text, isEntry ? SourceKind.ENTRY : path.startsWith("std:") ? SourceKind.STDLIB : SourceKind.DEFAULT);
    this.program.sources.push(source);

    var tn = new Tokenizer(source, this.program.diagnostics);
    tn.silentDiagnostics = this.silentDiagnostics;
    source.tokenizer = tn;

    while (!tn.skip(Token.ENDOFFILE)) {
      var statement = this.parseTopLevelStatement(tn);
      if (statement) {
        statement.parent = source;
        source.statements.push(statement);
      }
    }
  }

  parseTopLevelStatement(tn: Tokenizer, isNamespaceMember: bool = false): Statement | null {
    var decorators: Decorator[] | null = null;

    while (tn.skip(Token.AT)) {
      var decorator = this.parseDecorator(tn);
      if (!decorator)
        break;
      if (!decorators)
        decorators = new Array();
      (<Decorator[]>decorators).push(<Decorator>decorator);
    }

    var modifiers: Modifier[] | null = null;

    if (tn.skip(Token.EXPORT))
      modifiers = addModifier(Node.createModifier(ModifierKind.EXPORT, tn.range()), modifiers);

    if (tn.skip(Token.DECLARE)) {
      modifiers = addModifier(Node.createModifier(ModifierKind.DECLARE, tn.range()), modifiers);
      tn.peek(true);
      if (tn.nextTokenOnNewLine)
        this.error(DiagnosticCode.Line_break_not_permitted_here, tn.range(tn.pos)); // recoverable, compatibility
    }

    tn.mark();

    var statement: Statement | null = null;
    var modifier: Modifier | null;
    switch (tn.next()) {

      case Token.CONST:
        modifiers = addModifier(Node.createModifier(ModifierKind.CONST, tn.range()), modifiers);
        if (tn.skip(Token.ENUM)) {
          statement = this.parseEnum(tn, modifiers, decorators);
          break;
        }
        statement = this.parseVariable(tn, modifiers, decorators);
        decorators = null;
        break;

      case Token.LET:
        modifiers = addModifier(Node.createModifier(ModifierKind.LET, tn.range()), modifiers);
      case Token.VAR:
        statement = this.parseVariable(tn, modifiers, decorators);
        decorators = null;
        break;

      case Token.ENUM:
        statement = this.parseEnum(tn, modifiers, decorators);
        decorators = null;
        break;

      case Token.FUNCTION:
        statement = this.parseFunction(tn, modifiers, decorators);
        decorators = null;
        break;

      case Token.ABSTRACT:
        if (!tn.skip(Token.CLASS)) {
          this.error(DiagnosticCode._0_expected, tn.range(tn.pos), "class");
          break;
        }
        modifiers = addModifier(Node.createModifier(ModifierKind.ABSTRACT, tn.range()), modifiers);
        // fall through

      case Token.CLASS:
        statement = this.parseClass(tn, modifiers, decorators);
        decorators = null;
        break;

      case Token.NAMESPACE:
        statement = this.parseNamespace(tn, modifiers, decorators);
        decorators = null;
        break;

      case Token.IMPORT:
        if (modifier = getModifier(ModifierKind.EXPORT, modifiers)) {
          statement = this.parseExportImport(tn, modifier.range);
        } else
          statement = this.parseImport(tn);
        if (modifiers)
          setReusableModifiers(modifiers);
        break;

      case Token.TYPE:
        statement = this.parseTypeDeclaration(tn, modifiers, decorators);
        decorators = null;
        break;

      default:
        if (hasModifier(ModifierKind.EXPORT, modifiers)) {
          tn.reset();
          statement = this.parseExport(tn, modifiers); // TODO: why exactly does this have modifiers again? 'declare'?
        } else {
          if (modifiers) {
            if (modifier = getModifier(ModifierKind.DECLARE, modifiers))
              this.error(DiagnosticCode._0_modifier_cannot_be_used_here, modifier.range, "declare"); // recoverable
            setReusableModifiers(modifiers);
          }
          tn.reset();
          if (!isNamespaceMember)
            statement = this.parseStatement(tn, true);
        }
        break;
    }

    if (decorators /* not consumed */)
      for (var i = 0, k = (<Decorator[]>decorators).length; i < k; ++i)
        this.error(DiagnosticCode.Decorators_are_not_valid_here, (<Decorator[]>decorators)[i].range);

    return statement;
  }

  /** Obtains the next file to parse. */
  nextFile(): string | null {
    if (this.backlog.length) {
      var filename = this.backlog[0];
      for (var i = 0, k = this.backlog.length - 1; i < k; ++i)
        this.backlog[i] = this.backlog[i + 1];
      this.backlog.length--;
      return filename;
    }
    return null;
  }

  /** Finishes parsing and returns the program. */
  finish(): Program {
    if (this.backlog.length)
      throw new Error("backlog is not empty");
    this.backlog = [];
    this.seenlog.clear();
    return this.program;
  }

  parseType(tn: Tokenizer, acceptParenthesized: bool = true, suppressErrors: bool = false): TypeNode | null {
    // not TypeScript-compatible
    var token = tn.next();
    var startPos = tn.tokenPos;

    // void
    if (token == Token.VOID)
      return Node.createType(Node.createIdentifierExpression("void", tn.range()), [], false, tn.range(startPos, tn.pos));

    var type: TypeNode;

    // ( ... )
    if (acceptParenthesized && token == Token.OPENPAREN) {
      var innerType = this.parseType(tn, false, suppressErrors);
      if (!innerType)
        return null;
      if (!tn.skip(Token.CLOSEPAREN)) {
        if (!suppressErrors)
          this.error(DiagnosticCode._0_expected, tn.range(tn.pos), "}");
        return null;
      }
      type = innerType;
      type.range.start = startPos;
      type.range.end = tn.pos;

    // this
    } else if (token == Token.THIS) {
      type = Node.createType(Node.createThisExpression(tn.range()), [], false, tn.range(startPos, tn.pos));

    // true
    } else if (token == Token.TRUE || token == Token.FALSE) {
      type = Node.createType(Node.createIdentifierExpression("bool", tn.range()), [], false, tn.range(startPos, tn.pos));

    // string literal
    } else if (token == Token.STRINGLITERAL) {
      tn.readString();
      type = Node.createType(Node.createIdentifierExpression("string", tn.range()), [], false, tn.range(startPos, tn.pos));

    // Name
    } else if (token == Token.IDENTIFIER) {
      var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      var parameters = new Array<TypeNode>();
      var nullable = false;

      // Name<T>
      if (tn.skip(Token.LESSTHAN)) {
        do {
          var parameter = this.parseType(tn, true, suppressErrors);
          if (!parameter)
            return null;
          parameters.push(<TypeNode>parameter);
        } while (tn.skip(Token.COMMA));
        if (!tn.skip(Token.GREATERTHAN)) {
          if (!suppressErrors)
            this.error(DiagnosticCode._0_expected, tn.range(tn.pos), ">");
          return null;
        }
      }
      // ... | null
      if (tn.skip(Token.BAR)) {
        if (tn.skip(Token.NULL)) {
          nullable = true;
        } else {
          if (!suppressErrors)
            this.error(DiagnosticCode._0_expected, tn.range(tn.pos), "null");
          return null;
        }
      }
      type = Node.createType(identifier, parameters, nullable, tn.range(startPos, tn.pos));

    } else {
      if (!suppressErrors)
        this.error(DiagnosticCode.Identifier_expected, tn.range());
      return null;
    }
    // ... [][]
    while (tn.skip(Token.OPENBRACKET)) {
      var bracketStart = tn.tokenPos;
      if (!tn.skip(Token.CLOSEBRACKET)) {
        if (!suppressErrors)
          this.error(DiagnosticCode._0_expected, tn.range(), "]");
        return null;
      }
      var bracketRange = tn.range(bracketStart, tn.pos);

      // ...[] | null
      nullable = false;
      if (tn.skip(Token.BAR)) {
        if (tn.skip(Token.NULL)) {
          nullable = true;
        } else {
          if (!suppressErrors)
            this.error(DiagnosticCode._0_expected, tn.range(), "null");
          return null;
        }
      }
      type = Node.createType(Node.createIdentifierExpression("Array", bracketRange), [ type ], nullable, tn.range(startPos, tn.pos));
      if (nullable)
        break;
    }

    return type;
  }

  // statements

  parseDecorator(tn: Tokenizer): Decorator | null {
    // at '@': Identifier ('.' Identifier)* '(' Arguments
    var startPos = tn.tokenPos;
    if (tn.skip(Token.IDENTIFIER)) {
      var name = tn.readIdentifier();
      var expression: Expression = Node.createIdentifierExpression(name, tn.range(startPos, tn.pos));
      while (tn.skip(Token.DOT)) {
        if (tn.skip(Token.IDENTIFIER)) {
          name = tn.readIdentifier();
          expression = Node.createPropertyAccessExpression(expression, Node.createIdentifierExpression(name, tn.range()), tn.range(startPos, tn.pos));
        } else {
          this.error(DiagnosticCode.Identifier_expected, tn.range());
          return null;
        }
      }
      var args: Expression[] | null;
      if (tn.skip(Token.OPENPAREN)) {
        args = this.parseArguments(tn);
        if (args)
          return Node.createDecorator(expression, args, tn.range(startPos, tn.pos));
      } else
        return Node.createDecorator(expression, null, tn.range(startPos, tn.pos));
    } else
      this.error(DiagnosticCode.Identifier_expected, tn.range());
    return null;
  }

  parseVariable(tn: Tokenizer, modifiers: Modifier[] | null, decorators: Decorator[] | null): VariableStatement | null {
    // at ('const' | 'let' | 'var'): VariableDeclaration (',' VariableDeclaration)* ';'?
    var startPos = modifiers && modifiers.length ? modifiers[0].range.start : tn.tokenPos;
    var members = new Array<VariableDeclaration>();
    var isDeclare = hasModifier(ModifierKind.DECLARE, modifiers);
    do {
      var member = this.parseVariableDeclaration(tn, isDeclare, modifiers, decorators);
      if (!member)
        return null;
      members.push(<VariableDeclaration>member);
    } while (tn.skip(Token.COMMA));

    var ret = Node.createVariableStatement(members, modifiers, decorators, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseVariableDeclaration(tn: Tokenizer, isDeclare: bool = false, parentModifiers: Modifier[] | null, parentDecorators: Decorator[] | null): VariableDeclaration | null {
    // Identifier (':' Type)? ('=' Expression)?
    if (!tn.skip(Token.IDENTIFIER)) {
      this.error(DiagnosticCode.Identifier_expected, tn.range());
      return null;
    }
    var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());

    var type: TypeNode | null = null;
    if (tn.skip(Token.COLON))
      type = this.parseType(tn);

    var initializer: Expression | null = null;
    if (tn.skip(Token.EQUALS)) {
      if (isDeclare)
        this.error(DiagnosticCode.Initializers_are_not_allowed_in_ambient_contexts, tn.range()); // recoverable
      initializer = this.parseExpression(tn, Precedence.COMMA + 1);
      if (!initializer)
        return null;
    } else {
      if (hasModifier(ModifierKind.CONST, parentModifiers)) {
        if (!hasModifier(ModifierKind.DECLARE, parentModifiers))
          this.error(DiagnosticCode._const_declarations_must_be_initialized, identifier.range);
      } else if (!type) // neither type nor initializer
        this.error(DiagnosticCode.Type_expected, tn.range(tn.pos)); // recoverable
    }
    return Node.createVariableDeclaration(identifier, type, initializer, parentModifiers, parentDecorators, Range.join(identifier.range, tn.range()));
  }

  parseEnum(tn: Tokenizer, modifiers: Modifier[] | null, decorators: Decorator[] | null): EnumDeclaration | null {
    // at 'enum': Identifier '{' (EnumValueDeclaration (',' EnumValueDeclaration )*)? '}' ';'?
    var startPos = modifiers && modifiers.length ? modifiers[0].range.start : tn.tokenPos;
    if (tn.next() != Token.IDENTIFIER) {
      this.error(DiagnosticCode.Identifier_expected, tn.range());
      return null;
    }
    var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    if (tn.next() != Token.OPENBRACE) {
      this.error(DiagnosticCode._0_expected, tn.range(), "{");
      return null;
    }
    var members = new Array<EnumValueDeclaration>();
    if (!tn.skip(Token.CLOSEBRACE)) {
      do {
        var member = this.parseEnumValue(tn);
        if (!member)
          return null;
        members.push(<EnumValueDeclaration>member);
      } while (tn.skip(Token.COMMA));
      if (!tn.skip(Token.CLOSEBRACE)) {
        this.error(DiagnosticCode._0_expected, tn.range(), "}");
        return null;
      }
    }
    var ret = Node.createEnumDeclaration(identifier, members, modifiers, decorators, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseEnumValue(tn: Tokenizer): EnumValueDeclaration | null {
    // Identifier ('=' Expression)?
    if (!tn.skip(Token.IDENTIFIER)) {
      this.error(DiagnosticCode.Identifier_expected, tn.range());
      return null;
    }
    var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    var value: Expression | null = null;
    if (tn.skip(Token.EQUALS)) {
      value = this.parseExpression(tn, Precedence.COMMA + 1);
      if (!value)
        return null;
    }
    return Node.createEnumValueDeclaration(identifier, value, Range.join(identifier.range, tn.range()));
  }

  parseReturn(tn: Tokenizer): ReturnStatement | null {
    // at 'return': Expression | (';' | '}' | ...'\n')
    var expr: Expression | null = null;
    if (tn.peek(true) != Token.SEMICOLON && tn.nextToken != Token.CLOSEBRACE && !tn.nextTokenOnNewLine) {
      expr = this.parseExpression(tn);
      if (!expr)
        return null;
    }
    var ret = Node.createReturnStatement(expr, tn.range());
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseTypeParameters(tn: Tokenizer): TypeParameter[] | null {
    // at '<': TypeParameter (',' TypeParameter)* '>'
    var typeParameters = new Array<TypeParameter>();
    if (!tn.skip(Token.GREATERTHAN)) {
      do {
        var typeParameter = this.parseTypeParameter(tn);
        if (!typeParameter)
          return null;
        typeParameters.push(<TypeParameter>typeParameter);
      } while (tn.skip(Token.COMMA));
      if (!tn.skip(Token.GREATERTHAN)) {
        this.error(DiagnosticCode._0_expected, tn.range(), ">");
        return null;
      }
    } else
      this.error(DiagnosticCode.Type_parameter_list_cannot_be_empty, tn.range()); // recoverable
    return typeParameters;
  }

  parseTypeParameter(tn: Tokenizer): TypeParameter | null {
    // Identifier ('extends' Type)?
    if (tn.next() == Token.IDENTIFIER) {
      var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      var extendsType: TypeNode | null = null;
      if (tn.skip(Token.EXTENDS)) {
        extendsType = this.parseType(tn);
        if (!extendsType)
          return null;
      }
      return Node.createTypeParameter(identifier, extendsType, Range.join(identifier.range, tn.range()));
    } else
      this.error(DiagnosticCode.Identifier_expected, tn.range());
    return null;
  }

  parseParameters(tn: Tokenizer): Parameter[] | null {
    // at '(': (Parameter (',' Parameter)*)? ')'
    var parameters = new Array<Parameter>();
    if (tn.peek() != Token.CLOSEPAREN) {
      do {
        var param = this.parseParameter(tn);
        if (!param)
          return null;
        parameters.push(<Parameter>param);
      } while (tn.skip(Token.COMMA));
    }
    if (tn.skip(Token.CLOSEPAREN))
      return parameters;
    else
      this.error(DiagnosticCode._0_expected, tn.range(), ")");
    return null;
  }

  parseParameter(tn: Tokenizer): Parameter | null {
    // '...'? Identifier (':' Type)? ('=' Expression)?
    var isRest = false;
    var startRange: Range | null = null;
    if (tn.skip(Token.DOT_DOT_DOT)) {
      isRest = true;
      startRange = tn.range();
    }
    if (tn.skip(Token.IDENTIFIER)) {
      if (!isRest)
        startRange = tn.range();
      var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      var type: TypeNode | null = null;
      if (tn.skip(Token.COLON)) {
        type = this.parseType(tn);
        if (!type)
          return null;
      }
      var initializer: Expression | null = null;
      if (tn.skip(Token.EQUALS)) {
        initializer = this.parseExpression(tn, Precedence.COMMA + 1);
        if (!initializer)
          return null;
      }
      return Node.createParameter(identifier, type, initializer, isRest, Range.join(<Range>startRange, tn.range()));
    } else
      this.error(DiagnosticCode.Identifier_expected, tn.range());
    return null;
  }

  parseFunction(tn: Tokenizer, modifiers: Modifier[] | null, decorators: Decorator[] | null): FunctionDeclaration | null {
    // at 'function': Identifier ('<' TypeParameters)? '(' Parameters (':' Type)? '{' Statement* '}' ';'?
    var startPos = modifiers && modifiers.length ? modifiers[0].range.start : tn.tokenPos;

    if (!tn.skip(Token.IDENTIFIER)) {
      this.error(DiagnosticCode.Identifier_expected, tn.range(tn.pos));
      return null;
    }
    var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
    var typeParameters: TypeParameter[] | null = null;
    if (tn.skip(Token.LESSTHAN)) {
      typeParameters = this.parseTypeParameters(tn);
      if (!typeParameters)
        return null;
    } else
      typeParameters = [];
    if (!tn.skip(Token.OPENPAREN)) {
      this.error(DiagnosticCode._0_expected, tn.range(tn.pos), "(");
      return null;
    }
    var parameters = this.parseParameters(tn);
    if (!parameters)
      return null;
    var isSetter = hasModifier(ModifierKind.SET, modifiers);
    if (isSetter) {
      if (parameters.length != 1)
        this.error(DiagnosticCode.A_set_accessor_must_have_exactly_one_parameter, identifier.range); // recoverable
      if (parameters.length && parameters[0].initializer)
        this.error(DiagnosticCode.A_set_accessor_parameter_cannot_have_an_initializer, identifier.range); // recoverable
    }
    var isGetter = hasModifier(ModifierKind.GET, modifiers);
    if (isGetter && parameters.length)
      this.error(DiagnosticCode.A_get_accessor_cannot_have_parameters, identifier.range); // recoverable
    var returnType: TypeNode | null = null;
    if (tn.skip(Token.COLON)) {
      returnType = this.parseType(tn, isSetter);
      if (!returnType)
        return null;
    } else if (!isSetter) {
      this.error(DiagnosticCode.Type_expected, tn.range(tn.pos)); // recoverable
    }
    var isDeclare = hasModifier(ModifierKind.DECLARE, modifiers);
    var statements: Statement[] | null = null;
    if (tn.skip(Token.OPENBRACE)) {
      statements = new Array();
      if (isDeclare)
        this.error(DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts, tn.range()); // recoverable
      while (!tn.skip(Token.CLOSEBRACE)) {
        var statement = this.parseStatement(tn);
        if (!statement)
          return null;
        statements.push(<Statement>statement);
      }
    } else if (!isDeclare)
      this.error(DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration, tn.range(tn.pos));
    var ret = Node.createFunctionDeclaration(identifier, typeParameters, <Parameter[]>parameters, returnType, statements, modifiers, decorators, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseClass(tn: Tokenizer, modifiers: Modifier[] | null, decorators: Decorator[] | null): ClassDeclaration | null {
    // at 'class': Identifier ('<' TypeParameters)? ('extends' Type)? ('implements' Type (',' Type)*)? '{' ClassMember* '}'
    var startPos = decorators && decorators.length
      ? decorators[0].range.start
      : modifiers && modifiers.length
      ? modifiers[0].range.start
      : tn.tokenPos;

    if (tn.skip(Token.IDENTIFIER)) {
      var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      var typeParameters: TypeParameter[] | null;

      if (tn.skip(Token.LESSTHAN)) {
        typeParameters = this.parseTypeParameters(tn);
        if (!typeParameters)
          return null;
      } else
        typeParameters = [];

      var extendsType: TypeNode | null = null;
      if (tn.skip(Token.EXTENDS)) {
        extendsType = this.parseType(tn);
        if (!extendsType)
          return null;
      }

      var implementsTypes = new Array<TypeNode>();
      if (tn.skip(Token.IMPLEMENTS)) {
        do {
          var type = this.parseType(tn);
          if (!type)
            return null;
          implementsTypes.push(<TypeNode>type);
        } while (tn.skip(Token.COMMA));
      }

      if (tn.skip(Token.OPENBRACE)) {
        var members = new Array<DeclarationStatement>();
        if (!tn.skip(Token.CLOSEBRACE)) {
          var isDeclare = hasModifier(ModifierKind.DECLARE, modifiers);
          do {
            var member = this.parseClassMember(tn, isDeclare);
            if (!member)
              return null;
            members.push(<DeclarationStatement>member);
          } while (!tn.skip(Token.CLOSEBRACE));
        }
        return Node.createClassDeclaration(identifier, <TypeParameter[]>typeParameters, extendsType, implementsTypes, members, modifiers, decorators, tn.range(startPos, tn.pos));
      } else
        this.error(DiagnosticCode._0_expected, tn.range(), "{");
    } else
      this.error(DiagnosticCode.Identifier_expected, tn.range());
    return null;
  }

  parseClassMember(tn: Tokenizer, parentIsDeclare: bool): DeclarationStatement | null {
    // ('public' | 'private' | 'protected')? ('static' | 'abstract')? ('get' | 'set')? Identifier ...
    var startPos = tn.pos;

    var decorators = new Array<Decorator>();

    while (tn.skip(Token.AT)) {
      var decorator = this.parseDecorator(tn);
      if (!decorator)
        break;
      decorators.push(<Decorator>decorator);
    }

    var modifiers: Modifier[] | null = null;

    if (tn.skip(Token.PUBLIC))
      modifiers = addModifier(Node.createModifier(ModifierKind.PUBLIC, tn.range()), modifiers);
    else if (tn.skip(Token.PRIVATE))
      modifiers = addModifier(Node.createModifier(ModifierKind.PRIVATE, tn.range()), modifiers);
    else if (tn.skip(Token.PROTECTED))
      modifiers = addModifier(Node.createModifier(ModifierKind.PROTECTED, tn.range()), modifiers);

    if (tn.skip(Token.STATIC))
      modifiers = addModifier(Node.createModifier(ModifierKind.STATIC, tn.range()), modifiers);
    else if (tn.skip(Token.ABSTRACT))
      modifiers = addModifier(Node.createModifier(ModifierKind.ABSTRACT, tn.range()), modifiers);

    if (tn.skip(Token.READONLY))
      modifiers = addModifier(Node.createModifier(ModifierKind.READONLY, tn.range()), modifiers);

    // check if accessor: ('get' | 'set') ^\n Identifier
    tn.mark();
    var isGetter = false;
    var isSetter = false;
    if (isGetter = tn.skip(Token.GET)) {
      if (tn.peek(true, true) == Token.IDENTIFIER && !tn.nextTokenOnNewLine)
        modifiers = addModifier(Node.createModifier(ModifierKind.GET, tn.range()), modifiers);
      else {
        tn.reset();
        isGetter = false;
      }
    } else if (isSetter = tn.skip(Token.SET)) { // can't be both
      if (tn.peek(true, true) == Token.IDENTIFIER && !tn.nextTokenOnNewLine)
        modifiers = addModifier(Node.createModifier(ModifierKind.SET, tn.range()), modifiers);
      else {
        tn.reset();
        isSetter = false;
      }
    }

    var isConstructor = tn.skip(Token.CONSTRUCTOR);
    if (isConstructor || tn.skip(Token.IDENTIFIER)) {
      var identifier = isConstructor
        ? Node.createConstructorExpression(tn.range())
        : Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      var typeParameters: TypeParameter[] | null;
      if (tn.skip(Token.LESSTHAN)) {
        if (isConstructor)
          this.error(DiagnosticCode.Type_parameters_cannot_appear_on_a_constructor_declaration, tn.range()); // recoverable
        typeParameters = this.parseTypeParameters(tn);
        if (!typeParameters)
          return null;
      } else
        typeParameters = [];

      // method: '(' Parameters (':' Type)? '{' Statement* '}' ';'?
      if (tn.skip(Token.OPENPAREN)) {
        var parameters = this.parseParameters(tn);
        if (!parameters)
          return null;
        if (isGetter && parameters.length)
          this.error(DiagnosticCode.A_get_accessor_cannot_have_parameters, identifier.range);
        if (isSetter) {
          if (parameters.length != 1)
            this.error(DiagnosticCode.A_set_accessor_must_have_exactly_one_parameter, identifier.range);
          if (parameters.length && parameters[0].initializer)
            this.error(DiagnosticCode.A_set_accessor_parameter_cannot_have_an_initializer, identifier.range);
        }
        var returnType: TypeNode | null = null;
        if (tn.skip(Token.COLON)) {
          if (identifier.kind == NodeKind.CONSTRUCTOR)
            this.error(DiagnosticCode.Type_annotation_cannot_appear_on_a_constructor_declaration, tn.range());
          else if (isSetter)
            this.error(DiagnosticCode.A_set_accessor_cannot_have_a_return_type_annotation, tn.range());
          returnType = this.parseType(tn, identifier.kind == NodeKind.CONSTRUCTOR || isSetter);
          if (!returnType)
            return null;
        } else if (!isSetter && identifier.kind != NodeKind.CONSTRUCTOR)
          this.error(DiagnosticCode.Type_expected, tn.range()); // recoverable
        var statements: Statement[] | null = null;
        if (tn.skip(Token.OPENBRACE)) {
          if (parentIsDeclare)
            this.error(DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts, tn.range()); // recoverable
          statements = new Array();
          while (!tn.skip(Token.CLOSEBRACE)) {
            var statement = this.parseStatement(tn);
            if (!statement)
              return null;
            statements.push(<Statement>statement);
          }
        } else {
          if (!parentIsDeclare)
            this.error(DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration, tn.range()); // recoverable
        }

        var retMethod = Node.createMethodDeclaration(identifier, <TypeParameter[]>typeParameters, <Parameter[]>parameters, returnType, statements, modifiers, decorators, tn.range(startPos, tn.pos));
        tn.skip(Token.SEMICOLON);
        return retMethod;

      } else if (isConstructor) {
        this.error(DiagnosticCode.Constructor_implementation_is_missing, identifier.range());

      } else if (isGetter || isSetter) {
        this.error(DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration, identifier.range());

      // field: (':' Type)? ('=' Expression)? ';'?
      } else {
        var modifier: Modifier | null;
        if (modifier = getModifier(ModifierKind.ABSTRACT, modifiers))
          this.error(DiagnosticCode._0_modifier_cannot_be_used_here, modifier.range, "abstract"); // recoverable
        if (modifier = getModifier(ModifierKind.GET, modifiers))
          this.error(DiagnosticCode._0_modifier_cannot_be_used_here, modifier.range, "get"); // recoverable
        if (modifier = getModifier(ModifierKind.SET, modifiers))
          this.error(DiagnosticCode._0_modifier_cannot_be_used_here, modifier.range, "set"); // recoverable
        var type: TypeNode | null = null;
        if (tn.skip(Token.COLON)) {
          type = this.parseType(tn);
          if (!type)
            return null;
        } else
          this.error(DiagnosticCode.Type_expected, tn.range()); // recoverable
        var initializer: Expression | null = null;
        if (tn.skip(Token.EQUALS)) {
          initializer = this.parseExpression(tn);
          if (!initializer)
            return null;
        }
        var retField = Node.createFieldDeclaration(identifier, type, initializer, modifiers, decorators, tn.range(startPos, tn.pos));
        tn.skip(Token.SEMICOLON);
        return retField;
      }
    } else
      this.error(DiagnosticCode.Identifier_expected, tn.range());
    return null;
  }

  parseNamespace(tn: Tokenizer, modifiers: Modifier[] | null, decorators: Decorator[] | null): NamespaceDeclaration | null {
    // at 'namespace': Identifier '{' (Variable | Function)* '}'
    var startPos = modifiers && modifiers.length ? modifiers[0].range.start : tn.tokenPos;
    if (tn.skip(Token.IDENTIFIER)) {
      var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      if (tn.skip(Token.OPENBRACE)) {
        var members = new Array<Statement>();
        while (!tn.skip(Token.CLOSEBRACE)) {
          var member = this.parseTopLevelStatement(tn, true);
          if (!member)
            return null;
          members.push(member);
        }
        var ret = Node.createNamespaceDeclaration(identifier, members, modifiers, decorators, tn.range(startPos, tn.pos));
        tn.skip(Token.SEMICOLON);
        return ret;
      } else
        this.error(DiagnosticCode._0_expected, tn.range(), "{");
    } else
      this.error(DiagnosticCode.Identifier_expected, tn.range());
    return null;
  }

  parseExport(tn: Tokenizer, modifiers: Modifier[] | null): ExportStatement | null {
    // at 'export': '{' ExportMember (',' ExportMember)* }' ('from' StringLiteral)? ';'?
    var startPos = modifiers && modifiers.length ? modifiers[0].range.start : tn.tokenPos;
    if (tn.skip(Token.OPENBRACE)) {
      var members = new Array<ExportMember>();
      if (!tn.skip(Token.CLOSEBRACE)) {
        do {
          var member = this.parseExportMember(tn);
          if (!member)
            return null;
          members.push(member);
        } while (tn.skip(Token.COMMA));
        if (!tn.skip(Token.CLOSEBRACE)) {
          this.error(DiagnosticCode._0_expected, tn.range(), "}");
          return null;
        }
      }
      var path: StringLiteralExpression | null = null;
      if (tn.skip(Token.FROM)) {
        if (tn.skip(Token.STRINGLITERAL))
          path = Node.createStringLiteralExpression(tn.readString(), tn.range());
        else {
          this.error(DiagnosticCode.String_literal_expected, tn.range());
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
    } else
      this.error(DiagnosticCode._0_expected, tn.range(), "{");
    return null;
  }

  parseExportMember(tn: Tokenizer): ExportMember | null {
    // Identifier ('as' Identifier)?
    if (tn.skip(Token.IDENTIFIER)) {
      var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      var asIdentifier: IdentifierExpression | null = null;
      if (tn.skip(Token.AS)) {
        if (tn.skip(Token.IDENTIFIER))
          asIdentifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
        else {
          this.error(DiagnosticCode.Identifier_expected, tn.range());
          return null;
        }
      }
      return Node.createExportMember(identifier, asIdentifier, asIdentifier ? Range.join(identifier.range, asIdentifier.range) : identifier.range);
    } else
      this.error(DiagnosticCode.Identifier_expected, tn.range());
    return null;
  }

  parseImport(tn: Tokenizer): ImportStatement | null {
    // at 'import': ('{' (ImportMember (',' ImportMember)*)? '}' | '*' 'as' Identifier)? 'from' StringLiteral ';'?
    var startPos = tn.tokenPos;
    var members: ImportDeclaration[] | null = null;
    var namespaceName: IdentifierExpression | null = null;
    var skipFrom = false;
    if (tn.skip(Token.OPENBRACE)) {
      members = new Array();
      if (!tn.skip(Token.CLOSEBRACE)) {
        do {
          var member = this.parseImportDeclaration(tn);
          if (!member)
            return null;
          members.push(member);
        } while (tn.skip(Token.COMMA));
        if (!tn.skip(Token.CLOSEBRACE)) {
          this.error(DiagnosticCode._0_expected, tn.range(), "}");
          return null;
        }
      }
    } else if (tn.skip(Token.ASTERISK)) {
      if (tn.skip(Token.AS)) {
        if (tn.skip(Token.IDENTIFIER)) {
          namespaceName = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
        } else {
          this.error(DiagnosticCode.Identifier_expected, tn.range());
          return null;
        }
      } else {
        this.error(DiagnosticCode._0_expected, tn.range(), "as");
        return null;
      }
    } else
      skipFrom = true;

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
      } else
        this.error(DiagnosticCode.String_literal_expected, tn.range());
    } else
      this.error(DiagnosticCode._0_expected, tn.range(), "from");
    return null;
  }

  parseImportDeclaration(tn: Tokenizer): ImportDeclaration | null {
    // Identifier ('as' Identifier)?
    if (tn.skip(Token.IDENTIFIER)) {
      var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      var asIdentifier: IdentifierExpression | null = null;
      if (tn.skip(Token.AS)) {
        if (tn.skip(Token.IDENTIFIER))
          asIdentifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
        else {
          this.error(DiagnosticCode.Identifier_expected, tn.range());
          return null;
        }
      }
      return Node.createImportDeclaration(identifier, asIdentifier, asIdentifier ? Range.join(identifier.range, asIdentifier.range) : identifier.range);
    } else
      this.error(DiagnosticCode.Identifier_expected, tn.range());
    return null;
  }

  parseExportImport(tn: Tokenizer, startRange: Range): ExportImportStatement | null {
    // at 'export' 'import': Identifier ('=' Identifier)? ';'?
    if (tn.skip(Token.IDENTIFIER)) {
      var asIdentifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      if (tn.skip(Token.EQUALS)) {
        if (tn.skip(Token.IDENTIFIER)) {
          var identifier = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
          var ret = Node.createExportImportStatement(identifier, asIdentifier, Range.join(startRange, tn.range()));
          tn.skip(Token.SEMICOLON);
          return ret;
        } else
          this.error(DiagnosticCode.Identifier_expected, tn.range());
      } else
        this.error(DiagnosticCode._0_expected, tn.range(), "=");
    } else
      this.error(DiagnosticCode.Identifier_expected, tn.range());
    return null;
  }

  parseStatement(tn: Tokenizer, topLevel: bool = false): Statement | null {
    // at previous token
    tn.mark();
    var token = tn.next();
    switch (token) {

      case Token.BREAK:
        return this.parseBreak(tn);

      case Token.CONST:
        return this.parseVariable(tn, [ Node.createModifier(ModifierKind.CONST, tn.range()) ], null);

      case Token.CONTINUE:
        return this.parseContinue(tn);

      case Token.DO:
        return this.parseDoStatement(tn);

      case Token.FOR:
        return this.parseForStatement(tn);

      case Token.IF:
        return this.parseIfStatement(tn);

      case Token.LET:
        return this.parseVariable(tn, [ Node.createModifier(ModifierKind.LET, tn.range()) ], null);

      case Token.VAR:
        return this.parseVariable(tn, null, null);

      case Token.OPENBRACE:
        return this.parseBlockStatement(tn, topLevel);

      case Token.RETURN:
        if (topLevel)
          this.error(DiagnosticCode.A_return_statement_can_only_be_used_within_a_function_body, tn.range()); // recoverable
        return this.parseReturn(tn);

      case Token.SEMICOLON:
        return Node.createEmptyStatement(tn.range(tn.tokenPos));

      case Token.SWITCH:
        return this.parseSwitchStatement(tn);

      case Token.THROW:
        return this.parseThrowStatement(tn);

      case Token.TRY:
        return this.parseTryStatement(tn);

      case Token.TYPE:
        return this.parseTypeDeclaration(tn, null);

      case Token.WHILE:
        return this.parseWhileStatement(tn);

      default:
        tn.reset();
        return this.parseExpressionStatement(tn);
    }
  }

  parseBlockStatement(tn: Tokenizer, topLevel: bool): BlockStatement | null {
    // at '{': Statement* '}' ';'?
    var startPos = tn.tokenPos;
    var statements = new Array<Statement>();
    while (!tn.skip(Token.CLOSEBRACE)) {
      var statement = this.parseStatement(tn, topLevel);
      if (!statement)
        return null;
      statements.push(statement);
    }
    var ret = Node.createBlockStatement(statements, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseBreak(tn: Tokenizer): BreakStatement | null {
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

  parseContinue(tn: Tokenizer): ContinueStatement | null {
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

  parseDoStatement(tn: Tokenizer): DoStatement | null {
    // at 'do': Statement 'while' '(' Expression ')' ';'?
    var startPos = tn.tokenPos;
    var statement = this.parseStatement(tn);
    if (!statement)
      return null;
    if (tn.skip(Token.WHILE)) {
      if (tn.skip(Token.OPENPAREN)) {
        var condition = this.parseExpression(tn);
        if (!condition)
          return null;
        if (tn.skip(Token.CLOSEPAREN)) {
          var ret = Node.createDoStatement(<Statement>statement, <Expression>condition, tn.range(startPos, tn.pos));
          tn.skip(Token.SEMICOLON);
          return ret;
        }
        this.error(DiagnosticCode._0_expected, tn.range(), ")");
      } else
        this.error(DiagnosticCode._0_expected, tn.range(), "(");
    } else
      this.error(DiagnosticCode._0_expected, tn.range(), "while");
    return null;
  }

  parseExpressionStatement(tn: Tokenizer): ExpressionStatement | null {
    // at previous token
    var expr = this.parseExpression(tn);
    if (!expr)
      return null;
    var ret = Node.createExpressionStatement(expr);
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseForStatement(tn: Tokenizer): ForStatement | null {
    // at 'for': '(' Statement? Expression? ';' Expression? ')' Statement
    var startPos = tn.tokenPos;
    if (tn.skip(Token.OPENPAREN)) {
      var initializer: Statement | null = null;
      if (tn.skip(Token.LET) || tn.skip(Token.CONST) || tn.skip(Token.VAR)) {
        initializer = this.parseVariable(tn, null, null);
      } else if (!tn.skip(Token.SEMICOLON)) {
        initializer = this.parseExpressionStatement(tn);
        if (!initializer)
          return null;
      }
      if (tn.token == Token.SEMICOLON) {
        var condition: ExpressionStatement | null = null;
        if (!tn.skip(Token.SEMICOLON)) {
          condition = this.parseExpressionStatement(tn);
          if (!condition)
            return null;
        }
        if (tn.token == Token.SEMICOLON) {
          var incrementor: Expression | null = null;
          if (!tn.skip(Token.CLOSEPAREN)) {
            incrementor = this.parseExpression(tn);
            if (!incrementor)
              return null;
            if (!tn.skip(Token.CLOSEPAREN)) {
              this.error(DiagnosticCode._0_expected, tn.range(), ")");
              return null;
            }
          }
          var statement = this.parseStatement(tn);
          if (!statement)
            return null;
          return Node.createForStatement(initializer, condition ? condition.expression : null, incrementor, statement, tn.range(startPos, tn.pos));
        } else
          this.error(DiagnosticCode._0_expected, tn.range(), ";");
      } else
        this.error(DiagnosticCode._0_expected, tn.range(), ";");
    } else
      this.error(DiagnosticCode._0_expected, tn.range(), "(");
    return null;
  }

  parseIfStatement(tn: Tokenizer): IfStatement | null {
    // at 'if': '(' Expression ')' Statement ('else' Statement)?
    var startPos = tn.tokenPos;
    if (tn.skip(Token.OPENPAREN)) {
      var condition = this.parseExpression(tn);
      if (!condition)
        return null;
      if (tn.skip(Token.CLOSEPAREN)) {
        var statement = this.parseStatement(tn);
        if (!statement)
          return null;
        var elseStatement: Statement | null = null;
        if (tn.skip(Token.ELSE)) {
          elseStatement = this.parseStatement(tn);
          if (!elseStatement)
            return null;
        }
        return Node.createIfStatement(<Expression>condition, <Statement>statement, elseStatement, tn.range(startPos, tn.pos));
      }
      this.error(DiagnosticCode._0_expected, tn.range(), ")");
    } else
      this.error(DiagnosticCode._0_expected, tn.range(), "(");
    return null;
  }

  parseSwitchStatement(tn: Tokenizer): SwitchStatement | null {
    // at 'switch': '(' Expression ')' '{' SwitchCase* '}' ';'?
    var startPos = tn.tokenPos;
    if (tn.skip(Token.OPENPAREN)) {
      var condition = this.parseExpression(tn);
      if (!condition)
        return null;
      if (tn.skip(Token.CLOSEPAREN)) {
        if (tn.skip(Token.OPENBRACE)) {
          var cases = new Array<SwitchCase>();
          while (!tn.skip(Token.CLOSEBRACE)) {
            var case_ = this.parseSwitchCase(tn);
            if (!case_)
              return null;
            cases.push(<SwitchCase>case_);
          }
          var ret = Node.createSwitchStatement(condition, cases, tn.range(startPos, tn.pos));
          tn.skip(Token.SEMICOLON);
          return ret;
        } else
          this.error(DiagnosticCode._0_expected, tn.range(), "{");
      } else
        this.error(DiagnosticCode._0_expected, tn.range(), ")");
    } else
      this.error(DiagnosticCode._0_expected, tn.range(), "(");
    return null;
  }

  parseSwitchCase(tn: Tokenizer): SwitchCase | null {
    var startPos = tn.tokenPos;
    var statements: Statement[],
        statement: Statement | null;

    // 'case' Expression ':' Statement*
    if (tn.skip(Token.CASE)) {
      var label = this.parseExpression(tn);
      if (!label)
        return null;
      if (tn.skip(Token.COLON)) {
        statements = new Array<Statement>();
        while (tn.peek() != Token.CASE && tn.nextToken != Token.DEFAULT && tn.nextToken != Token.CLOSEBRACE) {
          statement = this.parseStatement(tn);
          if (!statement)
            return null;
          statements.push(<Statement>statement);
        }
        return Node.createSwitchCase(<Expression>label, statements, tn.range(startPos, tn.pos));
      } else
        this.error(DiagnosticCode._0_expected, tn.range(), ":");

    // 'default' ':' Statement*
    } else if (tn.skip(Token.DEFAULT)) {
      if (tn.skip(Token.COLON)) {
        statements = new Array<Statement>();
        while (tn.peek() != Token.CASE && tn.nextToken != Token.DEFAULT && tn.nextToken != Token.CLOSEBRACE) {
          statement = this.parseStatement(tn);
          if (!statement)
            return null;
          statements.push(statement);
        }
        return Node.createSwitchCase(null, statements, tn.range(startPos, tn.pos));
      } else
        this.error(DiagnosticCode._0_expected, tn.range(), ":");

    } else
      this.error(DiagnosticCode._case_or_default_expected, tn.range());

    return null;
  }

  parseThrowStatement(tn: Tokenizer): ThrowStatement | null {
    // at 'throw': Expression ';'?
    var startPos = tn.tokenPos;
    var expression = this.parseExpression(tn);
    if (!expression)
      return null;
    var ret = Node.createThrowStatement(<Expression>expression, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseTryStatement(tn: Tokenizer): TryStatement | null {
    // at 'try': '{' Statement* '}' ('catch' '(' VariableMember ')' '{' Statement* '}')? ('finally' '{' Statement* '}'? ';'?
    var startPos = tn.tokenPos;
    var stmt: Statement | null;
    if (tn.skip(Token.OPENBRACE)) {
      var statements = new Array<Statement>();
      while (!tn.skip(Token.CLOSEBRACE)) {
        stmt = this.parseStatement(tn);
        if (!stmt)
          return null;
        statements.push(<Statement>stmt);
      }
      var catchVariable: IdentifierExpression | null = null;
      var catchStatements: Statement[] | null = null;
      var finallyStatements: Statement[] | null = null;
      if (tn.skip(Token.CATCH)) {
        if (!tn.skip(Token.OPENPAREN)) {
          this.error(DiagnosticCode._0_expected, tn.range(), "(");
          return null;
        }
        if (!tn.skip(Token.IDENTIFIER)) {
          this.error(DiagnosticCode.Identifier_expected, tn.range());
          return null;
        }
        catchVariable = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
        if (!tn.skip(Token.CLOSEPAREN)) {
          this.error(DiagnosticCode._0_expected, tn.range(), ")");
          return null;
        }
        if (!tn.skip(Token.OPENBRACE)) {
          this.error(DiagnosticCode._0_expected, tn.range(), "{");
          return null;
        }
        catchStatements = new Array();
        while (!tn.skip(Token.CLOSEBRACE)) {
          var stmt = this.parseStatement(tn);
          if (!stmt)
            return null;
          catchStatements.push(<Statement>stmt);
        }
      }
      if (tn.skip(Token.FINALLY)) {
        if (!tn.skip(Token.OPENBRACE)) {
          this.error(DiagnosticCode._0_expected, tn.range(), "{");
          return null;
        }
        finallyStatements = new Array();
        while (!tn.skip(Token.CLOSEBRACE)) {
          stmt = this.parseStatement(tn);
          if (!stmt)
            return null;
          finallyStatements.push(<Statement>stmt);
        }
      }
      if (!(catchStatements || finallyStatements)) {
        this.error(DiagnosticCode._0_expected, tn.range(), "catch");
        return null;
      }
      var ret = Node.createTryStatement(statements, catchVariable, catchStatements, finallyStatements, tn.range(startPos, tn.pos));
      tn.skip(Token.SEMICOLON);
      return ret;
    } else
      this.error(DiagnosticCode._0_expected, tn.range(), "{");
    return null;
  }

  parseTypeDeclaration(tn: Tokenizer, modifiers: Modifier[] | null = null, decorators: Decorator[] | null = null): TypeDeclaration | null {
    // at 'type': Identifier '=' Type ';'?
    var startPos = decorators && decorators.length ? decorators[0].range.start
                 : modifiers && modifiers.length ? modifiers[0].range.start
                 : tn.tokenPos;
    if (tn.skip(Token.IDENTIFIER)) {
      var name = Node.createIdentifierExpression(tn.readIdentifier(), tn.range());
      if (tn.skip(Token.EQUALS)) {
        var type = this.parseType(tn);
        if (!type)
          return null;
        var ret = Node.createTypeDeclaration(name, type, modifiers, decorators, tn.range(startPos, tn.pos));
        tn.skip(Token.SEMICOLON);
        return ret;
      } else
        this.error(DiagnosticCode._0_expected, tn.range(), "=");
    } else
      this.error(DiagnosticCode.Identifier_expected, tn.range());
    return null;
  }

  parseWhileStatement(tn: Tokenizer): WhileStatement | null {
    // at 'while': '(' Expression ')' Statement ';'?
    var startPos = tn.tokenPos;
    if (tn.skip(Token.OPENPAREN)) {
      var expression = this.parseExpression(tn);
      if (!expression)
        return null;
      if (tn.skip(Token.CLOSEPAREN)) {
        var statement = this.parseStatement(tn);
        if (!statement)
          return null;
        var ret = Node.createWhileStatement(<Expression>expression, <Statement>statement, tn.range(startPos, tn.pos));
        tn.skip(Token.SEMICOLON);
        return ret;
      } else
        this.error(DiagnosticCode._0_expected, tn.range(), ")");
    } else
      this.error(DiagnosticCode._0_expected, tn.range(), "(");
    return null;
  }

  // expressions
  // see: http://www.engr.mun.ca/~theo/Misc/exp_parsing.htm#climbing

  parseExpressionStart(tn: Tokenizer): Expression | null {
    var token = tn.next(true);
    var startPos = tn.tokenPos;
    var expr: Expression | null = null;

    if (token == Token.NULL)
      return Node.createNullExpression(tn.range());
    if (token == Token.TRUE)
      return Node.createTrueExpression(tn.range());
    if (token == Token.FALSE)
      return Node.createFalseExpression(tn.range());

    var p = determinePrecedenceStart(token);
    if (p != Precedence.INVALID) {
      var operand: Expression | null;

      // TODO: SpreadExpression, YieldExpression (currently become unsupported UnaryPrefixExpressions)

      // NewExpression
      if (token == Token.NEW) {
        operand = this.parseExpression(tn, Precedence.CALL);
        if (!operand)
          return null;
        if (operand.kind == NodeKind.CALL)
          return Node.createNewExpression((<CallExpression>operand).expression, (<CallExpression>operand).typeArguments, (<CallExpression>operand).arguments, tn.range(startPos, tn.pos));
        this.error(DiagnosticCode.Operation_not_supported, tn.range());
        return null;
      } else {
        operand = this.parseExpression(tn, p);
        if (!operand)
          return null;
      }

      // UnaryPrefixExpression
      if (token == Token.PLUS_PLUS || token == Token.MINUS_MINUS)
        if ((<Expression>operand).kind != NodeKind.IDENTIFIER && (<Expression>operand).kind != NodeKind.ELEMENTACCESS && (<Expression>operand).kind != NodeKind.PROPERTYACCESS)
          this.error(DiagnosticCode.The_operand_of_an_increment_or_decrement_operator_must_be_a_variable_or_a_property_access, (<Expression>operand).range);
      return Node.createUnaryPrefixExpression(token, <Expression>operand, tn.range(startPos, tn.pos));
    }

    switch (token) {

      // ParenthesizedExpression
      case Token.OPENPAREN: {
        expr = this.parseExpression(tn);
        if (!expr)
          return null;
        if (!tn.skip(Token.CLOSEPAREN)) {
          this.error(DiagnosticCode._0_expected, tn.range(), ")");
          return null;
        }
        return Node.createParenthesizedExpression(expr, tn.range(startPos, tn.pos));
      }

      // ArrayLiteralExpression
      case Token.OPENBRACKET: {
        var elementExpressions = new Array<Expression | null>();
        if (!tn.skip(Token.CLOSEBRACKET)) {
          do {
            if (tn.peek() == Token.COMMA || tn.peek() == Token.CLOSEBRACKET)
              expr = null; // omitted
            else {
              expr = this.parseExpression(tn, Precedence.COMMA + 1);
              if (!expr)
                return null;
            }
            elementExpressions.push(expr);
          } while (tn.skip(Token.COMMA));
          if (!tn.skip(Token.CLOSEBRACKET)) {
            this.error(DiagnosticCode._0_expected, tn.range(), "]");
            return null;
          }
        }
        return Node.createArrayLiteralExpression(elementExpressions, tn.range(startPos, tn.pos));
      }

      // AssertionExpression (unary prefix)
      case Token.LESSTHAN: {
        var toType = this.parseType(tn);
        if (!toType)
          return null;
        if (!tn.skip(Token.GREATERTHAN)) {
          this.error(DiagnosticCode._0_expected, tn.range(), ">");
          return null;
        }
        expr = this.parseExpression(tn, Precedence.CALL);
        if (!expr)
          return null;
        return Node.createAssertionExpression(AssertionKind.PREFIX, <Expression>expr, <TypeNode>toType, tn.range(startPos, tn.pos));
      }

      // IdentifierExpression
      case Token.IDENTIFIER:
        return Node.createIdentifierExpression(tn.readIdentifier(), tn.range(startPos, tn.pos));

      case Token.THIS:
        return Node.createThisExpression(tn.range(startPos, tn.pos));

      case Token.CONSTRUCTOR:
        return Node.createConstructorExpression(tn.range(startPos, tn.pos));

      case Token.SUPER:
        return Node.createSuperExpression(tn.range(startPos, tn.pos));

      // StringLiteralExpression
      case Token.STRINGLITERAL:
        return Node.createStringLiteralExpression(tn.readString(), tn.range(startPos, tn.pos));

      // IntegerLiteralExpression
      case Token.INTEGERLITERAL:
        return Node.createIntegerLiteralExpression(tn.readInteger(), tn.range(startPos, tn.pos));

      // FloatLiteralExpression
      case Token.FLOATLITERAL:
        return Node.createFloatLiteralExpression(tn.readFloat(), tn.range(startPos, tn.pos));

      // RegexpLiteralExpression
      // note that this also continues on invalid ones so the surrounding AST remains intact
      case Token.SLASH:
        var regexpPattern = tn.readRegexpPattern(); // also reports
        if (!tn.skip(Token.SLASH)) {
          this.error(DiagnosticCode._0_expected, tn.range(), "/");
          return null;
        }
        return Node.createRegexpLiteralExpression(regexpPattern, tn.readRegexpFlags() /* also reports */, tn.range(startPos, tn.pos));

      default:
        this.error(DiagnosticCode.Expression_expected, tn.range());
        return null;
    }
  }

  tryParseTypeArgumentsBeforeArguments(tn: Tokenizer): TypeNode[] | null {
    // at '<': Type (',' Type)* '>' '('
    tn.mark();
    if (!tn.skip(Token.LESSTHAN))
      return null;

    var typeArguments = new Array<TypeNode>();
    do {
      var type = this.parseType(tn, true, true);
      if (!type) {
        tn.reset();
        return null;
      }
      typeArguments.push(type);
    } while (tn.skip(Token.COMMA));

    if (tn.skip(Token.GREATERTHAN) && tn.skip(Token.OPENPAREN))
      return typeArguments;

    tn.reset();
    return null;
  }

  parseArguments(tn: Tokenizer): Expression[] | null {
    // at '(': (Expression (',' Expression)*)? ')'
    var args = new Array<Expression>();
    if (!tn.skip(Token.CLOSEPAREN)) {
      do {
        var expr = this.parseExpression(tn, Precedence.COMMA + 1);
        if (!expr)
          return null;
        args.push(<Expression>expr);
      } while (tn.skip(Token.COMMA));
      if (!tn.skip(Token.CLOSEPAREN)) {
        this.error(DiagnosticCode._0_expected, tn.range(), ")");
        return null;
      }
    }
    return args;
  }

  parseExpression(tn: Tokenizer, precedence: Precedence = 0): Expression | null {
    var expr = this.parseExpressionStart(tn);
    if (!expr)
      return null;

    var startPos = expr.range.start;

    // ElementAccessExpression
    if (tn.skip(Token.OPENBRACKET)) {
      next = this.parseExpression(tn); // resets precedence
      if (!next)
        return null;
      if (tn.skip(Token.CLOSEBRACKET))
        expr = Node.createElementAccessExpression(<Expression>expr, <Expression>next, tn.range(startPos, tn.pos));
      else {
        this.error(DiagnosticCode._0_expected, tn.range(), "]");
        return null;
      }
    }

    // CallExpression
    var typeArguments = this.tryParseTypeArgumentsBeforeArguments(tn); // skips '(' on success
    // there might be better ways to distinguish a LESSTHAN from a CALL with type arguments
    if (typeArguments || tn.skip(Token.OPENPAREN)) {
      var args = this.parseArguments(tn);
      if (!args)
        return null;
      expr = Node.createCallExpression(expr, typeArguments, args, tn.range(startPos, tn.pos));
    }

    var token: Token;
    var next: Expression | null = null;
    var nextPrecedence: Precedence;
    while ((nextPrecedence = determinePrecedence(token = tn.peek())) >= precedence) { // precedence climbing
      tn.next();

      // AssertionExpression
      if (token == Token.AS) {
        var toType = this.parseType(tn);
        if (!toType)
          return null;
        expr = Node.createAssertionExpression(AssertionKind.AS, expr, toType, tn.range(startPos, tn.pos));

      // UnaryPostfixExpression
      } else if (token == Token.PLUS_PLUS || token == Token.MINUS_MINUS) {
        if (expr.kind != NodeKind.IDENTIFIER && expr.kind != NodeKind.ELEMENTACCESS && expr.kind != NodeKind.PROPERTYACCESS)
          this.error(DiagnosticCode.The_operand_of_an_increment_or_decrement_operator_must_be_a_variable_or_a_property_access, expr.range);
        expr = Node.createUnaryPostfixExpression(token, expr, tn.range(startPos, tn.pos));

      // TernaryExpression
      } else if (token == Token.QUESTION) {
        var ifThen = this.parseExpression(tn);
        if (!ifThen)
          return null;
        if (tn.skip(Token.COLON)) {
          var ifElse = this.parseExpression(tn);
          if (!ifElse)
            return null;
          expr = Node.createTernaryExpression(<Expression>expr, <Expression>ifThen, <Expression>ifElse, tn.range(startPos, tn.pos));
        } else {
          this.error(DiagnosticCode._0_expected, tn.range(), ":");
          return null;
        }

      // CommaExpression
      } else if (token == Token.COMMA) {
        var commaExprs = new Array<Expression>(1);
        commaExprs[0] = <Expression>expr;
        do {
          expr = this.parseExpression(tn, Precedence.COMMA + 1);
          if (!expr)
            return null;
          commaExprs.push(expr);
        } while (tn.skip(Token.COMMA));
        expr = Node.createCommaExpression(commaExprs, tn.range(startPos, tn.pos));

      } else {
        next = this.parseExpression(tn, isRightAssociative(token) ? nextPrecedence : 1 + nextPrecedence);
        if (!next)
          return null;

        // PropertyAccessExpression
        if (token == Token.DOT) {
          if (next.kind == NodeKind.IDENTIFIER) {
            expr = Node.createPropertyAccessExpression(<Expression>expr, <IdentifierExpression>next, tn.range(startPos, tn.pos));
          } else if (next.kind == NodeKind.CALL) { // amend
            var propertyCall = <CallExpression>next;
            if (propertyCall.expression.kind == NodeKind.IDENTIFIER) {
              propertyCall.expression = Node.createPropertyAccessExpression(<Expression>expr, <IdentifierExpression>propertyCall.expression, tn.range(startPos, tn.pos));
            } else
              throw new Error("unexpected expression kind");
            expr = propertyCall;
          } else {
            this.error(DiagnosticCode.Identifier_expected, next.range);
            return null;
          }

        // BinaryExpression
        } else
          expr = Node.createBinaryExpression(token, <Expression>expr, <Expression>next, tn.range(startPos, tn.pos));
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

    case Token.DOT_DOT_DOT:
      return Precedence.SPREAD;

    case Token.YIELD:
      return Precedence.YIELD;

    case Token.EXCLAMATION:
    case Token.TILDE:
    case Token.PLUS:
    case Token.MINUS:
    case Token.PLUS_PLUS:
    case Token.MINUS_MINUS:
    case Token.TYPEOF:
    case Token.VOID:
    case Token.DELETE:
      return Precedence.UNARY_PREFIX;

    case Token.NEW:
      return Precedence.MEMBERACCESS;

    default:
      return Precedence.INVALID;
  }
}

/** Determines the precende of a non-starting token. */
function determinePrecedence(kind: Token): i32 {
  switch (kind) {

    case Token.COMMA:
      return Precedence.COMMA;

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
      return Precedence.ASSIGNMENT;

    case Token.QUESTION:
      return Precedence.CONDITIONAL;

    case Token.BAR_BAR:
      return Precedence.LOGICAL_OR;

    case Token.AMPERSAND_AMPERSAND:
      return Precedence.LOGICAL_AND;

    case Token.BAR:
      return Precedence.BITWISE_OR;

    case Token.CARET:
      return Precedence.BITWISE_XOR;

    case Token.AMPERSAND:
      return Precedence.BITWISE_AND;

    case Token.EQUALS_EQUALS:
    case Token.EXCLAMATION_EQUALS:
    case Token.EQUALS_EQUALS_EQUALS:
    case Token.EXCLAMATION_EQUALS_EQUALS:
      return Precedence.EQUALITY;

    case Token.AS:
    case Token.IN:
    case Token.INSTANCEOF:
    case Token.LESSTHAN:
    case Token.GREATERTHAN:
    case Token.LESSTHAN_EQUALS:
    case Token.GREATERTHAN_EQUALS:
      return Precedence.RELATIONAL;

    case Token.LESSTHAN_LESSTHAN:
    case Token.GREATERTHAN_GREATERTHAN:
    case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN:
      return Precedence.SHIFT;

    case Token.PLUS:
    case Token.MINUS:
      return Precedence.ADDITIVE;

    case Token.ASTERISK:
    case Token.SLASH:
    case Token.PERCENT:
      return Precedence.MULTIPLICATIVE;

    case Token.ASTERISK_ASTERISK:
      return Precedence.EXPONENTIATED;

    case Token.PLUS_PLUS:
    case Token.MINUS_MINUS:
      return Precedence.UNARY_POSTFIX;

    case Token.DOT:
    case Token.NEW:
      return Precedence.MEMBERACCESS;

    default:
      return Precedence.INVALID;
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
    case Token.ASTERISK_ASTERISK:
      return true;

    default:
      return false;
  }
}
