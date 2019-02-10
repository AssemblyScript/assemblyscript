import  * as loader from "../../../dist/assemblyscript-loader";

export abstract class ASImport {
  public instance: loader.ASInstance;

  get __imports__(): object {
    let constructor = (<any>this).constructor;
    let className: string = constructor.name;
    let __imports__ = {};
    __imports__[className] = {};
    for (let name of Object.getOwnPropertyNames(constructor.prototype)){
      if (name !== "constructor" && !name.startsWith("__")){
        console.log(name);
        __imports__[className][name] = this[name].bind(this);
      }
    }
    return __imports__;
  }
  get __memory__(): loader.ASMemory {
    return this.instance.memory;
  }

}

  class Fee extends ASImport {
    getT(): number {
      console.log(this.instance);
      return 42;
    }
  }
  class index extends ASImport {
    debug():void {debugger; }
    _log(start: number, sizeof: number):void {
      var begin = start >> 2;
      var size = sizeof >> 2;
      if (size == 1 ) {
        console.log(start);
      } else {
        let str = []
        let len = 0;
        for (let i = begin; i < begin + size; i++){
          let line = `| ${i} | ${this.__memory__.I32[i] >> 2}`;
          len = Math.max(len, line.length);
          str.push(line);
        }
        let space = " ";
        let output = str.map((v: string): string => v + (space as any).repeat(len - v.length + 1) + "|");
        let dash = "-";
        let line = (dash as any).repeat(len + 2);
        console.log([line,output.join("\n" + line + "\n"),line].join("\n"));
      }
    }

    _log_str(x: number): void {
      console.log(loader.utils.readString(this.__memory__.U32, this.__memory__.U16, x))
    }
    _logi(x: number): void {
      console.log(x);
    }
    _logf(x: number): void {
      console.log(x);
    }
  }

  let fee = new Fee();
  let Index = new index();
  console.log(Index.__imports__);
  console.log(fee.__imports__);
  fee.getT();
