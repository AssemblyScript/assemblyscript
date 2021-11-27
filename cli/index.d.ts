/**
 * @fileoverview Definitions for asc.
 * @license Apache-2.0
 */

import { OptionDescription } from "./util/options";
export { OptionDescription };
import { Transform } from "../transform";

/** AssemblyScript version. */
export const version: string;

/** Available CLI options. */
export const options: { [key: string]: OptionDescription };

/** Prefix used for library files. */
export const libraryPrefix: string;

/** Bundled library files. */
export const libraryFiles: { [key: string]: string };

/** Bundled definition files. */
export const definitionFiles: { assembly: string, portable: string };

/** Default Binaryen optimization level. */
export const defaultOptimizeLevel: number;

/** Default Binaryen shrink level. */
export const defaultShrinkLevel: number;

/** A compatible output stream. */
export interface OutputStream {
  /** Writes another chunk of data to the stream. */
  write(chunk: Uint8Array | string): void;
}

/** An in-memory output stream. */
export interface MemoryStream extends OutputStream {
  /** Resets the stream to offset zero. */
  reset(): void;
  /** Converts the output to a buffer. */
  toBuffer(): Uint8Array;
  /** Converts the output to a string. */
  toString(): string;
}

/** Relevant subset of the Source class for diagnostic reporting. */
export interface Source {
  /** Normalized path with file extension. */
  normalizedPath: string;
}

/** Relevant subset of the Range class for diagnostic reporting. */
export interface Range {
  /** Start offset within the source file. */
  start: number;
  /** End offset within the source file. */
  end: number;
  /** Respective source file. */
  source: Source;
}

/** Relevant subset of the DiagnosticMessage class for diagnostic reporting. */
export interface DiagnosticMessage {
  /** Message code. */
  code: number;
  /** Message category. */
  category: number;
  /** Message text. */
  message: string;
  /** Respective source range, if any. */
  range: Range | null;
  /** Related range, if any. */
  relatedRange: Range | null;
}

/** A function handling diagnostic messages. */
type DiagnosticReporter = (diagnostic: DiagnosticMessage) => void;

/** Compiler options. */
export interface CompilerOptions {
  /** Prints just the compiler's version and exits. */
  version?: boolean;
  /** Prints the help message and exits. */
  help?: boolean;
  /** Optimizes the module. */
  optimize?: boolean;
  /** How much to focus on optimizing code. */
  optimizeLevel?: number;
  /** How much to focus on shrinking code size. */
  shrinkLevel?: number;
  /** Re-optimizes until no further improvements can be made. */
  converge?: boolean;
  /** Specifies the base directory of input and output files. */
  baseDir?: string;
  /** Specifies the output file. File extension indicates format. */
  outFile?: string;
  /** Specifies the binary output file (.wasm). */
  binaryFile?: string;
  /** Specifies the text output file (.wat). */
  textFile?: string;
  /** Specifies the JavaScript (via wasm2js) output file (.js). */
  jsFile?: string;
  /** Specifies the WebIDL output file (.webidl). */
  idlFile?: string;
  /** Specifies the TypeScript definition output file (.d.ts). */
  tsdFile?: string;
  /** Enables source map generation. Optionally takes the URL. */
  sourceMap?: boolean | string;
  /** Specifies the runtime variant to include in the program. */
  runtime?: string;
  /** Disallows the use of unsafe features in user code. */
  noUnsafe?: boolean;
  /** Enables debug information in emitted binaries. */
  debug?: boolean;
  /** Replaces assertions with just their value without trapping. */
  noAssert?: boolean;
  /** Performs compilation as usual but does not emit code. */
  noEmit?: boolean;
  /** Imports the memory provided as 'env.memory'. */
  importMemory?: boolean;
  /** Does not export the memory as 'memory'. */
  noExportMemory?: boolean;
  /** Sets the initial memory size in pages. */
  initialMemory?: number;
  /** Sets the maximum memory size in pages. */
  maximumMemory?: number;
  /** Declare memory as shared. Requires maximumMemory. */
  sharedMemory?: boolean;
  /** Assume that imported memory is zero filled. Requires importMemory. */
  zeroFilledMemory?: boolean;
  /** Sets the start offset of compiler-generated static memory. */
  memoryBase?: number;
  /** Imports the function table provided as 'env.table'. */
  importTable?: boolean;
  /** Exports the function table as 'table'. */
  exportTable?: boolean;
  /** Exports an explicit start function to be called manually. */
  explicitStart?: boolean;
  /** "Adds one or multiple paths to custom library components. */
  lib?: string | string[];
  /** Adds one or multiple paths to package resolution. */
  path?: string | string[];
  /** Aliases a global object under another name. */
  use?: string | string[];
  /** Sets the trap mode to use. */
  trapMode?: "allow" | "clamp" | "js";
  /** Specifies additional Binaryen passes to run. */
  runPasses?: string | string[];
  /** Skips validating the module using Binaryen. */
  noValidate?: boolean;
  /** Enables WebAssembly features that are disabled by default. */
  enable?: string | string[];
  /** Disables WebAssembly features that are enabled by default. */
  disable?: string | string[];
  /** Specifies the path to a custom transform to 'require'. */
  transform?: string | string[];
  /** Make yourself sad for no good reason. */
  pedantic?: boolean;
  /** Enables tracing of package resolution. */
  traceResolution?: boolean;
  /** Lists files to be compiled and exits. */
  listFiles?: boolean;
  /** Prints measuring information on I/O and compile times. */
  measure?: boolean;
  /** Disables terminal colors. */
  noColors?: boolean;
  /** Specifies an alternative file extension. */
  extension?: string;
}

/** Compiler API options. */
export interface APIOptions {
  /** Standard output stream to use. */
  stdout?: OutputStream;
  /** Standard error stream to use. */
  stderr?: OutputStream;
  /** Reads a file from disk (or memory). */
  readFile?: (filename: string, baseDir: string) => string | null;
  /** Writes a file to disk (or memory). */
  writeFile?: (filename: string, contents: Uint8Array, baseDir: string) => void;
  /** Lists all files within a directory. */
  listFiles?: (dirname: string, baseDir: string) => string[] | null;
  /** Handler for diagnostic messages. */
  reportDiagnostic?: DiagnosticReporter;
  /** Additional transforms to apply. */
  transforms?: Transform[];
}

/** Convenience function that parses and compiles source strings directly. */
export function compileString(sources: { [key: string]: string } | string, options?: CompilerOptions): {
  /** Standard output. */
  stdout: OutputStream,
  /** Standard error. */
  stderr: OutputStream,
  /** Emitted binary. */
  binary: Uint8Array | null,
  /** Emitted text format. */
  text: string | null
}

/** Runs the command line utility using the specified arguments array. */
export function main(argv: string[], options: APIOptions, callback?: (err: Error | null) => number): number;
export function main(argv: string[], callback?: (err: Error | null) => number): number;

/** Checks diagnostics emitted so far for errors. */
export function checkDiagnostics(emitter: Record<string,unknown>, stderr?: OutputStream, reportDiagnostic?: DiagnosticReporter): boolean;

/** An object of stats for the current task. */
export interface Stats {
  readTime: number,
  readCount: number,
  writeTime: number,
  writeCount: number,
  parseTime: number,
  parseCount: number,
  compileTime: number,
  compileCount: number,
  emitTime: number,
  emitCount: number,
  validateTime: number,
  validateCount: number,
  optimizeTime: number,
  optimizeCount: number
}

/** Creates an empty set of stats. */
export function createStats(): Stats;

/** Measures the execution time of the specified function.  */
export function measure(fn: () => void): number;

/** Formats a high resolution time to a human readable string. */
export function formatTime(time: number): string;

/** Formats and prints out the contents of a set of stats. */
export function printStats(stats: Stats, output: OutputStream): void;

/** Creates a memory stream that can be used in place of stdout/stderr. */
export function createMemoryStream(fn?: (chunk: Uint8Array | string) => void): MemoryStream;

/** Compatible TypeScript compiler options for syntax highlighting etc. */
export const tscOptions: Record<string,unknown>;