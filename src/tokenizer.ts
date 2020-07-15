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
  isDecimalDigit,
  isOctalDigit,
  isKeywordCharacter
} from "./util";

/** Named token types. */
export enum Token {

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
  TILDE,
  AMPERSAND_AMPERSAND,
  BAR_BAR,
  QUESTION,
  COLON,
  EQUALS,
  PLUS_EQUALS,
  MINUS_EQUALS,
  ASTERISK_EQUALS,
  ASTERISK_ASTERISK_EQUALS,
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

  // meta

  INVALID,
  ENDOFFILE
}

export enum IdentifierHandling {
  DEFAULT,
  PREFER,
  ALWAYS
}

export function tokenFromKeyword(text: string): Token {
  assert(text.length);
  switch (text.charCodeAt(0)) {
    case CharCode.a: {
      if (text == "abstract") return Token.ABSTRACT;
      if (text == "as") return Token.AS;
      if (text == "async") return Token.ASYNC;
      if (text == "await") return Token.AWAIT;
      break;
    }
    case CharCode.b: {
      if (text == "break") return Token.BREAK;
      break;
    }
    case CharCode.c: {
      if (text == "case") return Token.CASE;
      if (text == "catch") return Token.CATCH;
      if (text == "class") return Token.CLASS;
      if (text == "continue") return Token.CONTINUE;
      if (text == "const") return Token.CONST;
      if (text == "constructor") return Token.CONSTRUCTOR;
      break;
    }
    case CharCode.d: {
      if (text == "debugger") return Token.DEBUGGER;
      if (text == "declare") return Token.DECLARE;
      if (text == "default") return Token.DEFAULT;
      if (text == "delete") return Token.DELETE;
      if (text == "do") return Token.DO;
      break;
    }
    case CharCode.e: {
      if (text == "else") return Token.ELSE;
      if (text == "enum") return Token.ENUM;
      if (text == "export") return Token.EXPORT;
      if (text == "extends") return Token.EXTENDS;
      break;
    }
    case CharCode.f: {
      if (text == "false") return Token.FALSE;
      if (text == "finally") return Token.FINALLY;
      if (text == "for") return Token.FOR;
      if (text == "from") return Token.FROM;
      if (text == "function") return Token.FUNCTION;
      break;
    }
    case CharCode.g: {
      if (text == "get") return Token.GET;
      break;
    }
    case CharCode.i: {
      if (text == "if") return Token.IF;
      if (text == "implements") return Token.IMPLEMENTS;
      if (text == "import") return Token.IMPORT;
      if (text == "in") return Token.IN;
      if (text == "instanceof") return Token.INSTANCEOF;
      if (text == "interface") return Token.INTERFACE;
      if (text == "is") return Token.IS;
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
      if (text == "namespace") return Token.NAMESPACE;
      if (text == "new") return Token.NEW;
      if (text == "null") return Token.NULL;
      break;
    }
    case CharCode.o: {
      if (text == "of") return Token.OF;
      break;
    }
    case CharCode.p: {
      if (text == "package") return Token.PACKAGE;
      if (text == "private") return Token.PRIVATE;
      if (text == "protected") return Token.PROTECTED;
      if (text == "public") return Token.PUBLIC;
      break;
    }
    case CharCode.r: {
      if (text == "readonly") return Token.READONLY;
      if (text == "return") return Token.RETURN;
      break;
    }
    case CharCode.s: {
      if (text == "set") return Token.SET;
      if (text == "static") return Token.STATIC;
      if (text == "super") return Token.SUPER;
      if (text == "switch") return Token.SWITCH;
      break;
    }
    case CharCode.t: {
      if (text == "this") return Token.THIS;
      if (text == "throw") return Token.THROW;
      if (text == "true") return Token.TRUE;
      if (text == "try") return Token.TRY;
      if (text == "type") return Token.TYPE;
      if (text == "typeof") return Token.TYPEOF;
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
    case Token.FROM:
    case Token.FOR:
    case Token.GET:
    case Token.INSTANCEOF:
    case Token.IS:
    case Token.KEYOF:
    case Token.MODULE:
    case Token.NAMESPACE:
    case Token.NULL:
    case Token.READONLY:
    case Token.SET:
    case Token.TYPE:
    case Token.VOID: return true;
    default: return false;
  }
}

export function isIllegalVariableIdentifier(name: string): bool {
  assert(name.length);
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
    case Token.DELETE: return "delete";
    case Token.IN: return "in";
    case Token.INSTANCEOF: return "instanceof";
    case Token.NEW: return "new";
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
    case Token.TILDE: return "~";
    case Token.AMPERSAND_AMPERSAND: return "&&";
    case Token.BAR_BAR: return "||";
    case Token.EQUALS: return "=";
    case Token.PLUS_EQUALS: return "+=";
    case Token.MINUS_EQUALS: return "-=";
    case Token.ASTERISK_EQUALS: return "*=";
    case Token.ASTERISK_ASTERISK_EQUALS: return "**=";
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

  start: i32;
  end: i32;
  source!: Source;
  debugInfoRef: usize = 0;

  constructor(start: i32, end: i32) {
    this.start = start;
    this.end = end;
  }

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
    return this.source == other.source && this.start == other.start && this.end == other.end;
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
        case CharCode.CARRIAGERETURN: {
          if (!(
            ++pos < end &&
            text.charCodeAt(pos) == CharCode.LINEFEED
          )) break;
          // otherwise fall-through
        }
        case CharCode.LINEFEED:
        case CharCode.TAB:
        case CharCode.VERTICALTAB:
        case CharCode.FORMFEED:
        case CharCode.SPACE: {
          ++pos;
          break;
        }
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
        case CharCode.SINGLEQUOTE:
        case CharCode.BACKTICK: { // TODO
          this.pos = pos;
          return Token.STRINGLITERAL; // expects a call to readString
        }
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
        case CharCode.AMPERSAND: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.AMPERSAND) {
              this.pos = pos + 1;
              return Token.AMPERSAND_AMPERSAND;
            }
            if (chr == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.AMPERSAND_EQUALS;
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
        case CharCode.ASTERISK: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.ASTERISK_EQUALS;
            }
            if (chr == CharCode.ASTERISK) {
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
        case CharCode.PLUS: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.PLUS) {
              this.pos = pos + 1;
              return Token.PLUS_PLUS;
            }
            if (chr == CharCode.EQUALS) {
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
        case CharCode.MINUS: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.MINUS) {
              this.pos = pos + 1;
              return Token.MINUS_MINUS;
            }
            if (chr == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.MINUS_EQUALS;
            }
          }
          this.pos = pos;
          return Token.MINUS;
        }
        case CharCode.DOT: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (isDecimalDigit(chr)) {
              this.pos = pos - 1;
              return Token.FLOATLITERAL; // expects a call to readFloat
            }
            if (
              maxTokenLength > 2 && pos + 1 < end &&
              chr == CharCode.DOT &&
              text.charCodeAt(pos + 1) == CharCode.DOT
            ) {
              this.pos = pos + 2;
              return Token.DOT_DOT_DOT;
            }
          }
          this.pos = pos;
          return Token.DOT;
        }
        case CharCode.SLASH: {
          let commentStartPos = pos;
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.SLASH) { // single-line
              let commentKind = CommentKind.LINE;
              if (
                pos + 1 < end &&
                text.charCodeAt(pos + 1) == CharCode.SLASH
              ) {
                ++pos;
                commentKind = CommentKind.TRIPLE;
              }
              while (++pos < end) {
                if (text.charCodeAt(pos) == CharCode.LINEFEED) {
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
              break;
            }
            if (chr == CharCode.ASTERISK) { // multi-line
              let closed = false;
              while (++pos < end) {
                c = text.charCodeAt(pos);
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
              break;
            }
            if (chr == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.SLASH_EQUALS;
            }
          }
          this.pos = pos;
          return Token.SLASH;
        }
        case CharCode._0:
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
          return this.testInteger()
            ? Token.INTEGERLITERAL // expects a call to readInteger
            : Token.FLOATLITERAL;  // expects a call to readFloat
        }
        case CharCode.COLON: {
          this.pos = pos + 1;
          return Token.COLON;
        }
        case CharCode.SEMICOLON: {
          this.pos = pos + 1;
          return Token.SEMICOLON;
        }
        case CharCode.LESSTHAN: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.LESSTHAN) {
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
            if (chr == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.LESSTHAN_EQUALS;
            }
          }
          this.pos = pos;
          return Token.LESSTHAN;
        }
        case CharCode.EQUALS: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.EQUALS) {
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
            if (chr == CharCode.GREATERTHAN) {
              this.pos = pos + 1;
              return Token.EQUALS_GREATERTHAN;
            }
          }
          this.pos = pos;
          return Token.EQUALS;
        }
        case CharCode.GREATERTHAN: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.GREATERTHAN) {
              ++pos;
              if (maxTokenLength > 2 && pos < end) {
                chr = text.charCodeAt(pos);
                if (chr == CharCode.GREATERTHAN) {
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
                if (chr == CharCode.EQUALS) {
                  this.pos = pos + 1;
                  return Token.GREATERTHAN_GREATERTHAN_EQUALS;
                }
              }
              this.pos = pos;
              return Token.GREATERTHAN_GREATERTHAN;
            }
            if (chr == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.GREATERTHAN_EQUALS;
            }
          }
          this.pos = pos;
          return Token.GREATERTHAN;
        }
        case CharCode.QUESTION: {
          this.pos = pos + 1;
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
        case CharCode.BAR: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.BAR) {
              this.pos = pos + 1;
              return Token.BAR_BAR;
            }
            if (chr == CharCode.EQUALS) {
              this.pos = pos + 1;
              return Token.BAR_EQUALS;
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
          if (isIdentifierStart(c)) {
            if (isKeywordCharacter(c)) {
              let posBefore = pos;
              while (
                ++pos < end &&
                isIdentifierPart(c = text.charCodeAt(pos))
              ) {
                if (!isKeywordCharacter(c)) {
                  this.pos = posBefore;
                  return Token.IDENTIFIER;
                }
              }
              let keywordText = text.substring(posBefore, pos);
              let keywordToken = tokenFromKeyword(keywordText);
              if (
                keywordToken !== Token.INVALID &&
                identifierHandling !== IdentifierHandling.ALWAYS &&
                !(
                  identifierHandling === IdentifierHandling.PREFER &&
                  tokenIsAlsoIdentifier(keywordToken)
                )
              ) {
                this.pos = pos;
                return keywordToken;
              }
              this.pos = pos = posBefore;
            }
            this.pos = pos;
            return Token.IDENTIFIER; // expects a call to readIdentifier
          } else if (isWhiteSpace(c)) {
            ++pos;
            break;
          }
          let start = pos++;
          if ( // surrogate pair?
            (c & 0xFC00) == 0xD800 && pos < end &&
            ((text.charCodeAt(pos)) & 0xFC00) == 0xDC00
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
    return Token.ENDOFFILE;
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

  skipIdentifier(identifierHandling: IdentifierHandling = IdentifierHandling.PREFER): bool {
    return this.skip(Token.IDENTIFIER, identifierHandling);
  }

  skip(token: Token, identifierHandling: IdentifierHandling = IdentifierHandling.DEFAULT): bool {
    var posBefore = this.pos;
    var tokenBefore = this.token;
    var tokenPosBefore = this.tokenPos;
    var maxCompoundLength = i32.MAX_VALUE;
    if (token == Token.GREATERTHAN) {  // where parsing type arguments
      maxCompoundLength = 1;
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

  readString(): string {
    var text = this.source.text;
    var end = this.end;
    var pos = this.pos;
    var quote = text.charCodeAt(pos++);
    var start = pos;
    var result = "";
    while (true) {
      if (pos >= end) {
        result += text.substring(start, pos);
        this.error(
          DiagnosticCode.Unterminated_string_literal,
          this.range(start - 1, end)
        );
        break;
      }
      let c = text.charCodeAt(pos);
      if (c == quote) {
        result += text.substring(start, pos++);
        break;
      }
      if (c == CharCode.BACKSLASH) {
        result += text.substring(start, pos);
        this.pos = pos; // save
        result += this.readEscapeSequence();
        pos = this.pos; // restore
        start = pos;
        continue;
      }
      if (isLineBreak(c) && quote != CharCode.BACKTICK) {
        result += text.substring(start, pos);
        this.error(
          DiagnosticCode.Unterminated_string_literal,
          this.range(start - 1, pos)
        );
        break;
      }
      ++pos;
    }
    this.pos = pos;
    return result;
  }

  readEscapeSequence(): string {
    var end = this.end;
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
      case CharCode._0: return "\0";
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
          return this.readExtendedUnicodeEscape(); // \u{DDDDDDDD}
        }
        return this.readUnicodeEscape(); // \uDDDD
      }
      case CharCode.x: {
        return this.readHexadecimalEscape(); // \xDD
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
      default: return String.fromCharCode(c);
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
    var start = this.pos;
    var end = this.end;
    var flags = 0;
    while (this.pos < end) {
      let c: i32 = text.charCodeAt(this.pos);
      if (!isIdentifierPart(c)) break;
      ++this.pos;

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
        this.range(start, this.pos)
      );
    }
    return text.substring(start, this.pos);
  }

  testInteger(): bool {
    var text = this.source.text;
    var pos = this.pos;
    var end = this.end;
    if (pos + 1 < end && text.charCodeAt(pos) == CharCode._0) {
      switch (text.charCodeAt(pos + 2) | 32) {
        case CharCode.x:
        case CharCode.b:
        case CharCode.o: return true;
      }
    }
    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (c == CharCode.DOT || (c | 32) == CharCode.e) return false;
      if (c != CharCode._ && (c < CharCode._0 || c > CharCode._9)) break;
      // does not validate separator placement (this is done in readXYInteger)
      pos++;
    }
    return true;
  }

  readInteger(): i64 {
    var text = this.source.text;
    var pos = this.pos;
    if (pos + 2 < this.end && text.charCodeAt(pos) == CharCode._0) {
      switch (text.charCodeAt(pos + 1) | 32) {
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
      }
      if (isOctalDigit(text.charCodeAt(pos + 1))) {
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
    return this.readDecimalInteger();
  }

  readHexInteger(): i64 {
    var text = this.source.text;
    let pos = this.pos;
    var end = this.end;
    var start = pos;
    var sepEnd = start;
    var value = i64_new(0);
    var i64_4 = i64_new(4);
    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (c >= CharCode._0 && c <= CharCode._9) {
        // value = (value << 4) + c - CharCode._0;
        value = i64_add(
          i64_shl(value, i64_4),
          i64_new(c - CharCode._0)
        );
      } else if (c >= CharCode.A && c <= CharCode.F) {
        // value = (value << 4) + 10 + c - CharCode.A;
        value = i64_add(
          i64_shl(value, i64_4),
          i64_new(10 + c - CharCode.A)
        );
      } else if (c >= CharCode.a && c <= CharCode.f) {
        // value = (value << 4) + 10 + c - CharCode.a;
        value = i64_add(
          i64_shl(value, i64_4),
          i64_new(10 + c - CharCode.a)
        );
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

  readDecimalInteger(): i64 {
    var text = this.source.text;
    var pos = this.pos;
    var end = this.end;
    var start = pos;
    var sepEnd = start;
    var value = i64_new(0);
    var i64_10 = i64_new(10);
    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (c >= CharCode._0 && c <= CharCode._9) {
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

  readOctalInteger(): i64 {
    var text = this.source.text;
    var pos = this.pos;
    var end = this.end;
    var start = pos;
    var sepEnd = start;
    var value = i64_new(0);
    var i64_3 = i64_new(3);
    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (c >= CharCode._0 && c <= CharCode._7) {
        // value = (value << 3) + c - CharCode._0;
        value = i64_add(
          i64_shl(value, i64_3),
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
        }
        sepEnd = pos + 1;
      } else {
        break;
      }
      ++pos;
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
    var value = i64_new(0);
    var i64_1 = i64_new(1);
    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (c == CharCode._0) {
        // value = (value << 1);
        value = i64_shl(value, i64_1);
      } else if (c == CharCode._1) {
        // value = (value << 1) + 1;
        value = i64_add(
          i64_shl(value, i64_1),
          i64_1
        );
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
    var sepCount = this.readDecimalFloatPartial(false);
    if (this.pos < end && text.charCodeAt(this.pos) == CharCode.DOT) {
      ++this.pos;
      sepCount += this.readDecimalFloatPartial();
    }
    if (this.pos < end) {
      let c = text.charCodeAt(this.pos);
      if ((c | 32) == CharCode.e) {
        if (
          ++this.pos < end &&
          (c = text.charCodeAt(this.pos)) == CharCode.MINUS || c == CharCode.PLUS &&
          isDecimalDigit(text.charCodeAt(this.pos + 1))
        ) {
          ++this.pos;
        }
        sepCount += this.readDecimalFloatPartial();
      }
    }
    let result = text.substring(start, this.pos);
    if (sepCount) result = result.replaceAll("_", "");
    return parseFloat(result);
  }

  /** Reads past one section of a decimal float literal. Returns the number of separators encountered. */
  private readDecimalFloatPartial(allowLeadingZeroSep: bool = true): u32 {
    var text = this.source.text;
    var pos = this.pos;
    var start = pos;
    var end = this.end;
    var sepEnd = start;
    var sepCount = 0;

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
        ++sepCount;
      } else if (!isDecimalDigit(c)) {
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
    return sepCount;
  }

  readHexFloat(): f64 {
    throw new Error("not implemented"); // TBD
  }

  readHexadecimalEscape(remain: i32 = 2): string {
    var value = 0;
    var text = this.source.text;
    var pos = this.pos;
    var end = this.end;
    while (pos < end) {
      let c = text.charCodeAt(pos++);
      if (c >= CharCode._0 && c <= CharCode._9) {
        value = (value << 4) + c - CharCode._0;
      } else if (c >= CharCode.A && c <= CharCode.F) {
        value = (value << 4) + c + (10 - CharCode.A);
      } else if (c >= CharCode.a && c <= CharCode.f) {
        value = (value << 4) + c + (10 - CharCode.a);
      } else {
        this.error(
          DiagnosticCode.Hexadecimal_digit_expected,
          this.range(pos - 1, pos)
        );
        this.pos = pos;
        return "";
      }
      if (--remain == 0) break;
    }
    if (remain) {
      this.error(
        DiagnosticCode.Unexpected_end_of_text,
        this.range(pos)
      );
      this.pos = pos;
      return "";
    }
    this.pos = pos;
    return String.fromCharCode(value);
  }

  readUnicodeEscape(): string {
    return this.readHexadecimalEscape(4);
  }

  private readExtendedUnicodeEscape(): string {
    var start = this.pos;
    var value = this.readHexInteger();
    var value32 = i64_low(value);
    var invalid = false;

    assert(!i64_high(value));
    if (value32 > 0x10FFFF) {
      this.error(
        DiagnosticCode.An_extended_Unicode_escape_value_must_be_between_0x0_and_0x10FFFF_inclusive,
        this.range(start, this.pos)
      );
      invalid = true;
    }

    var end = this.end;
    var text = this.source.text;
    if (this.pos >= end) {
      this.error(
        DiagnosticCode.Unexpected_end_of_text,
        this.range(start, end)
      );
      invalid = true;
    } else if (text.charCodeAt(this.pos) == CharCode.CLOSEBRACE) {
      ++this.pos;
    } else {
      this.error(
        DiagnosticCode.Unterminated_Unicode_escape_sequence,
        this.range(start, this.pos)
      );
      invalid = true;
    }

    if (invalid) return "";
    return value32 < 0x10000
      ? String.fromCharCode(value32)
      : String.fromCharCode(
        ((value32 - 0x10000) >>> 10) | 0xD800,
        ((value32 - 0x10000) & 1023) | 0xDC00
      );
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
