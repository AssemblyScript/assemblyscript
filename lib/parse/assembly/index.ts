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

log("in the start function!");
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

export function getType(m: Module): string {
  let headers:SectionHeader[] = m.getID(SectionId.Type);
  let section = new TypeSection(headers[0]);
  type = section.parse(m.buf);
  return type.toString();
}

export function getImports(m: Module): void {
  let imports = m.getImports();
  // log(imports.length);
  if (imports.length>0)
  for (let i = 0; i< imports.length; i++){
<<<<<<< loader-memory-accessors
    // log(imports.length);
=======
    log(imports.length);
>>>>>>> Working on sections.

    // for (let j = 0; i< imports[i].imports.length; j++){
    //   let _import = imports[i].imports[j];
    //   log(_import.toString())
    // }
  }
  // return
}

<<<<<<< loader-memory-accessors
export function removeStartFunction (m: Module):  Uint8Array {
  if (m.hasStart) {
    let start : SectionHeader = m.getID(SectionId.Start)[0];
    log(start.toString());
    let len = start.end - start.ref;
    log(len);
    let buf = new Uint8Array(m.buf.length - len);
    log(start.offset)

    for (let i:u32 = 0; i < start.offset; i++) {
      buf[i] = m.buf.buffer[i];
    }
    log("checking end index");
    log(m.buf.end);
    log(m.buf.buffer);
    log(m.buf.buffer[m.buf.length - 1]);
    log(start.offset + len)
    for (let i:u32 = start.offset + len; i < m.buf.length; i++) {
      if ( i> m.buf.length - 8000) log(i);
      buf[i-len] = m.buf.buffer[i];
    }
    // memory.copy(buf.buffer.byteLength, m.buf.buffer.byteOffset, start.ref);
    // memory.copy(buf.buffer.byteLength+start.end, m.buf.buffer.byteLength + start.end, m.buf.buffer.byteLength - start.end);
    return buf;
  } else {
    return m.buf.buffer;
  }

}

// export function exportDataSection(m: Module): Uint8Array {
//
// }

=======
>>>>>>> Working on sections.
export function toString(t:TypeSection): string {
  return t.toString();
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
    log(this.buf.off)
    log(this.buf.buffer.buffer.data)
    log(this.buf.length)
    let start = this.off;
    log("starting")
    var magic = this.buf.readUint<u32>();
    log(magic);
    if (magic != 0x6D736100) unreachable();
    var version = this.buf.readUint<u32>();
    log(version);
    if (version != 1) unreachable();
    log("Magic is valid");
    var fun_space_index: u32 = 0;
    var glo_space_index: u32 = 0;
    var mem_space_index: u32 = 0;
    var tbl_space_index: u32 = 0;
    while (this.buf.off < this.buf.end) {
      // log<string>("parsing next section", true);
      let header: SectionHeader = new SectionHeader(this.buf);
      log(header.toString());
      this.module.parseSection(header);
      log("---------")
      log(this.off);
      log(header.ref - start);
      log(header.offset);
      log(header.end - start);
      log("---------");
      this.off = header.end;
      // log<i32>(this.off);
    }
    // log<i32>(this.buf.length);
    // if (this.off != this.buf.length) unreachable();
  }

}

export function newParser(buf: Uint8Array): Parser {
  log(buf);
  let buffer = new Buffer(buf);
  log(buffer);
  log(buffer.off)
  return new Parser(buffer);
}
export function parse(p: Parser): Module {
  p.parse();
  return p.module;
}
