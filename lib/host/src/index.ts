
import * as loader from "../../loader";
import {host as imports} from "../assembly/host/common";

let instance: loader.ASInstance
export namespace  host {
  function debug(){
    debugger;
  }

  function _log(start: number, sizeof: number){
    let begin = start >> 2;
    let size = sizeof >> 2;
    if (size == 1 ){
      console.log(start);
    } else {
      let str = []
      let len = 0;
      for (let i = begin; i < begin+size; i++){
        let line = `| ${i} | ${instance.I32[i]>>2}`;
        len = Math.max(len, line.length);
        str.push(line);
      }
      let space = " ";
      let output = str.map((v,i,a)=> v + (space as any).repeat(len - v.length + 1) + "|");
      let dash = "-";
      let line = (dash as any).repeat(len+2);
      console.log([line,output.join('\n'+line+'\n'),line].join("\n"));
    }
  },
  _log_str:(x) => console.log(loader.getStringImpl(buffer, buffer16, x)),
  _logi: console.log,
  _logf: console.log
}
