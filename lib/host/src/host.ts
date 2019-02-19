import {ASImport} from "./ASImport";

export class Host extends ASImport {

  constructor(public stdout: (out:string) => void = console.log){
    super()
  }

  debug (): void {
    // tslint:disable-next-line
    debugger;
  }

  _log(start: number, sizeof: number): void {
    let begin = start >> 2;
    let size = sizeof >> 2;
    let str = []
    let len = 0;
    for (let i = begin; i < begin+size; i++){
      let line = `| ${i} | ${this.memory.I32[i] >> 2}`;
      len = Math.max(len, line.length);
      str.push(line);
    }
    let space = " ";
    let output = str.map((v: any, i:number, a: any[]): string => v + (space as any).repeat(len - v.length + 1) + "|");
    let dash = "-";
    let line = (dash as any).repeat(len+2);
    this.stdout([line,output.join('\n'+line+'\n'),line].join("\n"));
  }

  _log_str(x: number): void {
      return this.stdout(this.memory.getString(x))
  }

  _logi(x: number): void { this.stdout(x.toString()) }

  _logf(x:number): void {  this.stdout(x.toString()) }
}
