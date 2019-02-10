import {
  Type,
  SectionId,
  ExternalKind,
  NameType,
  MAX_PAGES,
  MAX_ELEMS,
  Opcode
} from "../../src/common";

import {Buffer} from "../buffer";
import {Section} from ".";
import {log} from '../host';

function getExternalKindName(kind: ExternalKind): string{
  switch(kind){
    case ExternalKind.Function: return "Function"
    case ExternalKind.Table: return "Table"
    case ExternalKind.Memory: return "Memory"
    case ExternalKind.Global: return "Global"
    default:
      unreachable();
      return "";
  }

}

class Import {
  constructor(public _module: string, public name: string,
  public kind: ExternalKind){}

  toString(): string {
    return this._module + "." + this.name +" - " +  getExternalKindName(this.kind);
  }
}

class FunctionImport extends Import {
  parse(buf: Buffer): FunctionImport{
    return this;
  }
}


export class Imports extends Section {
  imports: Import[];


  parse(buf:Buffer): Imports {
    buf.off = this.header.payload_off;
    let count = buf.readVaruint(32);
    this.imports = new Array<Import>(count);
    for (let index: u32 = 0; index < count; ++index) {
      let module_len = buf.readVaruint(32);
      let module_off = buf.off;
      let moduleName = String.fromUTF8(module_off, module_len);
      buf.off += module_len;
      let field_len = buf.readVaruint(32);
      let field_off = buf.off;
      let fieldName = String.fromUTF8(field_off, field_len);
      buf.off += field_len;
      let kind = buf.readUint<u8>();
      this.imports[index] = new Import(moduleName, fieldName, kind);

      // opt.onImport(
      //   index,
      //   kind,
      //   module_off,
      //   module_len,
      //   field_off,
      //   field_len
      // );
      switch (kind) {
        case ExternalKind.Function: {
          let type = buf.readVaruint(32);
          // opt.onFunctionImport(
          //   fun_space_index++,
          //   type
          // );
          break;
        }
        case ExternalKind.Table: {
          let type = buf.readVarint(7) & 0x7f;
          let flags = buf.readVaruint(1);
          let initial = buf.readVaruint(32);
          let maximum = flags & 1 ? buf.readVaruint(32) : <u32>MAX_ELEMS;
          // opt.onTableImport(
          //   tbl_space_index++,
          //   type,
          //   initial,
          //   maximum,
          //   flags
          // );
          break;
        }
        case ExternalKind.Memory: {
          let flags = buf.readVaruint(1);
          let initial = buf.readVaruint(32);
          let maximum = flags & 1 ? buf.readVaruint(32) : <u32>MAX_PAGES;
          // opt.onMemoryImport(
          //   mem_space_index++,
          //   initial,
          //   maximum,
          //   flags
          // );
          break;
        }
        case ExternalKind.Global: {
          let type = buf.readVarint(7) & 0x7f;
          let mutability = buf.readVaruint(1);
          // opt.onGlobalImport(
          //   glo_space_index++,
          //   type,
          //   mutability
          // );
          break;
        }
        default: unreachable();
      }
    }
    return this;
  }

}
