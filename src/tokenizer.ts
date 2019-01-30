/**
 * A TypeScript tokenizer modified for AssemblyScript.
 *
 * Skips over trivia and provides a general mark/reset mechanism for the parser to utilize on
 * ambiguous tokens.
 *
 * @module tokenizer
 *//***/

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
      switch (text) {
        case "abstract": return Token.ABSTRACT;
        case "as": return Token.AS;
        case "async": return Token.ASYNC;
        case "await": return Token.AWAIT;
      }
      break;
    }
    case CharCode.b: {
      switch (text) {
        case "break": return Token.BREAK;
      }
      break;
    }
    case CharCode.c: {
      switch (text) {
        case "case": return Token.CASE;
        case "catch": return Token.CATCH;
        case "class": return Token.CLASS;
        case "continue": return Token.CONTINUE;
        case "const": return Token.CONST;
        case "constructor": return Token.CONSTRUCTOR;
      }
      break;
    }
    case CharCode.d: {
      switch (text) {
        case "debugger": return Token.DEBUGGER;
        case "declare": return Token.DECLARE;
        case "default": return Token.DEFAULT;
        case "delete": return Token.DELETE;
        case "do": return Token.DO;
      }
      break;
    }
    case CharCode.e: {
      switch (text) {
        case "else": return Token.ELSE;
        case "enum": return Token.ENUM;
        case "export": return Token.EXPORT;
        case "extends": return Token.EXTENDS;
      }
      break;
    }
    case CharCode.f: {
      switch (text) {
        case "false": return Token.FALSE;
        case "finally": return Token.FINALLY;
        case "for": return Token.FOR;
        case "from": return Token.FROM;
        case "function": return Token.FUNCTION;
      }
      break;
    }
    case CharCode.g: {
      switch (text) {
        case "get": return Token.GET;
      }
      break;
    }
    case CharCode.i: {
      switch (text) {
        case "if": return Token.IF;
        case "implements": return Token.IMPLEMENTS;
        case "import": return Token.IMPORT;
        case "in": return Token.IN;
        case "instanceof": return Token.INSTANCEOF;
        case "interface": return Token.INTERFACE;
        case "is": return Token.IS;
      }
      break;
    }
    case CharCode.k: {
      switch (text) {
        case "keyof": return Token.KEYOF;
      }
      break;
    }
    case CharCode.l: {
      switch (text) {
        case "let": return Token.LET;
      }
      break;
    }
    case CharCode.m: {
      switch (text) {
        case "module": return Token.MODULE;
      }
      break;
    }
    case CharCode.n: {
      switch (text) {
        case "namespace": return Token.NAMESPACE;
        case "new": return Token.NEW;
        case "null": return Token.NULL;
      }
      break;
    }
    case CharCode.o: {
      switch (text) {
        case "of": return Token.OF;
      }
      break;
    }
    case CharCode.p: {
      switch (text) {
        case "package": return Token.PACKAGE;
        case "private": return Token.PRIVATE;
        case "protected": return Token.PROTECTED;
        case "public": return Token.PUBLIC;
      }
      break;
    }
    case CharCode.r: {
      switch (text) {
        case "readonly": return Token.READONLY;
        case "return": return Token.RETURN;
      }
      break;
    }
    case CharCode.s: {
      switch (text) {
        case "set": return Token.SET;
        case "static": return Token.STATIC;
        case "super": return Token.SUPER;
        case "switch": return Token.SWITCH;
      }
      break;
    }
    case CharCode.t: {
      switch (text) {
        case "this": return Token.THIS;
        case "throw": return Token.THROW;
        case "true": return Token.TRUE;
        case "try": return Token.TRY;
        case "type": return Token.TYPE;
        case "typeof": return Token.TYPEOF;
      }
      break;
    }
    case CharCode.v: {
      switch (text) {
        case "var": return Token.VAR;
        case "void": return Token.VOID;
      }
      break;
    }
    case CharCode.w: {
      switch (text) {
        case "while": return Token.WHILE;
        case "with": return Token.WITH;
      }
      break;
    }
    case CharCode.y: {
      switch (text) {
        case "yield": return Token.YIELD;
      }
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
    case Token.IS:
    case Token.KEYOF:
    case Token.MODULE:
    case Token.NAMESPACE:
    case Token.READONLY:
    case Token.SET:
    case Token.TYPE:
    case Token.VOID: return true;
    default: return false;
  }
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

  source: Source;
  start: i32;
  end: i32;

  // TODO: set these while tokenizing
  // line: i32;
  // column: i32;

  constructor(source: Source, start: i32, end: i32) {
    this.source = source;
    this.start = start;
    this.end = end;
  }

  static join(a: Range, b: Range): Range {
    if (a.source != b.source) throw new Error("source mismatch");
    return new Range(a.source,
      a.start < b.start ? a.start : b.start,
      a.end > b.end ? a.end : b.end
    );
  }

  get atStart(): Range {
    return new Range(this.source, this.start, this.start);
  }
  get atEnd(): Range {
    return new Range(this.source, this.end, this.end);
  }

  get line(): i32 {
    var text = this.source.text;
    var line = 1;
    for (let pos = this.start; pos >= 0; --pos) {
      if (text.charCodeAt(pos) == CharCode.LINEFEED) line++;
    }
    return line;
  }

  get column(): i32 {
    var text = this.source.text;
    var column = 0;
    for (let pos = this.start - 1; pos >= 0; --pos) {
      if (text.charCodeAt(pos) == CharCode.LINEFEED) break;
      ++column;
    }
    return column;
  }

  toString(): string {
    return this.source.text.substring(this.start, this.end);
  }

  debugInfoRef: usize = 0;
}

declare function parseFloat(str: string): f64;

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

    this.source = source;
    this.pos = 0;
    this.end = source.text.length;
    this.diagnostics = diagnostics ? diagnostics : new Array();

    var text = source.text;

    // skip bom
    if (
      this.pos < this.end &&
      text.charCodeAt(this.pos) == CharCode.BYTEORDERMARK
    ) {
      ++this.pos;
    }

    // skip shebang
    if (
      this.pos + 1 < this.end &&
      text.charCodeAt(this.pos) == CharCode.HASH &&
      text.charCodeAt(this.pos + 1) == CharCode.EXCLAMATION
    ) {
      this.pos += 2;
      while (
        this.pos < this.end &&
        text.charCodeAt(this.pos) != CharCode.LINEFEED
      ) {
        ++this.pos;
      }
      // 'next' now starts at lf or eof
    }
  }

  next(identifierHandling: IdentifierHandling = IdentifierHandling.DEFAULT): Token {
    this.nextToken = -1;
    return this.token = this.unsafeNext(identifierHandling);
  }

  private unsafeNext(
    identifierHandling: IdentifierHandling = IdentifierHandling.DEFAULT,
    maxTokenLength: i32 = i32.MAX_VALUE
  ): Token {
    var text = this.source.text;
    while (this.pos < this.end) {
      this.tokenPos = this.pos;
      let c = text.charCodeAt(this.pos);
      switch (c) {
        case CharCode.CARRIAGERETURN: {
          if (!(
            ++this.pos < this.end &&
            text.charCodeAt(this.pos) == CharCode.LINEFEED
          )) break;
          // otherwise fall-through
        }
        case CharCode.LINEFEED:
        case CharCode.TAB:
        case CharCode.VERTICALTAB:
        case CharCode.FORMFEED:
        case CharCode.SPACE: {
          ++this.pos;
          break;
        }
        case CharCode.EXCLAMATION: {
          ++this.pos;
          if (
            maxTokenLength > 1 && this.pos < this.end &&
            text.charCodeAt(this.pos) == CharCode.EQUALS
          ) {
            ++this.pos;
            if (
              maxTokenLength > 2 && this.pos < this.end &&
              text.charCodeAt(this.pos) == CharCode.EQUALS
            ) {
              ++this.pos;
              return Token.EXCLAMATION_EQUALS_EQUALS;
            }
            return Token.EXCLAMATION_EQUALS;
          }
          return Token.EXCLAMATION;
        }
        case CharCode.DOUBLEQUOTE:
        case CharCode.SINGLEQUOTE:
        case CharCode.BACKTICK: { // TODO
          return Token.STRINGLITERAL; // expects a call to readString
        }
        case CharCode.PERCENT: {
          ++this.pos;
          if (
            maxTokenLength > 1 && this.pos < this.end &&
            text.charCodeAt(this.pos) == CharCode.EQUALS
          ) {
            ++this.pos;
            return Token.PERCENT_EQUALS;
          }
          return Token.PERCENT;
        }
        case CharCode.AMPERSAND: {
          ++this.pos;
          if (maxTokenLength > 1 && this.pos < this.end) {
            let chr = text.charCodeAt(this.pos);
            if (chr == CharCode.AMPERSAND) {
              ++this.pos;
              return Token.AMPERSAND_AMPERSAND;
            }
            if (chr == CharCode.EQUALS) {
              ++this.pos;
              return Token.AMPERSAND_EQUALS;
            }
          }
          return Token.AMPERSAND;
        }
        case CharCode.OPENPAREN: {
          ++this.pos;
          return Token.OPENPAREN;
        }
        case CharCode.CLOSEPAREN: {
          ++this.pos;
          return Token.CLOSEPAREN;
        }
        case CharCode.ASTERISK: {
          ++this.pos;
          if (maxTokenLength > 1 && this.pos < this.end) {
            let chr = text.charCodeAt(this.pos);
            if (chr == CharCode.EQUALS) {
              ++this.pos;
              return Token.ASTERISK_EQUALS;
            }
            if (chr == CharCode.ASTERISK) {
              ++this.pos;
              if (
                maxTokenLength > 2 && this.pos < this.end &&
                text.charCodeAt(this.pos) == CharCode.EQUALS
              ) {
                ++this.pos;
                return Token.ASTERISK_ASTERISK_EQUALS;
              }
              return Token.ASTERISK_ASTERISK;
            }
          }
          return Token.ASTERISK;
        }
        case CharCode.PLUS: {
          ++this.pos;
          if (maxTokenLength > 1 && this.pos < this.end) {
            let chr = text.charCodeAt(this.pos);
            if (chr == CharCode.PLUS) {
              ++this.pos;
              return Token.PLUS_PLUS;
            }
            if (chr == CharCode.EQUALS) {
              ++this.pos;
              return Token.PLUS_EQUALS;
            }
          }
          return Token.PLUS;
        }
        case CharCode.COMMA: {
          ++this.pos;
          return Token.COMMA;
        }
        case CharCode.MINUS: {
          ++this.pos;
          if (maxTokenLength > 1 && this.pos < this.end) {
            let chr = text.charCodeAt(this.pos);
            if (chr == CharCode.MINUS) {
              ++this.pos;
              return Token.MINUS_MINUS;
            }
            if (chr == CharCode.EQUALS) {
              ++this.pos;
              return Token.MINUS_EQUALS;
            }
          }
          return Token.MINUS;
        }
        case CharCode.DOT: {
          ++this.pos;
          if (maxTokenLength > 1 && this.pos < this.end) {
            let chr = text.charCodeAt(this.pos);
            if (isDecimalDigit(chr)) {
              --this.pos;
              return Token.FLOATLITERAL; // expects a call to readFloat
            }
            if (
              maxTokenLength > 2 && this.pos + 1 < this.end &&
              chr == CharCode.DOT &&
              text.charCodeAt(this.pos + 1) == CharCode.DOT
            ) {
              this.pos += 2;
              return Token.DOT_DOT_DOT;
            }
          }
          return Token.DOT;
        }
        case CharCode.SLASH: {
          let commentStartPos = this.pos;
          ++this.pos;
          if (maxTokenLength > 1 && this.pos < this.end) {
            let chr = text.charCodeAt(this.pos);
            if (chr == CharCode.SLASH) { // single-line
              let commentKind = CommentKind.LINE;
              if (
                this.pos + 1 < this.end &&
                text.charCodeAt(this.pos + 1) == CharCode.SLASH
              ) {
                ++this.pos;
                commentKind = CommentKind.TRIPLE;
              }
              while (++this.pos < this.end) {
                if (text.charCodeAt(this.pos) == CharCode.LINEFEED) {
                  ++this.pos;
                  break;
                }
              }
              if (this.onComment) {
                this.onComment(
                  commentKind,
                  text.substring(commentStartPos, this.pos),
                  this.range(commentStartPos, this.pos)
                );
              }
              break;
            }
            if (chr == CharCode.ASTERISK) { // multi-line
              let closed = false;
              while (++this.pos < this.end) {
                c = text.charCodeAt(this.pos);
                if (
                  c == CharCode.ASTERISK &&
                  this.pos + 1 < this.end &&
                  text.charCodeAt(this.pos + 1) == CharCode.SLASH
                ) {
                  this.pos += 2;
                  closed = true;
                  break;
                }
              }
              if (!closed) {
                this.error(
                  DiagnosticCode._0_expected,
                  this.range(this.pos), "*/"
                );
              } else if (this.onComment) {
                this.onComment(
                  CommentKind.BLOCK,
                  text.substring(commentStartPos, this.pos),
                  this.range(commentStartPos, this.pos)
                );
              }
              break;
            }
            if (chr == CharCode.EQUALS) {
              ++this.pos;
              return Token.SLASH_EQUALS;
            }
          }
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
          return this.testInteger()
            ? Token.INTEGERLITERAL // expects a call to readInteger
            : Token.FLOATLITERAL;  // expects a call to readFloat
        }
        case CharCode.COLON: {
          ++this.pos;
          return Token.COLON;
        }
        case CharCode.SEMICOLON: {
          ++this.pos;
          return Token.SEMICOLON;
        }
        case CharCode.LESSTHAN: {
          ++this.pos;
          if (maxTokenLength > 1 && this.pos < this.end) {
            let chr = text.charCodeAt(this.pos);
            if (chr == CharCode.LESSTHAN) {
              ++this.pos;
              if (
                maxTokenLength > 2 &&
                this.pos < this.end &&
                text.charCodeAt(this.pos) == CharCode.EQUALS
              ) {
                ++this.pos;
                return Token.LESSTHAN_LESSTHAN_EQUALS;
              }
              return Token.LESSTHAN_LESSTHAN;
            }
            if (chr == CharCode.EQUALS) {
              ++this.pos;
              return Token.LESSTHAN_EQUALS;
            }
          }
          return Token.LESSTHAN;
        }
        case CharCode.EQUALS: {
          ++this.pos;
          if (maxTokenLength > 1 && this.pos < this.end) {
            let chr = text.charCodeAt(this.pos);
            if (chr == CharCode.EQUALS) {
              ++this.pos;
              if (
                maxTokenLength > 2 &&
                this.pos < this.end &&
                text.charCodeAt(this.pos) == CharCode.EQUALS
              ) {
                ++this.pos;
                return Token.EQUALS_EQUALS_EQUALS;
              }
              return Token.EQUALS_EQUALS;
            }
            if (chr == CharCode.GREATERTHAN) {
              ++this.pos;
              return Token.EQUALS_GREATERTHAN;
            }
          }
          return Token.EQUALS;
        }
        case CharCode.GREATERTHAN: {
          ++this.pos;
          if (maxTokenLength > 1 && this.pos < this.end) {
            let chr = text.charCodeAt(this.pos);
            if (chr == CharCode.GREATERTHAN) {
              ++this.pos;
              if (maxTokenLength > 2 && this.pos < this.end) {
                chr = text.charCodeAt(this.pos);
                if (chr == CharCode.GREATERTHAN) {
                  ++this.pos;
                  if (
                    maxTokenLength > 3 && this.pos < this.end &&
                    text.charCodeAt(this.pos) == CharCode.EQUALS
                  ) {
                    ++this.pos;
                    return Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS;
                  }
                  return Token.GREATERTHAN_GREATERTHAN_GREATERTHAN;
                }
                if (chr == CharCode.EQUALS) {
                  ++this.pos;
                  return Token.GREATERTHAN_GREATERTHAN_EQUALS;
                }
              }
              return Token.GREATERTHAN_GREATERTHAN;
            }
            if (chr == CharCode.EQUALS) {
              ++this.pos;
              return Token.GREATERTHAN_EQUALS;
            }
          }
          return Token.GREATERTHAN;
        }
        case CharCode.QUESTION: {
          ++this.pos;
          return Token.QUESTION;
        }
        case CharCode.OPENBRACKET: {
          ++this.pos;
          return Token.OPENBRACKET;
        }
        case CharCode.CLOSEBRACKET: {
          ++this.pos;
          return Token.CLOSEBRACKET;
        }
        case CharCode.CARET: {
          ++this.pos;
          if (
            maxTokenLength > 1 && this.pos < this.end &&
            text.charCodeAt(this.pos) == CharCode.EQUALS
          ) {
            ++this.pos;
            return Token.CARET_EQUALS;
          }
          return Token.CARET;
        }
        case CharCode.OPENBRACE: {
          ++this.pos;
          return Token.OPENBRACE;
        }
        case CharCode.BAR: {
          ++this.pos;
          if (maxTokenLength > 1 && this.pos < this.end) {
            let chr = text.charCodeAt(this.pos);
            if (chr == CharCode.BAR) {
              ++this.pos;
              return Token.BAR_BAR;
            }
            if (chr == CharCode.EQUALS) {
              ++this.pos;
              return Token.BAR_EQUALS;
            }
          }
          return Token.BAR;
        }
        case CharCode.CLOSEBRACE: {
          ++this.pos;
          return Token.CLOSEBRACE;
        }
        case CharCode.TILDE: {
          ++this.pos;
          return Token.TILDE;
        }
        case CharCode.AT: {
          ++this.pos;
          return Token.AT;
        }
        default: {
          if (isIdentifierStart(c)) {
            if (isKeywordCharacter(c)) {
              let posBefore = this.pos;
              while (
                ++this.pos < this.end &&
                isIdentifierPart(c = text.charCodeAt(this.pos))
              ) {
                if (!isKeywordCharacter(c)) {
                  this.pos = posBefore;
                  return Token.IDENTIFIER;
                }
              }
              let keywordText = text.substring(posBefore, this.pos);
              let keywordToken = tokenFromKeyword(keywordText);
              if (
                keywordToken !== Token.INVALID &&
                identifierHandling !== IdentifierHandling.ALWAYS &&
                !(
                  identifierHandling === IdentifierHandling.PREFER &&
                  tokenIsAlsoIdentifier(keywordToken)
                )
              ) {
                return keywordToken;
              }
              this.pos = posBefore;
            }
            return Token.IDENTIFIER; // expects a call to readIdentifier
          } else if (isWhiteSpace(c)) {
            ++this.pos;
            break;
          }
          this.error(
            DiagnosticCode.Invalid_character,
            this.range(this.pos, this.pos + 1)
          );
          ++this.pos;
          return Token.INVALID;
        }
      }
    }
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
      this.nextToken = this.unsafeNext(identifierHandling, maxCompoundLength);
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
    switch (token) {
      case Token.GREATERTHAN: { // where parsing type arguments
        maxCompoundLength = 1;
        break;
      }
    }
    this.token = this.unsafeNext(identifierHandling, maxCompoundLength);
    if (this.token == token) {
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
    var state: State;
    if (reusableState) {
      state = reusableState;
      reusableState = null;
    } else {
      state = new State();
    }
    state.pos = this.pos;
    state.token = this.token;
    state.tokenPos = this.tokenPos;
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
    return new Range(this.source, start, end);
  }

  readIdentifier(): string {
    var text = this.source.text;
    var start = this.pos;
    while (
      ++this.pos < this.end &&
      isIdentifierPart(text.charCodeAt(this.pos))
    );
    return text.substring(start, this.pos);
  }

  readString(): string {
    var text = this.source.text;
    var quote = text.charCodeAt(this.pos++);
    var start = this.pos;
    var result = "";
    while (true) {
      if (this.pos >= this.end) {
        result += text.substring(start, this.pos);
        this.error(
          DiagnosticCode.Unterminated_string_literal,
          this.range(start - 1, this.end)
        );
        break;
      }
      let c = text.charCodeAt(this.pos);
      if (c == quote) {
        result += text.substring(start, this.pos++);
        break;
      }
      if (c == CharCode.BACKSLASH) {
        result += text.substring(start, this.pos);
        result += this.readEscapeSequence();
        start = this.pos;
        continue;
      }
      if (isLineBreak(c)) {
        result += text.substring(start, this.pos);
        this.error(
          DiagnosticCode.Unterminated_string_literal,
          this.range(start - 1, this.pos)
        );
        break;
      }
      ++this.pos;
    }
    return result;
  }

  readEscapeSequence(): string {
    if (++this.pos >= this.end) {
      this.error(
        DiagnosticCode.Unexpected_end_of_text,
        this.range(this.end)
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
          this.pos < this.end &&
          text.charCodeAt(this.pos) == CharCode.OPENBRACE
        ) {
          ++this.pos;
          return this.readExtendedUnicodeEscape(); // \u{DDDDDDDD}
        }
        return this.readUnicodeEscape(); // \uDDDD
      }
      case CharCode.CARRIAGERETURN: {
        if (
          this.pos < this.end &&
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
    var escaped = false;
    while (true) {
      if (this.pos >= this.end) {
        this.error(
          DiagnosticCode.Unterminated_regular_expression_literal,
          this.range(start, this.end)
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
    var flags = 0;
    while (this.pos < this.end) {
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
    if (this.pos + 1 < this.end && text.charCodeAt(this.pos) == CharCode._0) {
      switch (text.charCodeAt(this.pos + 2)) {
        case CharCode.x:
        case CharCode.X:
        case CharCode.b:
        case CharCode.B:
        case CharCode.o:
        case CharCode.O: return true;
      }
    }
    var pos = this.pos;
    while (pos < this.end) {
      let c = text.charCodeAt(pos);
      if (c == CharCode.DOT || c == CharCode.e || c == CharCode.E) {
        return false;
      }
      if ((c < CharCode._0 || c > CharCode._9) && c != CharCode._) break;
      // does not validate separator placement (this is done in readXYInteger)
      pos++;
    }
    return true;
  }

  readInteger(): I64 {
    var text = this.source.text;
    if (this.pos + 2 < this.end && text.charCodeAt(this.pos) == CharCode._0) {
      switch (text.charCodeAt(this.pos + 1)) {
        case CharCode.x:
        case CharCode.X: {
          this.pos += 2;
          return this.readHexInteger();
        }
        case CharCode.b:
        case CharCode.B: {
          this.pos += 2;
          return this.readBinaryInteger();
        }
        case CharCode.o:
        case CharCode.O: {
          this.pos += 2;
          return this.readOctalInteger();
        }
      }
      if (isOctalDigit(text.charCodeAt(this.pos + 1))) {
        let start = this.pos;
        ++this.pos;
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

  readHexInteger(): I64 {
    var text = this.source.text;
    var start = this.pos;
    var value = i64_new(0);
    var i64_4 = i64_new(4);
    var sepEnd = start;
    while (this.pos < this.end) {
      let pos = this.pos;
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
      this.pos = pos + 1;
    }
    if (this.pos == start) {
      this.error(
        DiagnosticCode.Hexadecimal_digit_expected,
        this.range(start)
      );
    } else if (sepEnd == this.pos) {
      this.error(
        DiagnosticCode.Numeric_separators_are_not_allowed_here,
        this.range(sepEnd - 1)
      );
    }
    return value;
  }

  readDecimalInteger(): I64 {
    var text = this.source.text;
    var start = this.pos;
    var value = i64_new(0);
    var i64_10 = i64_new(10);
    var sepEnd = start;
    while (this.pos < this.end) {
      let pos = this.pos;
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
        }
        sepEnd = pos + 1;
      } else {
        break;
      }
      this.pos = pos + 1;
    }
    if (this.pos == start) {
      this.error(
        DiagnosticCode.Digit_expected,
        this.range(start)
      );
    } else if (sepEnd == this.pos) {
      this.error(
        DiagnosticCode.Numeric_separators_are_not_allowed_here,
        this.range(sepEnd - 1)
      );
    }
    return value;
  }

  readOctalInteger(): I64 {
    var text = this.source.text;
    var start = this.pos;
    var value = i64_new(0);
    var i64_3 = i64_new(3);
    var sepEnd = start;
    while (this.pos < this.end) {
      let pos = this.pos;
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
      ++this.pos;
    }
    if (this.pos == start) {
      this.error(
        DiagnosticCode.Octal_digit_expected,
        this.range(start)
      );
    } else if (sepEnd == this.pos) {
      this.error(
        DiagnosticCode.Numeric_separators_are_not_allowed_here,
        this.range(sepEnd - 1)
      );
    }
    return value;
  }

  readBinaryInteger(): I64 {
    var text = this.source.text;
    var start = this.pos;
    var value = i64_new(0);
    var i64_1 = i64_new(1);
    var sepEnd = start;
    while (this.pos < this.end) {
      let pos = this.pos;
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
      this.pos = pos + 1;
    }
    if (this.pos == start) {
      this.error(
        DiagnosticCode.Binary_digit_expected,
        this.range(start)
      );
    } else if (sepEnd == this.pos) {
      this.error(
        DiagnosticCode.Numeric_separators_are_not_allowed_here,
        this.range(sepEnd - 1)
      );
    }
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
    // TODO: numeric separators (parseFloat can't handle these)
    var start = this.pos;
    var text = this.source.text;
    while (this.pos < this.end && isDecimalDigit(text.charCodeAt(this.pos))) {
      ++this.pos;
    }
    if (this.pos < this.end && text.charCodeAt(this.pos) == CharCode.DOT) {
      ++this.pos;
      while (this.pos < this.end && isDecimalDigit(text.charCodeAt(this.pos))) {
        ++this.pos;
      }
    }
    if (this.pos < this.end) {
      let c = text.charCodeAt(this.pos);
      if (c == CharCode.e || c == CharCode.E) {
        if (
          ++this.pos < this.end &&
          (c = text.charCodeAt(this.pos)) == CharCode.MINUS || c == CharCode.PLUS &&
          isDecimalDigit(text.charCodeAt(this.pos + 1))
        ) {
          ++this.pos;
        }
        while (this.pos < this.end && isDecimalDigit(text.charCodeAt(this.pos))) {
          ++this.pos;
        }
      }
    }
    return parseFloat(text.substring(start, this.pos));
  }

  readHexFloat(): f64 {
    throw new Error("not implemented"); // TBD
  }

  readUnicodeEscape(): string {
    var remain = 4;
    var value = 0;
    var text = this.source.text;
    while (this.pos < this.end) {
      let c = text.charCodeAt(this.pos++);
      if (c >= CharCode._0 && c <= CharCode._9) {
        value = (value << 4) + c - CharCode._0;
      } else if (c >= CharCode.A && c <= CharCode.F) {
        value = (value << 4) + c + (10 - CharCode.A);
      } else if (c >= CharCode.a && c <= CharCode.f) {
        value = (value << 4) + c + (10 - CharCode.a);
      } else {
        this.error(
          DiagnosticCode.Hexadecimal_digit_expected,
          this.range(this.pos - 1, this.pos)
        );
        return "";
      }
      if (--remain == 0) break;
    }
    if (remain) {
      this.error(
        DiagnosticCode.Unexpected_end_of_text,
        this.range(this.pos)
      );
      return "";
    }
    return String.fromCharCode(value);
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

    var text = this.source.text;
    if (this.pos >= this.end) {
      this.error(
        DiagnosticCode.Unexpected_end_of_text,
        this.range(start, this.end)
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
    return value32 < 65536
      ? String.fromCharCode(value32)
      : String.fromCharCode(
        ((value32 - 65536) >>> 10) + 0xD800,
        ((value32 - 65536) & 1023) + 0xDC00
      );
  }

  finish(): void {
  }
}

/** Tokenizer state as returned by {@link Tokenizer#mark} and consumed by {@link Tokenizer#reset}. */
export class State {
  /** Current position. */
  pos: i32;
  /** Current token. */
  token: Token;
  /** Current token's position. */
  tokenPos: i32;
}

// Reusable state object to reduce allocations
var reusableState: State | null = null;
