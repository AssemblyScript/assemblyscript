/**
 * @license
 * Copyright 2020 Daniel Wirtz / The AssemblyScript Authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

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

import { Target, Feature } from "./common";
import { Compiler, Options } from "./compiler";
import { IDLBuilder, TSDBuilder } from "./definitions";
import { DiagnosticMessage, DiagnosticCategory, formatDiagnosticMessage } from "./diagnostics";
import { Module } from "./module";
import { Program } from "./program";

// Options

/** Creates a new set of compiler options. */
export function newOptions(): Options {
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

/** Sets the `memoryBase` option. */
export function setMemoryBase(options: Options, memoryBase: u32): void {
  options.memoryBase = memoryBase;
}

/** Sets the `tableBase` option. */
export function setTableBase(options: Options, tableBase: u32): void {
  options.tableBase = tableBase;
}

/** Sets a 'globalAliases' value. */
export function setGlobalAlias(options: Options, alias: string, name: string): void {
  var globalAliases = options.globalAliases;
  if (!globalAliases) options.globalAliases = globalAliases = new Map();
  globalAliases.set(alias, name);
}

/** Sets the `explicitStart` option. */
export function setExplicitStart(options: Options, explicitStart: bool): void {
  options.explicitStart = explicitStart;
}

/** Sets the `noUnsafe` option. */
export function setNoUnsafe(options: Options, noUnsafe: bool): void {
  options.noUnsafe = noUnsafe;
}

/** Sets the `lowMemoryLimit` option. */
export function setLowMemoryLimit(options: Options, lowMemoryLimit: i32): void {
  options.lowMemoryLimit = lowMemoryLimit;
}

/** Sign extension operations. */
export const FEATURE_SIGN_EXTENSION = Feature.SIGN_EXTENSION;
/** Mutable global imports and exports. */
export const FEATURE_MUTABLE_GLOBALS = Feature.MUTABLE_GLOBALS;
/** Non-trapping float to int conversion operations. */
export const FEATURE_NONTRAPPING_F2I = Feature.NONTRAPPING_F2I;
/** Bulk memory operations. */
export const FEATURE_BULK_MEMORY = Feature.BULK_MEMORY;
/** SIMD types and operations. */
export const FEATURE_SIMD = Feature.SIMD;
/** Threading and atomic operations. */
export const FEATURE_THREADS = Feature.THREADS;
/** Exception handling operations. */
export const FEATURE_EXCEPTION_HANDLING = Feature.EXCEPTION_HANDLING;
/** Tail call operations. */
export const FEATURE_TAIL_CALLS = Feature.TAIL_CALLS;
/** Reference types. */
export const FEATURE_REFERENCE_TYPES = Feature.REFERENCE_TYPES;
/** Multi value types. */
export const FEATURE_MULTI_VALUE = Feature.MULTI_VALUE;
/** Garbage collection. */
export const FEATURE_GC = Feature.GC;
/** Memory64. */
export const FEATURE_MEMORY64 = Feature.MEMORY64;

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

/** Sets the `pedantic` option. */
export function setPedantic(options: Options, pedantic: bool): void {
  options.pedantic = pedantic;
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

/** Builds WebIDL definitions for the specified program. */
export function buildIDL(program: Program): string {
  return IDLBuilder.build(program);
}

/** Builds TypeScript definitions for the specified program. */
export function buildTSD(program: Program): string {
  return TSDBuilder.build(program);
}

// Full API
export * from "./ast";
export * from "./common";
export * from "./compiler";
export * from "./definitions";
export * from "./diagnostics";
export * from "./flow";
export * from "./module";
export * from "./parser";
export * from "./program";
export * from "./resolver";
export * from "./tokenizer";
export * from "./types";
// TODO: When vTables are pulled, perhaps it would be better to extend an ASTWalker
export * from "./extra/ast";
import * as util from "./util/index";
export { util };

// TODO: compat with 0.9, remove with 0.10
export * from "./util/index";
