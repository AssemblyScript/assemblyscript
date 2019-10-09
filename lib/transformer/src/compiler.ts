import { Source } from "./ast";

export interface Program {
  sources: Source[];
}

export interface Parser {
  donelog: Set<string>;
  seenlog: Set<string>;
  program: Program;
  parseFile(sourceText: string, path: string, isEntry: boolean): void;
}