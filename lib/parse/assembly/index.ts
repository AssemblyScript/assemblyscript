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
import {Buffer} from "./buffer";

import {Section} from './module';

declare function log<T>(t: T):void;

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


class Module {
  sections: Section[];

  push(s :Section): void {
    this.sections.push(s);
  }
}

export class Parser {
  buf: Buffer;
  module: Module;
 constructor(buf: Buffer){
   this.buf = buf;
   this.module = new Module();
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
      log<i32>(this.off);
      let section = Section.create(this.buf);
      this.module.push(section);
      this.off = section.payload_off + section.payload_len;
      log<i32>(this.off);
    }
    log<i32>(this.buf.length);
    // if (this.off != this.buf.length) unreachable();
  }

}

export function newParser(buf: Uint8Array): Parser {
  let buffer = new Buffer(buf);
  return new Parser(buffer);
}

export function parse(p: Parser): Section[] {
  p.parse();
  return p.module.sections;
}
