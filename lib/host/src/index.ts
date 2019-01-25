
import * as loader from "../../loader";
//tslint:disable
var instance: loader.ASInstance;
export class Host {
  instance: loader.ASInstance = instance;

  getImports<T>(){
    var _this = this;
    return {
      host: {
        debug (): void {
          // tslint:disable-next-line
          debugger;
        },
        _log(start: number, sizeof: number): void {
          let begin = start >> 2;
          let size = sizeof >> 2;
          if (size == 1 ){
            console.log(start);
          } else {
            let str = []
            let len = 0;
            for (let i = begin; i < begin+size; i++){
              let line = `| ${i} | ${_this.instance.memory.I32[i]>>2}`;
              len = Math.max(len, line.length);
              str.push(line);
            }
            let space = " ";
            let output = str.map((v: any,i:number,a: any[]):string => v + (space as any).repeat(len - v.length + 1) + "|");
            let dash = "-";
            let line = (dash as any).repeat(len+2);
            console.log([line,output.join('\n'+line+'\n'),line].join("\n"));
          }
        },

        _log_str(x: number): void {
            return console.log(_this.instance.memory.getString(x))
          },
       _logi(x: number): void {console.log(x)},
       _logf(x:number):void {  console.log(x)},
     },
     post:[bootstrap<T>(_this)]
  }
}
}

type postFunc<T> = (instance:loader.ASInstance & T) => loader.ASInstance & T;

function bootstrap<T>(h: Host): postFunc<T>  {
 return (_instance: loader.ASInstance & T)=> {
    h.instance = _instance
    return _instance
  }
}
