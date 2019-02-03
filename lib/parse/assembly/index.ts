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

export { memory }
import { Buffer } from "./buffer";
import {
  SectionHeader,
  TypeSection,
  Module
} from "./module";
import { log } from "./host";

// log("in the start function!");
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

var type: TypeSection;

export function printModule(m: Module): void {
  m.print();
}

export function getType(m: Module): string {
  var headers: SectionHeader[] = m.getID(SectionId.Type);
  var section = new TypeSection(headers[0]);
  type = section.parse(m.buf);
  return type.toString();
}

export function getImports(m: Module): void {
  var imports = m.getImports();
  // log(imports.length);
  if (imports.length > 0) {
    for (let i = 0; i < imports.length; i++) {
      log(imports.length);

      // log(imports.length);
      // for (let j = 0; i< imports[i].imports.length; j++){
      //   let _import = imports[i].imports[j];
      //   log(_import.toString())
      // }
    }
  }
  // return
}

export function removeStartFunction (mod: Module):  Uint8Array {
  if (mod.hasStart) {
    let sections : SectionHeader[] = mod.getID(SectionId.Start);
    let start = sections[0];
    // log(start.toString());
    let len = start.end - start.ref;
    // log(len);
    let buf = new Uint8Array(mod.buf.length - len);
    // log(start.offset)

    for (let i: u32 = 0; i < start.offset; i++) {
      buf[i] = mod.buf.buffer[i];
    }
    // log("checking end index");
    // log(mod.buf.end);
    // log(mod.buf.buffer);
    // log(mod.buf.buffer[mod.buf.length - 1]);
    // log(start.offset + len)
    for (let i: u32 = start.offset + len; i < mod.buf.length; i++) {
      buf[i - len] = mod.buf.buffer[i];
    }
    return buf;
  } else {
    return mod.buf.buffer;
  }

}

// export function exportDataSection(m: Module): Uint8Array {
//
// }

export function toString(t:TypeSection): string {
  return t.toString();
}
export function hasStart(mod: Module): boolean {
  return mod.hasStart;
}

export class Parser {
  buf: Buffer;
  module: Module;
  constructor(binary: Uint8Array){
   this.buf = new Buffer(binary);
   this.module = new Module(this.buf);
 }

 parseString(): String {
   return String.fromUTF8(this.buf.off, this.buf.readVaruint(32));
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
    var start = this.off;
    var magic = this.buf.readUint<u32>();
    if (magic != 0x6D736100) unreachable();
    var version = this.buf.readUint<u32>();
    if (version != 1) unreachable();
    var fun_space_index: u32 = 0;
    var glo_space_index: u32 = 0;
    var mem_space_index: u32 = 0;
    var tbl_space_index: u32 = 0;
    while (this.buf.off < this.buf.end) {
      // log<string>("parsing next section", true);
      let header: SectionHeader = new SectionHeader(this.buf);
      // log(header.toString());
      this.module.parseSection(header);
      // log("---------")
      // log(this.off);
      // log(header.ref - start);
      // log(header.offset);
      // log(header.end - start);
      // log("---------");
      this.off = header.end;
      // log<i32>(this.off);
    }
    // log<i32>(this.buf.length);
    // if (this.off != this.buf.length) unreachable();
  }

}

export function newParser(buf: Uint8Array): Parser {
  return new Parser(buf);
}
export function parse(p: Parser): Module {
  p.parse();
  return p.module;
}

export {TypeSection, Module}
