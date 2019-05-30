import { OptionDescription } from "./util/options";
export { OptionDescription };

/** Whether this is a webpack bundle or not. */
export const isBundle: boolean;

/** Whether asc runs the sources directly or not. */
export const isDev: boolean;

/** AssemblyScript version. */
export const version: string;

/** Available CLI options. */
export const options: { [key: string]: OptionDescription };

/** Common root used in source maps. */
export var sourceMapRoot: string;

/** Prefix used for library files. */
export var libraryPrefix: string;

/** Default Binaryen optimization level. */
export var defaultOptimizeLevel: number;

/** Default Binaryen shrink level. */
export var defaultShrinkLevel: number;

/** Bundled library files. */
export const libraryFiles: { [key: string]: string };

/** Bundled definition files. */
export const definitionFiles: { assembly: string, portable: string };

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

/** Compiler API options. */
interface CompilerOptions {
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
export function main(argv: string[], options: CompilerOptions, callback?: (err: Error | null) => number): number;
export function main(argv: string[], callback?: (err: Error | null) => number): number;

/** Checks diagnostics emitted so far for errors. */
export function checkDiagnostics(emitter: any, stderr?: OutputStream): boolean;

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
export function measure(fn: Function): number;

/** Formats a high resolution time to a human readable string. */
export function formatTime(time: number): string;

/** Formats and prints out the contents of a set of stats. */
export function printStats(stats: Stats, output: OutputStream): void;

/** Creates a memory stream that can be used in place of stdout/stderr. */
export function createMemoryStream(fn?: (chunk: Uint8Array | string) => void): MemoryStream;

/** Compatible TypeScript compiler options for syntax highlighting etc. */
export const tscOptions: { [key: string]: any };
