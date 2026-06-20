// ToilDB catalog: emit the `toildb.catalog` custom WASM section.
//
// For every `@database` class, the compiler records each `@collection` field's
// family (from the handle type, `Documents`/`View`/...), key/value type names,
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
import { CommonFlags } from "./common";
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

/** One field of a `@data` value type, in declaration order. */
class FieldLayout {
  name: string = "";
  typeName: string = "";
  isArray: bool = false;
}

function fnvByte(h: u32, b: i32): u32 {
  return Math.imul(h ^ (b & 0xff), 0x01000193) >>> 0;
}

/** Length-prefixed (u32 LE) string fed into the running FNV-1a, so concatenation
 *  is unambiguous (matches `ScopeId::hash`/`layout_hash` framing in toildb). */
function fnvStr(h: u32, s: string): u32 {
  let n = s.length;
  h = fnvByte(h, n & 0xff);
  h = fnvByte(h, (n >>> 8) & 0xff);
  h = fnvByte(h, (n >>> 16) & 0xff);
  h = fnvByte(h, (n >>> 24) & 0xff);
  for (let i = 0; i < n; ++i) h = fnvByte(h, s.charCodeAt(i));
  return h >>> 0;
}

/**
 * `schema_version`: a hash over the ORDERED field layout (name, type, is_array),
 * NOT the value-type name. Adding, removing, retyping, or REORDERING a field
 * changes it - so the runtime can tell a compatible (append-only) change from a
 * breaking one, instead of silently misreading old rows. (Flat, like toildb's
 * `SchemaDescriptor::layout_hash`: a change to a NESTED `@data` type's own fields
 * does not bump the parent - that lands with recursive layouts later.)
 */
function layoutHash(fields: FieldLayout[]): u32 {
  let h: u32 = 0x811c9dc5;
  for (let i = 0, k = fields.length; i < k; ++i) {
    h = fnvStr(h, fields[i].name);
    h = fnvStr(h, fields[i].typeName);
    h = fnvByte(h, fields[i].isArray ? 1 : 0);
  }
  return h >>> 0;
}

/** Extract the encoded field layout of a `@data` class, in declaration order,
 *  mirroring `injectDataCodec` (skip static; `Array<T>` -> element + array flag;
 *  else scalar/string/`Uint8Array`/nested-`@data` by its type name). */
function dataFields(cls: ClassDeclaration): FieldLayout[] {
  let out = new Array<FieldLayout>();
  let members = cls.members;
  for (let i = 0, k = members.length; i < k; ++i) {
    let member = members[i];
    if (member.kind != NodeKind.FieldDeclaration) continue;
    let field = <FieldDeclaration>member;
    if (field.is(CommonFlags.Static)) continue;
    let typeNode = field.type;
    if (typeNode == null || !(typeNode instanceof NamedTypeNode)) continue;
    let named = <NamedTypeNode>typeNode;
    let typeName = named.name.identifier.text;
    let fl = new FieldLayout();
    fl.name = field.name.text;
    let typeArgs = named.typeArguments;
    if (typeName == "Array" && typeArgs != null && typeArgs.length == 1 && typeArgs[0] instanceof NamedTypeNode) {
      fl.typeName = (<NamedTypeNode>typeArgs[0]).name.identifier.text;
      fl.isArray = true;
    } else {
      fl.typeName = typeName;
    }
    out.push(fl);
  }
  return out;
}

/** Map a handle class name to its collection-family wire byte, or -1. */
function familyByte(handleName: string): i32 {
  switch (handleName) {
    case "Documents": return 0;
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
  // First pass: the field layout of every `@data` value type, keyed by name, so
  // a collection's `schema_version` can be a hash of its value's layout.
  let layouts = new Map<string, FieldLayout[]>();
  for (let i = 0, k = sources.length; i < k; ++i) {
    let source = sources[i];
    if (source.isLibrary) continue;
    let statements = source.statements;
    for (let j = 0, l = statements.length; j < l; ++j) {
      let statement = statements[j];
      if (statement.kind != NodeKind.ClassDeclaration) continue;
      let cls = <ClassDeclaration>statement;
      if (!hasDeco(cls.decorators, DecoratorKind.Data)) continue;
      layouts.set(cls.name.text, dataFields(cls));
    }
  }
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
        if (family == 3 || family == 6) {
          // Counter<K> / Capacity<K>: a single key type; the value is host-owned
          // (an i64 rollup / the escrow ledger).
          entry.keyType = namedArg(named, 0);
          entry.valueType = "i64";
        } else {
          // Documents/View/Events/Unique/Membership<K,V>: key=arg0, value=arg1.
          entry.keyType = namedArg(named, 0);
          entry.valueType = namedArg(named, 1);
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
      // schema_version = hash of the value type's field LAYOUT (so a shape change
      // is detectable), falling back to the value-name hash for a host-owned or
      // scalar value type (Counter/Capacity `i64`, a non-`@data` value) that has
      // no field layout to hash.
      let schemaVersion = layouts.has(coll.valueType)
        ? layoutHash(<FieldLayout[]>layouts.get(coll.valueType))
        : id;
      w.u32(id);            // value_data_id (the value type's message-boundary id)
      w.u32(schemaVersion); // schema_version (field-layout hash)
      w.u32(0);  // collection_generation
      w.u8(0);   // replication = edgeCache
      w.u8(0);   // placement = hashKey
      w.u16(0);  // n_fields (M1: omitted)
    }
  }
  return w.toBytes();
}
