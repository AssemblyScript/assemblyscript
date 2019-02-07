import { Type, SectionId, ExternalKind, newParser } from "./common";
import  * as assert from "assert";
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
  instance: Instance & loader.ASInstance & loader.ASExport;
  mod: ASModule.Module;
  parser: ASModule.Parser;

  get memory(): loader.ASMemory {
    return this.instance.memory;
  }

  getByteArray(addr: number): Uint8Array {
    return this.memory.getArray(Uint8Array, addr);
  }

  constructor(public binary: Uint8Array) {
    // compile the parser if not yet compiled
    if (!compiled) compiled = new WebAssembly.Module(base64_decode(WASM_DATA));

    // use the binary as the parser's memory
    var nBytes = binary.length;
    var nPages = ((nBytes + 0xffff) & ~0xffff) >> 16;
    var memory = loader.createMemory({ initial: nPages });
    var imports = {
      env: {
        abort: console.error,
        memory
      },
      index: {
        //tslint:disable-next-line
        debug: ():void => {debugger; },
        _log: (start: number, sizeof: number):void => {
          var begin = start >> 2;
          var size = sizeof >> 2;
          if (size == 1 ) {
            console.log(start);
          } else {
            let str = []
            let len = 0;
            for (let i = begin; i < begin + size; i++){
              let line = `| ${i} | ${memory.I32[i] >> 2}`;
              len = Math.max(len, line.length);
              str.push(line);
            }
            let space = " ";
            let output = str.map((v: string): string => v + (space as any).repeat(len - v.length + 1) + "|");
            let dash = "-";
            let line = (dash as any).repeat(len + 2);
            console.log([line,output.join("\n" + line + "\n"),line].join("\n"));
          }
        },
        _log_str: (x: number): void => console.log(loader.utils.readString(memory.U32, memory.U16, x)),
        _logi: console.log,
        _logf: console.log
      },
      options: {},
      }
    this.instance  = loader.instantiate(compiled, imports);
    var array = this.memory.newArray(binary);
    var parser = new this.instance.Parser(array)
    this.parser = parser;
    parser.parse();
    this.mod = <ASModule.Module>(<any>this.instance.Module).wrap(parser.module);
  }

  get Type(): string {
    return this.memory.getString(this.mod.getType());

  }

  printModule(): void {
    this.mod.print();
  }

  removeStartFunction(): Uint8Array {
    var binary = <Uint8Array>this.memory.getArray(Uint8Array, this.instance.removeStartFunction(this.parser.module));
    return binary;
  }

  hasSection(id: SectionId): boolean {
    return this.mod.hasSection(id);
  }

  removeDataSection(): Uint8Array {
    return this.getByteArray(this.instance.removeSection(this.parser.module, SectionId.Data));
  }

  exportDataSection(): Uint8Array {
    return this.memory.getArray(Uint8Array, this.instance.exportDataSection(this.parser.module));
  }

  hasStart(): boolean {
    return this.mod.hasStart;
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
