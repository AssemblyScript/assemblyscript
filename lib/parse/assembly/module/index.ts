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

import {log, err} from "../host";

import {itoa} from 'internal/number';
import { Imports } from "./imports";

type byte = u8;


export class Module {
  headers: SectionHeader[];
  buf: Buffer;
  // Custom: TypeSection[];

  constructor(buf: Buffer){
    this.buf = buf;
    this.headers = [];
  }


  get Type(): SectionHeader[]{
    return this.getID(SectionId.Type);
  }

  get hasStart(): boolean {
    return this.start.length > 0;
  }

  get start(): SectionHeader[] {
    return this.getID(SectionId.Start)
  }

  parseSection(header: SectionHeader): void {
    this.headers.push(header);
    switch (header.id){
      case SectionId.Type:
        // this._Type.push(header);
        break;
      default:
    }
    // log_str(header.name);
  }

  public getID(id: SectionId): SectionHeader[] {
<<<<<<< loader-memory-accessors
    let res: SectionHeader[] = new Array<SectionHeader>();
    while(res.length > 0){
      res.pop();
    }
    let x: i32 = this.headers.length;
    // log("length of array should be zero");
    // log(res.length)
=======
    let res: SectionHeader[] = [];
    while(res.length > 0){
      res.pop();
    }
    let x: i32 = this.Headers.length;
>>>>>>> Working on sections.
    for (let i=0; i < x; i++){
      if (this.headers[i].id == id){
        res.push(this.headers[i]);
      }
    }
    return res;
  }

  getType(): TypeSection {
    let Types = this.Type;
    let section = new TypeSection(Types[0]);
    return section.parse(this.buf);
  }

  getImports(): Imports[] {
    let ImportHeaders = this.getID(SectionId.Import);
    let imports: Imports[] = [];
<<<<<<< loader-memory-accessors
    for (let i = 0; i < ImportHeaders.length; i++){
      // log(ImportHeaders[i].name)
      let _import = new Imports(ImportHeaders[i]);
      imports.push(_import.parse(this.buf));
      // log(_import.imports.length);
=======
    log(imports.length);
    for (let i = 0; i < ImportHeaders.length; i++){
      log(ImportHeaders[i].name)
      let _import = new Imports(ImportHeaders[i]);
      imports.push(_import.parse(this.buf));
      log(_import.imports.length);
>>>>>>> Working on sections.
    }
    return imports;
  }

}

function typeName(t: Type): string{
  switch (t){
    case 0x7f:
      return 'i32';
    case 0x7e:
      return 'i64';
    case 0x7d:
      return 'f32';
    case 0x7c:
      return 'f64';
    case 0x70:
      return 'anyfunc';
    case 0x60:
      return 'func';
    case 0x40:
      return 'none';
    default:
      err("Incorrect Type");
  }
  return ""
}

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

export class SectionHeader {
  public ref: u32;
  public id: u32;
  public payload_len: u32;
  public payload_off: u32;
  public offset: u32;

  public name: string = "";

  constructor (buf: Buffer){
    this.ref = buf.off;
    this.offset = this.ref - buf.start;
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
      log(this.ref);
      err("no such ID: " + itoa<u32>(this.id));
    }
    this.payload_off = buf.off;
  }

  get end(): u32{
    return this.payload_off + this.payload_len;
  }


  toString(): string {
    let ref = itoa<u32>(this.ref);
    let id = itoa<u32>(this.id);
    let payloadLen = itoa<u32>(this.payload_len);
    let payloadOff = itoa<u32>(this.payload_off);
    let name = this.name;
    let end = itoa<u32>(this.end);
    return "ref: "+ ref + "\n" +
           "id: " + id  + "\n" +
           "payload off: " + payloadOff + "\n" +
           "payload length: " + payloadLen + "\n" +
           "end: " + end + "\n" +
           "name: " + name;
  }

}

export class Section {
  constructor(public header: SectionHeader){}
}
//     static create(buf: Buffer): Section {
//       // log<string>("Creating Section", true);
//       let header = new SectionHeader(buf);
//       let off = buf.off;
//       let id = buf.peekVaruint(7);
//       assert (off == buf.off);
//       switch (id){
//         case SectionId.Type:
//           let s = new TypeSection(header);
//           return (s.parse(buf));
//         default:
//       }
//       let s = (new BaseSection(header))
//       return s.parse(buf);
//     }
// }
//
//
// export class BaseSection extends Section {
//
//   // constructor(public header: SectionHeader){}
//
//   parse(buf: Buffer): BaseSection {
//     log<string>("SubClass", true);
//     return this;
//   }
// }


class FuncType {
  public parameters: i32[];
  public returnVals: i32[];
  constructor(public index: u32, public form: i8){
  }



  toString(): string {
    let index = itoa<u32>(this.index);
    let form = typeName(this.form);
    let parameters:string = "";
    for (let i = 0; i< this.parameters.length; i++){
      parameters += typeName(this.parameters[i]);
      parameters = i < this.parameters.length -1 ? parameters += ", ": parameters;
    }
    let returnVal = this.returnVals.length == 1 ? typeName(this.returnVals[0]) : "void";
    return "index: " + index + ", " + "form: " + form + ", (" + parameters + ") => " + returnVal;
  }
}



export class TypeSection extends Section {
  // header: SectionHeader
  funcs: FuncType[];

  // constructor(public header: SectionHeader){}
  parse(buf: Buffer): TypeSection {
    buf.off = this.header.payload_off;
    let count = buf.readVaruint(32);
    let func: FuncType[] = new Array<FuncType>(count);
    for (let index: u32 = 0; index < count; ++index) {
      let form = buf.readVarint8(7) & 0x7f;
      let fun = new FuncType(index, form);
      func[index] = fun;
      let paramCount = buf.readVaruint(32);
      fun.parameters = new Array<i32>(paramCount);
      for (let paramIndex: u32 = 0; paramIndex < paramCount; ++paramIndex) {
        let paramType = buf.readVarint8(7) & 0x7f;
        func[index].parameters[paramIndex]=paramType;
      }

      let returnCount = buf.readVaruint(1); // MVP
      func[index].returnVals = new Array<i32>(returnCount);
      for (let returnIndex: u32 = 0; returnIndex < returnCount; ++returnIndex) {
        let returnType = buf.readVarint8(7) & 0x7f;
        func[index].returnVals[returnIndex] = returnType;
      }
      log(func[index].toString());
    }
    return this;
  }

  toString(): string {
    let strs: string[] = [];
    for (let i=0; i< this.funcs.length; i++){
      strs.push(this.funcs[i].toString());
    }
    return strs.join('\n');
  }

}

class FunctionSection extends Section {
  typeIndexes: u32[];

  parse(buf: Buffer): FunctionSection {
    buf.off = this.header.payload_off;
    let count = buf.readVaruint(32);
    this.typeIndexes = new Array<u32>(count);
    for (let i: u32 = 0; i < count; ++i) {
      let typeIndex = buf.readVaruint(32);
      this.typeIndexes[i] = typeIndex;
    }
    return this;
  }
}

class Table {
  constructor(public type: u32, public flags: u8, public initial: u32, public maximum: u32){}
}


class TableSection extends Section {
  tables: Table[];
  parse(buf: Buffer): TableSection {
    let count = buf.readVaruint(32);
    this.tables = new Array<Table>(count);
    for (let index: u32 = 0; index < count; ++index) {
      let type = buf.readVaruint(7) & 0x7f;
      let flags = buf.readVaruint(1);
      let initial = buf.readVaruint(32);
      let maximum = flags & 1 ? buf.readVaruint(32) : <u32>MAX_ELEMS;
      this.tables[index] = new Table(type, flags, initial, maximum);
    }
    return this;
  }
}



class Memory{
  constructor(public flags: u8, public initial: u32, public maximum: u32){}

  get shared(): boolean {
    return this.flags > 1;
  }
}

<<<<<<< loader-memory-accessors
class MemorySection extends Section {
  memory: Memory[];

=======
class MemorySection {
  memory: Memory[];
  
>>>>>>> Working on sections.
  parse(buf: Buffer): MemorySection {
    let count = buf.readVaruint(32);
    this.memory = new Array<Memory>(count);
    for (let index: u32 = 0; index < count; ++index) {
      let flags = buf.readVaruint(1);
      if (flags > 3) {
        unreachable();
      }
      let initial = buf.readVaruint(32);
      let maximum = flags & 1 ? buf.readVaruint(32) : <u32>MAX_PAGES;
      this.memory[index] = new Memory(flags, initial, maximum);
    }
    return this
  }
}
<<<<<<< loader-memory-accessors

class Data extends Section {

}
=======
>>>>>>> Working on sections.
/*
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
