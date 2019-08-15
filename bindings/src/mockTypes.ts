import { Source } from "../../src/ast";

//Mock types since imports would add more dependencies than are needed.

export interface Program {
  sources: Source[];
}

export interface Parser {
  donelog: Set<string>;
  seenlog: Set<string>;
  program: Program;
  parseFile(sourceText: string, path: string, isEntry: boolean): void;
}
