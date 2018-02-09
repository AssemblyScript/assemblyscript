import {
  Range
} from "./ast";

import {
  DiagnosticCode,
  diagnosticCodeToString
} from "./diagnosticMessages.generated";

import {
  CharCode,
  isLineBreak
} from "./util/charcode";

import {
  sb
} from "./util/sb";

export {
  DiagnosticCode,
  diagnosticCodeToString
} from "./diagnosticMessages.generated";

export enum DiagnosticCategory {
  INFO,
  WARNING,
  ERROR
}

export function diagnosticCategoryToString(category: DiagnosticCategory): string {
  switch (category) {
    case DiagnosticCategory.INFO: return "INFO";
    case DiagnosticCategory.WARNING: return "WARNING";
    case DiagnosticCategory.ERROR: return "ERROR";
    default: return "";
  }
}

const colorBlue: string = "\u001b[93m";
const colorYellow: string = "\u001b[93m";
const colorRed: string = "\u001b[91m";
const colorReset: string = "\u001b[0m";

export function diagnosticCategoryToColor(category: DiagnosticCategory): string {
  switch (category) {
    case DiagnosticCategory.INFO: return colorBlue;
    case DiagnosticCategory.WARNING: return colorYellow;
    case DiagnosticCategory.ERROR: return colorRed;
    default: return "";
  }
}

export class DiagnosticMessage {

  code: i32;
  category: DiagnosticCategory;
  message: string;
  range: Range | null = null;

  constructor(code: i32, category: DiagnosticCategory, message: string) {
    this.code = code;
    this.category = category;
    this.message = message;
  }

  static create(code: DiagnosticCode, category: DiagnosticCategory, arg0: string | null = null, arg1: string | null = null): DiagnosticMessage {
    var message = diagnosticCodeToString(code);
    if (arg0 != null)
      message = message.replace("{0}", arg0);
    if (arg1 != null)
      message = message.replace("{1}", arg1);
    return new DiagnosticMessage(code, category, message);
  }

  static createInfo(code: DiagnosticCode, arg0: string | null = null, arg1: string | null = null): DiagnosticMessage {
    return DiagnosticMessage.create(code, DiagnosticCategory.INFO, arg0, arg1);
  }

  static createWarning(code: DiagnosticCode, arg0: string | null = null, arg1: string | null = null): DiagnosticMessage {
    return DiagnosticMessage.create(code, DiagnosticCategory.WARNING, arg0, arg1);
  }

  static createError(code: DiagnosticCode, arg0: string | null = null, arg1: string | null = null): DiagnosticMessage {
    return DiagnosticMessage.create(code, DiagnosticCategory.ERROR, arg0, arg1);
  }

  withRange(range: Range): this {
    this.range = range;
    return this;
  }

  toString(): string {
    if (this.range)
      return diagnosticCategoryToString(this.category) + " " + this.code.toString(10) + ": \"" + this.message + "\" in " + this.range.source.normalizedPath + " @ " + this.range.start.toString(10) + "," + this.range.end.toString(10);
    return diagnosticCategoryToString(this.category) + " " + this.code.toString(10) + ": " + this.message;
  }
}

export function formatDiagnosticMessage(message: DiagnosticMessage, useColors: bool = false, showContext: bool = false): string {
  // format context first (uses same string builder)
  var context = "";
  if (message.range && showContext)
    context = formatDiagnosticContext(message.range, useColors);

  // general information
  sb.length = 0;
  if (useColors) sb.push(diagnosticCategoryToColor(message.category));
  sb.push(diagnosticCategoryToString(message.category));
  if (useColors) sb.push(colorReset);
  sb.push(message.code < 1000 ? " AS" : " TS");
  sb.push(message.code.toString(10));
  sb.push(": ");
  sb.push(message.message);

  // range information if available
  if (message.range) {
    var range = message.range;
    var text = range.source.text;
    if (showContext) {
      sb.push("\n");
      sb.push(context);
    }
    sb.push("\n");
    sb.push(" in ");
    sb.push(range.source.normalizedPath);
    sb.push("(");
    sb.push(range.line.toString(10));
    sb.push(",");
    sb.push(range.column.toString(10));
    sb.push(")");
  }
  return sb.join("");
}

export function formatDiagnosticContext(range: Range, useColors: bool = false): string {
  var text = range.source.text;
  var len = text.length;
  var start = range.start;
  var end = range.end;
  while (start > 0 && !isLineBreak(text.charCodeAt(start - 1)))
    start--;
  while (end < len && !isLineBreak(text.charCodeAt(end)))
    end++;
  sb.length = 0;
  sb.push("\n ");
  sb.push(text.substring(start, end));
  sb.push("\n ");
  while (start < range.start) {
    sb.push(" ");
    start++;
  }
  if (useColors) sb.push(colorRed);
  if (range.start == range.end) {
    sb.push("^");
  } else while (start++ < range.end)
    sb.push("~");
  if (useColors) sb.push(colorReset);
  return sb.join("");
}

export abstract class DiagnosticEmitter {

  diagnostics: DiagnosticMessage[];
  // silentDiagnostics: bool = false;

  constructor(diagnostics: DiagnosticMessage[] | null = null) {
    this.diagnostics = diagnostics ? <DiagnosticMessage[]>diagnostics : new Array();
  }

  emitDiagnostic(code: DiagnosticCode, category: DiagnosticCategory, range: Range, arg0: string | null = null, arg1: string | null = null) {
    var message = DiagnosticMessage.create(code, category, arg0, arg1).withRange(range);
    this.diagnostics.push(message);
    // console.log(formatDiagnosticMessage(message, true, true) + "\n"); // temporary
    // console.log(<string>new Error("stack").stack);
  }

  error(code: DiagnosticCode, range: Range, arg0: string | null = null, arg1: string | null = null): void {
    this.emitDiagnostic(code, DiagnosticCategory.ERROR, range, arg0, arg1);
  }

  info(code: DiagnosticCode, range: Range, arg0: string | null = null, arg1: string | null = null): void {
    this.emitDiagnostic(code, DiagnosticCategory.INFO, range, arg0, arg1);
  }

  warning(code: DiagnosticCode, range: Range, arg0: string | null = null, arg1: string | null = null): void {
    this.emitDiagnostic(code, DiagnosticCategory.WARNING, range, arg0, arg1);
  }
}
