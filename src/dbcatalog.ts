// ToilDB catalog: emit the `toildb.catalog` custom WASM section.
//
// For every `@database` class, the compiler records each `@collection` field's
// family (from the handle type, `Record`/`View`/...), key/value type names,
// value data id (FNV-1a of the value class), schema version, generation, and
// replication/placement policy. The host (`toildb::decode_catalog_section`)
// decodes this once at module load to build the per-tenant collection catalog
// with the CORRECT family + schema, instead of lazily defaulting to `record`.
//
// Wire format (little-endian; see toildb/ABI.md):
//   u16 version(=1), u16 n_databases
//     per db: u32 name_len,name, u16 n_collections
//       per coll: u32 name_len,name, u8 family,
//                 u32 key_len,key, u32 value_len,value,
//                 u32 value_data_id, u32 schema_version, u32 generation,
//                 u8 replication, u8 placement, u16 n_fields

import { Program } from "./program";
import {
  ClassDeclaration,
  DecoratorKind,
  DecoratorNode,
  FieldDeclaration,
  NamedTypeNode,
  NodeKind
} from "./ast";

/** FNV-1a 32-bit hash, matching `dataTypeId` in the parser. */
function fnv1a(name: string): u32 {
  let hash = 0x811c9dc5;
  for (let i = 0, k = name.length; i < k; ++i) {
    hash = Math.imul(hash ^ name.charCodeAt(i), 0x01000193) >>> 0;
  }
  return hash >>> 0;
}

/** Map a handle class name to its collection-family wire byte, or -1. */
function familyByte(handleName: string): i32 {
  switch (handleName) {
    case "Record": return 0;
    case "View": return 1;
    case "Events": return 2;
    case "Counter": return 3;
    case "Membership": return 4;
    case "Unique": return 5;
    case "Capacity": return 6;
    default: return -1;
  }
}

function hasDeco(decorators: DecoratorNode[] | null, kind: DecoratorKind): bool {
  if (decorators == null) return false;
  for (let i = 0, k = decorators.length; i < k; ++i) {
    if (decorators[i].decoratorKind == kind) return true;
  }
  return false;
}

class CollEntry {
  name: string = "";
  family: i32 = 0;
  keyType: string = "";
  valueType: string = "";
}

class DbEntry {
  name: string = "";
  collections: CollEntry[] = new Array<CollEntry>();
}

/** Little-endian byte writer for the section payload. */
class CatWriter {
  bytes: Array<u8> = new Array<u8>();
  u8(v: i32): void { this.bytes.push(<u8>(v & 0xff)); }
  u16(v: i32): void { this.u8(v & 0xff); this.u8((v >>> 8) & 0xff); }
  u32(v: u32): void {
    this.u8(<i32>(v & 0xff)); this.u8(<i32>((v >>> 8) & 0xff));
    this.u8(<i32>((v >>> 16) & 0xff)); this.u8(<i32>((v >>> 24) & 0xff));
  }
  str(s: string): void {
    this.u32(<u32>s.length);
    for (let i = 0, k = s.length; i < k; ++i) this.u8(s.charCodeAt(i) & 0xff);
  }
  toBytes(): Uint8Array {
    let n = this.bytes.length;
    let out = new Uint8Array(n);
    for (let i = 0; i < n; ++i) out[i] = this.bytes[i];
    return out;
  }
}

function namedArg(named: NamedTypeNode, index: i32): string {
  let typeArgs = named.typeArguments;
  if (typeArgs != null && typeArgs.length > index) {
    let ta = typeArgs[index];
    if (ta instanceof NamedTypeNode) return (<NamedTypeNode>ta).name.identifier.text;
  }
  return "";
}

/**
 * Build the `toildb.catalog` section bytes, or `null` if the program declares
 * no `@database`.
 */
export function buildToilDbCatalog(program: Program): Uint8Array | null {
  let databases = new Array<DbEntry>();
  let sources = program.sources;
  for (let i = 0, k = sources.length; i < k; ++i) {
    let source = sources[i];
    if (source.isLibrary) continue;
    let statements = source.statements;
    for (let j = 0, l = statements.length; j < l; ++j) {
      let statement = statements[j];
      if (statement.kind != NodeKind.ClassDeclaration) continue;
      let cls = <ClassDeclaration>statement;
      if (!hasDeco(cls.decorators, DecoratorKind.Database)) continue;

      let db = new DbEntry();
      db.name = cls.name.text;
      let members = cls.members;
      for (let m = 0, mk = members.length; m < mk; ++m) {
        let member = members[m];
        if (member.kind != NodeKind.FieldDeclaration) continue;
        let field = <FieldDeclaration>member;
        if (!hasDeco(field.decorators, DecoratorKind.Collection)) continue;
        let typeNode = field.type;
        if (typeNode == null || !(typeNode instanceof NamedTypeNode)) continue;
        let named = <NamedTypeNode>typeNode;
        let family = familyByte(named.name.identifier.text);
        if (family < 0) continue;
        let entry = new CollEntry();
        entry.name = field.name.text;
        entry.family = family;
        if (family == 3) {
          // Counter<K>: a single key type; the value is a fixed i64 rollup.
          entry.keyType = namedArg(named, 0);
          entry.valueType = "i64";
        } else {
          // Record/View/Events/Unique<V,K>: value=arg0, key=arg1.
          entry.valueType = namedArg(named, 0);
          entry.keyType = namedArg(named, 1);
        }
        db.collections.push(entry);
      }
      if (db.collections.length > 0) databases.push(db);
    }
  }
  if (databases.length == 0) return null;

  let w = new CatWriter();
  w.u16(1); // version
  w.u16(databases.length);
  for (let d = 0, dn = databases.length; d < dn; ++d) {
    let db = databases[d];
    w.str(db.name);
    w.u16(db.collections.length);
    for (let c = 0, cn = db.collections.length; c < cn; ++c) {
      let coll = db.collections[c];
      w.str(coll.name);
      w.u8(coll.family);
      w.str(coll.keyType);
      w.str(coll.valueType);
      let id = fnv1a(coll.valueType);
      w.u32(id); // value_data_id
      w.u32(id); // schema_version (M1: value-name hash; field-layout hash is M7)
      w.u32(0);  // collection_generation
      w.u8(0);   // replication = edgeCache
      w.u8(0);   // placement = hashKey
      w.u16(0);  // n_fields (M1: omitted)
    }
  }
  return w.toBytes();
}
