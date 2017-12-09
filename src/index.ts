/*

 Exports a C-like API to the embedder.

 [obtain entrySource, entryPath]
 parseFile(entrySource, entryPath) -> parser
 while nextPath = nextFile(parser)
   [obtain nextSource]
   parseFile(nextSource, nextPath)

 Checking for errors:

 while diagnostic = nextDiagnostic(parser)
   [print] formatDiagnostic(diagnostic, useColors?, showContext?)
   if (isError(diagnostic))
     [abort parsing afterwards]

 compile(parser) -> module

*/

import { Module } from "./module";
import { Compiler, Options, Target } from "./compiler";
import { DiagnosticMessage, DiagnosticCategory, formatDiagnosticMessage } from "./diagnostics";
import { Parser } from "./parser";
import { Program } from "./program";

/** Parses a single source file. If `parser` has been omitted a new one is created. */
export function parseFile(text: string, path: string, parser: Parser | null = null, isEntry: bool = false): Parser {
  if (!parser) {
    parser = new Parser();
    isEntry = true;
  }
  parser.parseFile(text, path, isEntry);
  return parser;
}

/** Obtains the path to the next file required by the parser. Returns `null` once complete. */
export function nextFile(parser: Parser): string | null {
  return parser.nextFile();
}

/** Obtains the next diagnostic message. Returns `null` once there are no more messages. */
export function nextDiagnostic(parser: Parser): DiagnosticMessage | null {
  const program: Program = parser.program;
  if (program.diagnosticsOffset < program.diagnostics.length)
    return program.diagnostics[program.diagnosticsOffset++];
  return null;
}

/** Formats a diagnostic message to a string. */
export function formatDiagnostic(message: DiagnosticMessage, useColors: bool, showContext: bool): string {
  return formatDiagnosticMessage(message, useColors, showContext);
}

/** Tests whether a diagnostic is informatory. */
export function isInfo(message: DiagnosticMessage): bool {
  return message.category == DiagnosticCategory.INFO;
}

/** Tests whether a diagnostic is a warning. */
export function isWarning(message: DiagnosticMessage): bool {
  return message.category == DiagnosticCategory.WARNING;
}

/** Tests whether a diagnostic is an error. */
export function isError(message: DiagnosticMessage): bool {
  return message.category == DiagnosticCategory.ERROR;
}

/** Creates a new set of compiler options. */
export function createOptions(): Options {
  return new Options();
}

/** Sets the `target` option. */
export function setTarget(options: Options, target: Target): void {
  options.target = target;
}

/** Sets the `noTreeShaking` option. */
export function setNoTreeShaking(options: Options, noTreeShaking: bool): void {
  options.noTreeShaking = noTreeShaking;
}

/** Sets the `noDebug` option. */
export function setNoDebug(options: Options, noDebug: bool): void {
  options.noDebug = noDebug;
}

/** Compiles the sources computed by the parser to a module. */
export function compile(parser: Parser, options: Options | null = null): Module {
  const program: Program = parser.finish();
  const compiler: Compiler = new Compiler(program, options);
  return compiler.compile();
}
