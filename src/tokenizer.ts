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
  Range,
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
  isHexBase,
  isHighSurrogate,
  combineSurrogates,
  numCodeUnits
} from "./util";

/** Named token types. */
export const enum Token {

  // keywords
  // discarded: ANY, BOOLEAN, NEVER, NUMBER, STRING, SYMBOL, UNDEFINED, LESSTHAN_SLASH

  Abstract,
  As,
  Async,
  Await,        // ES2017
  Break,        // ES2017
  Case,         // ES2017
  Catch,        // ES2017
  Class,        // ES2017
  Const,        // ES2017
  Continue,     // ES2017
  Constructor,
  Debugger,     // ES2017
  Declare,
  Default,      // ES2017
  Delete,       // ES2017
  Do,           // ES2017
  Else,         // ES2017
  Enum,         // ES2017 future
  Export,       // ES2017
  Extends,      // ES2017
  False,        // ES
  Finally,      // ES2017
  For,          // ES2017
  From,         // AS possible identifier
  Function,     // ES2017
  Get,
  If,           // ES2017
  Implements,   // ES2017 non-lexical
  Import,       // ES2017
  In,           // ES2017
  InstanceOf,   // ES2017
  Interface,    // ES2017 non-lexical
  Is,
  KeyOf,
  Let,          // ES2017 non-lexical
  Module,       // AS possible identifier
  Namespace,    // AS possible identifier
  New,          // ES2017
  Null,         // ES
  Of,
  Override,
  Package,      // ES2017 non-lexical
  Private,      // ES2017 non-lexical
  Protected,    // ES2017 non-lexical
  Public,       // ES2017 non-lexical
  Readonly,
  Return,       // ES2017
  Set,
  Static,       // ES2017 non-lexical
  Super,        // ES2017
  Switch,       // ES2017
  This,         // ES2017
  Throw,        // ES2017
  True,         // ES
  Try,          // ES2017
  Type,         // AS possible identifier
  TypeOf,       // ES2017
  Var,          // ES2017
  Void,         // ES2017
  While,        // ES2017
  With,         // ES2017
  Yield,        // ES2017

  // punctuation

  OpenBrace,
  CloseBrace,
  OpenParen,
  CloseParen,
  OpenBracket,
  CloseBracket,
  Dot,
  Dot_Dot_Dot,
  Semicolon,
  Comma,
  LessThan,
  GreaterThan,
  LessThan_Equals,
  GreaterThan_Equals,
  Equals_Equals,
  Exclamation_Equals,
  Equals_Equals_Equals,
  Exclamation_Equals_Equals,
  Equals_GreaterThan,
  Plus,
  Minus,
  Asterisk_Asterisk,
  Asterisk,
  Slash,
  Percent,
  Plus_Plus,
  Minus_Minus,
  LessThan_LessThan,
  GreaterThan_GreaterThan,
  GreaterThan_GreaterThan_GreaterThan,
  Ampersand,
  Bar,
  Caret,
  Exclamation,
  Tilde,
  Ampersand_Ampersand,
  Bar_Bar,
  Question,
  Colon,
  Equals,
  Plus_Equals,
  Minus_Equals,
  Asterisk_Equals,
  Asterisk_Asterisk_Equals,
  Slash_Equals,
  Percent_Equals,
  LessThan_LessThan_Equals,
  GreaterThan_GreaterThan_Equals,
  GreaterThan_GreaterThan_GreaterThan_Equals,
  Ampersand_Equals,
  Bar_Equals,
  Caret_Equals,
  At,

  // literals

  Identifier,
  StringLiteral,
  IntegerLiteral,
  FloatLiteral,
  TemplateLiteral,

  // meta

  Invalid,
  EndOfFile
}

export const enum IdentifierHandling {
  Default,
  Prefer,
  Always
}

export function tokenFromKeyword(text: string): Token {
  let len = text.length;
  assert(len);
  switch (text.charCodeAt(0)) {
    case CharCode.a: {
      if (len == 5) {
        if (text == "async") return Token.Async;
        if (text == "await") return Token.Await;
        break;
      }
      if (text == "as") return Token.As;
      if (text == "abstract") return Token.Abstract;
      break;
    }
    case CharCode.b: {
      if (text == "break") return Token.Break;
      break;
    }
    case CharCode.c: {
      if (len == 5) {
        if (text == "const") return Token.Const;
        if (text == "class") return Token.Class;
        if (text == "catch") return Token.Catch;
        break;
      }
      if (text == "case") return Token.Case;
      if (text == "continue") return Token.Continue;
      if (text == "constructor") return Token.Constructor;
      break;
    }
    case CharCode.d: {
      if (len == 7) {
        if (text == "default") return Token.Default;
        if (text == "declare") return Token.Declare;
        break;
      }
      if (text == "do") return Token.Do;
      if (text == "delete") return Token.Delete;
      if (text == "debugger") return Token.Debugger;
      break;
    }
    case CharCode.e: {
      if (len == 4) {
        if (text == "else") return Token.Else;
        if (text == "enum") return Token.Enum;
        break;
      }
      if (text == "export") return Token.Export;
      if (text == "extends") return Token.Extends;
      break;
    }
    case CharCode.f: {
      if (len <= 5) {
        if (text == "false") return Token.False;
        if (text == "for") return Token.For;
        if (text == "from") return Token.From;
        break;
      }
      if (text == "function") return Token.Function;
      if (text == "finally") return Token.Finally;
      break;
    }
    case CharCode.g: {
      if (text == "get") return Token.Get;
      break;
    }
    case CharCode.i: {
      if (len == 2) {
        if (text == "if") return Token.If;
        if (text == "in") return Token.In;
        if (text == "is") return Token.Is;
        break;
      }
      switch (text.charCodeAt(3)) {
        case CharCode.l: {
          if (text == "implements") return Token.Implements;
          break;
        }
        case CharCode.o: {
          if (text == "import") return Token.Import;
          break;
        }
        case CharCode.t: {
          if (text == "instanceof") return Token.InstanceOf;
          break;
        }
        case CharCode.e: {
          if (text == "interface") return Token.Interface;
          break;
        }
      }
      break;
    }
    case CharCode.k: {
      if (text == "keyof") return Token.KeyOf;
      break;
    }
    case CharCode.l: {
      if (text == "let") return Token.Let;
      break;
    }
    case CharCode.m: {
      if (text == "module") return Token.Module;
      break;
    }
    case CharCode.n: {
      if (text == "new") return Token.New;
      if (text == "null") return Token.Null;
      if (text == "namespace") return Token.Namespace;
      break;
    }
    case CharCode.o: {
      if (text == "of") return Token.Of;
      if (text == "override") return Token.Override;
      break;
    }
    case CharCode.p: {
      if (len == 7) {
        if (text == "private") return Token.Private;
        if (text == "package") return Token.Package;
        break;
      }
      if (text == "public") return Token.Public;
      if (text == "protected") return Token.Protected;
      break;
    }
    case CharCode.r: {
      if (text == "return") return Token.Return;
      if (text == "readonly") return Token.Readonly;
      break;
    }
    case CharCode.s: {
      if (len == 6) {
        if (text == "switch") return Token.Switch;
        if (text == "static") return Token.Static;
        break;
      }
      if (text == "set") return Token.Set;
      if (text == "super") return Token.Super;
      break;
    }
    case CharCode.t: {
      if (len == 4) {
        if (text == "true") return Token.True;
        if (text == "this") return Token.This;
        if (text == "type") return Token.Type;
        break;
      }
      if (text == "try") return Token.Try;
      if (text == "throw") return Token.Throw;
      if (text == "typeof") return Token.TypeOf;
      break;
    }
    case CharCode.v: {
      if (text == "var") return Token.Var;
      if (text == "void") return Token.Void;
      break;
    }
    case CharCode.w: {
      if (text == "while") return Token.While;
      if (text == "with") return Token.With;
      break;
    }
    case CharCode.y: {
      if (text == "yield") return Token.Yield;
      break;
    }
  }
  return Token.Invalid;
}

export function tokenIsAlsoIdentifier(token: Token): bool {
  switch (token) {
    case Token.Abstract:
    case Token.As:
    case Token.Constructor:
    case Token.Declare:
    case Token.Delete:
    case Token.From:
    case Token.For:
    case Token.Get:
    case Token.InstanceOf:
    case Token.Is:
    case Token.KeyOf:
    case Token.Module:
    case Token.Namespace:
    case Token.Null:
    case Token.Readonly:
    case Token.Set:
    case Token.Type:
    case Token.Void: return true;
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
    case Token.Delete: return "delete";
    case Token.In: return "in";
    case Token.InstanceOf: return "instanceof";
    case Token.New: return "new";
    case Token.TypeOf: return "typeof";
    case Token.Void: return "void";
    case Token.Yield: return "yield";
    case Token.Dot_Dot_Dot: return "...";
    case Token.Comma: return ",";
    case Token.LessThan: return "<";
    case Token.GreaterThan: return ">";
    case Token.LessThan_Equals: return "<=";
    case Token.GreaterThan_Equals: return ">=";
    case Token.Equals_Equals: return "==";
    case Token.Exclamation_Equals: return "!=";
    case Token.Equals_Equals_Equals: return "===";
    case Token.Exclamation_Equals_Equals: return "!==";
    case Token.Plus: return "+";
    case Token.Minus: return "-";
    case Token.Asterisk_Asterisk: return "**";
    case Token.Asterisk: return "*";
    case Token.Slash: return "/";
    case Token.Percent: return "%";
    case Token.Plus_Plus: return "++";
    case Token.Minus_Minus: return "--";
    case Token.LessThan_LessThan: return "<<";
    case Token.GreaterThan_GreaterThan: return ">>";
    case Token.GreaterThan_GreaterThan_GreaterThan: return ">>>";
    case Token.Ampersand: return "&";
    case Token.Bar: return "|";
    case Token.Caret: return "^";
    case Token.Exclamation: return "!";
    case Token.Tilde: return "~";
    case Token.Ampersand_Ampersand: return "&&";
    case Token.Bar_Bar: return "||";
    case Token.Equals: return "=";
    case Token.Plus_Equals: return "+=";
    case Token.Minus_Equals: return "-=";
    case Token.Asterisk_Equals: return "*=";
    case Token.Asterisk_Asterisk_Equals: return "**=";
    case Token.Slash_Equals: return "/=";
    case Token.Percent_Equals: return "%=";
    case Token.LessThan_LessThan_Equals: return "<<=";
    case Token.GreaterThan_GreaterThan_Equals: return ">>=";
    case Token.GreaterThan_GreaterThan_GreaterThan_Equals: return ">>>=";
    case Token.Ampersand_Equals: return "&=";
    case Token.Bar_Equals: return "|=";
    case Token.Caret_Equals: return "^=";
    default: {
      assert(false);
      return "";
    }
  }
}

/** Handler for intercepting comments while tokenizing. */
export type CommentHandler = (kind: CommentKind, text: string, range: Range) => void;

/** Whether a token begins on a new line, if known. */
enum OnNewLine {
  No,
  Yes,
  Unknown
}

/** Tokenizes a source to individual {@link Token}s. */
export class Tokenizer extends DiagnosticEmitter {

  source: Source;
  end: i32 = 0;

  pos: i32 = 0;
  token: Token = -1;
  tokenPos: i32 = 0;

  nextToken: Token = -1;
  nextTokenPos: i32 = 0;
  nextTokenOnNewLine: OnNewLine = OnNewLine.Unknown;

  onComment: CommentHandler | null = null;

  /** Constructs a new tokenizer. */
  constructor(source: Source, diagnostics: DiagnosticMessage[] | null = null) {
    super(diagnostics);

    if (!diagnostics) diagnostics = [];
    this.diagnostics = diagnostics;
    this.source = source;

    let text = source.text;
    let end = text.length;
    let pos = 0;
    // skip bom
    if (
      pos < end &&
      text.charCodeAt(pos) == CharCode.ByteOrderMark
    ) {
      ++pos;
    }

    // skip shebang
    if (
      pos + 1 < end &&
      text.charCodeAt(pos) == CharCode.Hash &&
      text.charCodeAt(pos + 1) == CharCode.Exclamation
    ) {
      pos += 2;
      while (
        pos < end &&
        text.charCodeAt(pos) != CharCode.LineFeed
      ) {
        ++pos;
      }
      // 'next' now starts at lf or eof
    }
    this.pos = pos;
    this.end = end;
  }

  next(identifierHandling: IdentifierHandling = IdentifierHandling.Default): Token {
    this.clearNextToken();
    let token: Token;
    do token = this.unsafeNext(identifierHandling);
    while (token == Token.Invalid);
    this.token = token;
    return token;
  }

  private unsafeNext(
    identifierHandling: IdentifierHandling = IdentifierHandling.Default,
    maxTokenLength: i32 = i32.MAX_VALUE
  ): Token {
    let text = this.source.text;
    let end = this.end;
    let pos = this.pos;
    while (pos < end) {
      this.tokenPos = pos;
      let c = text.charCodeAt(pos);
      switch (c) {
        case CharCode.CarriageReturn: {
          if (!(
            ++pos < end &&
            text.charCodeAt(pos) == CharCode.LineFeed
          )) break;
          // otherwise fall-through
        }
        case CharCode.LineFeed:
        case CharCode.Tab:
        case CharCode.VerticalTab:
        case CharCode.FormFeed:
        case CharCode.Space: {
          ++pos;
          break;
        }
        case CharCode.Exclamation: {
          ++pos;
          if (
            maxTokenLength > 1 && pos < end &&
            text.charCodeAt(pos) == CharCode.Equals
          ) {
            ++pos;
            if (
              maxTokenLength > 2 && pos < end &&
              text.charCodeAt(pos) == CharCode.Equals
            ) {
              this.pos = pos + 1;
              return Token.Exclamation_Equals_Equals;
            }
            this.pos = pos;
            return Token.Exclamation_Equals;
          }
          this.pos = pos;
          return Token.Exclamation;
        }
        case CharCode.DoubleQuote:
        case CharCode.SingleQuote: {
          this.pos = pos;
          return Token.StringLiteral;
        }
        case CharCode.Backtick: {
          this.pos = pos;
          return Token.TemplateLiteral;
        }
        case CharCode.Percent: {
          ++pos;
          if (
            maxTokenLength > 1 && pos < end &&
            text.charCodeAt(pos) == CharCode.Equals
          ) {
            this.pos = pos + 1;
            return Token.Percent_Equals;
          }
          this.pos = pos;
          return Token.Percent;
        }
        case CharCode.Ampersand: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.Ampersand) {
              this.pos = pos + 1;
              return Token.Ampersand_Ampersand;
            }
            if (chr == CharCode.Equals) {
              this.pos = pos + 1;
              return Token.Ampersand_Equals;
            }
          }
          this.pos = pos;
          return Token.Ampersand;
        }
        case CharCode.OpenParen: {
          this.pos = pos + 1;
          return Token.OpenParen;
        }
        case CharCode.CloseParen: {
          this.pos = pos + 1;
          return Token.CloseParen;
        }
        case CharCode.Asterisk: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.Equals) {
              this.pos = pos + 1;
              return Token.Asterisk_Equals;
            }
            if (chr == CharCode.Asterisk) {
              ++pos;
              if (
                maxTokenLength > 2 && pos < end &&
                text.charCodeAt(pos) == CharCode.Equals
              ) {
                this.pos = pos + 1;
                return Token.Asterisk_Asterisk_Equals;
              }
              this.pos = pos;
              return Token.Asterisk_Asterisk;
            }
          }
          this.pos = pos;
          return Token.Asterisk;
        }
        case CharCode.Plus: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.Plus) {
              this.pos = pos + 1;
              return Token.Plus_Plus;
            }
            if (chr == CharCode.Equals) {
              this.pos = pos + 1;
              return Token.Plus_Equals;
            }
          }
          this.pos = pos;
          return Token.Plus;
        }
        case CharCode.Comma: {
          this.pos = pos + 1;
          return Token.Comma;
        }
        case CharCode.Minus: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.Minus) {
              this.pos = pos + 1;
              return Token.Minus_Minus;
            }
            if (chr == CharCode.Equals) {
              this.pos = pos + 1;
              return Token.Minus_Equals;
            }
          }
          this.pos = pos;
          return Token.Minus;
        }
        case CharCode.Dot: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (isDecimal(chr)) {
              this.pos = pos - 1;
              return Token.FloatLiteral; // expects a call to readFloat
            }
            if (
              maxTokenLength > 2 && pos + 1 < end &&
              chr == CharCode.Dot &&
              text.charCodeAt(pos + 1) == CharCode.Dot
            ) {
              this.pos = pos + 2;
              return Token.Dot_Dot_Dot;
            }
          }
          this.pos = pos;
          return Token.Dot;
        }
        case CharCode.Slash: {
          let commentStartPos = pos;
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.Slash) { // single-line
              let commentKind = CommentKind.Line;
              if (
                pos + 1 < end &&
                text.charCodeAt(pos + 1) == CharCode.Slash
              ) {
                ++pos;
                commentKind = CommentKind.Triple;
              }
              while (++pos < end) {
                if (text.charCodeAt(pos) == CharCode.LineFeed) {
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
            if (chr == CharCode.Asterisk) { // multi-line
              let closed = false;
              while (++pos < end) {
                c = text.charCodeAt(pos);
                if (
                  c == CharCode.Asterisk &&
                  pos + 1 < end &&
                  text.charCodeAt(pos + 1) == CharCode.Slash
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
                  CommentKind.Block,
                  text.substring(commentStartPos, pos),
                  this.range(commentStartPos, pos)
                );
              }
              break;
            }
            if (chr == CharCode.Equals) {
              this.pos = pos + 1;
              return Token.Slash_Equals;
            }
          }
          this.pos = pos;
          return Token.Slash;
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
            ? Token.IntegerLiteral // expects a call to readInteger
            : Token.FloatLiteral;  // expects a call to readFloat
        }
        case CharCode.Colon: {
          this.pos = pos + 1;
          return Token.Colon;
        }
        case CharCode.Semicolon: {
          this.pos = pos + 1;
          return Token.Semicolon;
        }
        case CharCode.LessThan: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.LessThan) {
              ++pos;
              if (
                maxTokenLength > 2 &&
                pos < end &&
                text.charCodeAt(pos) == CharCode.Equals
              ) {
                this.pos = pos + 1;
                return Token.LessThan_LessThan_Equals;
              }
              this.pos = pos;
              return Token.LessThan_LessThan;
            }
            if (chr == CharCode.Equals) {
              this.pos = pos + 1;
              return Token.LessThan_Equals;
            }
          }
          this.pos = pos;
          return Token.LessThan;
        }
        case CharCode.Equals: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.Equals) {
              ++pos;
              if (
                maxTokenLength > 2 &&
                pos < end &&
                text.charCodeAt(pos) == CharCode.Equals
              ) {
                this.pos = pos + 1;
                return Token.Equals_Equals_Equals;
              }
              this.pos = pos;
              return Token.Equals_Equals;
            }
            if (chr == CharCode.GreaterThan) {
              this.pos = pos + 1;
              return Token.Equals_GreaterThan;
            }
          }
          this.pos = pos;
          return Token.Equals;
        }
        case CharCode.GreaterThan: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.GreaterThan) {
              ++pos;
              if (maxTokenLength > 2 && pos < end) {
                chr = text.charCodeAt(pos);
                if (chr == CharCode.GreaterThan) {
                  ++pos;
                  if (
                    maxTokenLength > 3 && pos < end &&
                    text.charCodeAt(pos) == CharCode.Equals
                  ) {
                    this.pos = pos + 1;
                    return Token.GreaterThan_GreaterThan_GreaterThan_Equals;
                  }
                  this.pos = pos;
                  return Token.GreaterThan_GreaterThan_GreaterThan;
                }
                if (chr == CharCode.Equals) {
                  this.pos = pos + 1;
                  return Token.GreaterThan_GreaterThan_Equals;
                }
              }
              this.pos = pos;
              return Token.GreaterThan_GreaterThan;
            }
            if (chr == CharCode.Equals) {
              this.pos = pos + 1;
              return Token.GreaterThan_Equals;
            }
          }
          this.pos = pos;
          return Token.GreaterThan;
        }
        case CharCode.Question: {
          this.pos = pos + 1;
          return Token.Question;
        }
        case CharCode.OpenBracket: {
          this.pos = pos + 1;
          return Token.OpenBracket;
        }
        case CharCode.CloseBracket: {
          this.pos = pos + 1;
          return Token.CloseBracket;
        }
        case CharCode.Caret: {
          ++pos;
          if (
            maxTokenLength > 1 && pos < end &&
            text.charCodeAt(pos) == CharCode.Equals
          ) {
            this.pos = pos + 1;
            return Token.Caret_Equals;
          }
          this.pos = pos;
          return Token.Caret;
        }
        case CharCode.OpenBrace: {
          this.pos = pos + 1;
          return Token.OpenBrace;
        }
        case CharCode.Bar: {
          ++pos;
          if (maxTokenLength > 1 && pos < end) {
            let chr = text.charCodeAt(pos);
            if (chr == CharCode.Bar) {
              this.pos = pos + 1;
              return Token.Bar_Bar;
            }
            if (chr == CharCode.Equals) {
              this.pos = pos + 1;
              return Token.Bar_Equals;
            }
          }
          this.pos = pos;
          return Token.Bar;
        }
        case CharCode.CloseBrace: {
          this.pos = pos + 1;
          return Token.CloseBrace;
        }
        case CharCode.Tilde: {
          this.pos = pos + 1;
          return Token.Tilde;
        }
        case CharCode.At: {
          this.pos = pos + 1;
          return Token.At;
        }
        default: {
          // Unicode-aware from here on
          if (isHighSurrogate(c) && pos + 1 < end) {
            c = combineSurrogates(c, text.charCodeAt(pos + 1));
          }
          if (isIdentifierStart(c)) {
            let posBefore = pos;
            while (
              (pos += numCodeUnits(c)) < end &&
              isIdentifierPart(c = <i32>text.codePointAt(pos))
            ) { /* nop */ }
            if (identifierHandling != IdentifierHandling.Always) {
              let maybeKeywordToken = tokenFromKeyword(text.substring(posBefore, pos));
              if (
                maybeKeywordToken != Token.Invalid &&
                !(
                  identifierHandling == IdentifierHandling.Prefer &&
                  tokenIsAlsoIdentifier(maybeKeywordToken)
                )
              ) {
                this.pos = pos;
                return maybeKeywordToken;
              }
            }
            this.pos = posBefore;
            return Token.Identifier;
          } else if (isWhiteSpace(c)) {
            ++pos; // assume no supplementary whitespaces
            break;
          }
          let start = pos;
          pos += numCodeUnits(c);
          this.error(
            DiagnosticCode.Invalid_character,
            this.range(start, pos)
          );
          this.pos = pos;
          return Token.Invalid;
        }
      }
    }
    this.pos = pos;
    return Token.EndOfFile;
  }

  peek(
    identifierHandling: IdentifierHandling = IdentifierHandling.Default,
    maxCompoundLength: i32 = i32.MAX_VALUE
  ): Token {
    let nextToken = this.nextToken;
    if (nextToken < 0) {
      let posBefore = this.pos;
      let tokenBefore = this.token;
      let tokenPosBefore = this.tokenPos;
      do nextToken = this.unsafeNext(identifierHandling, maxCompoundLength);
      while (nextToken == Token.Invalid);
      this.nextToken = nextToken;
      this.nextTokenPos = this.tokenPos;
      this.nextTokenOnNewLine = OnNewLine.Unknown;
      this.pos = posBefore;
      this.token = tokenBefore;
      this.tokenPos = tokenPosBefore;
    }
    return nextToken;
  }

  peekOnNewLine(): bool {
    switch (this.nextTokenOnNewLine) {
      case OnNewLine.No: return false;
      case OnNewLine.Yes: return true;
    }
    this.peek();
    let text = this.source.text;
    for (let pos = this.pos, end = this.nextTokenPos; pos < end; ++pos) {
      if (isLineBreak(text.charCodeAt(pos))) {
        this.nextTokenOnNewLine = OnNewLine.Yes;
        return true;
      }
    }
    this.nextTokenOnNewLine = OnNewLine.No;
    return false;
  }

  skipIdentifier(identifierHandling: IdentifierHandling = IdentifierHandling.Prefer): bool {
    return this.skip(Token.Identifier, identifierHandling);
  }

  skip(token: Token, identifierHandling: IdentifierHandling = IdentifierHandling.Default): bool {
    let posBefore = this.pos;
    let tokenBefore = this.token;
    let tokenPosBefore = this.tokenPos;
    let maxCompoundLength = i32.MAX_VALUE;
    if (token == Token.GreaterThan) {  // where parsing type arguments
      maxCompoundLength = 1;
    }
    let nextToken: Token;
    do nextToken = this.unsafeNext(identifierHandling, maxCompoundLength);
    while (nextToken == Token.Invalid);
    if (nextToken == token) {
      this.token = token;
      this.clearNextToken();
      return true;
    } else {
      this.pos = posBefore;
      this.token = tokenBefore;
      this.tokenPos = tokenPosBefore;
      return false;
    }
  }

  mark(): State {
    let state = reusableState;
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
    this.clearNextToken();
  }

  clearNextToken(): void {
    this.nextToken = -1;
    this.nextTokenPos = 0;
    this.nextTokenOnNewLine = OnNewLine.Unknown;
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
    let text = this.source.text;
    let end = this.end;
    let pos = this.pos;
    let start = pos;
    let c = <i32>text.codePointAt(pos);
    assert(isIdentifierStart(c));
    while (
      (pos += numCodeUnits(c)) < end &&
      isIdentifierPart(c = <i32>text.codePointAt(pos))
    );
    this.pos = pos;
    return text.substring(start, pos);
  }

  readingTemplateString: bool = false;
  readStringStart: i32 = 0;
  readStringEnd: i32 = 0;

  readString(quote: i32 = 0, isTaggedTemplate: bool = false): string {
    let text = this.source.text;
    let end = this.end;
    let pos = this.pos;
    if (!quote) quote = text.charCodeAt(pos++);
    let start = pos;
    this.readStringStart = start;
    let result = "";

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
      if (c == CharCode.Backslash) {
        result += text.substring(start, pos);
        this.pos = pos; // save
        result += this.readEscapeSequence(isTaggedTemplate);
        pos = this.pos; // restore
        start = pos;
        continue;
      }
      if (quote == CharCode.Backtick) {
        if (c == CharCode.Dollar && pos + 1 < end && text.charCodeAt(pos + 1) == CharCode.OpenBrace) {
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
    let start = this.pos;
    let end = this.end;
    if (++this.pos >= end) {
      this.error(
        DiagnosticCode.Unexpected_end_of_text,
        this.range(end)
      );
      return "";
    }

    let text = this.source.text;
    let c = text.charCodeAt(this.pos++);
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
      case CharCode.SingleQuote: return "'";
      case CharCode.DoubleQuote: return "\"";
      case CharCode.u: {
        if (
          this.pos < end &&
          text.charCodeAt(this.pos) == CharCode.OpenBrace
        ) {
          ++this.pos;
          return this.readExtendedUnicodeEscape(isTaggedTemplate ? start : -1); // \u{DDDDDDDD}
        }
        return this.readUnicodeEscape(isTaggedTemplate ? start : -1); // \uDDDD
      }
      case CharCode.x: {
        return this.readHexadecimalEscape(2, isTaggedTemplate ? start : - 1); // \xDD
      }
      case CharCode.CarriageReturn: {
        if (
          this.pos < end &&
          text.charCodeAt(this.pos) == CharCode.LineFeed
        ) {
          ++this.pos;
        }
        // fall through
      }
      case CharCode.LineFeed:
      case CharCode.LineSeparator:
      case CharCode.ParagraphSeparator: return "";
      default: return String.fromCodePoint(c);
    }
  }

  readRegexpPattern(): string {
    let text = this.source.text;
    let start = this.pos;
    let end = this.end;
    let escaped = false;
    while (true) {
      if (this.pos >= end) {
        this.error(
          DiagnosticCode.Unterminated_regular_expression_literal,
          this.range(start, end)
        );
        break;
      }
      if (text.charCodeAt(this.pos) == CharCode.Backslash) {
        ++this.pos;
        escaped = true;
        continue;
      }
      let c = text.charCodeAt(this.pos);
      if (!escaped && c == CharCode.Slash) break;
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
    let text = this.source.text;
    let start = this.pos;
    let end = this.end;
    let flags = 0;
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
    let text = this.source.text;
    let pos = this.pos;
    let end = this.end;
    if (pos + 1 < end && text.charCodeAt(pos) == CharCode._0) {
      switch (text.charCodeAt(pos + 2) | 32) {
        case CharCode.x:
        case CharCode.b:
        case CharCode.o: return true;
      }
    }
    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (c == CharCode.Dot || (c | 32) == CharCode.e) return false;
      if (c != CharCode._ && (c < CharCode._0 || c > CharCode._9)) break;
      // does not validate separator placement (this is done in readXYInteger)
      pos++;
    }
    return true;
  }

  readInteger(): i64 {
    let text = this.source.text;
    let pos = this.pos;
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
      if (isOctal(text.charCodeAt(pos + 1))) {
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
    let text = this.source.text;
    let pos = this.pos;
    let end = this.end;
    let start = pos;
    let sepEnd = start;
    let value = i64_zero;
    let i64_4 = i64_new(4);
    let nextValue = value;
    let overflowOccurred = false;

    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (isDecimal(c)) {
        // (value << 4) + c - CharCode._0
        nextValue = i64_add(
          i64_shl(value, i64_4),
          i64_new(c - CharCode._0)
        );
      } else if (isHexBase(c)) {
        // (value << 4) + (c | 32) + (10 - CharCode.a)
        nextValue = i64_add(
          i64_shl(value, i64_4),
          i64_new((c | 32) + (10 - CharCode.a))
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
      if (i64_gt_u(value, nextValue)) {
        // Unsigned overflow occurred
        overflowOccurred = true;
      }
      value = nextValue;
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
    if (overflowOccurred) {
      this.error(
        DiagnosticCode.Literal_0_does_not_fit_into_i64_or_u64_types,
        this.range(start - 2, pos),
        this.source.text.substring(start - 2, pos)
      );
    }
    this.pos = pos;
    return value;
  }

  readDecimalInteger(): i64 {
    let text = this.source.text;
    let pos = this.pos;
    let end = this.end;
    let start = pos;
    let sepEnd = start;
    let value = i64_zero;
    let i64_10 = i64_new(10);
    let nextValue = value;
    let overflowOccurred = false;

    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (isDecimal(c)) {
        // value = value * 10 + c - CharCode._0;
        nextValue = i64_add(
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
      if (i64_gt_u(value, nextValue)) {
        // Unsigned overflow occurred
        overflowOccurred = true;
      }
      value = nextValue;
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
    } else if (overflowOccurred) {
      this.error(
        DiagnosticCode.Literal_0_does_not_fit_into_i64_or_u64_types,
        this.range(start, pos),
        this.source.text.substring(start, pos)
      );
    }
    this.pos = pos;
    return value;
  }

  readOctalInteger(): i64 {
    let text = this.source.text;
    let pos = this.pos;
    let end = this.end;
    let start = pos;
    let sepEnd = start;
    let value = i64_zero;
    let i64_3 = i64_new(3);
    let nextValue = value;
    let overflowOccurred = false;

    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (isOctal(c)) {
        // (value << 3) + c - CharCode._0
        nextValue = i64_add(
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
      if (i64_gt_u(value, nextValue)) {
        // Unsigned overflow occurred
        overflowOccurred = true;
      }
      value = nextValue;
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
    } else if (overflowOccurred) {
      this.error(
        DiagnosticCode.Literal_0_does_not_fit_into_i64_or_u64_types,
        this.range(start - 2, pos),
        this.source.text.substring(start - 2, pos)
      );
    }
    this.pos = pos;
    return value;
  }

  readBinaryInteger(): i64 {
    let text = this.source.text;
    let pos = this.pos;
    let end = this.end;
    let start = pos;
    let sepEnd = start;
    let value = i64_zero;
    let nextValue = value;
    let overflowOccurred = false;

    while (pos < end) {
      let c = text.charCodeAt(pos);
      if (c == CharCode._0) {
        // value << 1 | 0
        nextValue = i64_shl(value, i64_one);
      } else if (c == CharCode._1) {
        // value << 1 | 1
        nextValue = i64_or(
          i64_shl(value, i64_one),
          i64_one
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
      if (i64_gt(value, nextValue)) {
        // Overflow occurred
        overflowOccurred = true;
      }
      value = nextValue;
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
    } else if (overflowOccurred) {
      this.error(
        DiagnosticCode.Literal_0_does_not_fit_into_i64_or_u64_types,
        this.range(start - 2, pos),
        this.source.text.substring(start - 2, pos)
      );
    }
    this.pos = pos;
    return value;
  }

  readFloat(): f64 {
    // let text = this.source.text;
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
    let text = this.source.text;
    let end = this.end;
    let start = this.pos;
    let sepCount = this.readDecimalFloatPartial(false);
    if (this.pos < end && text.charCodeAt(this.pos) == CharCode.Dot) {
      ++this.pos;
      sepCount += this.readDecimalFloatPartial();
    }
    if (this.pos < end) {
      let c = text.charCodeAt(this.pos);
      if ((c | 32) == CharCode.e) {
        if (
          ++this.pos < end &&
          (c = text.charCodeAt(this.pos)) == CharCode.Minus || c == CharCode.Plus &&
          isDecimal(text.charCodeAt(this.pos + 1))
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
    let text = this.source.text;
    let pos = this.pos;
    let start = pos;
    let end = this.end;
    let sepEnd = start;
    let sepCount = 0;

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
    return sepCount;
  }

  readHexFloat(): f64 {
    throw new Error("not implemented"); // TBD
  }

  readHexadecimalEscape(remain: i32 = 2, startIfTaggedTemplate: i32 = -1): string {
    let value = 0;
    let text = this.source.text;
    let pos = this.pos;
    let end = this.end;
    while (pos < end) {
      let c = text.charCodeAt(pos++);
      if (isDecimal(c)) {
        value = (value << 4) + c - CharCode._0;
      } else if (isHexBase(c)) {
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
    let pos = this.pos;
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
    let start = this.pos;
    let value = this.readHexInteger();
    let value32 = i64_low(value);
    let invalid = false;

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

    let end = this.end;
    let text = this.source.text;
    if (this.pos >= end) {
      if (startIfTaggedTemplate == -1) {
        this.error(
          DiagnosticCode.Unexpected_end_of_text,
          this.range(start, end)
        );
      }
      invalid = true;
    } else if (text.charCodeAt(this.pos) == CharCode.CloseBrace) {
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
let reusableState: State | null = null;
