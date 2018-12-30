/** A WebAssembly module that parses WebAssembly modules. */

// Common constants shared between AssemblyScript and TypeScript
import {
  Type,
  SectionId,
  ExternalKind,
  NameType,
  MAX_PAGES,
  MAX_ELEMS,
  Opcode
} from "../src/common";

export {memory}
import {Buffer} from './buffer';
import {SectionHeader,
        TypeSection,
        Module} from './module';
import {log} from './host';

declare function debug():void;

// type FunctionName  = string | symbol;
// type Instance = [Function, Object];
//
// let instance: Object;
// let methods: Map<FunctionName, Function> = new Map<FunctionName, Function>();

// function registerClass<T extends { new(...args: any[]): {} }>(name:string): any {
//     type Ctor = new (...args: any[]) => T;
//     return (target: T): Ctor => {
//       // Save a reference to the original constructor
//       const Original = target;
//           let self:T = this;
//           debugger;
//       // the new constructor behaviour
//       let decoratedConstructor: any = function(...args: any[]): void {
//         // log<string>("Before construction:");
//         //
//         Original.apply(this, args);
//         instance = this;
//         // console.log("After construction: ", self.instance !== undefined);
//       };
//
//       // Copy prototype so intanceof operator still works
//       decoratedConstructor.prototype = Original.prototype;
//       // Copy static members too
//       Object.keys(Original).forEach((name: string) =>
//                     { decoratedConstructor[name] = (<any>Original)[name]; });
//
//       // Return new constructor (will override original)
//       return decoratedConstructor;
//     };
//
//   }

let type: TypeSection;

export function getType(): TypeSection {
  return type;
}


export class Parser {
  buf: Buffer;
  module: Module;
 constructor(buf: Buffer){
   this.buf = buf;
   this.module = new Module(buf);
 }

 parseString(): String {
   return String.fromUTF8(this.buf.off,this.buf.readVaruint(32));
 }

 readVaruint(len: usize): u32 {
   return this.buf.readVaruint(len);
 }

 get off(): usize {
   return this.buf.off;
 }

 set off(u: usize) {
   this.buf.off = u;
 }

/** Starts parsing the module that has been placed in memory. */
  parse(): void {
    var magic = this.buf.readUint<u32>();
    if (magic != 0x6D736100) unreachable();
    var version = this.buf.readUint<u32>();
    if (version != 1) unreachable();
    var fun_space_index: u32 = 0;
    var glo_space_index: u32 = 0;
    var mem_space_index: u32 = 0;
    var tbl_space_index: u32 = 0;
    while (this.buf.off < this.buf.length) {
      // log<string>("parsing next section", true);
      let header: SectionHeader = new SectionHeader(this.buf);
      this.module.parseSection(header);
      this.off = header.end;
      // log<i32>(this.off);
    }
    // log<i32>(this.buf.length);
    // if (this.off != this.buf.length) unreachable();
  }

}

export function newParser(buf: Uint8Array): Parser {
  let buffer = new Buffer(buf);
  return new Parser(buffer);
}
export function parse(p: Parser): Module {
  p.parse();
  log<i32>(p.module.Headers.length);
  let headers:SectionHeader[] = p.module.getID(SectionId.Type);
  let section = new TypeSection(headers[0]);
  type = (section).parse(p.module.buf);

  return p.module;
}
