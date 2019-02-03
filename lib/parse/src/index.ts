import { Type, SectionId, ExternalKind, newParser } from "./common";
import assert = require("assert");
export { Type, SectionId, ExternalKind };
import  * as loader from "../../../dist/assemblyscript-loader";
import ASModule from "../build";


type Instance = typeof ASModule;

// type Parser = {parse: (any)=> any, newParser: (any)=>any};
/** Cached compiled parser. */
var compiled: WebAssembly.Module | null = null;

var WASM_DATA: string; // injected by webpack
if (typeof WASM_DATA !== "string") WASM_DATA = require("fs").readFileSync(__dirname + "/../build/index.wasm", "base64");

export class WasmParser {
  // public memory: loader.ASMemory;
  public instance: Instance & loader.ASInstance;
  public mod: number;

  get memory(): loader.ASMemory{
    return this.instance.memory;
  }

  constructor(public binary: Uint8Array){
    // compile the parser if not yet compiled
    if (!compiled) compiled = new WebAssembly.Module(base64_decode(WASM_DATA));

    // use the binary as the parser's memory
    var nBytes = binary.length;
    var nPages = ((nBytes + 0xffff) & ~0xffff) >> 16;
    let memory = loader.createMemory({ initial: nPages });
    var imports = {
      env: {
        abort: console.error,
        memory
      },
      index: {
        debug: () => {debugger; },
        _log: (start, sizeof) => {
          let begin = start >> 2;
          let size = sizeof >> 2;
          if (size == 1 ){
            console.log(start);
          } else {
            let str = []
            let len = 0;
            for (let i = begin; i < begin+size; i++){
              let line = `| ${i} | ${memory.I32[i]>>2}`;
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
        _log_str:(x) => console.log(loader.utils.readString(memory.U32, memory.U16, x)),
        _logi: console.log,
        _logf: console.log
      },
      options: {},
      }
    this.instance  = loader.instantiate(compiled, imports);
    let array = this.memory.newArray(binary);
    let parserPtr = this.instance.newParser(array);
    this.mod = this.instance.parse(parserPtr);
  }

  get Type(): string {
    return this.memory.getString(this.instance.getType(this.mod))

  }

  printModule(): void {
    this.instance.printModule(this.mod);
  }

  removeStartFunction(): Uint8Array {
    let binary = <Uint8Array>this.memory.getArray(Uint8Array, this.instance.removeStartFunction(this.mod));
    return binary;
  }
}



// see: https://github.com/dcodeIO/protobuf.js/tree/master/lib/base64
function base64_decode(string: string): Uint8Array {
  var length = string.length;
  if (length) {
    let n = 0,
        p = length;
    while (--p % 4 > 1 && string.charCodeAt(p) === 61) ++n;
    length = Math.ceil(length * 3) / 4 - n;
  }
  var buffer = new Uint8Array(length);
  var j = 0, o = 0, t = 0;
  for (let i = 0, k = string.length; i < k;) {
    let c = string.charCodeAt(i++);
    if (c === 61 && j > 1) break;
    if ((c = s64[c]) === undefined) throw Error();
    switch (j) {
      case 0: { t = c; j = 1; break; }
      case 1: { buffer[o++] = t << 2 | (c & 48) >> 4; t = c; j = 2; break; }
      case 2: { buffer[o++] = (t & 15) << 4 | (c & 60) >> 2; t = c; j = 3; break; }
      case 3: { buffer[o++] = (t & 3) << 6 | c; j = 0; break; }
    }
  }
  if (j === 1) throw Error();
  return buffer;
}

var s64 = new Array(123);
for (let i = 0; i < 64;) s64[i < 26 ? i + 65 : i < 52 ? i + 71 : i < 62 ? i - 4 : i - 59 | 43] = i++;
