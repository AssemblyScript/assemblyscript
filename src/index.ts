/**
 * Low-level C-like compiler API.
 * @module index
 *//***/

import {
  Compiler,
  Options,
  Target
} from "./compiler";

import {
  Decompiler
} from "./decompiler";

import {
  IDLBuilder,
  TSDBuilder
} from "./definitions";

import {
  DiagnosticMessage,
  DiagnosticCategory,
  formatDiagnosticMessage
} from "./diagnostics";

import {
  Module
} from "./module";

import {
  Parser
} from "./parser";

import {
  Program,
  LIBRARY_PREFIX
} from "./program";

/** Parses a source file. If `parser` has been omitted a new one is created. */
export function parseFile(text: string, path: string, isEntry: bool = false,
  parser: Parser | null = null
): Parser {
  if (!parser) {
    parser = new Parser();
    isEntry = true;
  }
  parser.parseFile(text, path, isEntry);
  return parser;
}

/** Obtains the next required file's path. Returns `null` once complete. */
export function nextFile(parser: Parser): string | null {
  return parser.nextFile();
}

/** Obtains the next diagnostic message. Returns `null` once complete. */
export function nextDiagnostic(parser: Parser): DiagnosticMessage | null {
  var program = parser.program;
  return program.diagnosticsOffset < program.diagnostics.length
    ? program.diagnostics[program.diagnosticsOffset++]
    : null;
}

/** Formats a diagnostic message to a string. */
export { formatDiagnosticMessage as formatDiagnostic };

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

/** Sets the `noAssert` option. */
export function setNoAssert(options: Options, noAssert: bool): void {
  options.noAssert = noAssert;
}

/** Sets the `noMemory` option. */
export function setNoMemory(options: Options, noMemory: bool): void {
  options.noMemory = noMemory;
}

/** Sets the `importMemory` option. */
export function setImportMemory(options: Options, importMemory: bool): void {
  options.importMemory = importMemory;
}

/** Sets the `sourceMap` option. */
export function setSourceMap(options: Options, sourceMap: bool): void {
  options.sourceMap = sourceMap;
}

/** Sets the `memoryBase` option. */
export function setMemoryBase(options: Options, memoryBase: u32): void {
  options.memoryBase = memoryBase;
}

/** Finishes parsing. */
export function finishParsing(parser: Parser): Program {
  return parser.finish();
}

/** Compiles the sources computed by the parser to a module. */
export function compileProgram(program: Program, options: Options | null = null): Module {
  return new Compiler(program, options).compile();
}

/** Decompiles a module to its (low level) source. */
export function decompileModule(module: Module): string {
  var decompiler = new Decompiler();
  decompiler.decompile(module);
  return decompiler.finish();
}

/** Builds WebIDL definitions for the specified program. */
export function buildIDL(program: Program): string {
  return IDLBuilder.build(program);
}

/** Builds TypeScript definitions for the specified program. */
export function buildTSD(program: Program): string {
  return TSDBuilder.build(program);
}

/** Prefix indicating a library file. */
export { LIBRARY_PREFIX };
