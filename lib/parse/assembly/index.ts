/** A WebAssembly module that parses WebAssembly modules. */

// Common constants shared between AssemblyScript and TypeScript
import {
  Type,
  SectionId,
  ExternalKind,
  MAX_PAGES,
  MAX_TABLES,
  Opcode
} from "../src/common";

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

// Imported callbacks
declare function onSection(id: u32, offset: u32, length: u32, nameOffset: u32, nameLength: u32): bool;
declare function onType(index: u32, form: u32): void;
declare function onTypeParam(index: u32, paramIndex: u32, paramType: u32): void;
declare function onTypeReturn(index: u32, returnIndex: u32, returnType: u32): void;
declare function onImport(index: u32, kind: u32, moduleOff: u32, moduleLen: u32, fieldOff: u32, fieldLen: u32): void;
declare function onFunctionImport(index: u32, type: u32): void;
declare function onTableImport(index: u32, type: u32, initial: u32, maximum: u32, flags: u32): void;
declare function onMemoryImport(index: u32, initial: u32, maximum: u32, flags: u32): void;
declare function onGlobalImport(index: u32, type: u32, mutability: u32): void;
declare function onMemory(index: u32, initial: u32, maximum: u32, flags: u32): void;
declare function onFunction(index: u32, typeIndex: u32): void;
declare function onGlobal(index: u32, type: u32, mutability: u32): void;
declare function onExport(index: u32, kind: u32, kindIndex: u32, nameOffset: u32, nameLength: u32): void;
declare function onStart(index: u32): void;

/** Starts parsing the module that has been placed in memory. */
function parse(): void {
  var magic = readUint<u32>();
  if (magic != 0x6D736100) unreachable();
  var version = readUint<u32>();
  if (version != 1) unreachable();
  var end: usize = current_memory() << 16;
  while (off < end) {
    let section_off = off;
    let id = readVaruint(7);
    let payload_len = readVaruint(32);
    let name_off = 0;
    let name_len = 0;
    if (!id) {
      name_len = readVaruint(32);
      if (!name_len) {
        off = section_off;
        break;
      }
      name_off = off;
      off += name_len;
    } else if (id > <u32>SectionId.Data) unreachable();
    let payload_off = off;
    if (onSection(
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
            onType(index, form);
            let paramCount = readVaruint(32);
            for (let paramIndex: u32 = 0; paramIndex < paramCount; ++paramIndex) {
              let paramType = readVarint(7) & 0x7f;
              onTypeParam(index, paramIndex, paramType);
            }
            let returnCount = readVaruint(1); // MVP
            for (let returnIndex: u32 = 0; returnIndex < returnCount; ++returnIndex) {
              let returnType = readVarint(7) & 0x7f;
              onTypeReturn(index, returnIndex, returnType);
            }
          }
          break;
        }
        case SectionId.Import: {
          let count = readVaruint(32);
          for (let index: u32 = 0; index < count; ++index) {
            let module_len = readVaruint(32);
            let module_off = off;
            off += module_off;
            let field_len = readVaruint(32);
            let field_off = off;
            off += field_off;
            let kind = readUint<u8>();
            onImport(
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
                onFunctionImport(index, type);
                break;
              }
              case ExternalKind.Table: {
                let type = readVarint(7) & 0x7f;
                let flags = readVaruint(1);
                let initial = readVaruint(32);
                let maximum: u32 = flags & 1 ? readVaruint(32) : MAX_TABLES;
                onTableImport(index, type, initial, maximum, flags);
                break;
              }
              case ExternalKind.Memory: {
                let flags = readVaruint(1);
                let initial = readVaruint(32);
                let maximum: u32 = flags & 1 ? readVaruint(32) : MAX_PAGES;
                onMemoryImport(index, initial, maximum, flags);
                break;
              }
              case ExternalKind.Global: {
                let type = readVarint(7) & 0x7f;
                let mutability = readVaruint(1);
                onGlobalImport(index, type, mutability);
                break;
              }
              default: unreachable();
            }
          }
          break;
        }
        case SectionId.Function: {
          let count = readVaruint(32);
          for (let index: u32 = 0; index < count; ++index) {
            let typeIndex = readVaruint(32);
            onFunction(index, typeIndex);
          }
          break;
        }
        case SectionId.Memory: {
          let count = readVaruint(32);
          for (let index: u32 = 0; index < count; ++index) {
            let flags = readVaruint(1);
            let initial = readVaruint(32);
            let maximum: u32 = flags ? readVaruint(32) : MAX_PAGES;
            onMemory(index, initial, maximum, flags);
          }
          break;
        }
        case SectionId.Global: {
          let count = readVaruint(32);
          for (let index: u32 = 0; index < count; ++index) {
            let type = readVarint(7) & 0x7f;
            let mutability = readVaruint(1);
            let op = readUint<u8>();
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
              default: unreachable();
            }
            op = readUint<u8>();
            if (op != Opcode.end) unreachable();
            onGlobal(index, type, mutability);
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
            onExport(
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
          onStart(
            index
          );
          break;
        }
        case SectionId.Custom:
        case SectionId.Code: { // TODO
          off += payload_len;
          break;
        }
        default: unreachable();
      }
    } else { // skip
      off += payload_len;
    }
  }
}

// Start parsing immediately
parse();
