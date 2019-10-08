import { Parser, Program } from "./mockTypes";
import { BaseVisitor } from "./base";

export abstract class Transformer {
  constructor(
    protected parser: Parser,
    protected writeFile: FileWriter,
    protected baseDir: string,
    protected writer: (data: string)=> void 
  ) {}

  get program(): Program {
    return this.parser.program;
  }

  abstract afterParse(): void;
}
