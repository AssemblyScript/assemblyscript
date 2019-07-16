/**
 * Definitions for custom compiler transforms that can be applied with the `--postCompile` option.
 * @module cli/postTransform
 *//***/

import { Parser } from "../src/parser";
import { Compiler } from "../src/compiler";

interface stderr {
    write: (str: string)=> void;
}
export interface Vistor {
    new(parser: Parser, compiler: Compiler, writer: stderr);
}   
 