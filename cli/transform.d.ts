/**
 * Definitions for custom compiler transforms that can be applied with the `--transform` option.
 * @module cli/transform
 *//***/

import { Parser } from "..";

export abstract class Transform {

  /** Base directory. */
  readonly baseDir: string;

  /** Writes a file to disk. */
  writeFile(filename: string, contents: string | Uint8Array, baseDir: string): boolean;

  /** Reads a file from disk. */
  readFile(filename: string, baseDir: string): string | null;

  /** Lists all files in a directory. */
  listFiles(dirname: string, baseDir: string): string[] | null;

  /** Called when parsing is complete, before a program is instantiated from the AST. */
  afterParse?(parser: Parser): void;
}
