import { Type, SectionId, ExternalKind, newParser } from "./common";
import assert = require("assert");
export { Type, SectionId, ExternalKind };
import  * as loader from "../../loader/src";
import ASModule from "../build";


type Instance<T> = loader.ASUtil & T;

// type Parser = {parse: (any)=> any, newParser: (any)=>any};
/** Cached compiled parser. */
var compiled: WebAssembly.Module | null = null;

var WASM_DATA: string; // injected by webpack
if (typeof WASM_DATA !== "string") WASM_DATA = require("fs").readFileSync(__dirname + "/../build/index.wasm", "base64");

class WasmParser {
  public memory: loader.ASMemory;
  public instance: Instance<ASModule>;
  constructor(public binary: Uint8Array){
    // compile the parser if not yet compiled
    if (!compiled) compiled = new WebAssembly.Module(base64_decode(WASM_DATA));

    // use the binary as the parser's memory
    var nBytes = binary.length;
    var nPages = ((nBytes + 0xffff) & ~0xffff) >> 16;
    let memory = loader.createMemory({ initial: nPages });
    this.memory = memory;
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
      let array = this.instance.newArray(new Uint8Array(binary))
      let parserPtr = this.instance.newParser(array);
  }
}



/** Parses the contents of a WebAssembly binary according to the specified options. */
export function parse(binary: Uint8Array): void {


  // buffer.set(binary);

  // provide a way to read strings from memory
  parse.readString = (offset: number, length: number): string => utf8_read(new Uint8Array(memory.buffer), offset, offset + length);

  parse.readUint32 = (index: number): number => {
    return buffer[index];
  }


  // instantiate the parser and return its exports



  let array = instance.newArray(new Uint8Array(binary))
  let parserPtr = instance.newParser(array);

  let Mod = instance.parse(parserPtr);
  console.log(instance.getString((instance as any).getType(Mod)));
  (instance as any).getImports(Mod);
  // let arraybuf = instance.getArray(Uint8Array, array);
  let newptr = (instance as any).removeDataSection(Mod);
  // debugger;
  let buf = instance.getArray(Uint8Array, newptr);
  // debugger;
  // let array2 = instance.newArray(buf);
  console.log(newptr);
  let parserPtr2 = instance.newParser(newptr);
  let Mod2 = instance.parse(parserPtr2);
  // let dataFreePtr = (instance as any).removeDataSection(Mod2);
  // let buf2 = instance.getArray(Uint8Array, dataFreePtr);

  debugger;
  let instance1 = loader.instantiateBuffer(binary, imports);
  (instance1 as any).overwrite();
  // console.log(instance1.getString((instance1 as any).getString()));
  let instance2 = loader.instantiateBuffer(buf, imports);
  // instance2.table.grow()
  // instance2.table.add(1, (instance2 as any).callStart)
  console.log(instance2.getString((instance2 as any).getStr()));
  let instance3 = loader.instantiateBuffer(binary, imports);
  console.log(instance3.getString((instance3 as any).getStr()));

  let instance2 = loader.instantiateBuffer(buf, imports);
  instance2.start();
  // let sections = buffer.slice(instance.I32[Mod], 2);
  // console.log(sections[1])
  // let arrayBuf = sections[0]>>2;
  // for (let i =0; i<sections[1]; i++){
  //   let section = instance.I32[arrayBuf + 2 + i] >> 2;
  //   console.log("id: " + instance.I32[section + 1]);
  //   // console.log(instance.getString(instance.I32[section + 4]));
  // }
  // let typeSection = (instance as any).getType() >> 2;
  // console.log(instance.getString(typeSection));
  // debugger;
  // for (let i in Mod) {
  //   console.log(Mod[i]);
  // }
  // debugger;
}

export declare namespace parse {
  /** Utility function for reading an UTF8 encoded string from memory while parsing. */
  function readString(offset: number, length: number): string;
  function readUint32(index: number): number;
}

// see: https://github.com/dcodeIO/protobuf.js/tree/master/lib/utf8
function utf8_read(buffer: Uint8Array, start: number, end: number): string {
  var len = end - start;
  if (len < 1) return "";
  var parts: string[] | null = null,
      chunk: number[] = [],
      i = 0, // char offset
      t = 0; // temporary
  while (start < end) {
    t = buffer[start++];
    if (t < 128) {
      chunk[i++] = t;
    } else if (t > 191 && t < 224) {
      chunk[i++] = (t & 31) << 6 | buffer[start++] & 63;
    } else if (t > 239 && t < 365) {
      t = ((t & 7) << 18 | (buffer[start++] & 63) << 12 | (buffer[start++] & 63) << 6 | buffer[start++] & 63) - 0x10000;
      chunk[i++] = 0xD800 + (t >> 10);
      chunk[i++] = 0xDC00 + (t & 1023);
    } else {
      chunk[i++] = (t & 15) << 12 | (buffer[start++] & 63) << 6 | buffer[start++] & 63;
    }
    if (i > 8191) {
      (parts || (parts = [])).push(String.fromCharCode.apply(String, chunk));
      i = 0;
    }
  }
  if (parts) {
    if (i) parts.push(String.fromCharCode.apply(String, chunk.slice(0, i)));
    return parts.join("");
  }
  return String.fromCharCode.apply(String, chunk.slice(0, i));
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
