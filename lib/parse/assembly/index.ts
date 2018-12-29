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
import * as opt from "./options";

declare function log<T>(t: T):void;

declare function debug():void;

function sectionName(s: SectionId): string {
  switch (s){
    case 0:
      return "Custom"
    case 1:
      return "Type"
     case 2:
			return "Import"
     case 3:
			return "Function"
     case 4:
			return "Table"
     case 5:
			return "Memory"
     case 6:
			return "Global"
     case 7:
			return "Export"
     case 8:
			return "Start"
     case 9:
			return "Element"
     case 10:
			return "Code"
     case 11:
			return "Data"
     default:
      unreachable();
  }

  return "";
}

export class Section {
  ref: u32;
  id: u32;
  payload_len: u32;
  payload_off: u32;
  name: string = "";

  constructor (buf: Buffer){
    this.parse(buf);
  }

  parse(buf:Buffer): Section {
    this.ref = buf.off;
    this.id = buf.readVaruint(7);
    this.payload_len = buf.readVaruint(32);
    if (this.id == 0){
      let before = buf.off;
      let name_len = buf.readVaruint(32);
      let name_off = buf.off;
      this.name = "'" + String.fromUTF8(name_off, name_len) + "''";
      buf.off += name_len;
      this.payload_len -= buf.off - before;
    } else if (this.id <= <u32> SectionId.Data){
      this.name = sectionName(this.id);
    } else {
      unreachable();
    }
    this.payload_off = buf.off;
    return this;
  }

}

class Module {
  sections: Section[];

  push(s :Section): void {
    this.sections.push(s);
  }
}

class Parser {
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
      let section = new Section(this.buf);
      this.module.push(section)
      this.off += section.payload_len;
      continue;
      if (opt.onSection(
        id,
        payload_off,
        payload_len,
        name_off,
        name_len
      )) {
        switch (id) {
          case SectionId.Type: {
            let count = readVaruint(32);
            for (let index: u32 = 0; index < count; ++index) {
              let form = readVarint(7) & 0x7f;
              opt.onType(
                index,
                form
              );
              let paramCount = readVaruint(32);
              for (let paramIndex: u32 = 0; paramIndex < paramCount; ++paramIndex) {
                let paramType = readVarint(7) & 0x7f;
                opt.onTypeParam(
                  index,
                  paramIndex,
                  paramType
                );
              }
              let returnCount = readVaruint(1); // MVP
              for (let returnIndex: u32 = 0; returnIndex < returnCount; ++returnIndex) {
                let returnType = readVarint(7) & 0x7f;
                opt.onTypeReturn(
                  index,
                  returnIndex,
                  returnType
                );
              }
            }
            break;
          }
          case SectionId.Import: {
            let count = readVaruint(32);
            for (let index: u32 = 0; index < count; ++index) {
              let module_len = readVaruint(32);
              let module_off = off;
              off += module_len;
              let field_len = readVaruint(32);
              let field_off = off;
              off += field_len;
              let kind = readUint<u8>();
              opt.onImport(
                index,
                kind,
                module_off,
                module_len,
                field_off,
                field_len
              );
              switch (kind) {
                case ExternalKind.Function: {
                  let type = readVaruint(32);
                  opt.onFunctionImport(
                    fun_space_index++,
                    type
                  );
                  break;
                }
                case ExternalKind.Table: {
                  let type = readVarint(7) & 0x7f;
                  let flags = readVaruint(1);
                  let initial = readVaruint(32);
                  let maximum = flags & 1 ? readVaruint(32) : <u32>MAX_ELEMS;
                  opt.onTableImport(
                    tbl_space_index++,
                    type,
                    initial,
                    maximum,
                    flags
                  );
                  break;
                }
                case ExternalKind.Memory: {
                  let flags = readVaruint(1);
                  let initial = readVaruint(32);
                  let maximum = flags & 1 ? readVaruint(32) : <u32>MAX_PAGES;
                  opt.onMemoryImport(
                    mem_space_index++,
                    initial,
                    maximum,
                    flags
                  );
                  break;
                }
                case ExternalKind.Global: {
                  let type = readVarint(7) & 0x7f;
                  let mutability = readVaruint(1);
                  opt.onGlobalImport(
                    glo_space_index++,
                    type,
                    mutability
                  );
                  break;
                }
                default: unreachable();
              }
            }
            break;
          }
          case SectionId.Function: {
            let count = readVaruint(32);
            for (let i: u32 = 0; i < count; ++i) {
              let typeIndex = readVaruint(32);
              opt.onFunction(
                fun_space_index++,
                typeIndex
              );
            }
            break;
          }
          case SectionId.Table: {
            let count = readVaruint(32);
            for (let index: u32 = 0; index < count; ++index) {
              let type = readVaruint(7) & 0x7f;
              let flags = readVaruint(1);
              let initial = readVaruint(32);
              let maximum = flags & 1 ? readVaruint(32) : <u32>MAX_ELEMS;
              opt.onTable(
                tbl_space_index++,
                type,
                initial,
                maximum,
                flags
              );
            }
            break;
          }
          case SectionId.Memory: {
            let count = readVaruint(32);
            for (let index: u32 = 0; index < count; ++index) {
              let flags = readVaruint(1);
              let initial = readVaruint(32);
              let maximum = flags & 1 ? readVaruint(32) : <u32>MAX_PAGES;
              opt.onMemory(
                mem_space_index++,
                initial,
                maximum,
                flags
              );
            }
            break;
          }
          case SectionId.Global: {
            let count = readVaruint(32);
            for (let i: u32 = 0; i < count; ++i) {
              let type = readVarint(7) & 0x7f;
              let mutability = readVaruint(1);
              skipInitExpr();
              opt.onGlobal(
                glo_space_index++,
                type,
                mutability
              );
            }
            break;
          }
          case SectionId.Export: {
            let count = readVaruint(32);
            for (let index: u32 = 0; index < count; ++index) {
              let field_len = readVaruint(32);
              let field_off = off;
              off += field_len;
              let kind = readUint<u8>();
              let kind_index = readVaruint(32);
              opt.onExport(
                index,
                kind,
                kind_index,
                field_off,
                field_len
              );
            }
            break;
          }
          case SectionId.Start: {
            let index = readVaruint(32);
            opt.onStart(
              index
            );
            break;
          }
          case SectionId.Custom: {
            if (
              name_len == 4 &&
              load<u32>(name_off) == 0x656D616E // "name"
            ) {
              let name_type = readVaruint(7);
              let name_payload_len = readVaruint(32);
              let name_payload_off = off;
              switch (name_type) {
                case NameType.Module: {
                  let module_name_len = readVaruint(32);
                  let module_name_off = off;
                  opt.onModuleName(
                    module_name_off,
                    module_name_len
                  );
                  break;
                }
                case NameType.Function: {
                  let count = readVaruint(32);
                  for (let i: u32 = 0; i < count; ++i) {
                    let fn_index = readVaruint(32);
                    let fn_name_len = readVaruint(32);
                    let fn_name_off = off;
                    off += fn_name_len;
                    opt.onFunctionName(
                      fn_index,
                      fn_name_off,
                      fn_name_len
                    );
                  }
                  break;
                }
                case NameType.Local: {
                  let count = readVaruint(32);
                  for (let i: u32 = 0; i < count; ++i) {
                    let fn_index = readVaruint(32);
                    let lc_count = readVaruint(32);
                    for (let j: u32 = 0; j < lc_count; ++j) {
                      let lc_index = readVaruint(32);
                      let lc_name_len = readVaruint(32);
                      let lc_name_off = off;
                      off += lc_name_len;
                      opt.onLocalName(
                        fn_index,
                        lc_index,
                        lc_name_off,
                        lc_name_len
                      );
                    }
                  }
                  break;
                }
                default: unreachable();
              }
              off = name_payload_off + name_payload_len; // ignore errors
              break;
            } else if (
              name_len == 16 &&
              load<u64>(name_off    ) == 0x614D656372756F73 &&  // "sourceMa"
              load<u64>(name_off + 8) == 0x4C5255676E697070     // "ppingURL"
            ) {
              let url_len = readVaruint(32);
              let url_off = off;
              off += url_len;
              opt.onSourceMappingURL(
                url_off,
                url_len
              );
            }
            off = payload_off + payload_len; // ignore errors
            break;
          }
          case SectionId.Element:
          case SectionId.Code:
          case SectionId.Data: { // skip
            off += payload_len;
            break;
          }
          default: unreachable();
        }
      } else { // skip
        this.off += payload_len;
      }
    }
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
