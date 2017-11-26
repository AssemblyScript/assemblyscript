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
import { Compiler } from "./compiler";
import { DiagnosticMessage, DiagnosticCategory } from "./diagnostics";
import { Parser } from "./parser";
import { Program } from "./program";

export function parseFile(text: string, path: string, parser: Parser | null = null): Parser {
  let isEntry: bool = false;
  if (!parser) {
    parser = new Parser();
    isEntry = true;
  }
  parser.parseFile(text, path, isEntry);
  return parser;
}

export function nextFile(parser: Parser): string | null {
  return parser.nextFile();
}

export function nextDiagnostic(parser: Parser): DiagnosticMessage | null {
  const program: Program = parser.program;
  if (program.diagnosticsOffset < program.diagnostics.length)
    return program.diagnostics[program.diagnosticsOffset++];
  return null;
}

export function isError(message: DiagnosticMessage): bool {
  return message.category == DiagnosticCategory.ERROR;
}

export function compile(parser: Parser): Module {
  const program: Program = parser.finish();
  return Compiler.compile(program);
}

export { formatDiagnosticMessage as formatDiagnostic } from "./diagnostics";
