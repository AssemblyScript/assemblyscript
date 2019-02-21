/**
 * Low-level C-like compiler API.
 * @module index
 *//***/

import {
  Compiler,
  Options,
  Target,
  Feature
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
  Program
} from "./program";

/** Parses a source file. If `parser` has been omitted a new one is created. */
export function parseFile(text: string, path: string, isEntry: bool = false,
  parser: Parser | null = null
): Parser {
  if (!parser) parser = new Parser();
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

/** Sets the `noAssert` option. */
export function setNoAssert(options: Options, noAssert: bool): void {
  options.noAssert = noAssert;
}

/** Sets the `importMemory` option. */
export function setImportMemory(options: Options, importMemory: bool): void {
  options.importMemory = importMemory;
}

/** Sets the `sharedMemory` option. */
export function setSharedMemory(options: Options, sharedMemory: i32): void {
  options.sharedMemory = sharedMemory;
}

/** Sets the `importTable` option. */
export function setImportTable(options: Options, importTable: bool): void {
  options.importTable = importTable;
}

/** Sets the `sourceMap` option. */
export function setSourceMap(options: Options, sourceMap: bool): void {
  options.sourceMap = sourceMap;
}

/** Sets the `memoryBase` option. */
export function setMemoryBase(options: Options, memoryBase: u32): void {
  options.memoryBase = memoryBase;
}

/** Sets a 'globalAliases' value. */
export function setGlobalAlias(options: Options, name: string, alias: string): void {
  var globalAliases = options.globalAliases;
  if (!globalAliases) options.globalAliases = globalAliases = new Map();
  globalAliases.set(name, alias);
}

/** Sign extension operations. */
export const FEATURE_SIGN_EXTENSION = Feature.SIGN_EXTENSION;
/** Mutable global imports and exports. */
export const FEATURE_MUTABLE_GLOBAL = Feature.MUTABLE_GLOBAL;
/** Bulk memory operations. */
export const FEATURE_BULK_MEMORY = Feature.BULK_MEMORY;
/** SIMD types and operations. */
export const FEATURE_SIMD = Feature.SIMD;
/** Threading and atomic operations. */
export const FEATURE_THREADS = Feature.THREADS;

/** Enables a specific feature. */
export function enableFeature(options: Options, feature: Feature): void {
  options.features |= feature;
}

/** Gives the compiler a hint at the optimize levels that will be used later on. */
export function setOptimizeLevelHints(options: Options, optimizeLevel: i32, shrinkLevel: i32): void {
  options.optimizeLevelHint = optimizeLevel;
  options.shrinkLevelHint = shrinkLevel;
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
export { LIBRARY_PREFIX } from "./common";

// Full API
export * from "./ast";
// export * from "./binary";
export * from "./common";
export * from "./compiler";
export * from "./decompiler";
export * from "./definitions";
export * from "./diagnosticMessages.generated";
export * from "./diagnostics";
export * from "./flow";
export * from "./module";
export * from "./parser";
export * from "./program";
export * from "./resolver";
export * from "./tokenizer";
export * from "./types";
export * from "./util";
