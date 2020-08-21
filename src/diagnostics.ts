/**
 * @fileoverview Shared diagnostic handling.
 * @license Apache-2.0
 */

import {
  Range
} from "./tokenizer";

import {
  Source
} from "./ast";

import {
  DiagnosticCode,
  diagnosticCodeToString
} from "./diagnosticMessages.generated";

import {
  isLineBreak
} from "./util";

export {
  DiagnosticCode,
  diagnosticCodeToString
} from "./diagnosticMessages.generated";

/** Indicates the category of a {@link DiagnosticMessage}. */
export enum DiagnosticCategory {
  /** Overly pedantic message. */
  PEDANTIC,
  /** Informatory message. */
  INFO,
  /** Warning message. */
  WARNING,
  /** Error message. */
  ERROR
}

/** Returns the string representation of the specified diagnostic category. */
export function diagnosticCategoryToString(category: DiagnosticCategory): string {
  switch (category) {
    case DiagnosticCategory.PEDANTIC: return "PEDANTIC";
    case DiagnosticCategory.INFO: return "INFO";
    case DiagnosticCategory.WARNING: return "WARNING";
    case DiagnosticCategory.ERROR: return "ERROR";
    default: {
      assert(false);
      return "";
    }
  }
}

/** ANSI escape sequence for blue foreground. */
export const COLOR_BLUE: string = "\u001b[96m";
/** ANSI escape sequence for yellow foreground. */
export const COLOR_YELLOW: string = "\u001b[93m";
/** ANSI escape sequence for red foreground. */
export const COLOR_RED: string = "\u001b[91m";
/** ANSI escape sequence for magenta foreground. */
export const COLOR_MAGENTA: string = "\u001b[95m";
/** ANSI escape sequence to reset the foreground color. */
export const COLOR_RESET: string = "\u001b[0m";

/** Returns the ANSI escape sequence for the specified category. */
export function diagnosticCategoryToColor(category: DiagnosticCategory): string {
  switch (category) {
    case DiagnosticCategory.PEDANTIC: return COLOR_MAGENTA;
    case DiagnosticCategory.INFO: return COLOR_BLUE;
    case DiagnosticCategory.WARNING: return COLOR_YELLOW;
    case DiagnosticCategory.ERROR: return COLOR_RED;
    default: {
      assert(false);
      return "";
    }
  }
}

/** Represents a diagnostic message. */
export class DiagnosticMessage {

  /** Message code. */
  code: i32;
  /** Message category. */
  category: DiagnosticCategory;
  /** Message text. */
  message: string;
  /** Respective source range, if any. */
  range: Range | null = null;
  /** Related range, if any. */
  relatedRange: Range | null = null; // TODO: Make this a related message for chains?

  /** Constructs a new diagnostic message. */
  private constructor(code: i32, category: DiagnosticCategory, message: string) {
    this.code = code;
    this.category = category;
    this.message = message;
  }

  /** Creates a new diagnostic message of the specified category. */
  static create(
    code: DiagnosticCode,
    category: DiagnosticCategory,
    arg0: string | null = null,
    arg1: string | null = null,
    arg2: string | null = null
  ): DiagnosticMessage {
    var message = diagnosticCodeToString(code);
    if (arg0 !== null) message = message.replace("{0}", arg0);
    if (arg1 !== null) message = message.replace("{1}", arg1);
    if (arg2 !== null) message = message.replace("{2}", arg2);
    return new DiagnosticMessage(code, category, message);
  }

  /** Tests if this message equals the specified. */
  equals(other: DiagnosticMessage): bool {
    if (this.code != other.code) return false;
    var thisRange = this.range;
    var otherRange = other.range;
    if (thisRange) {
      if (!otherRange || !thisRange.equals(otherRange)) return false;
    } else if (otherRange) {
      return false;
    }
    var thisRelatedRange = this.relatedRange;
    var otherRelatedRange = other.relatedRange;
    if (thisRelatedRange) {
      if (!otherRelatedRange || !thisRelatedRange.equals(otherRelatedRange)) return false;
    } else if (otherRange) {
      return false;
    }
    return this.message == other.message;
  }

  /** Adds a source range to this message. */
  withRange(range: Range): this {
    this.range = range;
    return this;
  }

  /** Adds a related source range to this message. */
  withRelatedRange(range: Range): this {
    this.relatedRange = range;
    return this;
  }

  /** Converts this message to a string. */
  toString(): string {
    var range = this.range;
    if (range) {
      let source = range.source;
      return (
        diagnosticCategoryToString(this.category) +
        " " +
        this.code.toString() +
        ": \"" +
        this.message +
        "\" in " +
        source.normalizedPath +
        "(" +
        source.lineAt(range.start).toString() +
        "," +
        source.columnAt().toString() +
        "+" +
        (range.end - range.start).toString() +
        ")"
      );
    }
    return (
      diagnosticCategoryToString(this.category) +
      " " +
      this.code.toString() +
      ": " +
      this.message
    );
  }
}

/** Formats a diagnostic message, optionally with terminal colors and source context. */
export function formatDiagnosticMessage(
  message: DiagnosticMessage,
  useColors: bool = false,
  showContext: bool = false
): string {

  // general information
  var sb: string[] = [];
  if (useColors) sb.push(diagnosticCategoryToColor(message.category));
  sb.push(diagnosticCategoryToString(message.category));
  if (useColors) sb.push(COLOR_RESET);
  sb.push(message.code < 1000 ? " AS" : " TS");
  sb.push(message.code.toString());
  sb.push(": ");
  sb.push(message.message);

  // include range information if available
  var range = message.range;
  if (range) {
    let source = range.source;

    // include context information if requested
    if (showContext) {
      sb.push("\n");
      sb.push(formatDiagnosticContext(range, useColors));
    }
    sb.push("\n");
    sb.push(" in ");
    sb.push(source.normalizedPath);
    sb.push("(");
    sb.push(source.lineAt(range.start).toString());
    sb.push(",");
    sb.push(source.columnAt().toString());
    sb.push(")");

    let relatedRange = message.relatedRange;
    if (relatedRange) {
      let relatedSource = relatedRange.source;
      if (showContext) {
        sb.push("\n");
        sb.push(formatDiagnosticContext(relatedRange, useColors));
      }
      sb.push("\n");
      sb.push(" in ");
      sb.push(relatedSource.normalizedPath);
      sb.push("(");
      sb.push(relatedSource.lineAt(relatedRange.start).toString());
      sb.push(",");
      sb.push(relatedSource.columnAt().toString());
      sb.push(")");
    }
  }
  return sb.join("");
}

/** Formats the diagnostic context for the specified range, optionally with terminal colors. */
export function formatDiagnosticContext(range: Range, useColors: bool = false): string {
  var text = range.source.text;
  var len = text.length;
  var start = range.start;
  var end = range.end;
  while (start > 0 && !isLineBreak(text.charCodeAt(start - 1))) start--;
  while (end < len && !isLineBreak(text.charCodeAt(end))) end++;
  var sb: string[] = [
    "\n ",
    text.substring(start, end),
    "\n "
  ];
  while (start < range.start) {
    sb.push(" ");
    start++;
  }
  if (useColors) sb.push(COLOR_RED);
  if (range.start == range.end) {
    sb.push("^");
  } else {
    while (start++ < range.end) {
      if (isLineBreak(text.charCodeAt(start))) {
        sb.push(start == range.start + 1 ? "^" : "~");
        break;
      }
      sb.push("~");
    }
  }
  if (useColors) sb.push(COLOR_RESET);
  return sb.join("");
}

/** Base class of all diagnostic emitters. */
export abstract class DiagnosticEmitter {

  /** Diagnostic messages emitted so far. */
  diagnostics: DiagnosticMessage[];
  /** Diagnostic messages already seen, by range. */
  private seen: Map<Source,Map<i32,DiagnosticMessage[]>> = new Map();

  /** Initializes this diagnostic emitter. */
  protected constructor(diagnostics: DiagnosticMessage[] | null = null) {
    if (!diagnostics) diagnostics = [];
    this.diagnostics = diagnostics;
  }

  /** Emits a diagnostic message of the specified category. */
  emitDiagnostic(
    code: DiagnosticCode,
    category: DiagnosticCategory,
    range: Range | null,
    relatedRange: Range | null,
    arg0: string | null = null,
    arg1: string | null = null,
    arg2: string | null = null
  ): void {
    var message = DiagnosticMessage.create(code, category, arg0, arg1, arg2);
    if (range) message = message.withRange(range);
    if (relatedRange) message.relatedRange = relatedRange;
    // It is possible that the same diagnostic is emitted twice, for example
    // when compiling generics with different types or when recompiling a loop
    // because our initial assumptions didn't hold. It is even possible to get
    // multiple instances of the same range during parsing. Deduplicate these.
    if (range) {
      let seen = this.seen;
      if (seen.has(range.source)) {
        let seenInSource = assert(seen.get(range.source));
        if (seenInSource.has(range.start)) {
          let seenMessagesAtPos = assert(seenInSource.get(range.start));
          for (let i = 0, k = seenMessagesAtPos.length; i < k; ++i) {
            if (seenMessagesAtPos[i].equals(message)) return;
          }
          seenMessagesAtPos.push(message);
        } else {
          seenInSource.set(range.start, [ message ]);
        }
      } else {
        let seenInSource = new Map<i32,DiagnosticMessage[]>();
        seenInSource.set(range.start, [ message ]);
        seen.set(range.source, seenInSource);
      }
    }
    this.diagnostics.push(message);
    // console.log(formatDiagnosticMessage(message, true, true) + "\n"); // temporary
    // console.log(<string>new Error("stack").stack);
  }

  /** Emits an overly pedantic diagnostic message. */
  pedantic(
    code: DiagnosticCode,
    range: Range | null,
    arg0: string | null = null,
    arg1: string | null = null,
    arg2: string | null = null
  ): void {
    this.emitDiagnostic(code, DiagnosticCategory.PEDANTIC, range, null, arg0, arg1, arg2);
  }

  /** Emits an overly pedantic diagnostic message with a related range. */
  pedanticRelated(
    code: DiagnosticCode,
    range: Range,
    relatedRange: Range,
    arg0: string | null = null,
    arg1: string | null = null,
    arg2: string | null = null
  ): void {
    this.emitDiagnostic(code, DiagnosticCategory.PEDANTIC, range, relatedRange, arg0, arg1, arg2);
  }

  /** Emits an informatory diagnostic message. */
  info(
    code: DiagnosticCode,
    range: Range | null,
    arg0: string | null = null,
    arg1: string | null = null,
    arg2: string | null = null
  ): void {
    this.emitDiagnostic(code, DiagnosticCategory.INFO, range, null, arg0, arg1, arg2);
  }

  /** Emits an informatory diagnostic message with a related range. */
  infoRelated(
    code: DiagnosticCode,
    range: Range,
    relatedRange: Range,
    arg0: string | null = null,
    arg1: string | null = null,
    arg2: string | null = null
  ): void {
    this.emitDiagnostic(code, DiagnosticCategory.INFO, range, relatedRange, arg0, arg1, arg2);
  }

  /** Emits a warning diagnostic message. */
  warning(
    code: DiagnosticCode,
    range: Range | null,
    arg0: string | null = null,
    arg1: string | null = null,
    arg2: string | null = null
  ): void {
    this.emitDiagnostic(code, DiagnosticCategory.WARNING, range, null, arg0, arg1, arg2);
  }

  /** Emits a warning diagnostic message with a related range. */
  warningRelated(
    code: DiagnosticCode,
    range: Range,
    relatedRange: Range,
    arg0: string | null = null,
    arg1: string | null = null,
    arg2: string | null = null
  ): void {
    this.emitDiagnostic(code, DiagnosticCategory.WARNING, range, relatedRange, arg0, arg1, arg2);
  }

  /** Emits an error diagnostic message. */
  error(
    code: DiagnosticCode,
    range: Range | null,
    arg0: string | null = null,
    arg1: string | null = null,
    arg2: string | null = null
  ): void {
    this.emitDiagnostic(code, DiagnosticCategory.ERROR, range, null, arg0, arg1, arg2);
  }

  /** Emits an error diagnostic message with a related range. */
  errorRelated(
    code: DiagnosticCode,
    range: Range,
    relatedRange: Range,
    arg0: string | null = null,
    arg1: string | null = null,
    arg2: string | null = null
  ): void {
    this.emitDiagnostic(code, DiagnosticCategory.ERROR, range, relatedRange, arg0, arg1, arg2);
  }
}
