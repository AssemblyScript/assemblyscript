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


export function getType(m: Module): string {
  var type = m.getType();
  if (type == null) {
    return "No Type Section"
  }
  return type.toString();
}

export function getImports(m: Module): void {
  var _import = m.getImports();

  // log(imports.length);
  if (_import != null) {
    // for (let i = 0; i < imports.length; i++) {
    //
    //   // log(imports.length);
    //   // for (let j = 0; i< imports[i].imports.length; j++){
    //   //   let _import = imports[i].imports[j];
    //   //   log(_import.toString())
    //   // }
    // }
  }
  // return
}

export function removeSection(mod: Module, id: SectionId): Uint8Array {
  var section = mod.getID(id);
  if (section != null) {
    // log(start.toString());
    let len = section.end - section.ref;
    // log(len);
    let buf = new Uint8Array(mod.buf.length - len);
    // log(start.offset)

    for (let i: u32 = 0; i < section.offset; i++) {
      buf[i] = mod.buf.buffer[i];
    }
    // log("checking end index");
    // log(mod.buf.end);
    // log(mod.buf.buffer);
    // log(mod.buf.buffer[mod.buf.length - 1]);
    // log(start.offset + len)
    for (let i: u32 = section.offset + len; i < mod.buf.length; i++) {
      buf[i - len] = mod.buf.buffer[i];
    }
    return buf;
  } else {
    return mod.buf.buffer;
  }
}

export function removeStartFunction (mod: Module):  Uint8Array {
  return removeSection(mod, SectionId.Start);
}

//Most Also include Memory Section
export function exportDataSection(mod: Module): Uint8Array | null {
  var header = mod.getID(SectionId.Data);
  var mem = mod.getID(SectionId.Memory);

  if (header == null) {
    return null;
  }
  if (mem == null) {
    return null;
  }
  var len = header.len + mem.len;
  var res = new Uint8Array(len + 8); //Make room for preamble
  res.fill(0,0,8);
  //Magic Number
  res[0] = 0;
  res[1] = 0x61;
  res[2] = 0x73;
  res[3] = 0x6D;
  //Version number
  res[4] = 0x01;

  for (let i = mem.offset; i < mem.offset + mem.len - 1; i++) {
    res[i - mem.offset + 8] = mod.buf.buffer[i];
  }

  for (let i = header.offset; i < header.offset + header.len - 1; i++) {
    let offset = i - header.offset + 8 + mem.len;
    res[offset] = mod.buf.buffer[i];
  }
  return res;
}

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

export {TypeSection, Module}
