/**
 * Definitions for custom compiler transforms that can be applied with the `--transform` option.
 * @module cli/transform
 *//***/

import { Parser } from "../src/parser";

declare function writeFile(name: string, contents: string | Uint8Array, baseDir: string): void;
export interface Transform {
  /** Called when parsing is complete, before a program is instantiated from the AST. */
  afterParse(parser: Parser, writer?: typeof writeFile, baseDir?: string): void;
}
