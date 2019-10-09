import { Parser, Program } from "./compiler";

/**
 * Top level transformer that expects an afterParse function.
 */
export abstract class Transformer {
  constructor(
    protected parser: Parser,
    protected writeFile: FileWriter,
    protected readFile: FileReader,
    protected baseDir: string,
    protected stdout: (data: string) => void,
    protected stderr: (data: string) => void
  ) {}

  get program(): Program {
    return this.parser.program;
  }

  abstract afterParse(): void;
}
