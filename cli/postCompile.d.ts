/**
 * Definitions for custom compiler transforms that can be applied with the `--transform` option.
 * @module cli/transform
 *//***/

import { Parser } from "../src/parser";
import { ASTVisitor } from "../src/ast";
import { Compiler } from "../src/compiler";
import { ElementVisitor } from "../src/program";


export interface Vistor extends ASTVisitor, ElementVisitor {
    new(parser: Parser, compiler: Compiler);

}   
 