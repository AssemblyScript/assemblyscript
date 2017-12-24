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
  TypeNode,
  // expressions
  AssertionKind,
  CallExpression,
  Expression,
  IdentifierExpression,
  StringLiteralExpression,
  // statements
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
  Statement,
  SwitchCase,
  SwitchStatement,
  ThrowStatement,
  TryStatement,
  TypeDeclaration,
  TypeParameter,
  VariableStatement,
  VariableDeclaration,
  WhileStatement,
  // utility
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
    const normalizedPath: string = normalizePath(path);
    for (let i: i32 = 0, k: i32 = this.program.sources.length; i < k; ++i)
      if (this.program.sources[i].normalizedPath == normalizedPath)
        return; // already parsed
    this.seenlog.add(normalizedPath);

    const source: Source = new Source(path, text, isEntry);
    this.program.sources.push(source);

    const tn: Tokenizer = new Tokenizer(source, this.program.diagnostics);
    source.tokenizer = tn;

    while (!tn.skip(Token.ENDOFFILE)) {
      const statement: Statement | null = this.parseTopLevelStatement(tn);
      if (statement) {
        statement.parent = source;
        source.statements.push(statement);
      }
    }
  }

  parseTopLevelStatement(tn: Tokenizer, isNamespaceMember: bool = false): Statement | null {
    let decorators: Decorator[] | null = null;

    while (tn.skip(Token.AT)) {
      const decorator: Decorator | null = this.parseDecorator(tn);
      if (!decorator)
        break;
      if (!decorators)
        decorators = new Array();
      (<Decorator[]>decorators).push(<Decorator>decorator);
    }

    let modifiers: Modifier[] | null = null;

    if (tn.skip(Token.EXPORT))
      modifiers = addModifier(Node.createModifier(ModifierKind.EXPORT, tn.range()), modifiers);

    if (tn.skip(Token.DECLARE)) {
      modifiers = addModifier(Node.createModifier(ModifierKind.DECLARE, tn.range()), modifiers);
      tn.peek(true);
      if (tn.nextTokenOnNewLine)
        this.error(DiagnosticCode.Line_break_not_permitted_here, tn.range(tn.pos)); // recoverable, compatibility
    }

    tn.mark();

    let statement: Statement | null = null;
    let modifier: Modifier | null;
    switch (tn.next()) {

      case Token.CONST:
        modifiers = addModifier(Node.createModifier(ModifierKind.CONST, tn.range()), modifiers);

        if (tn.skip(Token.ENUM)) {
          statement = this.parseEnum(tn, modifiers, decorators);
          break;
        }
        // fall through

      case Token.VAR:
      case Token.LET:
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
      for (let i: i32 = 0, k: i32 = (<Decorator[]>decorators).length; i < k; ++i)
        this.error(DiagnosticCode.Decorators_are_not_valid_here, (<Decorator[]>decorators)[i].range);

    return statement;
  }

  /** Obtains the next file to parse. */
  nextFile(): string | null {
    if (this.backlog.length) {
      const filename: string = this.backlog[0];
      for (let i: i32 = 0, k: i32 = this.backlog.length - 1; i < k; ++i)
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
    const token: Token = tn.next();
    const startPos: i32 = tn.tokenPos;

    // void
    if (token == Token.VOID)
      return Node.createType(Node.createIdentifier("void", tn.range()), [], false, tn.range(startPos, tn.pos));

    let type: TypeNode;

    // ( ... )
    if (acceptParenthesized && token == Token.OPENPAREN) {
      const innerType: TypeNode | null = this.parseType(tn, false, suppressErrors);
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
      type = Node.createType(Node.createThis(tn.range()), [], false, tn.range(startPos, tn.pos));

    // true
    } else if (token == Token.TRUE || token == Token.FALSE) {
      type = Node.createType(Node.createIdentifier("bool", tn.range()), [], false, tn.range(startPos, tn.pos));

    // string literal
    } else if (token == Token.STRINGLITERAL) {
      tn.readString();
      type = Node.createType(Node.createIdentifier("string", tn.range()), [], false, tn.range(startPos, tn.pos));

    // Name
    } else if (token == Token.IDENTIFIER) {
      const identifier: IdentifierExpression = Node.createIdentifier(tn.readIdentifier(), tn.range());
      const parameters: TypeNode[] = new Array();
      let nullable: bool = false;

      // Name<T>
      if (tn.skip(Token.LESSTHAN)) {
        do {
          const parameter: TypeNode | null = this.parseType(tn, true, suppressErrors);
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
      let bracketStart: i32 = tn.tokenPos;
      if (!tn.skip(Token.CLOSEBRACKET)) {
        if (!suppressErrors)
          this.error(DiagnosticCode._0_expected, tn.range(), "]");
        return null;
      }
      const bracketRange = tn.range(bracketStart, tn.pos);

      // ...[] | null
      let nullable: bool = false;
      if (tn.skip(Token.BAR)) {
        if (tn.skip(Token.NULL)) {
          nullable = true;
        } else {
          if (!suppressErrors)
            this.error(DiagnosticCode._0_expected, tn.range(), "null");
          return null;
        }
      }
      type = Node.createType(Node.createIdentifier("Array", bracketRange), [ type ], nullable, tn.range(startPos, tn.pos));
      if (nullable)
        break;
    }

    return type;
  }

  // statements

  parseDecorator(tn: Tokenizer): Decorator | null {
    // at '@': Identifier ('.' Identifier)* '(' Arguments
    const startPos: i32 = tn.tokenPos;
    if (tn.skip(Token.IDENTIFIER)) {
      let name: string = tn.readIdentifier();
      let expression: Expression = Node.createIdentifier(name, tn.range(startPos, tn.pos));
      while (tn.skip(Token.DOT)) {
        if (tn.skip(Token.IDENTIFIER)) {
          name = tn.readIdentifier();
          expression = Node.createPropertyAccess(expression, Node.createIdentifier(name, tn.range()), tn.range(startPos, tn.pos));
        } else {
          this.error(DiagnosticCode.Identifier_expected, tn.range());
          return null;
        }
      }
      if (tn.skip(Token.OPENPAREN)) {
        const args: Expression[] | null = this.parseArguments(tn);
        if (args)
          return Node.createDecorator(expression, <Expression[]>args, tn.range(startPos, tn.pos));
      } else
        this.error(DiagnosticCode._0_expected, tn.range(), "(");
    } else
      this.error(DiagnosticCode.Identifier_expected, tn.range());
    return null;
  }

  parseVariable(tn: Tokenizer, modifiers: Modifier[] | null, decorators: Decorator[] | null): VariableStatement | null {
    // at ('const' | 'let' | 'var'): VariableDeclaration (',' VariableDeclaration)* ';'?
    const startPos: i32 = modifiers && modifiers.length ? modifiers[0].range.start : tn.tokenPos;
    const members: VariableDeclaration[] = new Array();
    const isDeclare = hasModifier(ModifierKind.DECLARE, modifiers);
    do {
      const member: VariableDeclaration | null = this.parseVariableDeclaration(tn, isDeclare, modifiers, decorators);
      if (!member)
        return null;
      members.push(<VariableDeclaration>member);
    } while (tn.skip(Token.COMMA));

    const ret: VariableStatement = Node.createVariable(members, modifiers, decorators, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseVariableDeclaration(tn: Tokenizer, isDeclare: bool = false, parentModifiers: Modifier[] | null, parentDecorators: Decorator[] | null): VariableDeclaration | null {
    // Identifier (':' Type)? ('=' Expression)?
    if (!tn.skip(Token.IDENTIFIER)) {
      this.error(DiagnosticCode.Identifier_expected, tn.range());
      return null;
    }
    const identifier: IdentifierExpression = Node.createIdentifier(tn.readIdentifier(), tn.range());

    let type: TypeNode | null = null;
    if (tn.skip(Token.COLON))
      type = this.parseType(tn);

    let initializer: Expression | null = null;
    if (tn.skip(Token.EQUALS)) {
      if (isDeclare)
        this.error(DiagnosticCode.Initializers_are_not_allowed_in_ambient_contexts, tn.range()); // recoverable
      initializer = this.parseExpression(tn, Precedence.COMMA + 1);
      if (!initializer)
        return null;
    } else {
      if (hasModifier(ModifierKind.CONST, parentModifiers))
        this.error(DiagnosticCode._const_declarations_must_be_initialized, identifier.range);
      else if (!type) // neither type nor initializer
        this.error(DiagnosticCode.Type_expected, tn.range(tn.pos)); // recoverable
    }
    return Node.createVariableDeclaration(identifier, type, initializer, parentModifiers, parentDecorators, Range.join(identifier.range, tn.range()));
  }

  parseEnum(tn: Tokenizer, modifiers: Modifier[] | null, decorators: Decorator[] | null): EnumDeclaration | null {
    // at 'enum': Identifier '{' (EnumValueDeclaration (',' EnumValueDeclaration )*)? '}' ';'?
    const startPos: i32 = modifiers && modifiers.length ? modifiers[0].range.start : tn.tokenPos;
    if (tn.next() != Token.IDENTIFIER) {
      this.error(DiagnosticCode.Identifier_expected, tn.range());
      return null;
    }
    const identifier: IdentifierExpression = Node.createIdentifier(tn.readIdentifier(), tn.range());
    if (tn.next() != Token.OPENBRACE) {
      this.error(DiagnosticCode._0_expected, tn.range(), "{");
      return null;
    }
    const members: EnumValueDeclaration[] = new Array();
    if (!tn.skip(Token.CLOSEBRACE)) {
      do {
        const member: EnumValueDeclaration | null = this.parseEnumValue(tn);
        if (!member)
          return null;
        members.push(<EnumValueDeclaration>member);
      } while (tn.skip(Token.COMMA));
      if (!tn.skip(Token.CLOSEBRACE)) {
        this.error(DiagnosticCode._0_expected, tn.range(), "}");
        return null;
      }
    }
    const ret: EnumDeclaration = Node.createEnum(identifier, members, modifiers, decorators, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseEnumValue(tn: Tokenizer): EnumValueDeclaration | null {
    // Identifier ('=' Expression)?
    if (!tn.skip(Token.IDENTIFIER)) {
      this.error(DiagnosticCode.Identifier_expected, tn.range());
      return null;
    }
    const identifier: IdentifierExpression = Node.createIdentifier(tn.readIdentifier(), tn.range());
    let value: Expression | null = null;
    if (tn.skip(Token.EQUALS)) {
      value = this.parseExpression(tn, Precedence.COMMA + 1);
      if (!value)
        return null;
    }
    return Node.createEnumValue(identifier, value, Range.join(identifier.range, tn.range()));
  }

  parseReturn(tn: Tokenizer): ReturnStatement | null {
    // at 'return': Expression | (';' | '}' | ...'\n')
    let expr: Expression | null = null;
    if (tn.peek(true) != Token.SEMICOLON && tn.nextToken != Token.CLOSEBRACE && !tn.nextTokenOnNewLine) {
      expr = this.parseExpression(tn);
      if (!expr)
        return null;
    }
    const ret: ReturnStatement = Node.createReturn(expr, tn.range());
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseTypeParameters(tn: Tokenizer): TypeParameter[] | null {
    // at '<': TypeParameter (',' TypeParameter)* '>'
    const typeParameters: TypeParameter[] = new Array();
    if (!tn.skip(Token.GREATERTHAN)) {
      do {
        const typeParameter: TypeParameter | null = this.parseTypeParameter(tn);
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
      const identifier: IdentifierExpression = Node.createIdentifier(tn.readIdentifier(), tn.range());
      let extendsType: TypeNode | null = null;
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
    const parameters: Parameter[] = new Array();
    if (tn.peek() != Token.CLOSEPAREN) {
      do {
        const param: Parameter | null = this.parseParameter(tn);
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
    let multiple: bool = false;
    let startRange: Range | null = null;
    if (tn.skip(Token.DOT_DOT_DOT)) {
      multiple = true;
      startRange = tn.range();
    }
    if (tn.skip(Token.IDENTIFIER)) {
      if (!multiple)
        startRange = tn.range();
      const identifier: IdentifierExpression = Node.createIdentifier(tn.readIdentifier(), tn.range());
      let type: TypeNode | null = null;
      if (tn.skip(Token.COLON)) {
        type = this.parseType(tn);
        if (!type)
          return null;
      }
      let initializer: Expression | null = null;
      if (tn.skip(Token.EQUALS)) {
        initializer = this.parseExpression(tn);
        if (!initializer)
          return null;
      }
      return Node.createParameter(identifier, type, initializer, multiple, Range.join(<Range>startRange, tn.range()));
    } else
      this.error(DiagnosticCode.Identifier_expected, tn.range());
    return null;
  }

  parseFunction(tn: Tokenizer, modifiers: Modifier[] | null, decorators: Decorator[] | null): FunctionDeclaration | null {
    // at 'function': Identifier ('<' TypeParameters)? '(' Parameters (':' Type)? '{' Statement* '}' ';'?
    const startPos: i32 = modifiers && modifiers.length ? modifiers[0].range.start : tn.tokenPos;

    if (!tn.skip(Token.IDENTIFIER)) {
      this.error(DiagnosticCode.Identifier_expected, tn.range(tn.pos));
      return null;
    }
    const identifier: IdentifierExpression = Node.createIdentifier(tn.readIdentifier(), tn.range());
    let typeParameters: TypeParameter[] | null = null;
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
    const parameters: Parameter[] | null = this.parseParameters(tn);
    if (!parameters)
      return null;
    let isSetter: bool = hasModifier(ModifierKind.SET, modifiers);
    if (isSetter) {
      if (parameters.length != 1)
        this.error(DiagnosticCode.A_set_accessor_must_have_exactly_one_parameter, identifier.range); // recoverable
      if (parameters.length && parameters[0].initializer)
        this.error(DiagnosticCode.A_set_accessor_parameter_cannot_have_an_initializer, identifier.range); // recoverable
    }
    let isGetter: bool = hasModifier(ModifierKind.GET, modifiers);
    if (isGetter && parameters.length)
      this.error(DiagnosticCode.A_get_accessor_cannot_have_parameters, identifier.range); // recoverable
    let returnType: TypeNode | null = null;
    if (tn.skip(Token.COLON)) {
      returnType = this.parseType(tn, isSetter);
      if (!returnType)
        return null;
    } else {
      if (isSetter) {
        if (parameters.length)
          returnType = parameters[0].type;
      } else
        this.error(DiagnosticCode.Type_expected, tn.range(tn.pos)); // recoverable
    }
    const isDeclare: bool = hasModifier(ModifierKind.DECLARE, modifiers);
    let statements: Statement[] | null = null;
    if (tn.skip(Token.OPENBRACE)) {
      statements = new Array();
      if (isDeclare)
        this.error(DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts, tn.range()); // recoverable
      while (!tn.skip(Token.CLOSEBRACE)) {
        const statement: Statement | null = this.parseStatement(tn);
        if (!statement)
          return null;
        statements.push(<Statement>statement);
      }
    } else if (!isDeclare)
      this.error(DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration, tn.range(tn.pos));
    const ret: FunctionDeclaration = Node.createFunction(identifier, typeParameters, <Parameter[]>parameters, returnType, statements, modifiers, decorators, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseClass(tn: Tokenizer, modifiers: Modifier[] | null, decorators: Decorator[] | null): ClassDeclaration | null {
    // at 'class': Identifier ('<' TypeParameters)? ('extends' Type)? ('implements' Type (',' Type)*)? '{' ClassMember* '}'
    const startPos: i32 = decorators && decorators.length
      ? decorators[0].range.start
      : modifiers && modifiers.length
      ? modifiers[0].range.start
      : tn.tokenPos;

    if (tn.skip(Token.IDENTIFIER)) {
      const identifier: IdentifierExpression = Node.createIdentifier(tn.readIdentifier(), tn.range());
      let typeParameters: TypeParameter[] | null;

      if (tn.skip(Token.LESSTHAN)) {
        typeParameters = this.parseTypeParameters(tn);
        if (!typeParameters)
          return null;
      } else
        typeParameters = [];

      let extendsType: TypeNode | null = null;
      if (tn.skip(Token.EXTENDS)) {
        extendsType = this.parseType(tn);
        if (!extendsType)
          return null;
      }

      let implementsTypes: TypeNode[] = new Array();
      if (tn.skip(Token.IMPLEMENTS)) {
        do {
          const type: TypeNode | null = this.parseType(tn);
          if (!type)
            return null;
          implementsTypes.push(<TypeNode>type);
        } while (tn.skip(Token.COMMA));
      }

      if (tn.skip(Token.OPENBRACE)) {
        const members: DeclarationStatement[] = new Array();
        if (!tn.skip(Token.CLOSEBRACE)) {
          const isDeclare = hasModifier(ModifierKind.DECLARE, modifiers);
          do {
            const member: DeclarationStatement | null = this.parseClassMember(tn, isDeclare);
            if (!member)
              return null;
            members.push(<DeclarationStatement>member);
          } while (!tn.skip(Token.CLOSEBRACE));
        }
        return Node.createClass(identifier, <TypeParameter[]>typeParameters, extendsType, implementsTypes, members, modifiers, decorators, tn.range(startPos, tn.pos));
      } else
        this.error(DiagnosticCode._0_expected, tn.range(), "{");
    } else
      this.error(DiagnosticCode.Identifier_expected, tn.range());
    return null;
  }

  parseClassMember(tn: Tokenizer, parentIsDeclare: bool): DeclarationStatement | null {
    // ('public' | 'private' | 'protected')? ('static' | 'abstract')? ('get' | 'set')? Identifier ...
    const startRange: Range = tn.range();

    let decorators: Decorator[] = new Array();

    while (tn.skip(Token.AT)) {
      const decorator: Decorator | null = this.parseDecorator(tn);
      if (!decorator)
        break;
      decorators.push(<Decorator>decorator);
    }

    let modifiers: Modifier[] | null = null;

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

    let isGetter: bool = false;
    let isSetter: bool = false;
    if (isGetter = tn.skip(Token.GET))
      modifiers = addModifier(Node.createModifier(ModifierKind.GET, tn.range()), modifiers);
    else if (isSetter = tn.skip(Token.SET)) // can't be both
      modifiers = addModifier(Node.createModifier(ModifierKind.SET, tn.range()), modifiers);

    if (tn.skip(Token.CONSTRUCTOR) || tn.skip(Token.IDENTIFIER)) { // order is important
      const identifier: IdentifierExpression = tn.token == Token.CONSTRUCTOR
        ? Node.createConstructor(tn.range())
        : Node.createIdentifier(tn.readIdentifier(), tn.range());
      let typeParameters: TypeParameter[] | null;
      if (tn.skip(Token.LESSTHAN)) {
        if (identifier.kind == NodeKind.CONSTRUCTOR)
          this.error(DiagnosticCode.Type_parameters_cannot_appear_on_a_constructor_declaration, tn.range()); // recoverable
        typeParameters = this.parseTypeParameters(tn);
        if (!typeParameters)
          return null;
      } else
        typeParameters = [];

      if (identifier.kind == NodeKind.CONSTRUCTOR && tn.peek() != Token.OPENPAREN)
        this.error(DiagnosticCode.Constructor_implementation_is_missing, tn.range());

      // method: '(' Parameters (':' Type)? '{' Statement* '}' ';'?
      if (tn.skip(Token.OPENPAREN)) {
        let parameters = this.parseParameters(tn);
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
        let returnType: TypeNode | null = null;
        if (tn.skip(Token.COLON)) {
          if (identifier.kind == NodeKind.CONSTRUCTOR)
            this.error(DiagnosticCode.Type_annotation_cannot_appear_on_a_constructor_declaration, tn.range());
          else if (isSetter)
            this.error(DiagnosticCode.A_set_accessor_cannot_have_a_return_type_annotation, tn.range());
          returnType = this.parseType(tn, identifier.kind == NodeKind.CONSTRUCTOR || isSetter);
          if (!returnType)
            return null;
        } else {
          if (isSetter) {
            if (parameters.length)
              returnType = parameters[0].type;
          } else if (identifier.kind != NodeKind.CONSTRUCTOR)
            this.error(DiagnosticCode.Type_expected, tn.range()); // recoverable
        }
        let statements: Statement[] | null = null;
        if (tn.skip(Token.OPENBRACE)) {
          if (parentIsDeclare)
            this.error(DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts, tn.range()); // recoverable
          statements = new Array();
          while (!tn.skip(Token.CLOSEBRACE)) {
            const statement: Statement | null = this.parseStatement(tn);
            if (!statement)
              return null;
            statements.push(<Statement>statement);
          }
        } else {
          if (!parentIsDeclare)
            this.error(DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration, tn.range()); // recoverable
        }

        const ret: MethodDeclaration = Node.createMethod(identifier, <TypeParameter[]>typeParameters, <Parameter[]>parameters, returnType, statements, modifiers, decorators, Range.join(startRange, tn.range()));
        tn.skip(Token.SEMICOLON);
        return ret;

      // field: (':' Type)? ('=' Expression)? ';'?
      } else {
        let modifier: Modifier | null;
        if (modifier = getModifier(ModifierKind.ABSTRACT, modifiers))
          this.error(DiagnosticCode._0_modifier_cannot_be_used_here, modifier.range, "abstract"); // recoverable
        if (modifier = getModifier(ModifierKind.GET, modifiers))
          this.error(DiagnosticCode._0_modifier_cannot_be_used_here, modifier.range, "get"); // recoverable
        if (modifier = getModifier(ModifierKind.SET, modifiers))
          this.error(DiagnosticCode._0_modifier_cannot_be_used_here, modifier.range, "set"); // recoverable
        let type: TypeNode | null = null;
        if (tn.skip(Token.COLON)) {
          type = this.parseType(tn);
          if (!type)
            return null;
        } else
          this.error(DiagnosticCode.Type_expected, tn.range()); // recoverable
        let initializer: Expression | null = null;
        if (tn.skip(Token.EQUALS)) {
          initializer = this.parseExpression(tn);
          if (!initializer)
            return null;
        }
        const ret: FieldDeclaration = Node.createField(identifier, type, initializer, modifiers, decorators, Range.join(startRange, tn.range()));
        tn.skip(Token.SEMICOLON);
        return ret;
      }
    } else
      this.error(DiagnosticCode.Identifier_expected, tn.range());
    return null;
  }

  parseNamespace(tn: Tokenizer, modifiers: Modifier[] | null, decorators: Decorator[] | null): NamespaceDeclaration | null {
    // at 'namespace': Identifier '{' (Variable | Function)* '}'
    const startRange: Range = modifiers && modifiers.length ? modifiers[0].range : tn.range();
    if (tn.skip(Token.IDENTIFIER)) {
      const identifier: IdentifierExpression = Node.createIdentifier(tn.readIdentifier(), tn.range());
      if (tn.skip(Token.OPENBRACE)) {
        const members: Statement[] = new Array();
        while (!tn.skip(Token.CLOSEBRACE)) {
          const member: Statement | null = this.parseTopLevelStatement(tn, true);
          if (!member)
            return null;
          members.push(member);
        }
        const ret: NamespaceDeclaration = Node.createNamespace(identifier, members, modifiers, decorators, Range.join(startRange, tn.range()));
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
    const startRange: Range = modifiers && modifiers.length ? modifiers[0].range : tn.range();
    if (tn.skip(Token.OPENBRACE)) {
      const members: ExportMember[] = new Array();
      if (!tn.skip(Token.CLOSEBRACE)) {
        do {
          const member: ExportMember | null = this.parseExportMember(tn);
          if (!member)
            return null;
          members.push(member);
        } while (tn.skip(Token.COMMA));
        if (!tn.skip(Token.CLOSEBRACE)) {
          this.error(DiagnosticCode._0_expected, tn.range(), "}");
          return null;
        }
      }
      let path: StringLiteralExpression | null = null;
      if (tn.skip(Token.FROM)) {
        if (tn.skip(Token.STRINGLITERAL))
          path = Node.createStringLiteral(tn.readString(), tn.range());
        else {
          this.error(DiagnosticCode.String_literal_expected, tn.range());
          return null;
        }
      }
      const ret: ExportStatement = Node.createExport(members, path, modifiers, Range.join(startRange, tn.range()));
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
      const identifier: IdentifierExpression = Node.createIdentifier(tn.readIdentifier(), tn.range());
      let asIdentifier: IdentifierExpression | null = null;
      if (tn.skip(Token.AS)) {
        if (tn.skip(Token.IDENTIFIER))
          asIdentifier = Node.createIdentifier(tn.readIdentifier(), tn.range());
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
    // at 'import': ('{' (ImportMember (',' ImportMember)*)? '}' | '*' 'as' Identifier) 'from' StringLiteral ';'?
    const startPos: i32 = tn.tokenPos;
    let members: ImportDeclaration[] | null = null;
    let namespaceName: IdentifierExpression | null = null;
    if (tn.skip(Token.OPENBRACE)) {
      members = new Array();
      if (!tn.skip(Token.CLOSEBRACE)) {
        do {
          const member: ImportDeclaration | null = this.parseImportDeclaration(tn);
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
          namespaceName = Node.createIdentifier(tn.readIdentifier(), tn.range());
        } else {
          this.error(DiagnosticCode.Identifier_expected, tn.range());
          return null;
        }
      } else {
        this.error(DiagnosticCode._0_expected, tn.range(), "as");
        return null;
      }
    } else {
      this.error(DiagnosticCode._0_expected, tn.range(), "{");
      return null;
    }
    if (tn.skip(Token.FROM)) {
      if (tn.skip(Token.STRINGLITERAL)) {
        const path: StringLiteralExpression = Node.createStringLiteral(tn.readString(), tn.range());
        let ret: ImportStatement;
        if (members) {
          if (!namespaceName)
            ret = Node.createImport(members, path, tn.range(startPos, tn.pos));
          else {
            assert(false);
            return null;
          }
        } else if (namespaceName) {
          ret = Node.createImportAll(namespaceName, path, tn.range(startPos, tn.pos));
        } else {
          assert(false);
          return null;
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
      const identifier: IdentifierExpression = Node.createIdentifier(tn.readIdentifier(), tn.range());
      let asIdentifier: IdentifierExpression | null = null;
      if (tn.skip(Token.AS)) {
        if (tn.skip(Token.IDENTIFIER))
          asIdentifier = Node.createIdentifier(tn.readIdentifier(), tn.range());
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
      const asIdentifier: IdentifierExpression = Node.createIdentifier(tn.readIdentifier(), tn.range());
      if (tn.skip(Token.EQUALS)) {
        if (tn.skip(Token.IDENTIFIER)) {
          const identifier: IdentifierExpression = Node.createIdentifier(tn.readIdentifier(), tn.range());
          const ret: ExportImportStatement = Node.createExportImport(identifier, asIdentifier, Range.join(startRange, tn.range()));
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
    const token: Token = tn.next();
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
      case Token.VAR:
        return this.parseVariable(tn, null, null);

      case Token.OPENBRACE:
        return this.parseBlockStatement(tn, topLevel);

      case Token.RETURN:
        if (topLevel)
          this.error(DiagnosticCode.A_return_statement_can_only_be_used_within_a_function_body, tn.range()); // recoverable
        return this.parseReturn(tn);

      case Token.SEMICOLON:
        return Node.createEmpty(tn.range(tn.tokenPos));

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
    const startPos: i32 = tn.tokenPos;
    const statements: Statement[] = new Array();
    while (!tn.skip(Token.CLOSEBRACE)) {
      const statement: Statement | null = this.parseStatement(tn, topLevel);
      if (!statement)
        return null;
      statements.push(statement);
    }
    const ret: BlockStatement = Node.createBlock(statements, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseBreak(tn: Tokenizer): BreakStatement | null {
    // at 'break': Identifier? ';'?
    let identifier: IdentifierExpression | null = null;
    if (tn.peek(true) == Token.IDENTIFIER && !tn.nextTokenOnNewLine) {
      tn.next(true);
      identifier = Node.createIdentifier(tn.readIdentifier(), tn.range());
    }
    const ret: ContinueStatement = Node.createBreak(identifier, tn.range());
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseContinue(tn: Tokenizer): ContinueStatement | null {
    // at 'continue': Identifier? ';'?
    let identifier: IdentifierExpression | null = null;
    if (tn.peek(true) == Token.IDENTIFIER && !tn.nextTokenOnNewLine) {
      tn.next(true);
      identifier = Node.createIdentifier(tn.readIdentifier(), tn.range());
    }
    const ret: ContinueStatement = Node.createContinue(identifier, tn.range());
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseDoStatement(tn: Tokenizer): DoStatement | null {
    // at 'do': Statement 'while' '(' Expression ')' ';'?
    const startPos: i32 = tn.tokenPos;
    const statement: Statement | null = this.parseStatement(tn);
    if (!statement)
      return null;
    if (tn.skip(Token.WHILE)) {
      if (tn.skip(Token.OPENPAREN)) {
        const condition: Expression | null = this.parseExpression(tn);
        if (!condition)
          return null;
        if (tn.skip(Token.CLOSEPAREN)) {
          const ret: DoStatement = Node.createDo(<Statement>statement, <Expression>condition, tn.range(startPos, tn.pos));
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
    const expr: Expression | null = this.parseExpression(tn);
    if (!expr)
      return null;
    const ret: ExpressionStatement = Node.createExpression(expr);
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseForStatement(tn: Tokenizer): ForStatement | null {
    // at 'for': '(' Statement? Expression? ';' Expression? ')' Statement
    const startPos: i32 = tn.tokenPos;
    if (tn.skip(Token.OPENPAREN)) {
      let initializer: Statement | null = null;
      if (tn.skip(Token.LET) || tn.skip(Token.CONST) || tn.skip(Token.VAR)) {
        initializer = this.parseVariable(tn, null, null);
      } else if (!tn.skip(Token.SEMICOLON)) {
        initializer = this.parseExpressionStatement(tn);
        if (!initializer)
          return null;
      }
      if (tn.token == Token.SEMICOLON) {
        let condition: ExpressionStatement | null = null;
        if (!tn.skip(Token.SEMICOLON)) {
          condition = this.parseExpressionStatement(tn);
          if (!condition)
            return null;
        }
        if (tn.token == Token.SEMICOLON) {
          let incrementor: Expression | null = null;
          if (!tn.skip(Token.CLOSEPAREN)) {
            incrementor = this.parseExpression(tn);
            if (!incrementor)
              return null;
            if (!tn.skip(Token.CLOSEPAREN)) {
              this.error(DiagnosticCode._0_expected, tn.range(), ")");
              return null;
            }
          }
          const statement: Statement | null = this.parseStatement(tn);
          if (!statement)
            return null;
          return Node.createFor(initializer, condition ? condition.expression : null, incrementor, statement, tn.range(startPos, tn.pos));
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
    const startRange: Range = tn.range();
    if (tn.skip(Token.OPENPAREN)) {
      const condition: Expression | null = this.parseExpression(tn);
      if (!condition)
        return null;
      if (tn.skip(Token.CLOSEPAREN)) {
        const statement: Statement | null = this.parseStatement(tn);
        if (!statement)
          return null;
        let elseStatement: Statement | null = null;
        if (tn.skip(Token.ELSE)) {
          elseStatement = this.parseStatement(tn);
          if (!elseStatement)
            return null;
        }
        return Node.createIf(<Expression>condition, <Statement>statement, elseStatement, Range.join(startRange, tn.range()));
      }
      this.error(DiagnosticCode._0_expected, tn.range(), ")");
    } else
      this.error(DiagnosticCode._0_expected, tn.range(), "(");
    return null;
  }

  parseSwitchStatement(tn: Tokenizer): SwitchStatement | null {
    // at 'switch': '(' Expression ')' '{' SwitchCase* '}' ';'?
    const startPos: i32 = tn.tokenPos;
    if (tn.skip(Token.OPENPAREN)) {
      const condition: Expression | null = this.parseExpression(tn);
      if (!condition)
        return null;
      if (tn.skip(Token.CLOSEPAREN)) {
        if (tn.skip(Token.OPENBRACE)) {
          const cases: SwitchCase[] = [];
          while (!tn.skip(Token.CLOSEBRACE)) {
            const case_: SwitchCase | null = this.parseSwitchCase(tn);
            if (!case_)
              return null;
            cases.push(<SwitchCase>case_);
          }
          const ret: SwitchStatement = Node.createSwitch(condition, cases, tn.range(startPos, tn.pos));
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
    const startPos: i32 = tn.tokenPos;

    // 'case' Expression ':' Statement*
    if (tn.skip(Token.CASE)) {
      const label: Expression | null = this.parseExpression(tn);
      if (!label)
        return null;
      if (tn.skip(Token.COLON)) {
        const statements: Statement[] = new Array();
        while (tn.peek() != Token.CASE && tn.nextToken != Token.DEFAULT && tn.nextToken != Token.CLOSEBRACE) {
          const statement: Statement | null = this.parseStatement(tn);
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
        const statements: Statement[] = new Array();
        while (tn.peek() != Token.CASE && tn.nextToken != Token.DEFAULT && tn.nextToken != Token.CLOSEBRACE) {
          const statement: Statement | null = this.parseStatement(tn);
          if (!statement)
            return null;
          statements.push(<Statement>statement);
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
    const startPos: i32 = tn.tokenPos;
    const expression: Expression | null = this.parseExpression(tn);
    if (!expression)
      return null;
    const ret: ThrowStatement = Node.createThrow(<Expression>expression, tn.range(startPos, tn.pos));
    tn.skip(Token.SEMICOLON);
    return ret;
  }

  parseTryStatement(tn: Tokenizer): TryStatement | null {
    // at 'try': '{' Statement* '}' ('catch' '(' VariableMember ')' '{' Statement* '}')? ('finally' '{' Statement* '}'? ';'?
    const startRange: Range = tn.range();
    if (tn.skip(Token.OPENBRACE)) {
      const statements: Statement[] = new Array();
      while (!tn.skip(Token.CLOSEBRACE)) {
        const stmt: Statement | null = this.parseStatement(tn);
        if (!stmt)
          return null;
        statements.push(<Statement>stmt);
      }
      let catchVariable: IdentifierExpression | null = null;
      let catchStatements: Statement[] | null = null;
      let finallyStatements: Statement[] | null = null;
      if (tn.skip(Token.CATCH)) {
        if (!tn.skip(Token.OPENPAREN)) {
          this.error(DiagnosticCode._0_expected, tn.range(), "(");
          return null;
        }
        if (!tn.skip(Token.IDENTIFIER)) {
          this.error(DiagnosticCode.Identifier_expected, tn.range());
          return null;
        }
        catchVariable = Node.createIdentifier(tn.readIdentifier(), tn.range());
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
          const stmt: Statement | null = this.parseStatement(tn);
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
          const stmt: Statement | null = this.parseStatement(tn);
          if (!stmt)
            return null;
          finallyStatements.push(<Statement>stmt);
        }
      }
      if (!(catchStatements || finallyStatements)) {
        this.error(DiagnosticCode._0_expected, tn.range(), "catch");
        return null;
      }
      const ret: TryStatement = Node.createTry(statements, catchVariable, catchStatements, finallyStatements, Range.join(startRange, tn.range()));
      tn.skip(Token.SEMICOLON);
      return ret;
    } else
      this.error(DiagnosticCode._0_expected, tn.range(), "{");
    return null;
  }

  parseTypeDeclaration(tn: Tokenizer, modifiers: Modifier[] | null = null, decorators: Decorator[] | null = null): TypeDeclaration | null {
    // at 'type': Identifier '=' Type ';'?
    const startPos: i32 = decorators && decorators.length ? decorators[0].range.start
                        : modifiers && modifiers.length ? modifiers[0].range.start
                        : tn.tokenPos;
    if (tn.skip(Token.IDENTIFIER)) {
      const name: IdentifierExpression = Node.createIdentifier(tn.readIdentifier(), tn.range());
      if (tn.skip(Token.EQUALS)) {
        const type: TypeNode | null = this.parseType(tn);
        if (!type)
          return null;
        const ret: TypeDeclaration = Node.createTypeDeclaration(name, type, modifiers, decorators, tn.range(startPos, tn.pos));
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
    const startRange: Range = tn.range();
    if (tn.skip(Token.OPENPAREN)) {
      const expression: Expression | null = this.parseExpression(tn);
      if (!expression)
        return null;
      if (tn.skip(Token.CLOSEPAREN)) {
        const statement: Statement | null = this.parseStatement(tn);
        if (!statement)
          return null;
        const ret: WhileStatement = Node.createWhile(<Expression>expression, <Statement>statement, Range.join(startRange, tn.range()));
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
    const token: Token = tn.next(true);
    const startPos: i32 = tn.tokenPos;
    let expr: Expression | null = null;

    if (token == Token.NULL)
      return Node.createNull(tn.range());
    if (token == Token.TRUE)
      return Node.createTrue(tn.range());
    if (token == Token.FALSE)
      return Node.createFalse(tn.range());

    let p: Precedence = determinePrecedenceStart(token);
    if (p != Precedence.INVALID) {
      let operand: Expression | null;

      // TODO: SpreadExpression, YieldExpression (currently become unsupported UnaryPrefixExpressions)

      // NewExpression
      if (token == Token.NEW) {
        operand = this.parseExpression(tn, Precedence.CALL);
        if (!operand)
          return null;
        if (operand.kind == NodeKind.CALL)
          return Node.createNew((<CallExpression>operand).expression, (<CallExpression>operand).typeArguments, (<CallExpression>operand).arguments, tn.range(startPos, tn.pos));
        this.error(DiagnosticCode.Operation_not_supported, tn.range());
        return null;
      } else
        operand = this.parseExpression(tn, p);

      // UnaryPrefixExpression
      if (token == Token.PLUS_PLUS || token == Token.MINUS_MINUS)
        if ((<Expression>operand).kind != NodeKind.IDENTIFIER && (<Expression>operand).kind != NodeKind.ELEMENTACCESS && (<Expression>operand).kind != NodeKind.PROPERTYACCESS)
          this.error(DiagnosticCode.The_operand_of_an_increment_or_decrement_operator_must_be_a_variable_or_a_property_access, (<Expression>operand).range);
      return Node.createUnaryPrefix(token, <Expression>operand, tn.range(startPos, tn.pos));
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
        return Node.createParenthesized(expr, tn.range(startPos, tn.pos));
      }

      // ArrayLiteralExpression
      case Token.OPENBRACKET: {
        const elementExpressions: (Expression | null)[] = new Array();
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
        return Node.createArrayLiteral(elementExpressions, tn.range(startPos, tn.pos));
      }

      // AssertionExpression (unary prefix)
      case Token.LESSTHAN: {
        const toType: TypeNode | null = this.parseType(tn);
        if (!toType)
          return null;
        if (!tn.skip(Token.GREATERTHAN)) {
          this.error(DiagnosticCode._0_expected, tn.range(), ">");
          return null;
        }
        expr = this.parseExpression(tn, Precedence.CALL);
        if (!expr)
          return null;
        return Node.createAssertion(AssertionKind.PREFIX, <Expression>expr, <TypeNode>toType, tn.range(startPos, tn.pos));
      }

      // IdentifierExpression
      case Token.IDENTIFIER:
        return Node.createIdentifier(tn.readIdentifier(), tn.range(startPos, tn.pos));

      case Token.THIS:
        return Node.createThis(tn.range(startPos, tn.pos));

      case Token.CONSTRUCTOR:
        return Node.createConstructor(tn.range(startPos, tn.pos));

      case Token.SUPER:
        return Node.createSuper(tn.range(startPos, tn.pos));

      // StringLiteralExpression
      case Token.STRINGLITERAL:
        return Node.createStringLiteral(tn.readString(), tn.range(startPos, tn.pos));

      // IntegerLiteralExpression
      case Token.INTEGERLITERAL:
        return Node.createIntegerLiteral(tn.readInteger(), tn.range(startPos, tn.pos));

      // FloatLiteralExpression
      case Token.FLOATLITERAL:
        return Node.createFloatLiteral(tn.readFloat(), tn.range(startPos, tn.pos));

      // RegexpLiteralExpression
      case Token.REGEXPLITERAL:
        return Node.createRegexpLiteral(tn.readRegexp(), tn.range(startPos, tn.pos));

      default:
        this.error(DiagnosticCode.Expression_expected, tn.range());
        return null;
    }
  }

  tryParseTypeArgumentsBeforeArguments(tn: Tokenizer): TypeNode[] | null {
    // at '<': Identifier (',' Identifier)* '>' '('
    tn.mark();
    if (!tn.skip(Token.LESSTHAN))
      return null;

    const typeArguments: TypeNode[] = [];
    do {
      const type: TypeNode | null = this.parseType(tn, true, true);
      if (!type) {
        tn.reset();
        return null;
      }
      typeArguments.push(type);
    } while (tn.skip(Token.COMMA));
    if (!(tn.skip(Token.GREATERTHAN) && tn.skip(Token.OPENPAREN))) {
      tn.reset();
      return null;
    }
    return typeArguments;
  }

  parseArguments(tn: Tokenizer): Expression[] | null {
    // at '(': (Expression (',' Expression)*)? ')'
    const args: Expression[] = new Array();
    if (!tn.skip(Token.CLOSEPAREN)) {
      do {
        const expr: Expression | null = this.parseExpression(tn, Precedence.COMMA + 1);
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
    let expr: Expression | null = this.parseExpressionStart(tn);
    if (!expr)
      return null;

    const startPos: i32 = expr.range.start;

    // CallExpression
    const typeArguments: TypeNode[] | null = this.tryParseTypeArgumentsBeforeArguments(tn);
    // there might be better ways to distinguish a LESSTHAN from a CALL with type arguments
    if (typeArguments || tn.skip(Token.OPENPAREN)) {
      const args: Expression[] | null = this.parseArguments(tn);
      if (!args)
        return null;
      expr = Node.createCall(expr, <TypeNode[]>(typeArguments ? typeArguments : []), args, tn.range(startPos, tn.pos));
    }

    let token: Token;
    let next: Expression | null = null;
    let nextPrecedence: Precedence;

    while ((nextPrecedence = determinePrecedence(token = tn.peek())) >= precedence) { // precedence climbing
      tn.next();

      // AssertionExpression
      if (token == Token.AS) {
        const toType: TypeNode | null = this.parseType(tn);
        if (!toType)
          return null;
        expr = Node.createAssertion(AssertionKind.AS, expr, toType, tn.range(startPos, tn.pos));

      // ElementAccessExpression
      } else if (token == Token.OPENBRACKET) {
        next = this.parseExpression(tn); // resets precedence
        if (!next)
          return null;

        if (tn.skip(Token.CLOSEBRACKET))
          expr = Node.createElementAccess(<Expression>expr, <Expression>next, tn.range(startPos, tn.pos));
        else {
          this.error(DiagnosticCode._0_expected, tn.range(), "]");
          return null;
        }

      // UnaryPostfixExpression
      } else if (token == Token.PLUS_PLUS || token == Token.MINUS_MINUS) {
        if (expr.kind != NodeKind.IDENTIFIER && expr.kind != NodeKind.ELEMENTACCESS && expr.kind != NodeKind.PROPERTYACCESS)
          this.error(DiagnosticCode.The_operand_of_an_increment_or_decrement_operator_must_be_a_variable_or_a_property_access, expr.range);
        expr = Node.createUnaryPostfix(token, expr, tn.range(startPos, tn.pos));

      // TernaryExpression
      } else if (token == Token.QUESTION) {
        const ifThen: Expression | null = this.parseExpression(tn);
        if (!ifThen)
          return null;
        if (tn.skip(Token.COLON)) {
          const ifElse: Expression | null = this.parseExpression(tn);
          if (!ifElse)
            return null;
          expr = Node.createTernary(<Expression>expr, <Expression>ifThen, <Expression>ifElse, tn.range(startPos, tn.pos));
        } else {
          this.error(DiagnosticCode._0_expected, tn.range(), ":");
          return null;
        }

      } else {
        next = this.parseExpression(tn, isRightAssociative(token) ? nextPrecedence : 1 + nextPrecedence);
        if (!next)
          return null;

        // PropertyAccessExpression
        if (token == Token.DOT) {
          if (next.kind == NodeKind.IDENTIFIER) {
            expr = Node.createPropertyAccess(<Expression>expr, <IdentifierExpression>next, tn.range(startPos, tn.pos));
          } else if (next.kind == NodeKind.CALL) { // amend
            let propertyCall: CallExpression = <CallExpression>next;
            if (propertyCall.expression.kind == NodeKind.IDENTIFIER) {
              propertyCall.expression = Node.createPropertyAccess(<Expression>expr, <IdentifierExpression>propertyCall.expression, tn.range(startPos, tn.pos));
            } else
              throw new Error("unexpected expression kind");
            expr = propertyCall;
          } else {
            this.error(DiagnosticCode.Identifier_expected, next.range);
            return null;
          }

        // BinaryExpression
        } else
          expr = Node.createBinary(token, <Expression>expr, <Expression>next, tn.range(startPos, tn.pos));
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
