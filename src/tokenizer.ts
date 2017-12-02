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
import { I64, CharCode, isLineBreak } from "./util";

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
    default: return "INVALID";
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

function isWhiteSpace(c: i32): bool {
  return c == CharCode.SPACE
      || c == CharCode.TAB
      || c == CharCode.VERTICALTAB
      || c == CharCode.FORMFEED
      || c == CharCode.NONBREAKINGSPACE
      || c == CharCode.NEXTLINE
      || c == CharCode.OGHAM
      || c >= CharCode.ENQUAD && c <= CharCode.ZEROWIDTHSPACE
      || c == CharCode.NARRINOBREAKSPACE
      || c == CharCode.MATHEMATICALSPACE
      || c == CharCode.IDEOGRAPHICSPACE
      || c == CharCode.BYTEORDERMARK;
}

function isDecimalDigit(c: i32): bool {
  return c >= CharCode._0 && c <= CharCode._9;
}

function isOctalDigit(c: i32): bool {
  return c >= CharCode._0 && c <= CharCode._7;
}

function isIdentifierStart(c: i32): bool {
  return c >= CharCode.A && c <= CharCode.Z
      || c >= CharCode.a && c <= CharCode.z
//    || c == CharCode.DOLLAR // reserved for internal in case we have to change the naming scheme
      || c == CharCode._
      || c > 0x7f && isUnicodeIdentifierStart(c);
}

function isKeywordCharacter(c: i32): bool {
  return c >= CharCode.a && c <= CharCode.z;
}

function isIdentifierPart(c: i32): bool {
  return c >= CharCode.A && c <= CharCode.Z
      || c >= CharCode.a && c <= CharCode.z
      || c >= CharCode._0 && c <= CharCode._9
//    || c == CharCode.DOLLAR // reserved for internal use, see above
      || c == CharCode._
      || c > 0x7f && isUnicodeIdentifierPart(c);
}

// storing as u16 to save memory
const unicodeIdentifierStart: u16[] = [170, 170, 181, 181, 186, 186, 192, 214, 216, 246, 248, 705, 710, 721, 736, 740, 748, 748, 750, 750, 880, 884, 886, 887, 890, 893, 902, 902, 904, 906, 908, 908, 910, 929, 931, 1013, 1015, 1153, 1162, 1319, 1329, 1366, 1369, 1369, 1377, 1415, 1488, 1514, 1520, 1522, 1568, 1610, 1646, 1647, 1649, 1747, 1749, 1749, 1765, 1766, 1774, 1775, 1786, 1788, 1791, 1791, 1808, 1808, 1810, 1839, 1869, 1957, 1969, 1969, 1994, 2026, 2036, 2037, 2042, 2042, 2048, 2069, 2074, 2074, 2084, 2084, 2088, 2088, 2112, 2136, 2208, 2208, 2210, 2220, 2308, 2361, 2365, 2365, 2384, 2384, 2392, 2401, 2417, 2423, 2425, 2431, 2437, 2444, 2447, 2448, 2451, 2472, 2474, 2480, 2482, 2482, 2486, 2489, 2493, 2493, 2510, 2510, 2524, 2525, 2527, 2529, 2544, 2545, 2565, 2570, 2575, 2576, 2579, 2600, 2602, 2608, 2610, 2611, 2613, 2614, 2616, 2617, 2649, 2652, 2654, 2654, 2674, 2676, 2693, 2701, 2703, 2705, 2707, 2728, 2730, 2736, 2738, 2739, 2741, 2745, 2749, 2749, 2768, 2768, 2784, 2785, 2821, 2828, 2831, 2832, 2835, 2856, 2858, 2864, 2866, 2867, 2869, 2873, 2877, 2877, 2908, 2909, 2911, 2913, 2929, 2929, 2947, 2947, 2949, 2954, 2958, 2960, 2962, 2965, 2969, 2970, 2972, 2972, 2974, 2975, 2979, 2980, 2984, 2986, 2990, 3001, 3024, 3024, 3077, 3084, 3086, 3088, 3090, 3112, 3114, 3123, 3125, 3129, 3133, 3133, 3160, 3161, 3168, 3169, 3205, 3212, 3214, 3216, 3218, 3240, 3242, 3251, 3253, 3257, 3261, 3261, 3294, 3294, 3296, 3297, 3313, 3314, 3333, 3340, 3342, 3344, 3346, 3386, 3389, 3389, 3406, 3406, 3424, 3425, 3450, 3455, 3461, 3478, 3482, 3505, 3507, 3515, 3517, 3517, 3520, 3526, 3585, 3632, 3634, 3635, 3648, 3654, 3713, 3714, 3716, 3716, 3719, 3720, 3722, 3722, 3725, 3725, 3732, 3735, 3737, 3743, 3745, 3747, 3749, 3749, 3751, 3751, 3754, 3755, 3757, 3760, 3762, 3763, 3773, 3773, 3776, 3780, 3782, 3782, 3804, 3807, 3840, 3840, 3904, 3911, 3913, 3948, 3976, 3980, 4096, 4138, 4159, 4159, 4176, 4181, 4186, 4189, 4193, 4193, 4197, 4198, 4206, 4208, 4213, 4225, 4238, 4238, 4256, 4293, 4295, 4295, 4301, 4301, 4304, 4346, 4348, 4680, 4682, 4685, 4688, 4694, 4696, 4696, 4698, 4701, 4704, 4744, 4746, 4749, 4752, 4784, 4786, 4789, 4792, 4798, 4800, 4800, 4802, 4805, 4808, 4822, 4824, 4880, 4882, 4885, 4888, 4954, 4992, 5007, 5024, 5108, 5121, 5740, 5743, 5759, 5761, 5786, 5792, 5866, 5870, 5872, 5888, 5900, 5902, 5905, 5920, 5937, 5952, 5969, 5984, 5996, 5998, 6000, 6016, 6067, 6103, 6103, 6108, 6108, 6176, 6263, 6272, 6312, 6314, 6314, 6320, 6389, 6400, 6428, 6480, 6509, 6512, 6516, 6528, 6571, 6593, 6599, 6656, 6678, 6688, 6740, 6823, 6823, 6917, 6963, 6981, 6987, 7043, 7072, 7086, 7087, 7098, 7141, 7168, 7203, 7245, 7247, 7258, 7293, 7401, 7404, 7406, 7409, 7413, 7414, 7424, 7615, 7680, 7957, 7960, 7965, 7968, 8005, 8008, 8013, 8016, 8023, 8025, 8025, 8027, 8027, 8029, 8029, 8031, 8061, 8064, 8116, 8118, 8124, 8126, 8126, 8130, 8132, 8134, 8140, 8144, 8147, 8150, 8155, 8160, 8172, 8178, 8180, 8182, 8188, 8305, 8305, 8319, 8319, 8336, 8348, 8450, 8450, 8455, 8455, 8458, 8467, 8469, 8469, 8473, 8477, 8484, 8484, 8486, 8486, 8488, 8488, 8490, 8493, 8495, 8505, 8508, 8511, 8517, 8521, 8526, 8526, 8544, 8584, 11264, 11310, 11312, 11358, 11360, 11492, 11499, 11502, 11506, 11507, 11520, 11557, 11559, 11559, 11565, 11565, 11568, 11623, 11631, 11631, 11648, 11670, 11680, 11686, 11688, 11694, 11696, 11702, 11704, 11710, 11712, 11718, 11720, 11726, 11728, 11734, 11736, 11742, 11823, 11823, 12293, 12295, 12321, 12329, 12337, 12341, 12344, 12348, 12353, 12438, 12445, 12447, 12449, 12538, 12540, 12543, 12549, 12589, 12593, 12686, 12704, 12730, 12784, 12799, 13312, 19893, 19968, 40908, 40960, 42124, 42192, 42237, 42240, 42508, 42512, 42527, 42538, 42539, 42560, 42606, 42623, 42647, 42656, 42735, 42775, 42783, 42786, 42888, 42891, 42894, 42896, 42899, 42912, 42922, 43000, 43009, 43011, 43013, 43015, 43018, 43020, 43042, 43072, 43123, 43138, 43187, 43250, 43255, 43259, 43259, 43274, 43301, 43312, 43334, 43360, 43388, 43396, 43442, 43471, 43471, 43520, 43560, 43584, 43586, 43588, 43595, 43616, 43638, 43642, 43642, 43648, 43695, 43697, 43697, 43701, 43702, 43705, 43709, 43712, 43712, 43714, 43714, 43739, 43741, 43744, 43754, 43762, 43764, 43777, 43782, 43785, 43790, 43793, 43798, 43808, 43814, 43816, 43822, 43968, 44002, 44032, 55203, 55216, 55238, 55243, 55291, 63744, 64109, 64112, 64217, 64256, 64262, 64275, 64279, 64285, 64285, 64287, 64296, 64298, 64310, 64312, 64316, 64318, 64318, 64320, 64321, 64323, 64324, 64326, 64433, 64467, 64829, 64848, 64911, 64914, 64967, 65008, 65019, 65136, 65140, 65142, 65276, 65313, 65338, 65345, 65370, 65382, 65470, 65474, 65479, 65482, 65487, 65490, 65495, 65498, 65500, ];
const unicodeIdentifierPart: u16[] = [170, 170, 181, 181, 186, 186, 192, 214, 216, 246, 248, 705, 710, 721, 736, 740, 748, 748, 750, 750, 768, 884, 886, 887, 890, 893, 902, 902, 904, 906, 908, 908, 910, 929, 931, 1013, 1015, 1153, 1155, 1159, 1162, 1319, 1329, 1366, 1369, 1369, 1377, 1415, 1425, 1469, 1471, 1471, 1473, 1474, 1476, 1477, 1479, 1479, 1488, 1514, 1520, 1522, 1552, 1562, 1568, 1641, 1646, 1747, 1749, 1756, 1759, 1768, 1770, 1788, 1791, 1791, 1808, 1866, 1869, 1969, 1984, 2037, 2042, 2042, 2048, 2093, 2112, 2139, 2208, 2208, 2210, 2220, 2276, 2302, 2304, 2403, 2406, 2415, 2417, 2423, 2425, 2431, 2433, 2435, 2437, 2444, 2447, 2448, 2451, 2472, 2474, 2480, 2482, 2482, 2486, 2489, 2492, 2500, 2503, 2504, 2507, 2510, 2519, 2519, 2524, 2525, 2527, 2531, 2534, 2545, 2561, 2563, 2565, 2570, 2575, 2576, 2579, 2600, 2602, 2608, 2610, 2611, 2613, 2614, 2616, 2617, 2620, 2620, 2622, 2626, 2631, 2632, 2635, 2637, 2641, 2641, 2649, 2652, 2654, 2654, 2662, 2677, 2689, 2691, 2693, 2701, 2703, 2705, 2707, 2728, 2730, 2736, 2738, 2739, 2741, 2745, 2748, 2757, 2759, 2761, 2763, 2765, 2768, 2768, 2784, 2787, 2790, 2799, 2817, 2819, 2821, 2828, 2831, 2832, 2835, 2856, 2858, 2864, 2866, 2867, 2869, 2873, 2876, 2884, 2887, 2888, 2891, 2893, 2902, 2903, 2908, 2909, 2911, 2915, 2918, 2927, 2929, 2929, 2946, 2947, 2949, 2954, 2958, 2960, 2962, 2965, 2969, 2970, 2972, 2972, 2974, 2975, 2979, 2980, 2984, 2986, 2990, 3001, 3006, 3010, 3014, 3016, 3018, 3021, 3024, 3024, 3031, 3031, 3046, 3055, 3073, 3075, 3077, 3084, 3086, 3088, 3090, 3112, 3114, 3123, 3125, 3129, 3133, 3140, 3142, 3144, 3146, 3149, 3157, 3158, 3160, 3161, 3168, 3171, 3174, 3183, 3202, 3203, 3205, 3212, 3214, 3216, 3218, 3240, 3242, 3251, 3253, 3257, 3260, 3268, 3270, 3272, 3274, 3277, 3285, 3286, 3294, 3294, 3296, 3299, 3302, 3311, 3313, 3314, 3330, 3331, 3333, 3340, 3342, 3344, 3346, 3386, 3389, 3396, 3398, 3400, 3402, 3406, 3415, 3415, 3424, 3427, 3430, 3439, 3450, 3455, 3458, 3459, 3461, 3478, 3482, 3505, 3507, 3515, 3517, 3517, 3520, 3526, 3530, 3530, 3535, 3540, 3542, 3542, 3544, 3551, 3570, 3571, 3585, 3642, 3648, 3662, 3664, 3673, 3713, 3714, 3716, 3716, 3719, 3720, 3722, 3722, 3725, 3725, 3732, 3735, 3737, 3743, 3745, 3747, 3749, 3749, 3751, 3751, 3754, 3755, 3757, 3769, 3771, 3773, 3776, 3780, 3782, 3782, 3784, 3789, 3792, 3801, 3804, 3807, 3840, 3840, 3864, 3865, 3872, 3881, 3893, 3893, 3895, 3895, 3897, 3897, 3902, 3911, 3913, 3948, 3953, 3972, 3974, 3991, 3993, 4028, 4038, 4038, 4096, 4169, 4176, 4253, 4256, 4293, 4295, 4295, 4301, 4301, 4304, 4346, 4348, 4680, 4682, 4685, 4688, 4694, 4696, 4696, 4698, 4701, 4704, 4744, 4746, 4749, 4752, 4784, 4786, 4789, 4792, 4798, 4800, 4800, 4802, 4805, 4808, 4822, 4824, 4880, 4882, 4885, 4888, 4954, 4957, 4959, 4992, 5007, 5024, 5108, 5121, 5740, 5743, 5759, 5761, 5786, 5792, 5866, 5870, 5872, 5888, 5900, 5902, 5908, 5920, 5940, 5952, 5971, 5984, 5996, 5998, 6000, 6002, 6003, 6016, 6099, 6103, 6103, 6108, 6109, 6112, 6121, 6155, 6157, 6160, 6169, 6176, 6263, 6272, 6314, 6320, 6389, 6400, 6428, 6432, 6443, 6448, 6459, 6470, 6509, 6512, 6516, 6528, 6571, 6576, 6601, 6608, 6617, 6656, 6683, 6688, 6750, 6752, 6780, 6783, 6793, 6800, 6809, 6823, 6823, 6912, 6987, 6992, 7001, 7019, 7027, 7040, 7155, 7168, 7223, 7232, 7241, 7245, 7293, 7376, 7378, 7380, 7414, 7424, 7654, 7676, 7957, 7960, 7965, 7968, 8005, 8008, 8013, 8016, 8023, 8025, 8025, 8027, 8027, 8029, 8029, 8031, 8061, 8064, 8116, 8118, 8124, 8126, 8126, 8130, 8132, 8134, 8140, 8144, 8147, 8150, 8155, 8160, 8172, 8178, 8180, 8182, 8188, 8204, 8205, 8255, 8256, 8276, 8276, 8305, 8305, 8319, 8319, 8336, 8348, 8400, 8412, 8417, 8417, 8421, 8432, 8450, 8450, 8455, 8455, 8458, 8467, 8469, 8469, 8473, 8477, 8484, 8484, 8486, 8486, 8488, 8488, 8490, 8493, 8495, 8505, 8508, 8511, 8517, 8521, 8526, 8526, 8544, 8584, 11264, 11310, 11312, 11358, 11360, 11492, 11499, 11507, 11520, 11557, 11559, 11559, 11565, 11565, 11568, 11623, 11631, 11631, 11647, 11670, 11680, 11686, 11688, 11694, 11696, 11702, 11704, 11710, 11712, 11718, 11720, 11726, 11728, 11734, 11736, 11742, 11744, 11775, 11823, 11823, 12293, 12295, 12321, 12335, 12337, 12341, 12344, 12348, 12353, 12438, 12441, 12442, 12445, 12447, 12449, 12538, 12540, 12543, 12549, 12589, 12593, 12686, 12704, 12730, 12784, 12799, 13312, 19893, 19968, 40908, 40960, 42124, 42192, 42237, 42240, 42508, 42512, 42539, 42560, 42607, 42612, 42621, 42623, 42647, 42655, 42737, 42775, 42783, 42786, 42888, 42891, 42894, 42896, 42899, 42912, 42922, 43000, 43047, 43072, 43123, 43136, 43204, 43216, 43225, 43232, 43255, 43259, 43259, 43264, 43309, 43312, 43347, 43360, 43388, 43392, 43456, 43471, 43481, 43520, 43574, 43584, 43597, 43600, 43609, 43616, 43638, 43642, 43643, 43648, 43714, 43739, 43741, 43744, 43759, 43762, 43766, 43777, 43782, 43785, 43790, 43793, 43798, 43808, 43814, 43816, 43822, 43968, 44010, 44012, 44013, 44016, 44025, 44032, 55203, 55216, 55238, 55243, 55291, 63744, 64109, 64112, 64217, 64256, 64262, 64275, 64279, 64285, 64296, 64298, 64310, 64312, 64316, 64318, 64318, 64320, 64321, 64323, 64324, 64326, 64433, 64467, 64829, 64848, 64911, 64914, 64967, 65008, 65019, 65024, 65039, 65056, 65062, 65075, 65076, 65101, 65103, 65136, 65140, 65142, 65276, 65296, 65305, 65313, 65338, 65343, 65343, 65345, 65370, 65382, 65470, 65474, 65479, 65482, 65487, 65490, 65495, 65498, 65500, ];

function lookupInUnicodeMap(code: u16, map: u16[]): bool {
  if (code < map[0])
    return false;

  let lo: i32 = 0;
  let hi: i32 = map.length;
  let mid: i32;

  while (lo + 1 < hi) {
    mid = lo + (hi - lo) / 2;
    mid -= mid % 2;
    if (map[mid] <= code && code <= map[mid + 1])
      return true;
    if (code < map[mid])
      hi = mid;
    else
      lo = mid + 2;
  }
  return false;
}

function isUnicodeIdentifierStart(code: i32): bool {
  if (code < 0 || code > 0xffff) return false;
  return lookupInUnicodeMap(code as u16, unicodeIdentifierStart);
}

function isUnicodeIdentifierPart(code: i32): bool {
  if (code < 0 || code > 0xffff) return false;
  return lookupInUnicodeMap(code as u16, unicodeIdentifierPart);
}
