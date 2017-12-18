/*

 This is a modified version of TypeScript's scanner that doesn't perform
 as much bookkeeping, simply skips over trivia and provides a more general
 mark/reset mechanism for the parser to utilize on ambiguous tokens.

 next()             advances the token
 peek()             peeks for the next token
 skip(token)        skips over a token if possible
 mark()             marks at current token
 reset()            resets to marked state
 range()            gets the range of the current token

 readFloat()        on FLOATLITERAL
 readIdentifier()   on IDENTIFIER
 readInteger()      on INTEGERLITERAL
 readRegexp()       on REGEXPLITERAL    // TODO
 readString()       on STRINGLITERAL

*/

import { DiagnosticCode, DiagnosticMessage, DiagnosticEmitter, formatDiagnosticMessage } from "./diagnostics";
import { Source } from "./ast";
import { CharCode, isLineBreak, isWhiteSpace, isIdentifierStart, isIdentifierPart, isDecimalDigit, isOctalDigit, isKeywordCharacter } from "./util/charcode";
import { I64 } from "./util/i64";

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
  REGEXPLITERAL,

  // meta

  INVALID,
  ENDOFFILE
}

const textToKeywordToken: Map<string,Token> = new Map([
  ["abstract", Token.ABSTRACT],
  ["as", Token.AS],
  ["async", Token.ASYNC],
  ["await", Token.AWAIT],
  ["break", Token.BREAK],
  ["case", Token.CASE],
  ["catch", Token.CATCH],
  ["class", Token.CLASS],
  ["continue", Token.CONTINUE],
  ["const", Token.CONST],
  ["constructor", Token.CONSTRUCTOR],
  ["debugger", Token.DEBUGGER],
  ["declare", Token.DECLARE],
  ["default", Token.DEFAULT],
  ["delete", Token.DELETE],
  ["do", Token.DO],
  ["else", Token.ELSE],
  ["enum", Token.ENUM],
  ["export", Token.EXPORT],
  ["extends", Token.EXTENDS],
  ["false", Token.FALSE],
  ["finally", Token.FINALLY],
  ["for", Token.FOR],
  ["from", Token.FROM],
  ["function", Token.FUNCTION],
  ["get", Token.GET],
  ["if", Token.IF],
  ["implements", Token.IMPLEMENTS],
  ["import", Token.IMPORT],
  ["in", Token.IN],
  ["instanceof", Token.INSTANCEOF],
  ["interface", Token.INTERFACE],
  ["is", Token.IS],
  ["keyof", Token.KEYOF],
  ["let", Token.LET],
  ["module", Token.MODULE],
  ["namespace", Token.NAMESPACE],
  ["new", Token.NEW],
  ["null", Token.NULL],
  ["of", Token.OF],
  ["package", Token.PACKAGE],
  ["private", Token.PRIVATE],
  ["protected", Token.PROTECTED],
  ["public", Token.PUBLIC],
  ["readonly", Token.READONLY],
  ["return", Token.RETURN],
  ["set", Token.SET],
  ["static", Token.STATIC],
  ["super", Token.SUPER],
  ["switch", Token.SWITCH],
  ["this", Token.THIS],
  ["throw", Token.THROW],
  ["true", Token.TRUE],
  ["try", Token.TRY],
  ["type", Token.TYPE],
  ["typeof", Token.TYPEOF],
  ["var", Token.VAR],
  ["void", Token.VOID],
  ["while", Token.WHILE],
  ["with", Token.WITH],
  ["yield", Token.YIELD]
]);

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
    default: assert(false); return "";
  }
}

const possibleIdentifiers: Set<string> = new Set([
  "from",
  "global",
  "module",
  "namespace",
  "type"
]);

export class Range {

  source: Source;
  start: i32;
  end: i32;

  constructor(source: Source, start: i32, end: i32) {
    this.source = source;
    this.start = start;
    this.end = end;
  }

  static join(a: Range, b: Range): Range {
    if (a.source != b.source)
      throw new Error("source mismatch");
    return new Range(a.source, a.start < b.start ? a.start : b.start, a.end > b.end ? a.end : b.end);
  }

  get atStart(): Range { return new Range(this.source, this.start, this.start); }
  get atEnd(): Range { return new Range(this.source, this.end, this.end); }

  toString(): string {
    return this.source.text.substring(this.start, this.end);
  }
}

export class Tokenizer extends DiagnosticEmitter {

  source: Source;
  end: i32 = 0;

  pos: i32 = 0;
  token: Token = -1;
  tokenPos: i32 = 0;

  markedPos: i32 = 0;
  markedToken: Token = -1;
  markedTokenPos: i32 = 0;

  nextToken: Token = -1;
  nextTokenOnNewLine: bool = false;

  constructor(source: Source, diagnostics: DiagnosticMessage[] | null = null) {
    super(diagnostics);
    this.source = source;
    this.pos = 0;
    this.end = source.text.length;
    this.diagnostics = diagnostics ? diagnostics : new Array();

    const text: string = source.text;

    // skip bom
    if (this.pos < this.end && text.charCodeAt(this.pos) == CharCode.BYTEORDERMARK)
      this.pos++;

    // skip shebang
    if (this.pos + 1 < this.end && text.charCodeAt(this.pos) == CharCode.HASH && text.charCodeAt(this.pos + 1) == CharCode.EXCLAMATION) {
      this.pos += 2;
      while (this.pos < this.end && text.charCodeAt(this.pos) != CharCode.LINEFEED)
        this.pos++;
      // 'next' now starts at lf or eof
    }
  }

  next(preferIdentifier: bool = false): Token {
    this.nextToken = -1;
    return this.token = this.unsafeNext(preferIdentifier);
  }

  private unsafeNext(preferIdentifier: bool = false): Token {
    const text: string = this.source.text;
    while (true) {
      if (this.pos >= this.end)
        return Token.ENDOFFILE;

      this.tokenPos = this.pos;
      let c: i32 = text.charCodeAt(this.pos);
      switch (c) {

        case CharCode.CARRIAGERETURN:
          if (++this.pos < this.end && text.charCodeAt(this.pos) == CharCode.LINEFEED)
            this.pos++;
          break;

        case CharCode.LINEFEED:
        case CharCode.TAB:
        case CharCode.VERTICALTAB:
        case CharCode.FORMFEED:
        case CharCode.SPACE:
          this.pos++;
          break;

        case CharCode.EXCLAMATION:
          if (++this.pos < this.end && text.charCodeAt(this.pos) == CharCode.EQUALS) {
            if (++this.pos < this.end && text.charCodeAt(this.pos) == CharCode.EQUALS) {
              this.pos++;
              return Token.EXCLAMATION_EQUALS_EQUALS;
            }
            return Token.EXCLAMATION_EQUALS;
          }
          return Token.EXCLAMATION;

        case CharCode.DOUBLEQUOTE:
        case CharCode.SINGLEQUOTE:
        case CharCode.BACKTICK: // TODO
          return Token.STRINGLITERAL; // expects a call to readString

        case CharCode.PERCENT:
          if (++this.pos < this.end && text.charCodeAt(this.pos) == CharCode.EQUALS) {
            this.pos++;
            return Token.PERCENT_EQUALS;
          }
          return Token.PERCENT;

        case CharCode.AMPERSAND:
          if (++this.pos < this.end) {
            if (text.charCodeAt(this.pos) == CharCode.AMPERSAND) {
              this.pos++;
              return Token.AMPERSAND_AMPERSAND;
            }
            if (text.charCodeAt(this.pos) == CharCode.EQUALS) {
              this.pos++;
              return Token.AMPERSAND_EQUALS;
            }
          }
          return Token.AMPERSAND;

        case CharCode.OPENPAREN:
          this.pos++;
          return Token.OPENPAREN;

        case CharCode.CLOSEPAREN:
          this.pos++;
          return Token.CLOSEPAREN;

        case CharCode.ASTERISK:
          if (++this.pos < this.end) {
            if (text.charCodeAt(this.pos) == CharCode.EQUALS) {
              this.pos++;
              return Token.ASTERISK_EQUALS;
            }
            if (text.charCodeAt(this.pos) == CharCode.ASTERISK) {
              if (++this.pos < this.end && text.charCodeAt(this.pos) == CharCode.EQUALS) {
                this.pos++;
                return Token.ASTERISK_ASTERISK_EQUALS;
              }
              return Token.ASTERISK_ASTERISK;
            }
          }
          return Token.ASTERISK;

        case CharCode.PLUS:
          if (++this.pos < this.end) {
            if (text.charCodeAt(this.pos) == CharCode.PLUS) {
              this.pos++;
              return Token.PLUS_PLUS;
            }
            if (text.charCodeAt(this.pos) == CharCode.EQUALS) {
              this.pos++;
              return Token.PLUS_EQUALS;
            }
          }
          return Token.PLUS;

        case CharCode.COMMA:
          this.pos++;
          return Token.COMMA;

        case CharCode.MINUS:
          if (++this.pos < this.end) {
            if (text.charCodeAt(this.pos) == CharCode.MINUS) {
              this.pos++;
              return Token.MINUS_MINUS;
            }
            if (text.charCodeAt(this.pos) == CharCode.EQUALS) {
              this.pos++;
              return Token.MINUS_EQUALS;
            }
          }
          return Token.MINUS;

        case CharCode.DOT:
          if (++this.pos < this.end) {
            if (isDecimalDigit(text.charCodeAt(this.pos))) {
              this.pos--;
              return Token.FLOATLITERAL; // expects a call to readFloat
            }
            if (text.charCodeAt(this.pos) == CharCode.DOT && this.pos + 1 < this.end && text.charCodeAt(this.pos + 1) == CharCode.DOT) {
              this.pos += 2;
              return Token.DOT_DOT_DOT;
            }
          }
          return Token.DOT;

        case CharCode.SLASH:
          if (++this.pos < this.end) {
            if (text.charCodeAt(this.pos) == CharCode.SLASH) { // single-line comment
              if (this.pos + 1 < this.end && text.charCodeAt(this.pos + 1) == CharCode.SLASH) {
                // TODO: triple-slash directives, i.e. '/// <reference path="some.d.ts" />'
              }
              while (++this.pos < this.end) {
                if (isLineBreak(text.charCodeAt(this.pos)))
                  break;
              }
              continue;
            }
            if (text.charCodeAt(this.pos) == CharCode.ASTERISK) { // multi-line comment
              let closed: bool = false;
              while (++this.pos < this.end) {
                c = text.charCodeAt(this.pos);
                if (c == CharCode.ASTERISK && this.pos + 1 < this.end && text.charCodeAt(this.pos + 1) == CharCode.SLASH) {
                  this.pos += 2;
                  closed = true;
                  break;
                }
              }
              if (!closed)
                this.error(DiagnosticCode._0_expected, this.range(this.pos), "*/");
              continue;
            }
            if (text.charCodeAt(this.pos) == CharCode.EQUALS) {
              this.pos++;
              return Token.SLASH_EQUALS;
            }
          }
          if (this.testRegexp())
            return Token.REGEXPLITERAL; // expects a call to readRegexp
          return Token.SLASH;

        case CharCode._0:
        case CharCode._1:
        case CharCode._2:
        case CharCode._3:
        case CharCode._4:
        case CharCode._5:
        case CharCode._6:
        case CharCode._7:
        case CharCode._8:
        case CharCode._9:
          return this.testInteger()
            ? Token.INTEGERLITERAL // expects a call to readInteger
            : Token.FLOATLITERAL;  // expects a call to readFloat

        case CharCode.COLON:
          this.pos++;
          return Token.COLON;

        case CharCode.SEMICOLON:
          this.pos++;
          return Token.SEMICOLON;

        case CharCode.LESSTHAN:
          if (++this.pos < this.end) {
            if (text.charCodeAt(this.pos) == CharCode.LESSTHAN) {
              this.pos++;
              if (this.pos < this.end && text.charCodeAt(this.pos) == CharCode.EQUALS) {
                this.pos++;
                return Token.LESSTHAN_LESSTHAN_EQUALS;
              }
              return Token.LESSTHAN_LESSTHAN;
            }
            if (text.charCodeAt(this.pos) == CharCode.EQUALS) {
              this.pos++;
              return Token.LESSTHAN_EQUALS;
            }
          }
          return Token.LESSTHAN;

        case CharCode.EQUALS:
          if (++this.pos < this.end) {
            if (text.charCodeAt(this.pos) == CharCode.EQUALS) {
              this.pos++;
              if (this.pos < this.end && text.charCodeAt(this.pos) == CharCode.EQUALS) {
                this.pos++;
                return Token.EQUALS_EQUALS_EQUALS;
              }
              return Token.EQUALS_EQUALS;
            }
            if (text.charCodeAt(this.pos) == CharCode.GREATERTHAN) {
              this.pos++;
              return Token.EQUALS_GREATERTHAN;
            }
          }
          return Token.EQUALS;

        case CharCode.GREATERTHAN:
          if (++this.pos < this.end) {
            if (text.charCodeAt(this.pos) == CharCode.GREATERTHAN) {
              this.pos++;
              if (this.pos < this.end) {
                if (text.charCodeAt(this.pos) == CharCode.GREATERTHAN) {
                  this.pos++;
                  if (this.pos < this.end && text.charCodeAt(this.pos) == CharCode.EQUALS) {
                    this.pos++;
                    return Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS;
                  }
                  return Token.GREATERTHAN_GREATERTHAN_GREATERTHAN;
                }
                if (text.charCodeAt(this.pos) == CharCode.EQUALS) {
                  this.pos++;
                  return Token.GREATERTHAN_GREATERTHAN_EQUALS;
                }
              }
              return Token.GREATERTHAN_GREATERTHAN;
            }
            if (text.charCodeAt(this.pos) == CharCode.EQUALS) {
              this.pos++;
              return Token.GREATERTHAN_EQUALS;
            }
          }
          return Token.GREATERTHAN;

        case CharCode.QUESTION:
          this.pos++;
          return Token.QUESTION;

        case CharCode.OPENBRACKET:
          this.pos++;
          return Token.OPENBRACKET;

        case CharCode.CLOSEBRACKET:
          this.pos++;
          return Token.CLOSEBRACKET;

        case CharCode.CARET:
          if (++this.pos < this.end && text.charCodeAt(this.pos) == CharCode.EQUALS) {
            this.pos++;
            return Token.CARET_EQUALS;
          }
          return Token.CARET;

        case CharCode.OPENBRACE:
          this.pos++;
          return Token.OPENBRACE;

        case CharCode.BAR:
          if (++this.pos < this.end) {
            if (text.charCodeAt(this.pos) == CharCode.BAR) {
              this.pos++;
              return Token.BAR_BAR;
            }
            if (text.charCodeAt(this.pos) == CharCode.EQUALS) {
              this.pos++;
              return Token.BAR_EQUALS;
            }
          }
          return Token.BAR;

        case CharCode.CLOSEBRACE:
          this.pos++;
          return Token.CLOSEBRACE;

        case CharCode.TILDE:
          this.pos++;
          return Token.TILDE;

        case CharCode.AT:
          this.pos++;
          return Token.AT;

        default: {
          if (isIdentifierStart(c)) {
            if (isKeywordCharacter(c)) {
              const posBefore: i32 = this.pos;
              while (++this.pos < this.end && isIdentifierPart(c = text.charCodeAt(this.pos))) {
                if (!isKeywordCharacter(c)) {
                  this.pos = posBefore;
                  return Token.IDENTIFIER;
                }
              }
              const keywordText: string = text.substring(posBefore, this.pos);
              if (textToKeywordToken.has(keywordText) && !(preferIdentifier && possibleIdentifiers.has(keywordText)))
                return <Token>textToKeywordToken.get(keywordText);
              this.pos = posBefore;
            }
            return Token.IDENTIFIER; // expects a call to readIdentifier
          } else if (isWhiteSpace(c)) {
            this.pos++;
            break;
          }
          this.error(DiagnosticCode.Invalid_character, this.range(this.pos, this.pos + 1));
          this.pos++;
          return Token.INVALID;
        }
      }
    }
  }

  peek(checkOnNewLine: bool = false): Token {
    const text: string = this.source.text;
    if (this.nextToken < 0) {
      const posBefore: i32 = this.pos;
      const tokenBefore: Token = this.token;
      const tokenPosBefore: i32 = this.tokenPos;
      this.nextToken = this.unsafeNext();
      if (checkOnNewLine) {
        this.nextTokenOnNewLine = false;
        while (--this.tokenPos > posBefore) {
          if (isLineBreak(text.charCodeAt(this.tokenPos))) {
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

  skip(token: Token): bool {
    const posBefore: i32 = this.pos;
    const tokenBefore: Token = this.token;
    const tokenPosBefore: i32 = this.tokenPos;
    if ((this.token = this.unsafeNext(token == Token.IDENTIFIER)) == token) {
      this.nextToken = -1;
      return true;
    } else {
      this.pos = posBefore;
      this.token = tokenBefore;
      this.tokenPos = tokenPosBefore;
      return false;
    }
  }

  mark(): void {
    this.markedPos = this.pos;
    this.markedToken = this.token;
    this.markedTokenPos = this.tokenPos;
  }

  reset(): void {
    this.pos = this.markedPos;
    this.token = this.markedToken;
    this.tokenPos = this.markedTokenPos;
    this.nextToken = -1;
  }

  range(start: i32 = -1, end: i32 = -1): Range {
    if (start < 0) {
      start = this.tokenPos;
      end = this.pos;
    } else if (end < 0)
      end = start;
    return new Range(this.source, start, end);
  }

  readIdentifier(): string {
    const text: string = this.source.text;
    const start: i32 = this.pos;
    while (++this.pos < this.end && isIdentifierPart(text.charCodeAt(this.pos)));
    return text.substring(start, this.pos);
  }

  readString(): string {
    const text: string = this.source.text;
    const quote: i32 = text.charCodeAt(this.pos++);
    let start: i32 = this.pos;
    let result: string = "";
    while (true) {
      if (this.pos >= this.end) {
        result += text.substring(start, this.pos);
        this.error(DiagnosticCode.Unterminated_string_literal, this.range(start - 1, this.end));
        break;
      }
      const c: i32 = text.charCodeAt(this.pos);
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
        this.error(DiagnosticCode.Unterminated_string_literal, this.range(start - 1, this.pos));
        break;
      }
      this.pos++;
    }
    return result;
  }

  readEscapeSequence(): string {
    if (++this.pos >= this.end) {
      this.error(DiagnosticCode.Unexpected_end_of_text, this.range(this.end));
      return "";
    }

    const text: string = this.source.text;
    const c: i32 = text.charCodeAt(this.pos++);
    switch (c) {

      case CharCode._0:
        return "\0";

      case CharCode.b:
        return "\b";

      case CharCode.t:
        return "\t";

      case CharCode.n:
        return "\n";

      case CharCode.v:
        return "\v";

      case CharCode.f:
        return "\f";

      case CharCode.r:
        return "\r";

      case CharCode.SINGLEQUOTE:
        return "'";

      case CharCode.DOUBLEQUOTE:
        return "\"";

      case CharCode.u: {
        if (this.pos < this.end && text.charCodeAt(this.pos) == CharCode.OPENBRACE) {
          this.pos++;
          return this.readExtendedUnicodeEscape(); // \u{DDDDDDDD}
        }
        return this.readUnicodeEscape(); // \uDDDD
      }

      case CharCode.CARRIAGERETURN:
        if (this.pos < this.end && text.charCodeAt(this.pos) == CharCode.LINEFEED)
          this.pos++;
        // fall through

      case CharCode.LINEFEED:
      case CharCode.LINESEPARATOR:
      case CharCode.PARAGRAPHSEPARATOR:
        return "";
      default:
        return String.fromCharCode(c);
    }
  }

  testRegexp(): bool {
    // TODO: this'll require more context
    return false;
  }

  readRegexp(): string {
    let result: string = "";
    let start: i32 = this.pos;
    let escaped: bool = false;
    const text: string = this.source.text;
    while (true) {
      if (this.pos >= this.end) {
        result += text.substring(start, this.pos);
        this.error(DiagnosticCode.Unterminated_regular_expression_literal, this.range(start, this.end));
        break;
      }
      if (text.charCodeAt(this.pos) == CharCode.BACKSLASH) {
        this.pos++;
        escaped = true;
        continue;
      }
      const c: i32 = text.charCodeAt(this.pos);
      if (c == CharCode.SLASH) {
        result += text.substring(start, this.pos);
        this.pos++;
        break;
      }
      if (isLineBreak(c)) {
        result += text.substring(start, this.pos);
        this.error(DiagnosticCode.Unterminated_regular_expression_literal, this.range(start, this.pos));
        break;
      }
      this.pos++;
    }
    return result;
  }

  testInteger(): bool {
    const text: string = this.source.text;
    if (text.charCodeAt(this.pos) == CharCode._0 && this.pos + 1 < this.end) {
      switch (text.charCodeAt(this.pos + 2)) {
        case CharCode.X:
        case CharCode.x:
        case CharCode.B:
        case CharCode.b:
        case CharCode.O:
        case CharCode.o:
          return true;
      }
    }
    let pos: i32 = this.pos;
    while (pos < this.end) {
      const c: i32 = text.charCodeAt(pos);
      if (c == CharCode.DOT || c == CharCode.E || c == CharCode.e)
        return false;
      if (c < CharCode._0 || c > CharCode._9)
        break;
      pos++;
    }
    return true;
  }

  readInteger(): I64 {
    const text: string = this.source.text;
    if (text.charCodeAt(this.pos) == CharCode._0 && this.pos + 2 < this.end) {
      switch (text.charCodeAt(this.pos + 1)) {
        case CharCode.X:
        case CharCode.x:
          this.pos += 2;
          return this.readHexInteger();
        case CharCode.B:
        case CharCode.b:
          this.pos += 2;
          return this.readBinaryInteger();
        case CharCode.O:
        case CharCode.o:
          this.pos += 2;
          return this.readOctalInteger();
      }
      if (isOctalDigit(text.charCodeAt(this.pos + 1))) {
        const start: i32 = this.pos;
        this.pos++;
        const value: I64 = this.readOctalInteger();
        this.error(DiagnosticCode.Octal_literals_are_not_allowed_in_strict_mode, this.range(start, this.pos));
        return value;
      }
    }
    return this.readDecimalInteger();
  }

  readHexInteger(): I64 {
    const text: string = this.source.text;
    const start: i32 = this.pos;
    let value: I64 = new I64(0, 0);
    while (this.pos < this.end) {
      const c: i32 = text.charCodeAt(this.pos);
      if (c >= CharCode._0 && c <= CharCode._9) {
        // value = value * 16 + c - CharCode._0;
        value.mul32(16);
        value.add32(c - CharCode._0);
      } else if (c >= CharCode.A && c <= CharCode.F) {
        // value = value * 16 + 10 + c - CharCode.A;
        value.mul32(16);
        value.add32(10 + c - CharCode.A);
      } else if (c >= CharCode.a && c <= CharCode.f) {
        // value = value * 16 + 10 + c - CharCode.a;
        value.mul32(16);
        value.add32(10 + c - CharCode.a);
      } else
        break;
      this.pos++;
    }
    if (this.pos == start)
      this.error(DiagnosticCode.Hexadecimal_digit_expected, this.range(start));
    return value;
  }

  readDecimalInteger(): I64 {
    const text: string = this.source.text;
    const start: i32 = this.pos;
    let value: I64 = new I64(0, 0);
    while (this.pos < this.end) {
      const c: i32 = text.charCodeAt(this.pos);
      if (c >= CharCode._0 && c <= CharCode._9) {
        // value = value * 10 + c - CharCode._0;
        value.mul32(10);
        value.add32(c - CharCode._0);
      } else
        break;
      this.pos++;
    }
    if (this.pos == start)
      this.error(DiagnosticCode.Digit_expected, this.range(start));
    return value;
  }

  readOctalInteger(): I64 {
    const text: string = this.source.text;
    const start: i32 = this.pos;
    let value: I64 = new I64(0, 0);
    while (this.pos < this.end) {
      const c: i32 = text.charCodeAt(this.pos);
      if (c >= CharCode._0 && c <= CharCode._7) {
        // value = value * 8 + c - CharCode._0;
        value.mul32(8);
        value.add32(c - CharCode._0);
      } else
        break;
      this.pos++;
    }
    if (this.pos == start)
      this.error(DiagnosticCode.Octal_digit_expected, this.range(start));
    return value;
  }

  readBinaryInteger(): I64 {
    const text: string = this.source.text;
    const start: i32 = this.pos;
    let value: I64 = new I64();
    while (this.pos < this.end) {
      const c: i32 = text.charCodeAt(this.pos);
      if (c == CharCode._0) {
        // value = value * 2;
        value.mul32(2);
      } else if (c == CharCode._1) {
        // value = value * 2 + 1;
        value.mul32(2);
        value.add32(1);
      }
      else
        break;
      this.pos++;
    }
    if (this.pos == start)
      this.error(DiagnosticCode.Binary_digit_expected, this.range(start));
    return value;
  }

  readFloat(): f64 {
    let start: i32 = this.pos;
    const text: string = this.source.text;
    while (this.pos < this.end && isDecimalDigit(text.charCodeAt(this.pos)))
      this.pos++;
    if (this.pos < this.end && text.charCodeAt(this.pos) == CharCode.DOT) {
      this.pos++;
      while (this.pos < this.end && isDecimalDigit(text.charCodeAt(this.pos)))
        this.pos++;
    }
    if (this.pos < this.end) {
      const c: i32 = text.charCodeAt(this.pos);
      if (c == CharCode.E || c == CharCode.e) {
        if (++this.pos < this.end && text.charCodeAt(this.pos) == CharCode.MINUS)
          this.pos++;
        while (this.pos < this.end && isDecimalDigit(text.charCodeAt(this.pos)))
          this.pos++;
      }
    }
    return parseFloat(text.substring(start, this.pos));
  }

  readUnicodeEscape(): string {
    let remain: i32 = 4;
    let value: i32 = 0;
    const text: string = this.source.text;
    while (this.pos < this.end) {
      const c: i32 = text.charCodeAt(this.pos++);
      if (c >= CharCode._0 && c <= CharCode._9)
        value = value * 16 + c - CharCode._0;
      else if (c >= CharCode.A && c <= CharCode.F)
        value = value * 16 + 10 + c - CharCode.A;
      else if (c >= CharCode.a && c <= CharCode.f)
        value = value * 16 + 10 + c - CharCode.a;
      else {
        this.error(DiagnosticCode.Hexadecimal_digit_expected, this.range(this.pos - 1, this.pos));
        return "";
      }
      if (--remain == 0)
        break;
    }
    if (remain) {
      this.error(DiagnosticCode.Unexpected_end_of_text, this.range(this.pos));
      return "";
    }
    return String.fromCharCode(value);
  }

  private readExtendedUnicodeEscape(): string {
    const start: i32 = this.pos;
    const value: I64 = this.readHexInteger();
    let invalid: bool = false;

    if (value.gt32(0x10FFFF)) {
      this.error(DiagnosticCode.An_extended_Unicode_escape_value_must_be_between_0x0_and_0x10FFFF_inclusive, this.range(start, this.pos));
      invalid = true;
    }

    const value32: i32 = value.toI32();
    const text: string = this.source.text;
    if (this.pos >= this.end) {
      this.error(DiagnosticCode.Unexpected_end_of_text, this.range(start, this.end));
      invalid = true;
    } else if (text.charCodeAt(this.pos) == CharCode.CLOSEBRACE) {
      this.pos++;
    } else {
      this.error(DiagnosticCode.Unterminated_Unicode_escape_sequence, this.range(start, this.pos));
      invalid = true;
    }

    if (invalid)
      return "";
    return value32 < 65536
      ? String.fromCharCode(value32)
      : String.fromCharCode((((value32 - 65536) / 1024 | 0) + 0xD800) as i32, ((value32 - 65536) % 1024 + 0xDC00) as i32);
  }
}
