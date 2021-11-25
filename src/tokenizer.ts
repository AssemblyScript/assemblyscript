/**
 * @fileoverview A TypeScript tokenizer modified for AssemblyScript.
 *
 * The `Tokenizer` scans over a source file and returns one syntactic token
 * at a time that the parser will combine to an abstract syntax tree.
 *
 * It skips over trivia like comments and whitespace and provides a general
 * mark/reset mechanism for the parser to utilize on ambiguous tokens, with
 * one token of lookahead otherwise.
 *
 * @license Apache-2.0
 */

import {
  DiagnosticCode,
  DiagnosticMessage,
  DiagnosticEmitter
} from "./diagnostics";

import {
  Source,
  CommentKind
} from "./ast";

import {
  CharCode,
  isLineBreak,
  isWhiteSpace,
  isIdentifierStart,
  isIdentifierPart,
  isDecimal,
  isOctal,
  isHexPart,
  isHighSurrogate,
  isLowSurrogate
} from "./util";

const MIN_KEYWORD_LENGTH = 2;  // 'as', 'if' and etc
const MAX_KEYWORD_LENGTH = 11; // 'constructor'

/** Named token types. */
export const enum Token {

  // keywords
  // discarded: ANY, BOOLEAN, NEVER, NUMBER, STRING, SYMBOL, UNDEFINED, LESSTHAN_SLASH

  ABSTRACT,
  AS,
  ASYNC,
  AWAIT,        // ES2017
  BREAK,        // ES2017
  CASE,         // ES2017
  CATCH,        // ES2017
  CLASS,        // ES2017
  CONST,        // ES2017
  CONTINUE,     // ES2017
  CONSTRUCTOR,
  DEBUGGER,     // ES2017
  DECLARE,
  DEFAULT,      // ES2017
  DELETE,       // ES2017
  DO,           // ES2017
  ELSE,         // ES2017
  ENUM,         // ES2017 future
  EXPORT,       // ES2017
  EXTENDS,      // ES2017
  FALSE,        // ES
  FINALLY,      // ES2017
  FOR,          // ES2017
  FROM,         // AS possible identifier
  FUNCTION,     // ES2017
  GET,
  IF,           // ES2017
  IMPLEMENTS,   // ES2017 non-lexical
  IMPORT,       // ES2017
  IN,           // ES2017
  INSTANCEOF,   // ES2017
  INTERFACE,    // ES2017 non-lexical
  IS,
  KEYOF,
  LET,          // ES2017 non-lexical
  MODULE,       // AS possible identifier
  NAMESPACE,    // AS possible identifier
  NEW,          // ES2017
  NULL,         // ES
  OF,
  PACKAGE,      // ES2017 non-lexical
  PRIVATE,      // ES2017 non-lexical
  PROTECTED,    // ES2017 non-lexical
  PUBLIC,       // ES2017 non-lexical
  READONLY,
  RETURN,       // ES2017
  SET,
  STATIC,       // ES2017 non-lexical
  SUPER,        // ES2017
  SWITCH,       // ES2017
  THIS,         // ES2017
  THROW,        // ES2017
  TRUE,         // ES
  TRY,          // ES2017
  TYPE,         // AS possible identifier
  TYPEOF,       // ES2017
  VAR,          // ES2017
  VOID,         // ES2017
  WHILE,        // ES2017
  WITH,         // ES2017
  YIELD,        // ES2017

  LAST_KEYWORD = YIELD,

  // punctuation

  OPENBRACE,
  CLOSEBRACE,
  OPENPAREN,
  CLOSEPAREN,
  OPENBRACKET,
  CLOSEBRACKET,
  DOT,
  DOT_DOT_DOT,
  SEMICOLON,
  COMMA,
  LESSTHAN,
  GREATERTHAN,
  LESSTHAN_EQUALS,
  GREATERTHAN_EQUALS,
  EQUALS_EQUALS,
  EXCLAMATION_EQUALS,
  EQUALS_EQUALS_EQUALS,
  EXCLAMATION_EQUALS_EQUALS,
  EQUALS_GREATERTHAN,
  PLUS,
  MINUS,
  ASTERISK_ASTERISK,
  ASTERISK,
  SLASH,
  PERCENT,
  PLUS_PLUS,
  MINUS_MINUS,
  LESSTHAN_LESSTHAN,
  GREATERTHAN_GREATERTHAN,
  GREATERTHAN_GREATERTHAN_GREATERTHAN,
  AMPERSAND,
  BAR,
  CARET,
  EXCLAMATION,
  QUESTION,
  TILDE,
  AMPERSAND_AMPERSAND,
  BAR_BAR,
  QUESTION_QUESTION,
  COLON,
  EQUALS,
  PLUS_EQUALS,
  MINUS_EQUALS,
  ASTERISK_EQUALS,
  ASTERISK_ASTERISK_EQUALS,
  BAR_BAR_EQUALS,
  AMPERSAND_AMPERSAND_EQUALS,
  QUESTION_QUESTION_EQUALS,
  SLASH_EQUALS,
  PERCENT_EQUALS,
  LESSTHAN_LESSTHAN_EQUALS,
  GREATERTHAN_GREATERTHAN_EQUALS,
  GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS,
  AMPERSAND_EQUALS,
  BAR_EQUALS,
  CARET_EQUALS,
  AT,

  // literals

  IDENTIFIER,
  STRINGLITERAL,
  INTEGERLITERAL,
  FLOATLITERAL,
  TEMPLATELITERAL,

  // meta

  INVALID,
  EOF
}

export const enum IdentifierHandling {
  DEFAULT,
  PREFER,
  ALWAYS
}

export function probeKeywordToken(text: string): Token {
  let len = text.length;
  assert(len);
  switch (text.charCodeAt(0)) {
    case CharCode.a: {
      if (len == 2) {
        if (text.charCodeAt(1) == CharCode.s) {
          return Token.AS;
        }
        break;
      }
      if (text == "abstract") return Token.ABSTRACT;
      if (text == "async") return Token.ASYNC;
      if (text == "await") return Token.AWAIT;
      break;
    }
    case CharCode.b: {
      if (text == "break") return Token.BREAK;
      break;
    }
    case CharCode.c: {
      if (len <= 5) {
        if (text == "const") return Token.CONST;
        if (text == "case") return Token.CASE;
        if (text == "class") return Token.CLASS;
        break;
      }
      if (text == "constructor") return Token.CONSTRUCTOR;
      if (text == "continue") return Token.CONTINUE;
      if (text == "catch") return Token.CATCH;
      break;
    }
    case CharCode.d: {
      if (len == 2) {
        if (text.charCodeAt(1) == CharCode.o) {
          return Token.DO;
        }
        break;
      }
      if (text == "default") return Token.DEFAULT;
      if (text == "declare") return Token.DECLARE;
      if (text == "delete") return Token.DELETE;
      if (text == "debugger") return Token.DEBUGGER;
      break;
    }
    case CharCode.e: {
      if (text == "else") return Token.ELSE;
      if (text == "export") return Token.EXPORT;
      if (text == "enum") return Token.ENUM;
      if (text == "extends") return Token.EXTENDS;
      break;
    }
    case CharCode.f: {
      if (text == "false") return Token.FALSE;
      if (text == "function") return Token.FUNCTION;
      if (text == "for") return Token.FOR;
      if (text == "from") return Token.FROM;
      if (text == "finally") return Token.FINALLY;
      break;
    }
    case CharCode.g: {
      if (text == "get") return Token.GET;
      break;
    }
    case CharCode.i: {
      if (len == 2) {
        switch (text.charCodeAt(1)) {
          case CharCode.f: return Token.IF;
          case CharCode.n: return Token.IN;
          case CharCode.s: return Token.IS;
        }
        break;
      }
      switch (text.charCodeAt(3)) {
        case CharCode.e: {
          if (text == "interface") return Token.INTERFACE;
          break;
        }
        case CharCode.l: {
          if (text == "implements") return Token.IMPLEMENTS;
          break;
        }
        case CharCode.o: {
          if (text == "import") return Token.IMPORT;
          break;
        }
        case CharCode.t: {
          if (text == "instanceof") return Token.INSTANCEOF;
          break;
        }
      }
      break;
    }
    case CharCode.k: {
      if (text == "keyof") return Token.KEYOF;
      break;
    }
    case CharCode.l: {
      if (text == "let") return Token.LET;
      break;
    }
    case CharCode.m: {
      if (text == "module") return Token.MODULE;
      break;
    }
    case CharCode.n: {
      if (text == "null") return Token.NULL;
      if (text == "new") return Token.NEW;
      if (text == "namespace") return Token.NAMESPACE;
      break;
    }
    case CharCode.o: {
      if (len == 2 && text.charCodeAt(1) == CharCode.f) {
        return Token.OF;
      }
      break;
    }
    case CharCode.p: {
      if (text == "public") return Token.PUBLIC;
      if (text == "private") return Token.PRIVATE;
      if (text == "protected") return Token.PROTECTED;
      if (text == "package") return Token.PACKAGE;
      break;
    }
    case CharCode.r: {
      if (text == "return") return Token.RETURN;
      if (text == "readonly") return Token.READONLY;
      break;
    }
    case CharCode.s: {
      if (text == "switch") return Token.SWITCH;
      if (text == "static") return Token.STATIC;
      if (text == "set") return Token.SET;
      if (text == "super") return Token.SUPER;
      break;
    }
    case CharCode.t: {
      if (text == "true") return Token.TRUE;
      if (text == "this") return Token.THIS;
      if (text == "type") return Token.TYPE;
      if (text == "typeof") return Token.TYPEOF;
      if (text == "throw") return Token.THROW;
      if (text == "try") return Token.TRY;
      break;
    }
    case CharCode.v: {
      if (text == "var") return Token.VAR;
      if (text == "void") return Token.VOID;
      break;
    }
    case CharCode.w: {
      if (text == "while") return Token.WHILE;
      if (text == "with") return Token.WITH;
      break;
    }
    case CharCode.y: {
      if (text == "yield") return Token.YIELD;
      break;
    }
  }
  return Token.INVALID;
}

export function tokenIsAlsoIdentifier(token: Token): bool {
  switch (token) {
    case Token.ABSTRACT:
    case Token.AS:
    case Token.CONSTRUCTOR:
    case Token.DECLARE:
    case Token.DELETE:
    case Token.FOR:
    case Token.FROM:
    case Token.GET:
    case Token.INSTANCEOF:
    case Token.IS:
    case Token.KEYOF:
    case Token.MODULE:
    case Token.NAMESPACE:
    case Token.NULL:
    case Token.OF:
    case Token.READONLY:
    case Token.SET:
    case Token.TYPE:
    case Token.VOID: return true;
    default: return false;
  }
}

export function isIllegalVariableIdentifier(name: string): bool {
  switch (name.charCodeAt(0)) {
    case CharCode.d: return name == "delete";
    case CharCode.f: return name == "for";
    case CharCode.i: return name == "instanceof";
    case CharCode.n: return name == "null";
    case CharCode.v: return name == "void";
  }
  return false;
}

export function operatorTokenToString(token: Token): string {
  switch (token) {
    case Token.AWAIT: return "await";
    case Token.DELETE: return "delete";
    case Token.IN: return "in";
    case Token.INSTANCEOF: return "instanceof";
    case Token.NEW: return "new";
    case Token.OF: return "of";
    case Token.TYPEOF: return "typeof";
    case Token.VOID: return "void";
    case Token.YIELD: return "yield";
    case Token.DOT_DOT_DOT: return "...";
    case Token.COMMA: return ",";
    case Token.LESSTHAN: return "<";
    case Token.GREATERTHAN: return ">";
    case Token.LESSTHAN_EQUALS: return "<=";
    case Token.GREATERTHAN_EQUALS: return ">=";
    case Token.EQUALS_EQUALS: return "==";
    case Token.EXCLAMATION_EQUALS: return "!=";
    case Token.EQUALS_EQUALS_EQUALS: return "===";
    case Token.EXCLAMATION_EQUALS_EQUALS: return "!==";
    case Token.PLUS: return "+";
    case Token.MINUS: return "-";
    case Token.ASTERISK_ASTERISK: return "**";
    case Token.ASTERISK: return "*";
    case Token.SLASH: return "/";
    case Token.PERCENT: return "%";
    case Token.PLUS_PLUS: return "++";
    case Token.MINUS_MINUS: return "--";
    case Token.LESSTHAN_LESSTHAN: return "<<";
    case Token.GREATERTHAN_GREATERTHAN: return ">>";
    case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN: return ">>>";
    case Token.AMPERSAND: return "&";
    case Token.BAR: return "|";
    case Token.CARET: return "^";
    case Token.EXCLAMATION: return "!";
    case Token.QUESTION: return "?";
    case Token.TILDE: return "~";
    case Token.AMPERSAND_AMPERSAND: return "&&";
    case Token.BAR_BAR: return "||";
    case Token.QUESTION_QUESTION: return "??";
    case Token.EQUALS: return "=";
    case Token.PLUS_EQUALS: return "+=";
    case Token.MINUS_EQUALS: return "-=";
    case Token.ASTERISK_EQUALS: return "*=";
    case Token.ASTERISK_ASTERISK_EQUALS: return "**=";
    case Token.AMPERSAND_AMPERSAND_EQUALS: return "&&=";
    case Token.BAR_BAR_EQUALS: return "||=";
    case Token.QUESTION_QUESTION_EQUALS: return "??=";
    case Token.SLASH_EQUALS: return "/=";
    case Token.PERCENT_EQUALS: return "%=";
    case Token.LESSTHAN_LESSTHAN_EQUALS: return "<<=";
    case Token.GREATERTHAN_GREATERTHAN_EQUALS: return ">>=";
    case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS: return ">>>=";
    case Token.AMPERSAND_EQUALS: return "&=";
    case Token.BAR_EQUALS: return "|=";
    case Token.CARET_EQUALS: return "^=";
    default: {
      assert(false);
      return "";
    }
  }
}

export class Range {

  source!: Source;
  debugInfoRef: usize = 0;

  constructor(public start: i32, public end: i32) {}

  static join(a: Range, b: Range): Range {
    if (a.source != b.source) throw new Error("source mismatch");
    let range = new Range(
      a.start < b.start ? a.start : b.start,
      a.end > b.end ? a.end : b.end
    );
    range.source = a.source;
    return range;
  }

  equals(other: Range): bool {
    return (
      this.source == other.source &&
      this.start == other.start &&
      this.end == other.end
    );
  }

  get atStart(): Range {
    let range = new Range(this.start, this.start);
    range.source = this.source;
    return range;
  }

  get atEnd(): Range {
    let range = new Range(this.end, this.end);
    range.source = this.source;
    return range;
  }

  toString(): string {
    return this.source.text.substring(this.start, this.end);
  }
}

/** Handler for intercepting comments while tokenizing. */
export type CommentHandler = (kind: CommentKind, text: string, range: Range) => void;

/** Tokenizes a source to individual {@link Token}s. */
export class Tokenizer extends DiagnosticEmitter {

  source: Source;
  end: i32 = 0;

  pos: i32 = 0;
  token: Token = -1;
  tokenPos: i32 = 0;

  nextToken: Token = -1;
  nextTokenPos: i32 = 0;
  nextTokenOnNewLine: bool = false;

  onComment: CommentHandler | null = null;

  /** Constructs a new tokenizer. */
  constructor(source: Source, diagnostics: DiagnosticMessage[] | null = null) {
    super(diagnostics);

    if (!diagnostics) diagnostics = [];
    this.diagnostics = diagnostics;
    this.source = source;

    var text = source.text;
    var end = text.length;
    var pos = 0;
    // skip bom
    if (
      pos < end &&
      text.charCodeAt(pos) == CharCode.BYTEORDERMARK
    ) {
      ++pos;
    }

    // skip shebang
    if (
      pos + 1 < end &&
      text.charCodeAt(pos) == CharCode.HASH &&
      text.charCodeAt(pos + 1) == CharCode.EXCLAMATION
    ) {
      pos += 2;
      while (
        pos < end &&
        text.charCodeAt(pos) != CharCode.LINEFEED
      ) {
        ++pos;
      }
      // 'next' now starts at lf or eof
    }
    this.pos = pos;
    this.end = end;
  }

  next(identifierHandling: IdentifierHandling = IdentifierHandling.DEFAULT): Token {
    this.nextToken = -1;
    var token: Token;
    do token = this.unsafeNext(identifierHandling);
    while (token == Token.INVALID);
    this.token = token;
    return token;
  }

  private unsafeNext(
    identifierHandling: IdentifierHandling = IdentifierHandling.DEFAULT,
    maxTokenLength: i32 = i32.MAX_VALUE
  ): Token {
    var text = this.source.text;
    var end = this.end;
    var pos = this.pos;
    while (pos < end) {
      this.tokenPos = pos;
      let c = text.charCodeAt(pos);
      switch (c) {
        // `\r`, `\r\n`
        case CharCode.CARRIAGERETURN: {
          if (!(
            ++pos < end &&
            text.charCodeAt(pos) == CharCode.LINEFEED
          )) break;
          // otherwise fall-through
        }
        // `\n`, `\t`, `\v`, `\f`, ` `
        case CharCode.LINEFEED:
        case CharCode.TAB:
        case CharCode.VERTICALTAB:
        case CharCode.FORMFEED:
        case CharCode.SPACE: {
          ++pos;
          break;
        }
        // `!`, `!=`, `!==`
        case CharCode.EXCLAMATION: {
          ++pos;
          if (
            maxTokenLength > 1 && pos < end &&
            text.charCodeAt(pos) == CharCode.EQUALS
          ) {
            ++pos;
            if (
              maxTokenLength > 2 && pos < end &&
              text.charCodeAt(pos) == CharCode.EQUALS
            ) {
              this.pos = pos + 1;
              return Token.EXCLAMATION_EQUALS_EQUALS;
            }
            this.pos = pos;
            return Token.EXCLAMATION_EQUALS;
          }
          this.pos = pos;
          return Token.EXCLAMATION;
        }
        case CharCode.DOUBLEQUOTE:
        case CharCode.SINGLEQUOTE: {
          this.pos = pos;
          return Token.STRINGLITERAL;
        }
        case CharCode.BACKTICK: {
          this.pos = pos;
          return Token.TEMPLATELITERAL;
        }
        // `%`, `%=`
        case CharCode.PERCENT: {
          ++pos;
          if (
            maxTokenLength > 1 && pos < end &&
            text.charCodeAt(pos) == CharCode.EQUALS
          ) {
            this.pos = pos + 1;
            return Token.PERCENT_EQUALS;
          }
          this.pos = pos;
          return Token.PERCENT;
        }
        // `&`, `&&`, `&=`, `&&=`
        case CharCode.AMPERSAND: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            c = text.charCodeAt(pos);
            if (c == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.AMPERSAND_EQUALS;
            }
            if (c == CharCode.AMPERSAND) {
              ++pos;
              if (
                maxTokenLength > 2 && pos < end &&
                text.charCodeAt(pos) == CharCode.EQUALS
              ) {
                this.pos = pos + 1;
                return Token.AMPERSAND_AMPERSAND_EQUALS;
              }
              this.pos = pos;
              return Token.AMPERSAND_AMPERSAND;
            }
          }
          this.pos = pos;
          return Token.AMPERSAND;
        }
        case CharCode.OPENPAREN: {
          this.pos = pos + 1;
          return Token.OPENPAREN;
        }
        case CharCode.CLOSEPAREN: {
          this.pos = pos + 1;
          return Token.CLOSEPAREN;
        }
        // `*`, `**`, `*=`, `**=`
        case CharCode.ASTERISK: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            c = text.charCodeAt(pos);
            if (c == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.ASTERISK_EQUALS;
            }
            if (c == CharCode.ASTERISK) {
              ++pos;
              if (
                maxTokenLength > 2 && pos < end &&
                text.charCodeAt(pos) == CharCode.EQUALS
              ) {
                this.pos = pos + 1;
                return Token.ASTERISK_ASTERISK_EQUALS;
              }
              this.pos = pos;
              return Token.ASTERISK_ASTERISK;
            }
          }
          this.pos = pos;
          return Token.ASTERISK;
        }
        // `+`, `++`, `+=`
        case CharCode.PLUS: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            c = text.charCodeAt(pos);
            if (c == CharCode.PLUS) {
              this.pos = pos + 1;
              return Token.PLUS_PLUS;
            }
            if (c == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.PLUS_EQUALS;
            }
          }
          this.pos = pos;
          return Token.PLUS;
        }
        case CharCode.COMMA: {
          this.pos = pos + 1;
          return Token.COMMA;
        }
        // `-`, `-=`, `--`
        case CharCode.MINUS: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            c = text.charCodeAt(pos);
            if (c == CharCode.MINUS) {
              this.pos = pos + 1;
              return Token.MINUS_MINUS;
            }
            if (c == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.MINUS_EQUALS;
            }
          }
          this.pos = pos;
          return Token.MINUS;
        }
        // `.`, `.{d}`, `...`
        case CharCode.DOT: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            c = text.charCodeAt(pos);
            if (isDecimal(c)) {
              this.pos = pos - 1;
              return Token.FLOATLITERAL; // expects a call to readFloat
            }
            if (
              maxTokenLength > 2 &&
              pos + 1 < end && c == CharCode.DOT &&
              text.charCodeAt(pos + 1) == CharCode.DOT
            ) {
              this.pos = pos + 2;
              return Token.DOT_DOT_DOT;
            }
          }
          this.pos = pos;
          return Token.DOT;
        }
        // `/`, `//`, `/*`, `/=`, `///`
        case CharCode.SLASH: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            c = text.charCodeAt(pos);
            if (c == CharCode.SLASH) { // single-line
              pos = this.skipLineComment(text, pos, end);
              break;
            }
            if (c == CharCode.ASTERISK) { // multi-line
              pos = this.skipBlockComment(text, pos, end);
              break;
            }
            if (c == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.SLASH_EQUALS;
            }
          }
          this.pos = pos;
          return Token.SLASH;
        }
        // `0.`, `0x`, `0b`, `0o`
        case CharCode._0: {
          if (pos + 1 < end) {
            c = text.charCodeAt(pos + 1);
            if (c == CharCode.DOT) {
              this.pos = pos;
              return Token.FLOATLITERAL;
            }
            switch (c | 32) {
              case CharCode.x:
              case CharCode.b:
              case CharCode.o: {
                this.pos = pos;
                return Token.INTEGERLITERAL;
              }
            }
          }
          // fall-through
        }
        case CharCode._1:
        case CharCode._2:
        case CharCode._3:
        case CharCode._4:
        case CharCode._5:
        case CharCode._6:
        case CharCode._7:
        case CharCode._8:
        case CharCode._9: {
          this.pos = pos;
          return this.integerOrFloatToken();
        }
        case CharCode.COLON: {
          this.pos = pos + 1;
          return Token.COLON;
        }
        case CharCode.SEMICOLON: {
          this.pos = pos + 1;
          return Token.SEMICOLON;
        }
        // `<`, `<<`, `<=` `<<=`
        case CharCode.LESSTHAN: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            c = text.charCodeAt(pos);
            if (c == CharCode.LESSTHAN) {
              ++pos;
              if (
                maxTokenLength > 2 &&
                pos < end &&
                text.charCodeAt(pos) == CharCode.EQUALS
              ) {
                this.pos = pos + 1;
                return Token.LESSTHAN_LESSTHAN_EQUALS;
              }
              this.pos = pos;
              return Token.LESSTHAN_LESSTHAN;
            }
            if (c == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.LESSTHAN_EQUALS;
            }
          }
          this.pos = pos;
          return Token.LESSTHAN;
        }
        // `=`, `==`, `===`, `=>`
        case CharCode.EQUALS: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            c = text.charCodeAt(pos);
            if (c == CharCode.EQUALS) {
              ++pos;
              if (
                maxTokenLength > 2 &&
                pos < end &&
                text.charCodeAt(pos) == CharCode.EQUALS
              ) {
                this.pos = pos + 1;
                return Token.EQUALS_EQUALS_EQUALS;
              }
              this.pos = pos;
              return Token.EQUALS_EQUALS;
            }
            if (c == CharCode.GREATERTHAN) {
              this.pos = pos + 1;
              return Token.EQUALS_GREATERTHAN;
            }
          }
          this.pos = pos;
          return Token.EQUALS;
        }
        // `>`, `>>`, `>>>`, `>=` `>>=`, `>>>=`
        case CharCode.GREATERTHAN: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            c = text.charCodeAt(pos);
            if (c == CharCode.GREATERTHAN) {
              ++pos;
              if (maxTokenLength > 2 && pos < end) {
                c = text.charCodeAt(pos);
                if (c == CharCode.GREATERTHAN) {
                  ++pos;
                  if (
                    maxTokenLength > 3 && pos < end &&
                    text.charCodeAt(pos) == CharCode.EQUALS
                  ) {
                    this.pos = pos + 1;
                    return Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS;
                  }
                  this.pos = pos;
                  return Token.GREATERTHAN_GREATERTHAN_GREATERTHAN;
                }
                if (c == CharCode.EQUALS) {
                  this.pos = pos + 1;
                  return Token.GREATERTHAN_GREATERTHAN_EQUALS;
                }
              }
              this.pos = pos;
              return Token.GREATERTHAN_GREATERTHAN;
            }
            if (c == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.GREATERTHAN_EQUALS;
            }
          }
          this.pos = pos;
          return Token.GREATERTHAN;
        }
        // `?`, `??`, `??=`
        case CharCode.QUESTION: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            c = text.charCodeAt(pos);
            if (c == CharCode.QUESTION) {
              ++pos;
              if (maxTokenLength > 2 && pos < end) {
                c = text.charCodeAt(pos);
                if (c == CharCode.EQUALS) {
                  this.pos = pos + 1;
                  return Token.QUESTION_QUESTION_EQUALS;
                }
              }
              this.pos = pos;
              return Token.QUESTION_QUESTION;
            }
          }
          this.pos = pos;
          return Token.QUESTION;
        }
        case CharCode.OPENBRACKET: {
          this.pos = pos + 1;
          return Token.OPENBRACKET;
        }
        case CharCode.CLOSEBRACKET: {
          this.pos = pos + 1;
          return Token.CLOSEBRACKET;
        }
        // `^`, `^=`
        case CharCode.CARET: {
          ++pos;
          if (
            maxTokenLength > 1 && pos < end &&
            text.charCodeAt(pos) == CharCode.EQUALS
          ) {
            this.pos = pos + 1;
            return Token.CARET_EQUALS;
          }
          this.pos = pos;
          return Token.CARET;
        }
        case CharCode.OPENBRACE: {
          this.pos = pos + 1;
          return Token.OPENBRACE;
        }
        // `|`, `||`, `|=`, `||=`
        case CharCode.BAR: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            c = text.charCodeAt(pos);
            if (c == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.BAR_EQUALS;
            }
            if (c == CharCode.BAR) {
              ++pos;
              if (
                maxTokenLength > 2 && pos < end &&
                text.charCodeAt(pos) == CharCode.EQUALS
              ) {
                this.pos = pos + 1;
                return Token.BAR_BAR_EQUALS;
              }
              this.pos = pos;
              return Token.BAR_BAR;
            }
          }
          this.pos = pos;
          return Token.BAR;
        }
        case CharCode.CLOSEBRACE: {
          this.pos = pos + 1;
          return Token.CLOSEBRACE;
        }
        case CharCode.TILDE: {
          this.pos = pos + 1;
          return Token.TILDE;
        }
        case CharCode.AT: {
          this.pos = pos + 1;
          return Token.AT;
        }
        default: {
          // TODO: \uXXXX also support for identifiers
          if (isIdentifierStart(c)) {
            let posBefore = pos;
            let c0 = text.charCodeAt(pos);
            while (
              ++pos < end &&
              isIdentifierPart(c = text.charCodeAt(pos))
            ) { /* nop */ }
            // TODO: check valid termination of identifier?

            if (
              identifierHandling != IdentifierHandling.ALWAYS &&
              pos - posBefore >= MIN_KEYWORD_LENGTH &&
              pos - posBefore <= MAX_KEYWORD_LENGTH &&
              // Only a non-capitalised token can be a keyword
              c0 >= CharCode.a && c0 <= CharCode.z
            ) {
              let keywordToken = probeKeywordToken(text.substring(posBefore, pos));
              if (
                keywordToken != Token.INVALID &&
                !(
                  identifierHandling == IdentifierHandling.PREFER &&
                  tokenIsAlsoIdentifier(keywordToken)
                )
              ) {
                this.pos = pos;
                return keywordToken;
              }
            }
            this.pos = posBefore;
            return Token.IDENTIFIER;
          } else if (isWhiteSpace(c)) {
            ++pos;
            break;
          }
          let start = pos++;
          if (
            isHighSurrogate(c) && pos < end &&
            isLowSurrogate(text.charCodeAt(pos))
          ) ++pos;
          this.error(
            DiagnosticCode.Invalid_character,
            this.range(start, pos)
          );
          this.pos = pos;
          return Token.INVALID;
        }
      }
    }
    this.pos = pos;
    return Token.EOF;
  }

  peek(
    checkOnNewLine: bool = false,
    identifierHandling: IdentifierHandling = IdentifierHandling.DEFAULT,
    maxCompoundLength: i32 = i32.MAX_VALUE
  ): Token {
    var text = this.source.text;
    if (this.nextToken < 0) {
      let posBefore = this.pos;
      let tokenBefore = this.token;
      let tokenPosBefore = this.tokenPos;
      let nextToken: Token;
      do nextToken = this.unsafeNext(identifierHandling, maxCompoundLength);
      while (nextToken == Token.INVALID);
      this.nextToken = nextToken;
      this.nextTokenPos = this.tokenPos;
      if (checkOnNewLine) {
        this.nextTokenOnNewLine = false;
        for (let pos = posBefore, end = this.nextTokenPos; pos < end; ++pos) {
          if (isLineBreak(text.charCodeAt(pos))) {
            this.nextTokenOnNewLine = true;
            break;
          }
        }
      }
      this.pos = posBefore;
      this.token = tokenBefore;
      this.tokenPos = tokenPosBefore;
    }
    return this.nextToken;
  }

  skipLineComment(text: string, pos: i32, end: i32): i32 {
    let commentStartPos = pos - 1;
    let commentKind = CommentKind.LINE;
    if (
      pos + 1 < end &&
      text.charCodeAt(pos + 1) == CharCode.SLASH
    ) {
      ++pos;
      commentKind = CommentKind.TRIPLE;
    }
    while (++pos < end) {
      if (isLineBreak(text.charCodeAt(pos))) {
        ++pos;
        break;
      }
    }
    if (this.onComment) {
      this.onComment(
        commentKind,
        text.substring(commentStartPos, pos),
        this.range(commentStartPos, pos)
      );
    }
    return pos;
  }

  skipBlockComment(text: string, pos: i32, end: i32): i32 {
    let commentStartPos = pos - 1;
    let closed = false;
    while (++pos < end) {
      let c = text.charCodeAt(pos);
      if (
        c == CharCode.ASTERISK &&
        pos + 1 < end &&
        text.charCodeAt(pos + 1) == CharCode.SLASH
      ) {
        pos += 2;
        closed = true;
        break;
      }
    }
    if (!closed) {
      this.error(
        DiagnosticCode._0_expected,
        this.range(pos), "*/"
      );
    } else if (this.onComment) {
      this.onComment(
        CommentKind.BLOCK,
        text.substring(commentStartPos, pos),
        this.range(commentStartPos, pos)
      );
    }
    return pos;
  }

  skipIdentifier(identifierHandling: IdentifierHandling = IdentifierHandling.PREFER): bool {
    return this.skip(Token.IDENTIFIER, identifierHandling);
  }

  skip(token: Token, identifierHandling: IdentifierHandling = IdentifierHandling.DEFAULT): bool {
    var posBefore = this.pos;
    var tokenBefore = this.token;
    var tokenPosBefore = this.tokenPos;
    var maxCompoundLength = i32.MAX_VALUE;
    switch (token) {
      case Token.EQUALS:
      case Token.GREATERTHAN:
      case Token.LESSTHAN:
      case Token.SLASH:
      case Token.BAR:
      case Token.EXCLAMATION:
      case Token.DOT:
      case Token.ASTERISK:
      case Token.AMPERSAND:
      case Token.QUESTION:
        maxCompoundLength = 1;
        break;
    }
    var nextToken: Token;
    do nextToken = this.unsafeNext(identifierHandling, maxCompoundLength);
    while (nextToken == Token.INVALID);
    if (nextToken == token) {
      this.token = token;
      this.nextToken = -1;
      return true;
    } else {
      this.pos = posBefore;
      this.token = tokenBefore;
      this.tokenPos = tokenPosBefore;
      return false;
    }
  }

  mark(): State {
    var state = reusableState;
    if (state) {
      reusableState = null;
      state.pos = this.pos;
      state.token = this.token;
      state.tokenPos = this.tokenPos;
    } else {
      state = new State(this.pos, this.token, this.tokenPos);
    }
    return state;
  }

  discard(state: State): void {
    reusableState = state;
  }

  reset(state: State): void {
    this.pos = state.pos;
    this.token = state.token;
    this.tokenPos = state.tokenPos;
    this.nextToken = -1;
  }

  range(start: i32 = -1, end: i32 = -1): Range {
    if (start < 0) {
      start = this.tokenPos;
      end = this.pos;
    } else if (end < 0) {
      end = start;
    }
    let range = new Range(start, end);
    range.source = this.source;
    return range;
  }

  readIdentifier(): string {
    var text = this.source.text;
    var end = this.end;
    var pos = this.pos;
    var start = pos;
    while (
      ++pos < end &&
      isIdentifierPart(text.charCodeAt(pos))
    );
    this.pos = pos;
    return text.substring(start, pos);
  }

  readingTemplateString: bool = false;
  readStringStart: i32 = 0;
  readStringEnd: i32 = 0;

  readString(quote: i32 = 0, isTaggedTemplate: bool = false): string {
    var text = this.source.text;
    var end = this.end;
    var pos = this.pos;
    if (!quote) quote = text.charCodeAt(pos++);
    var start = pos;
    this.readStringStart = start;
    var result = "";

    while (true) {
      if (pos >= end) {
        result += text.substring(start, pos);
        this.error(
          DiagnosticCode.Unterminated_string_literal,
          this.range(start - 1, end)
        );
        this.readStringEnd = end;
        break;
      }
      let c = text.charCodeAt(pos);
      if (c == quote) {
        this.readStringEnd = pos;
        result += text.substring(start, pos++);
        break;
      }
      if (c == CharCode.BACKSLASH) {
        result += text.substring(start, pos);
        this.pos = pos; // save
        result += this.readEscapeSequence(isTaggedTemplate);
        pos = this.pos; // restore
        start = pos;
        continue;
      }
      if (quote == CharCode.BACKTICK) {
        if (c == CharCode.DOLLAR && pos + 1 < end && text.charCodeAt(pos + 1) == CharCode.OPENBRACE) {
          result += text.substring(start, pos);
          this.readStringEnd = pos;
          this.pos = pos + 2;
          this.readingTemplateString = true;
          return result;
        }
      } else if (isLineBreak(c)) {
        result += text.substring(start, pos);
        this.error(
          DiagnosticCode.Unterminated_string_literal,
          this.range(start - 1, pos)
        );
        this.readStringEnd = pos;
        break;
      }
      ++pos;
    }
    this.pos = pos;
    this.readingTemplateString = false;
    return result;
  }

  readEscapeSequence(isTaggedTemplate: bool = false): string {
    // for context on isTaggedTemplate, see: https://tc39.es/proposal-template-literal-revision/
    var end = this.end;
    var start = this.pos;
    if (++this.pos >= end) {
      this.error(
        DiagnosticCode.Unexpected_end_of_text,
        this.range(end)
      );
      return "";
    }

    var text = this.source.text;
    var c = text.charCodeAt(this.pos++);
    switch (c) {
      case CharCode._0: {
        if (isTaggedTemplate && this.pos < end && isDecimal(text.charCodeAt(this.pos))) {
          ++this.pos;
          return text.substring(start, this.pos);
        }
        return "\0";
      }
      case CharCode.b: return "\b";
      case CharCode.t: return "\t";
      case CharCode.n: return "\n";
      case CharCode.v: return "\v";
      case CharCode.f: return "\f";
      case CharCode.r: return "\r";
      case CharCode.SINGLEQUOTE: return "'";
      case CharCode.DOUBLEQUOTE: return "\"";
      case CharCode.u: {
        if (
          this.pos < end &&
          text.charCodeAt(this.pos) == CharCode.OPENBRACE
        ) {
          ++this.pos;
          return this.readExtendedUnicodeEscape(isTaggedTemplate ? start : -1); // \u{DDDDDDDD}
        }
        return this.readUnicodeEscape(isTaggedTemplate ? start : -1); // \uDDDD
      }
      case CharCode.x: {
        return this.readHexadecimalEscape(2, isTaggedTemplate ? start : - 1); // \xDD
      }
      case CharCode.CARRIAGERETURN: {
        if (
          this.pos < end &&
          text.charCodeAt(this.pos) == CharCode.LINEFEED
        ) {
          ++this.pos;
        }
        // fall through
      }
      case CharCode.LINEFEED:
      case CharCode.LINESEPARATOR:
      case CharCode.PARAGRAPHSEPARATOR: return "";
      default: return String.fromCodePoint(c);
    }
  }

  readRegexpPattern(): string {
    var text = this.source.text;
    var start = this.pos;
    var end = this.end;
    var escaped = false;
    while (true) {
      if (this.pos >= end) {
        this.error(
          DiagnosticCode.Unterminated_regular_expression_literal,
          this.range(start, end)
        );
        break;
      }
      if (text.charCodeAt(this.pos) == CharCode.BACKSLASH) {
        ++this.pos;
        escaped = true;
        continue;
      }
      let c = text.charCodeAt(this.pos);
      if (!escaped && c == CharCode.SLASH) break;
      if (isLineBreak(c)) {
        this.error(
          DiagnosticCode.Unterminated_regular_expression_literal,
          this.range(start, this.pos)
        );
        break;
      }
      ++this.pos;
      escaped = false;
    }
    return text.substring(start, this.pos);
  }

  readRegexpFlags(): string {
    var text = this.source.text;
    var end = this.end;
    var pos = this.pos;
    var start = pos;
    var flags = 0;
    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (!isIdentifierPart(c)) break;
      ++pos;
      // make sure each supported flag is unique
      switch (c) {
        case CharCode.g: {
          flags |= flags & 1 ? -1 : 1;
          break;
        }
        case CharCode.i: {
          flags |= flags & 2 ? -1 : 2;
          break;
        }
        case CharCode.m: {
          flags |= flags & 4 ? -1 : 4;
          break;
        }
        default: {
          flags = -1;
          break;
        }
      }
    }
    if (flags == -1) {
      this.error(
        DiagnosticCode.Invalid_regular_expression_flags,
        this.range(start, pos)
      );
    }
    this.pos = pos;
    return text.substring(start, pos);
  }

  // Test is it integer or float without update of position.
  integerOrFloatToken(): Token {
    var text = this.source.text;
    var pos = this.pos + 1;
    var end = this.end;
    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (c == CharCode.DOT || (c | 32) == CharCode.e) {
        return Token.FLOATLITERAL;
      }
      if (c != CharCode._ && !isDecimal(c)) break;
      // does not validate separator placement (this is done in readXYInteger)
      pos++;
    }
    return Token.INTEGERLITERAL;
  }

  readInteger(): i64 {
    var text = this.source.text;
    var pos = this.pos;
    if (pos + 2 < this.end && text.charCodeAt(pos) == CharCode._0) {
      let c1 = text.charCodeAt(pos + 1);
      switch (c1 | 32) {
        case CharCode.x: {
          this.pos = pos + 2;
          return this.readHexInteger();
        }
        case CharCode.b: {
          this.pos = pos + 2;
          return this.readBinaryInteger();
        }
        case CharCode.o: {
          this.pos = pos + 2;
          return this.readOctalInteger();
        }
        default: {
          if (isOctal(c1)) {
            let start = pos;
            this.pos = pos + 1;
            let value = this.readOctalInteger();
            this.error(
              DiagnosticCode.Octal_literals_are_not_allowed_in_strict_mode,
              this.range(start, this.pos)
            );
            return value;
          }
        }
      }
    }
    return this.readDecimalInteger();
  }

  readDecimalInteger(): i64 {
    var text = this.source.text;
    var pos = this.pos;
    var end = this.end;
    var start = pos;
    var sepEnd = start;
    var value = i64_zero;
    var i64_10 = i64_new(10);
    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (isDecimal(c)) {
        // value = value * 10 + c - CharCode._0;
        value = i64_add(
          i64_mul(value, i64_10),
          i64_new(c - CharCode._0)
        );
      } else if (c == CharCode._) {
        if (sepEnd == pos) {
          this.error(
            sepEnd == start
              ? DiagnosticCode.Numeric_separators_are_not_allowed_here
              : DiagnosticCode.Multiple_consecutive_numeric_separators_are_not_permitted,
            this.range(pos)
          );
        } else if (pos - 1 == start && text.charCodeAt(pos - 1) == CharCode._0) {
          this.error(
            DiagnosticCode.Numeric_separators_are_not_allowed_here,
            this.range(pos)
          );
        }
        sepEnd = pos + 1;
      } else {
        break;
      }
      ++pos;
    }
    if (pos == start) {
      this.error(
        DiagnosticCode.Digit_expected,
        this.range(start)
      );
    } else if (sepEnd == pos) {
      this.error(
        DiagnosticCode.Numeric_separators_are_not_allowed_here,
        this.range(sepEnd - 1)
      );
    }
    this.pos = pos;
    return value;
  }

  readHexInteger(): i64 {
    var text = this.source.text;
    let pos = this.pos;
    var end = this.end;
    var start = pos;
    var sepEnd = start;
    var value = i64_zero;
    var zeros = 0;
    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (c == CharCode._0) {
        ++zeros;
      } else if (isDecimal(c)) {
        // value = (value << (zeros + 1) * 4) + c - CharCode._0;
        value = i64_add(
          i64_shl(value, i64_new((zeros + 1) << 2)),
          i64_new(c - CharCode._0)
        );
        zeros = 0;
      } else if (isHexPart(c)) {
        // value = (value << (zeros + 1) * 4) + 10 + (c | 32) - CharCode.a;
        value = i64_add(
          i64_shl(value, i64_new((zeros + 1) << 2)),
          i64_new(10 + (c | 32) - CharCode.a)
        );
        zeros = 0;
      } else if (c == CharCode._) {
        if (sepEnd == pos) {
          this.error(
            sepEnd == start
              ? DiagnosticCode.Numeric_separators_are_not_allowed_here
              : DiagnosticCode.Multiple_consecutive_numeric_separators_are_not_permitted,
            this.range(pos)
          );
        }
        sepEnd = pos + 1;
      } else {
        break;
      }
      ++pos;
    }
    if (zeros != 0) {
      value = i64_shl(value, i64_new(zeros << 2));
    }
    if (pos == start) {
      this.error(
        DiagnosticCode.Hexadecimal_digit_expected,
        this.range(start)
      );
    } else if (sepEnd == pos) {
      this.error(
        DiagnosticCode.Numeric_separators_are_not_allowed_here,
        this.range(sepEnd - 1)
      );
    }
    this.pos = pos;
    return value;
  }

  readOctalInteger(): i64 {
    var text = this.source.text;
    var pos = this.pos;
    var end = this.end;
    var start = pos;
    var sepEnd = start;
    var value = i64_zero;
    var zeros = 0;
    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (c == CharCode._0) {
        ++zeros;
      } else if (isOctal(c)) {
        // value = (value << (zeros + 1) * 3) + c - CharCode._0;
        value = i64_add(
          i64_shl(value, i64_new((zeros + 1) * 3)),
          i64_new(c - CharCode._0)
        );
        zeros = 0;
      } else if (c == CharCode._) {
        if (sepEnd == pos) {
          this.error(
            sepEnd == start
              ? DiagnosticCode.Numeric_separators_are_not_allowed_here
              : DiagnosticCode.Multiple_consecutive_numeric_separators_are_not_permitted,
            this.range(pos)
          );
        }
        sepEnd = pos + 1;
      } else {
        break;
      }
      ++pos;
    }
    if (zeros != 0) {
      value = i64_shl(value, i64_new(zeros * 3));
    }
    if (pos == start) {
      this.error(
        DiagnosticCode.Octal_digit_expected,
        this.range(start)
      );
    } else if (sepEnd == pos) {
      this.error(
        DiagnosticCode.Numeric_separators_are_not_allowed_here,
        this.range(sepEnd - 1)
      );
    }
    this.pos = pos;
    return value;
  }

  readBinaryInteger(): i64 {
    var text = this.source.text;
    var pos = this.pos;
    var end = this.end;
    var start = pos;
    var sepEnd = start;
    var value = i64_zero;
    var zeros = 0;
    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (c == CharCode._0) {
        ++zeros;
      } else if (c == CharCode._1) {
        // (value << zeros + 1) | 1
        value = i64_or(
          i64_shl(value, i64_new(zeros + 1)),
          i64_one
        );
        zeros = 0;
      } else if (c == CharCode._) {
        if (sepEnd == pos) {
          this.error(
            sepEnd == start
              ? DiagnosticCode.Numeric_separators_are_not_allowed_here
              : DiagnosticCode.Multiple_consecutive_numeric_separators_are_not_permitted,
            this.range(pos)
          );
        }
        sepEnd = pos + 1;
      } else {
        break;
      }
      ++pos;
    }
    if (zeros != 0) {
      value = i64_shl(value, i64_new(zeros));
    }
    if (pos == start) {
      this.error(
        DiagnosticCode.Binary_digit_expected,
        this.range(start)
      );
    } else if (sepEnd == pos) {
      this.error(
        DiagnosticCode.Numeric_separators_are_not_allowed_here,
        this.range(sepEnd - 1)
      );
    }
    this.pos = pos;
    return value;
  }

  readFloat(): f64 {
    // var text = this.source.text;
    // if (text.charCodeAt(this.pos) == CharCode._0 && this.pos + 2 < this.end) {
    //   switch (text.charCodeAt(this.pos + 1)) {
    //     case CharCode.X:
    //     case CharCode.x: {
    //       this.pos += 2;
    //       return this.readHexFloat();
    //     }
    //   }
    // }
    return this.readDecimalFloat();
  }

  readDecimalFloat(): f64 {
    var text = this.source.text;
    var end = this.end;
    var start = this.pos;
    var hasSep = this.scanFloatAndSeparators(false);
    if (this.pos < end && text.charCodeAt(this.pos) == CharCode.DOT) {
      ++this.pos;
      hasSep |= this.scanFloatAndSeparators();
    }
    if (this.pos < end) {
      let c = text.charCodeAt(this.pos);
      if ((c | 32) == CharCode.e) {
        if (
          ++this.pos < end &&
          (c = text.charCodeAt(this.pos)) == CharCode.MINUS || c == CharCode.PLUS &&
          isDecimal(text.charCodeAt(this.pos + 1))
        ) {
          ++this.pos;
        }
        hasSep |= this.scanFloatAndSeparators();
      }
    }
    let pos = this.pos;
    // fast pathes for the most common literals
    if (pos - start == 3 && text.charCodeAt(start + 1) == CharCode.DOT) {
      // 0.0 0.1 0.2 ... 0.9 1.0 1.1 ... 9.7 9.8 9.9
      let d1 = <f64>(text.charCodeAt(start + 0) - CharCode._0);
      let d2 = <f64>(text.charCodeAt(start + 2) - CharCode._0);
      return d1 + d2 / 10.0;
    }
    let result = text.substring(start, pos);
    if (hasSep) result = result.replaceAll("_", "");
    return parseFloat(result);
  }

  /** Scan past one section of a decimal float literal. Returns `1` if separators encountered. */
  private scanFloatAndSeparators(allowLeadingZeroSep: bool = true): i32 {
    var text = this.source.text;
    var end = this.end;
    var pos = this.pos;
    var start = pos;
    var sepEnd = pos;
    var hasSep = 0;

    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (c == CharCode._) {
        if (sepEnd == pos) {
          this.error(
            sepEnd == start
              ? DiagnosticCode.Numeric_separators_are_not_allowed_here
              : DiagnosticCode.Multiple_consecutive_numeric_separators_are_not_permitted,
            this.range(pos)
          );
        } else if (!allowLeadingZeroSep && pos - 1 == start && text.charCodeAt(pos - 1) == CharCode._0) {
          this.error(
            DiagnosticCode.Numeric_separators_are_not_allowed_here,
            this.range(pos)
          );
        }
        sepEnd = pos + 1;
        hasSep = 1;
      } else if (!isDecimal(c)) {
        break;
      }
      ++pos;
    }

    if (pos != start && sepEnd == pos) {
      this.error(
        DiagnosticCode.Numeric_separators_are_not_allowed_here,
        this.range(sepEnd - 1)
      );
    }

    this.pos = pos;
    return hasSep;
  }

  readHexFloat(): f64 {
    throw new Error("not implemented"); // TBD
  }

  readHexadecimalEscape(remain: i32 = 2, startIfTaggedTemplate: i32 = -1): string {
    var value = 0;
    var text = this.source.text;
    var pos = this.pos;
    var end = this.end;
    while (pos < end) {
      let c = text.charCodeAt(pos++);
      if (isDecimal(c)) {
        value = (value << 4) + c - CharCode._0;
      } else if (isHexPart(c)) {
        value = (value << 4) + (c | 32) + (10 - CharCode.a);
      } else if (~startIfTaggedTemplate) {
        this.pos = --pos;
        return text.substring(startIfTaggedTemplate, pos);
      } else {
        this.pos = pos;
        this.error(
          DiagnosticCode.Hexadecimal_digit_expected,
          this.range(pos - 1, pos)
        );
        return "";
      }
      if (--remain == 0) break;
    }
    if (remain) { // invalid
      this.pos = pos;
      if (~startIfTaggedTemplate) {
        return text.substring(startIfTaggedTemplate, pos);
      }
      this.error(
        DiagnosticCode.Unexpected_end_of_text,
        this.range(pos)
      );
      return "";
    }
    this.pos = pos;
    return String.fromCodePoint(value);
  }

  checkForIdentifierStartAfterNumericLiteral(): void {
    // TODO: BigInt n
    var pos = this.pos;
    if (pos < this.end && isIdentifierStart(this.source.text.charCodeAt(pos))) {
      this.error(
        DiagnosticCode.An_identifier_or_keyword_cannot_immediately_follow_a_numeric_literal,
        this.range(pos)
      );
    }
  }

  readUnicodeEscape(startIfTaggedTemplate: i32 = -1): string {
    return this.readHexadecimalEscape(4, startIfTaggedTemplate);
  }

  private readExtendedUnicodeEscape(startIfTaggedTemplate: i32 = -1): string {
    var start = this.pos;
    var value = this.readHexInteger();
    var value32 = i64_low(value);
    var invalid = false;

    assert(!i64_high(value));
    if (value32 > 0x10FFFF) {
      if (startIfTaggedTemplate == -1) {
        this.error(
          DiagnosticCode.An_extended_Unicode_escape_value_must_be_between_0x0_and_0x10FFFF_inclusive,
          this.range(start, this.pos)
        );
      }
      invalid = true;
    }

    var end = this.end;
    var text = this.source.text;
    if (this.pos >= end) {
      if (startIfTaggedTemplate == -1) {
        this.error(
          DiagnosticCode.Unexpected_end_of_text,
          this.range(start, end)
        );
      }
      invalid = true;
    } else if (text.charCodeAt(this.pos) == CharCode.CLOSEBRACE) {
      ++this.pos;
    } else {
      if (startIfTaggedTemplate == -1) {
        this.error(
          DiagnosticCode.Unterminated_Unicode_escape_sequence,
          this.range(start, this.pos)
        );
      }
      invalid = true;
    }

    if (invalid) {
      return ~startIfTaggedTemplate
        ? text.substring(startIfTaggedTemplate, this.pos)
        : "";
    }
    return String.fromCodePoint(value32);
  }
}

/** Tokenizer state as returned by {@link Tokenizer#mark} and consumed by {@link Tokenizer#reset}. */
export class State {
  constructor(
    /** Current position. */
    public pos: i32,
    /** Current token. */
    public token: Token,
    /** Current token's position. */
    public tokenPos: i32
  ) {}
}

// Reusable state object to reduce allocations
var reusableState: State | null = null;
