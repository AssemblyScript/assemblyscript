/**
 * @fileoverview Shared diagnostic handling.
 * @license Apache-2.0
 */

import {
  Source
} from "./ast";

import {
  DiagnosticCode,
  diagnosticCodeToString
} from "./diagnosticMessages.generated";

import {
  isLineBreak,
  isWhiteSpace,
  COLOR_CYAN,
  COLOR_YELLOW,
  COLOR_RED,
  COLOR_MAGENTA,
  COLOR_RESET,
  isColorsEnabled,
  setColorsEnabled,
  CharCode
} from "./util";

export {
  DiagnosticCode,
  diagnosticCodeToString
} from "./diagnosticMessages.generated";

/** Indicates the category of a {@link DiagnosticMessage}. */
export const enum DiagnosticCategory {
  /** Overly pedantic message. */
  Pedantic,
  /** Informatory message. */
  Info,
  /** Warning message. */
  Warning,
  /** Error message. */
  Error
}

export class Range {

  source!: Source;

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

/** Returns the string representation of the specified diagnostic category. */
export function diagnosticCategoryToString(category: DiagnosticCategory): string {
  switch (category) {
    case DiagnosticCategory.Pedantic: return "PEDANTIC";
    case DiagnosticCategory.Info: return "INFO";
    case DiagnosticCategory.Warning: return "WARNING";
    case DiagnosticCategory.Error: return "ERROR";
    default: {
      assert(false);
      return "";
    }
  }
}

/** Returns the ANSI escape sequence for the specified category. */
export function diagnosticCategoryToColor(category: DiagnosticCategory): string {
  switch (category) {
    case DiagnosticCategory.Pedantic: return COLOR_MAGENTA;
    case DiagnosticCategory.Info: return COLOR_CYAN;
    case DiagnosticCategory.Warning: return COLOR_YELLOW;
    case DiagnosticCategory.Error: return COLOR_RED;
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
    let message = diagnosticCodeToString(code);
    if (arg0 != null) message = message.replace("{0}", arg0);
    if (arg1 != null) message = message.replace("{1}", arg1);
    if (arg2 != null) message = message.replace("{2}", arg2);
    return new DiagnosticMessage(code, category, message);
  }

  /** Tests if this message equals the specified. */
  equals(other: DiagnosticMessage): bool {
    if (this.code != other.code) return false;
    let thisRange = this.range;
    let otherRange = other.range;
    if (thisRange) {
      if (!otherRange || !thisRange.equals(otherRange)) return false;
    } else if (otherRange) {
      return false;
    }
    let thisRelatedRange = this.relatedRange;
    let otherRelatedRange = other.relatedRange;
    if (thisRelatedRange) {
      if (!otherRelatedRange || !thisRelatedRange.equals(otherRelatedRange)) return false;
    } else if (otherRelatedRange) {
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
    let category = diagnosticCategoryToString(this.category);
    let range = this.range;
    let code = this.code;
    let message = this.message;
    if (range) {
      let source = range.source;
      let path = source.normalizedPath;
      let line = source.lineAt(range.start);
      let column = source.columnAt();
      let len = range.end - range.start;
      return `${category} ${code}: "${message}" in ${path}(${line},${column}+${len})`;
    }
    return `${category} ${code}: ${message}`;
  }
}

/** Formats a diagnostic message, optionally with terminal colors and source context. */
export function formatDiagnosticMessage(
  message: DiagnosticMessage,
  useColors: bool = false,
  showContext: bool = false
): string {
  let wasColorsEnabled = setColorsEnabled(useColors);

  // general information
  let sb: string[] = [];
  if (isColorsEnabled()) sb.push(diagnosticCategoryToColor(message.category));
  sb.push(diagnosticCategoryToString(message.category));
  if (isColorsEnabled()) sb.push(COLOR_RESET);
  sb.push(message.code < 1000 ? " AS" : " TS");
  sb.push(message.code.toString());
  sb.push(": ");
  sb.push(message.message);

  // include range information if available
  let range = message.range;
  if (range) {
    let source = range.source;
    let relatedRange = message.relatedRange;
    let minLine = 0;
    if (relatedRange) {
      // Justify context indentation when multiple ranges are present
      minLine = max(source.lineAt(range.start), relatedRange.source.lineAt(relatedRange.start));
    }

    // include context information if requested
    if (showContext) {
      sb.push("\n");
      sb.push(formatDiagnosticContext(range, minLine));
    } else {
      sb.push("\n in ");
      sb.push(source.normalizedPath);
    }
    sb.push("(");
    sb.push(source.lineAt(range.start).toString());
    sb.push(",");
    sb.push(source.columnAt().toString());
    sb.push(")");

    if (relatedRange) {
      let relatedSource = relatedRange.source;
      if (showContext) {
        sb.push("\n");
        sb.push(formatDiagnosticContext(relatedRange, minLine));
      } else {
        sb.push("\n in ");
        sb.push(relatedSource.normalizedPath);
      }
      sb.push("(");
      sb.push(relatedSource.lineAt(relatedRange.start).toString());
      sb.push(",");
      sb.push(relatedSource.columnAt().toString());
      sb.push(")");
    }
  }
  setColorsEnabled(wasColorsEnabled);
  return sb.join("");
}

/** Formats the diagnostic context for the specified range, optionally with terminal colors. */
function formatDiagnosticContext(range: Range, minLine: i32 = 0): string {
  let source = range.source;
  let text = source.text;
  let len = text.length;
  let start = range.start;
  let end = start;
  let lineNumber = source.lineAt(start).toString();
  let lineNumberLength = minLine
    ? max(minLine.toString().length, lineNumber.length)
    : lineNumber.length;
  let lineSpace = " ".repeat(lineNumberLength);
  // Find preceeding line break
  while (start > 0 && !isLineBreak(text.charCodeAt(start - 1))) start--;
  // Skip leading whitespace (assume no supplementary whitespaces)
  while (start < len && isWhiteSpace(text.charCodeAt(start))) start++;
  // Find next line break
  while (end < len && !isLineBreak(text.charCodeAt(end))) end++;
  let sb: string[] = [
    lineSpace,
    "  :\n ",
    " ".repeat(lineNumberLength - lineNumber.length),
    lineNumber,
    " │ ",
    text.substring(start, end).replaceAll("\t", "  "),
    "\n ",
    lineSpace,
    " │ "
  ];
  while (start < range.start) {
    if (text.charCodeAt(start) == CharCode.Tab) {
      sb.push("  ");
      start += 2;
    } else {
      sb.push(" ");
      start++;
    }
  }
  if (isColorsEnabled()) sb.push(COLOR_RED);
  if (range.start == range.end) {
    sb.push("^");
  } else {
    while (start++ < range.end) {
      let cc = text.charCodeAt(start);
      if (cc == CharCode.Tab) {
        sb.push("~~");
      } else if (isLineBreak(cc)) {
        sb.push(start == range.start + 1 ? "^" : "~");
        break;
      } else {
        sb.push("~");
      }
    }
  }
  if (isColorsEnabled()) sb.push(COLOR_RESET);
  sb.push("\n ");
  sb.push(lineSpace);
  sb.push(" └─ in ");
  sb.push(source.normalizedPath);
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
    let message = DiagnosticMessage.create(code, category, arg0, arg1, arg2);
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
    this.emitDiagnostic(code, DiagnosticCategory.Pedantic, range, null, arg0, arg1, arg2);
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
    this.emitDiagnostic(code, DiagnosticCategory.Pedantic, range, relatedRange, arg0, arg1, arg2);
  }

  /** Emits an informatory diagnostic message. */
  info(
    code: DiagnosticCode,
    range: Range | null,
    arg0: string | null = null,
    arg1: string | null = null,
    arg2: string | null = null
  ): void {
    this.emitDiagnostic(code, DiagnosticCategory.Info, range, null, arg0, arg1, arg2);
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
    this.emitDiagnostic(code, DiagnosticCategory.Info, range, relatedRange, arg0, arg1, arg2);
  }

  /** Emits a warning diagnostic message. */
  warning(
    code: DiagnosticCode,
    range: Range | null,
    arg0: string | null = null,
    arg1: string | null = null,
    arg2: string | null = null
  ): void {
    this.emitDiagnostic(code, DiagnosticCategory.Warning, range, null, arg0, arg1, arg2);
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
    this.emitDiagnostic(code, DiagnosticCategory.Warning, range, relatedRange, arg0, arg1, arg2);
  }

  /** Emits an error diagnostic message. */
  error(
    code: DiagnosticCode,
    range: Range | null,
    arg0: string | null = null,
    arg1: string | null = null,
    arg2: string | null = null
  ): void {
    this.emitDiagnostic(code, DiagnosticCategory.Error, range, null, arg0, arg1, arg2);
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
    this.emitDiagnostic(code, DiagnosticCategory.Error, range, relatedRange, arg0, arg1, arg2);
  }
}
