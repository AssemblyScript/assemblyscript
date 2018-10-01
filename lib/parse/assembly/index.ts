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

import * as opt from "./options";

/** Current offset in memory. */
var off: usize = 0;

/** Reads an unsigned integer from memory. */
function readUint<T>(): u32 {
  var pos = off;
  var val = <u32>load<T>(pos);
  off = pos + sizeof<T>();
  return val;
}

/** Reads an unsigned 64-bit integer from memory. */
function readUint64(): u64 {
  var pos = off;
  var val = load<u64>(pos);
  off = pos + 8;
  return val;
}

/** Reads a LEB128-encoded unsigned integer from memory. */
function readVaruint(size: u32): u32 {
  var val: u32 = 0;
  var shl: u32 = 0;
  var byt: u32;
  var pos = off;
  do {
    byt = load<u8>(pos++);
    val |= (byt & 0x7F) << shl;
    if (!(byt & 0x80)) break;
    shl += 7;
  } while (true);
  off = pos;
  return val;
}

/** Reads a LEB128-encoded signed integer from memory. */
function readVarint(size: u32): i32 {
  var val: u32 = 0;
  var shl: u32 = 0;
  var byt: u32;
  var pos = off;
  do {
    byt = load<u8>(pos++);
    val |= (byt & 0x7F) << shl;
    shl += 7;
  } while (byt & 0x80);
  off = pos;
  return select<u32>(val | (~0 << shl), val, shl < size && (byt & 0x40) != 0);
}

/** Reads a LEB128-encoded signed 64-bit integer from memory. */
function readVarint64(): i64 {
  var val: u64 = 0;
  var shl: u64 = 0;
  var byt: u64;
  var pos = off;
  do {
    byt = load<u8>(pos++);
    val |= (byt & 0x7F) << shl;
    shl += 7;
  } while (byt & 0x80);
  off = pos;
  return select<u64>(val | (~0 << shl), val, shl < 64 && (byt & 0x40) != 0);
}

function skipInitExpr(): void {
  var op = readUint<u8>();
  switch (op) {
    case Opcode.i32_const: {
      readVarint(32);
      break;
    }
    case Opcode.i64_const: {
      readVarint64();
      break;
    }
    case Opcode.f32_const: {
      readUint<u32>();
      break;
    }
    case Opcode.f64_const: {
      readUint64();
      break;
    }
    case Opcode.get_global: {
      readVaruint(32);
      break;
    }
    default: unreachable(); // MVP
  }
  if (readUint<u8>() != Opcode.end) unreachable();
}

/** Starts parsing the module that has been placed in memory. */
export function parse(begin: usize, end: usize): void {
  off = begin;
  var magic = readUint<u32>();
  if (magic != 0x6D736100) unreachable();
  var version = readUint<u32>();
  if (version != 1) unreachable();
  var fun_space_index: u32 = 0;
  var glo_space_index: u32 = 0;
  var mem_space_index: u32 = 0;
  var tbl_space_index: u32 = 0;
  while (off < end) {
    let section_off = off;
    let id = readVaruint(7);
    let payload_len = readVaruint(32);
    let name_off = 0;
    let name_len = 0;
    if (!id) {
      let before = off;
      name_len = readVaruint(32);
      name_off = off;
      off += name_len;
      payload_len -= off - before;
    } else if (id > <u32>SectionId.Data) unreachable();
    let payload_off = off;
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
      off += payload_len;
    }
  }
  if (off != end) unreachable();
}
