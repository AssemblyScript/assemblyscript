/**
 * @fileoverview Compiler transform interface definitions.
 * @license Apache-2.0
 */

import { Program, Parser, Module } from "..";
import { OutputStream } from "./asc";

export abstract class Transform {

  /** Program reference. */
  readonly program: Program;

  /** Base directory. */
  readonly baseDir: string;

  /** Output stream used by the compiler. */
  readonly stdout: OutputStream;

  /** Error stream used by the compiler. */
  readonly stderr: OutputStream;

  /** Logs a message to console. */
  readonly log: typeof console.log;

  /** Writes a file to disk. */
  writeFile(filename: string, contents: string | Uint8Array, baseDir: string): boolean;

  /** Reads a file from disk. */
  readFile(filename: string, baseDir: string): string | null;

  /** Lists all files in a directory. */
  listFiles(dirname: string, baseDir: string): string[] | null;

  /** Called when parsing is complete, before a program is instantiated from the AST. */
  afterParse?(parser: Parser): void;

  /** Called after the program is instantiated. */
  afterInitialize?(program: Program): void;

  /** Called when compilation is complete, before the module is being validated. */
  afterCompile?(module: Module): void;
}
