/**
 * @fileoverview The C-like and re-exported public compiler interface.
 *
 * The intended way to consume the compiler sources is to import this
 * file, which again exports all relevant functions, classes and constants
 * as a flat namespace.
 *
 * Note though that the compiler sources are written in "portable
 * AssemblyScript" that can be compiled to both JavaScript with tsc and
 * to WebAssembly with asc, and as such require additional glue code
 * depending on the target.
 *
 * When compiling to JavaScript `glue/js/index.js` must be included.
 * When compiling to WebAssembly `glue/wasm/index.ts` must be included.
 */

import {
  Target,
  Runtime,
  Feature
} from "./common";

import {
  Compiler,
  Options,
  UncheckedBehavior
} from "./compiler";

import {
  TSDBuilder,
  JSBuilder
} from "./bindings";

import {
  Range,
  DiagnosticMessage,
  DiagnosticCategory,
  formatDiagnosticMessage
} from "./diagnostics";

import { Module } from "./module";
import { Program } from "./program";
import { Source } from "./ast";

// Options

/** Creates a new set of compiler options. */
export function newOptions(): Options {
  return new Options();
}

/** Sets the `target` option. */
export function setTarget(options: Options, target: Target): void {
  options.target = target;
}

export function setRuntime(options: Options, runtime: Runtime): void {
  options.runtime = runtime;
}

/** Sets the `noAssert` option. */
export function setNoAssert(options: Options, noAssert: bool): void {
  options.noAssert = noAssert;
}

/** Sets the `exportMemory` option. */
export function setExportMemory(options: Options, exportMemory: bool): void {
  options.exportMemory = exportMemory;
}

/** Sets the `importMemory` option. */
export function setImportMemory(options: Options, importMemory: bool): void {
  options.importMemory = importMemory;
}

/** Sets the `initialMemory` option. */
export function setInitialMemory(options: Options, initialMemory: u32): void {
  options.initialMemory = initialMemory;
}

/** Sets the `maximumMemory` option. */
export function setMaximumMemory(options: Options, maximumMemory: u32): void {
  options.maximumMemory = maximumMemory;
}

/** Sets the `sharedMemory` option. */
export function setSharedMemory(options: Options, sharedMemory: bool): void {
  options.sharedMemory = sharedMemory;
}

/** Sets the `importTable` option. */
export function setImportTable(options: Options, importTable: bool): void {
  options.importTable = importTable;
}

/** Sets the `exportTable` option. */
export function setExportTable(options: Options, exportTable: bool): void {
  options.exportTable = exportTable;
}

/** Sets the `sourceMap` option. */
export function setSourceMap(options: Options, sourceMap: bool): void {
  options.sourceMap = sourceMap;
}

/** Sets the `uncheckedBehavior` option. */
export function setUncheckedBehavior(options: Options, uncheckedBehavior: UncheckedBehavior): void {
  options.uncheckedBehavior = uncheckedBehavior;
}

/** Sets the `memoryBase` option. */
export function setMemoryBase(options: Options, memoryBase: u32): void {
  options.memoryBase = memoryBase;
}

/** Sets the `tableBase` option. */
export function setTableBase(options: Options, tableBase: u32): void {
  options.tableBase = tableBase;
}

/** Adds a 'globalAliases' value. */
export function addGlobalAlias(options: Options, alias: string, name: string): void {
  let globalAliases = options.globalAliases;
  if (!globalAliases) options.globalAliases = globalAliases = new Map();
  globalAliases.set(alias, name);
}

/** Removes a 'globalAliases' value. */
export function removeGlobalAlias(options: Options, alias: string): void {
  let globalAliases = options.globalAliases;
  if (globalAliases) globalAliases.delete(alias);
}

/** Sets the `exportStart` option. */
export function setExportStart(options: Options, exportStart: string | null): void {
  options.exportStart = exportStart;
}

/** Sets the `noUnsafe` option. */
export function setNoUnsafe(options: Options, noUnsafe: bool): void {
  options.noUnsafe = noUnsafe;
}

/** Sets the `lowMemoryLimit` option. */
export function setLowMemoryLimit(options: Options, lowMemoryLimit: i32): void {
  options.lowMemoryLimit = lowMemoryLimit;
}

/** Sets the `exportRuntime` option. */
export function setExportRuntime(options: Options, exportRuntime: bool): void {
  options.exportRuntime = exportRuntime;
}

/** Default stack size. */
export const DEFAULT_STACK_SIZE = 32768;

/** Sets the `stackSize` option. */
export function setStackSize(options: Options, stackSize: i32): void {
  options.stackSize = stackSize;
}

/** Sets the bundle semantic version. */
export function setBundleVersion(
  options: Options,
  bundleMajorVersion: i32,
  bundleMinorVersion: i32,
  bundlePatchVersion: i32,
): void {
  options.bundleMajorVersion = bundleMajorVersion;
  options.bundleMinorVersion = bundleMinorVersion;
  options.bundlePatchVersion = bundlePatchVersion;
}

/** Sign extension operations. */
export const FEATURE_SIGN_EXTENSION = Feature.SignExtension;
/** Mutable global imports and exports. */
export const FEATURE_MUTABLE_GLOBALS = Feature.MutableGlobals;
/** Non-trapping float to int conversion operations. */
export const FEATURE_NONTRAPPING_F2I = Feature.NontrappingF2I;
/** Bulk memory operations. */
export const FEATURE_BULK_MEMORY = Feature.BulkMemory;
/** SIMD types and operations. */
export const FEATURE_SIMD = Feature.Simd;
/** Threading and atomic operations. */
export const FEATURE_THREADS = Feature.Threads;
/** Exception handling operations. */
export const FEATURE_EXCEPTION_HANDLING = Feature.ExceptionHandling;
/** Tail call operations. */
export const FEATURE_TAIL_CALLS = Feature.TailCalls;
/** Reference types. */
export const FEATURE_REFERENCE_TYPES = Feature.ReferenceTypes;
/** Multi value types. */
export const FEATURE_MULTI_VALUE = Feature.MultiValue;
/** Garbage collection. */
export const FEATURE_GC = Feature.GC;
/** Memory64. */
export const FEATURE_MEMORY64 = Feature.Memory64;
/** Relaxed SIMD. */
export const FEATURE_RELAXED_SIMD = Feature.RelaxedSimd;
/** Extended const expressions. */
export const FEATURE_EXTENDED_CONST = Feature.ExtendedConst;
/** String references. */
export const FEATURE_STRINGREF = Feature.Stringref;

/** Enables a specific feature. */
export function enableFeature(options: Options, feature: Feature): void {
  options.features |= feature;
}

/** Disables a specific feature. */
export function disableFeature(options: Options, feature: Feature): void {
  options.features &= ~feature;
}

/** Gives the compiler a hint at the optimize levels that will be used later on. */
export function setOptimizeLevelHints(options: Options, optimizeLevel: i32, shrinkLevel: i32): void {
  options.optimizeLevelHint = optimizeLevel;
  options.shrinkLevelHint = shrinkLevel;
}

/** Gives the compiler a hint of the emitted module's basename. */
export function setBasenameHint(options: Options, basename: string): void {
  options.basenameHint = basename;
}

/** Gives the compiler a hint that bindings will be generated. */
export function setBindingsHint(options: Options, bindings: bool): void {
  options.bindingsHint = bindings;
}

/** Sets the `pedantic` option. */
export function setPedantic(options: Options, pedantic: bool): void {
  options.pedantic = pedantic;
}

export function setDebugInfo(options: Options, debug: bool): void {
  options.debugInfo = debug;
}

// Program

/** Creates a new Program. */
export function newProgram(options: Options): Program {
  return new Program(options);
}

/** Obtains the next diagnostic message. Returns `null` once complete. */
export function nextDiagnostic(program: Program): DiagnosticMessage | null {
  return program.diagnosticsOffset < program.diagnostics.length
    ? program.diagnostics[program.diagnosticsOffset++]
    : null;
}

/** Obtains the source of the given file. */
export function getSource(program: Program, internalPath: string): string | null {
  return program.getSource(internalPath);
}

/** Formats a diagnostic message to a string. */
export { formatDiagnosticMessage as formatDiagnostic };

/** Gets the code of a diagnostic message. */
export function getDiagnosticCode(diagnostic: DiagnosticMessage): i32 {
  return diagnostic.code;
}

/** Gets the category of a diagnostic message. */
export function getDiagnosticCategory(diagnostic: DiagnosticMessage): DiagnosticCategory {
  return diagnostic.category;
}

/** Gets the textual message of a diagnostic message. */
export function getDiagnosticMessage(diagnostic: DiagnosticMessage): string {
  return diagnostic.message;
}

/** Gets the primary range, if any, of a diagnostic message. */
export function getDiagnosticRange(diagnostic: DiagnosticMessage): Range | null {
  return diagnostic.range;
}

/** Gets the related range, if any, of a diagnostic message. */
export function getDiagnosticRelatedRange(diagnostic: DiagnosticMessage): Range | null {
  return diagnostic.relatedRange;
}

/** Gets a range's start offset. */
export function getRangeStart(range: Range): i32 {
  return range.start;
}

/** Gets a range's end offsset. */
export function getRangeEnd(range: Range): i32 {
  return range.end;
}

/** Gets a range's relevant source. */
export function getRangeSource(range: Range): Source {
  return range.source;
}

/** Gets a source's normalized path. */
export function getSourceNormalizedPath(source: Source): string {
  return source.normalizedPath;
}

/** Tests whether a diagnostic is informatory. */
export function isInfo(message: DiagnosticMessage): bool {
  return message.category == DiagnosticCategory.Info;
}

/** Tests whether a diagnostic is a warning. */
export function isWarning(message: DiagnosticMessage): bool {
  return message.category == DiagnosticCategory.Warning;
}

/** Tests whether a diagnostic is an error. */
export function isError(message: DiagnosticMessage): bool {
  return message.category == DiagnosticCategory.Error;
}

// Parser

/** Parses a source file. If `parser` has been omitted a new one is created. */
export function parse(
  /** Program reference. */
  program: Program,
  /** Source text of the file, or `null` to indicate not found. */
  text: string | null,
  /** Normalized path of the file. */
  path: string,
  /** Whether this is an entry file. */
  isEntry: bool = false
): void {
  program.parser.parseFile(text, path, isEntry);
}

/** Obtains the next required file's path. Returns `null` once complete. */
export function nextFile(program: Program): string | null {
  return program.parser.nextFile();
}

/** Obtains the path of the dependee of a given imported file. */
export function getDependee(program: Program, file: string): string | null {
  return program.parser.getDependee(file);
}

// Compiler

/** Initializes the program pre-emptively for transform hooks. */
export function initializeProgram(program: Program): void {
  program.initialize();
}

/** Compiles the parsed sources to a module. */
export function compile(program: Program): Module {
  program.parser.finish();
  return new Compiler(program).compile();
}

/** Builds TypeScript definitions for the specified program. */
export function buildTSD(program: Program, esm: bool): string {
  return TSDBuilder.build(program, esm);
}

/** Builds JavaScript glue code for the specified program. */
export function buildJS(program: Program, esm: bool): string {
  return JSBuilder.build(program, esm);
}

/** Gets the Binaryen module reference of a module. */
export function getBinaryenModuleRef(module: Module): usize {
  return module.ref;
}

/** Validates a module. */
export function validate(module: Module): bool {
  return module.validate();
}

/** Optimizes a module. */
export function optimize(
  module: Module,
  optimizeLevel: i32,
  shrinkLevel: i32,
  debugInfo: bool = false,
  zeroFilledMemory: bool = false
): void {
  module.optimize(optimizeLevel, shrinkLevel, debugInfo, zeroFilledMemory);
}
