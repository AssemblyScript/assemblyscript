/**
 * Definitions for custom compiler transforms that can be applied with the `--transform` option.
 * @module cli/transform
 *//***/

import { Parser } from "../src/parser";

export interface Transform {
  /** Called when parsing is complete, before a program is instantiated from the AST. */
  afterParse(parser: Parser): void;
}
