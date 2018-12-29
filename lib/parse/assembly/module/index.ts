import {
  Type,
  SectionId,
  ExternalKind,
  NameType,
  MAX_PAGES,
  MAX_ELEMS,
  Opcode
} from "../../src/common";

import {Buffer} from '../buffer';

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
    this.ref = buf.off;
    this.id = buf.readVaruint(7);
    this.payload_len = buf.readVaruint(32);
    if (this.id == 0){
      let before = buf.off;
      let name_len = buf.readVaruint(32);
      let name_off = buf.off;

      this.name = "'" + String.fromUTF8(name_off, name_len) + "'";
      buf.off += name_len;
      this.payload_len -= buf.off - before;
    } else if (this.id <= <u32> SectionId.Data){
      this.name = sectionName(this.id);
    } else {
      unreachable();
    }
    this.payload_off = buf.off;
  }

  static create(buf: Buffer): Section {
    let off = buf.off;
    let id = buf.peekVaruint(7);
    assert (off == buf.off);
    switch (id){
      case SectionId.Type:
        return new TypeSection(buf);
      default:
    }
    return new Section(buf);
  }

}

class FuncType {
  constructor(public index: u32, public form: i32,  public parameters: i32[],  public returnVals: i32[]){}
}

class TypeSection extends Section {
  funcs: FuncType[];

  constructor(buf: Buffer){
    super(buf);
    this.parse(buf);
  }

  get end(): u32{
    return this.payload_off + this.payload_len;
  }

  parse(buf:Buffer): Section {
    buf.off = this.payload_off;
    let count = buf.readVaruint(32);
    for (let index: u32 = 0; index < count; ++index) {
      let form = buf.readVarint(7) & 0x7f;
      // opt.onType(
      //   index,
      //   form
      // );
      let paramCount = buf.readVaruint(32);
      let parameters: i32[] = [];
      for (let paramIndex: u32 = 0; paramIndex < paramCount; ++paramIndex) {
        let paramType = buf.readVarint(7) & 0x7f;
        // opt.onTypeParam(
        //   index,
        //   paramIndex,
        //   paramType
        // );
        parameters.push(paramType)
      }
      let returnCount = buf.readVaruint(1); // MVP
      let returnVals: i32[] = [];
      for (let returnIndex: u32 = 0; returnIndex < returnCount; ++returnIndex) {
        let returnType = buf.readVarint(7) & 0x7f;
        // opt.onTypeReturn(
        //   index,
        //   returnIndex,
        //   returnType
        // );
        returnVals.push(returnType);
      }
      this.funcs.push(new FuncType(index, form, parameters, returnVals));
    }
    buf.off = this.end;
    return this;
  }

}

/*
case SectionId.Import: {
  let count = buf.readVaruint(32);
  for (let index: u32 = 0; index < count; ++index) {
    let module_len = buf.readVaruint(32);
    let module_off = off;
    off += module_len;
    let field_len = buf.readVaruint(32);
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
        let type = buf.readVaruint(32);
        opt.onFunctionImport(
          fun_space_index++,
          type
        );
        break;
      }
      case ExternalKind.Table: {
        let type = buf.readVarint(7) & 0x7f;
        let flags = buf.readVaruint(1);
        let initial = buf.readVaruint(32);
        let maximum = flags & 1 ? buf.readVaruint(32) : <u32>MAX_ELEMS;
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
        let flags = buf.readVaruint(1);
        let initial = buf.readVaruint(32);
        let maximum = flags & 1 ? buf.readVaruint(32) : <u32>MAX_PAGES;
        opt.onMemoryImport(
          mem_space_index++,
          initial,
          maximum,
          flags
        );
        break;
      }
      case ExternalKind.Global: {
        let type = buf.readVarint(7) & 0x7f;
        let mutability = buf.readVaruint(1);
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
  let count = buf.readVaruint(32);
  for (let i: u32 = 0; i < count; ++i) {
    let typeIndex = buf.readVaruint(32);
    opt.onFunction(
      fun_space_index++,
      typeIndex
    );
  }
  break;
}
case SectionId.Table: {
  let count = buf.readVaruint(32);
  for (let index: u32 = 0; index < count; ++index) {
    let type = buf.readVaruint(7) & 0x7f;
    let flags = buf.readVaruint(1);
    let initial = buf.readVaruint(32);
    let maximum = flags & 1 ? buf.readVaruint(32) : <u32>MAX_ELEMS;
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
  let count = buf.readVaruint(32);
  for (let index: u32 = 0; index < count; ++index) {
    let flags = buf.readVaruint(1);
    let initial = buf.readVaruint(32);
    let maximum = flags & 1 ? buf.readVaruint(32) : <u32>MAX_PAGES;
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
  let count = buf.readVaruint(32);
  for (let i: u32 = 0; i < count; ++i) {
    let type = buf.readVarint(7) & 0x7f;
    let mutability = buf.readVaruint(1);
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
  let count = buf.readVaruint(32);
  for (let index: u32 = 0; index < count; ++index) {
    let field_len = buf.readVaruint(32);
    let field_off = off;
    off += field_len;
    let kind = readUint<u8>();
    let kind_index = buf.readVaruint(32);
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
  let index = buf.readVaruint(32);
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
    let name_type = buf.readVaruint(7);
    let name_payload_len = buf.readVaruint(32);
    let name_payload_off = off;
    switch (name_type) {
      case NameType.Module: {
        let module_name_len = buf.readVaruint(32);
        let module_name_off = off;
        opt.onModuleName(
          module_name_off,
          module_name_len
        );
        break;
      }
      case NameType.Function: {
        let count = buf.readVaruint(32);
        for (let i: u32 = 0; i < count; ++i) {
          let fn_index = buf.readVaruint(32);
          let fn_name_len = buf.readVaruint(32);
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
        let count = buf.readVaruint(32);
        for (let i: u32 = 0; i < count; ++i) {
          let fn_index = buf.readVaruint(32);
          let lc_count = buf.readVaruint(32);
          for (let j: u32 = 0; j < lc_count; ++j) {
            let lc_index = buf.readVaruint(32);
            let lc_name_len = buf.readVaruint(32);
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
    let url_len = buf.readVaruint(32);
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
*/
