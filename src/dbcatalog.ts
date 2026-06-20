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
//                 u8 replication, u8 placement,
//                 u16 n_fields, per field: u32 name_len,name u32 type_len,type u8 is_array,
//                 u16 n_migrations, per migration: u32 old_schema_version

import { Program } from "./program";
import { Source } from "./ast";
import { CommonFlags } from "./common";
import {
  ClassDeclaration,
  DecoratorKind,
  DecoratorNode,
  FieldDeclaration,
  FunctionDeclaration,
  NamedTypeNode,
  NodeKind,
  TypeNode
} from "./ast";

/** FNV-1a 32-bit hash, matching `dataTypeId` in the parser. */
export function fnv1a(name: string): u32 {
  let hash = 0x811c9dc5;
  for (let i = 0, k = name.length; i < k; ++i) {
    hash = Math.imul(hash ^ name.charCodeAt(i), 0x01000193) >>> 0;
  }
  return hash >>> 0;
}

/** One field of a `@data` value type, in declaration order. */
export class FieldLayout {
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
export function layoutHash(fields: FieldLayout[]): u32 {
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
export function dataFields(cls: ClassDeclaration): FieldLayout[] {
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

/** A `@migrate` free function `fn(old: OldType): NewType`. `oldVersion` is the
 *  layout hash of `OldType` - i.e. the `schema_version` the old rows were written
 *  under - so a read can dispatch on it and run the transform (lazy migration). */
export class DataMigration {
  oldType: string = "";
  newType: string = "";
  fnName: string = "";
  oldVersion: u32 = 0;
  /// `false`: `(old): New` - the function returns the whole new value.
  /// `true`:  `(old, into): void` - the compiler pre-copies the fields the two
  ///          layouts share (same name + type), and the function fills only the
  ///          changed/new fields of `into`.
  delta: bool = false;
}

function typeNameOf(t: TypeNode | null): string | null {
  if (t == null || !(t instanceof NamedTypeNode)) return null;
  return (<NamedTypeNode>t).name.identifier.text;
}

/** Every `@migrate` function across the (non-library) sources. `layouts` maps a
 *  `@data` class name to its field layout, for the old-version hash. A migration
 *  whose param/return is not a single named type, or whose old type has no
 *  layout, is skipped. */
export function collectMigrations(
  sources: Source[],
  layouts: Map<string, FieldLayout[]>
): DataMigration[] {
  let out = new Array<DataMigration>();
  for (let i = 0, k = sources.length; i < k; ++i) {
    let source = sources[i];
    if (source.isLibrary) continue;
    let statements = source.statements;
    for (let j = 0, l = statements.length; j < l; ++j) {
      let s = statements[j];
      if (s.kind != NodeKind.FunctionDeclaration) continue;
      let fn = <FunctionDeclaration>s;
      if (!hasDeco(fn.decorators, DecoratorKind.Migrate)) continue;
      let sig = fn.signature;
      // `(old): New` (full) or `(old, into): void` (delta - shared fields are
      // copied for you; the body fills only the changed/new ones of `into`).
      let oldType: string | null = null;
      let newType: string | null = null;
      let delta = false;
      if (sig.parameters.length == 1) {
        oldType = typeNameOf(sig.parameters[0].type);
        newType = typeNameOf(sig.returnType);
      } else if (sig.parameters.length == 2) {
        oldType = typeNameOf(sig.parameters[0].type);
        newType = typeNameOf(sig.parameters[1].type);
        delta = true;
      } else {
        continue;
      }
      if (oldType == null || newType == null) continue;
      let mig = new DataMigration();
      mig.oldType = oldType;
      mig.newType = newType;
      mig.fnName = fn.name.text;
      mig.delta = delta;
      mig.oldVersion = layouts.has(oldType)
        ? layoutHash(<FieldLayout[]>layouts.get(oldType))
        : fnv1a(oldType);
      out.push(mig);
    }
  }
  return out;
}

/** A resolved chain that migrates a stored OLD value all the way to a target
 *  type: decode `oldType`, then apply `steps` in order (each `@migrate`). For a
 *  direct migration `steps` has one entry; a chain `V0 -> V1 -> V2` has two. */
export class MigrationChain {
  oldType: string = "";
  oldVersion: u32 = 0;
  steps: DataMigration[] = [];
}

/** Every old type that reaches `target` through a chain of `@migrate` edges, with
 *  the ordered transforms to apply. A backward breadth-first walk of the migration
 *  graph (edges OLD -> NEW), so the SHORTEST chain wins and cycles terminate; a
 *  direct migration is just a one-step chain. This is what lets a row written under
 *  version 0 reach the current version 2 via `0->1` then `1->2`. */
export function chainsTo(target: string, migrations: DataMigration[]): MigrationChain[] {
  let out = new Array<MigrationChain>();
  let visited = new Set<string>();
  visited.add(target);
  // BFS frontier: a type we can reach `target` from, plus the chain FROM it TO target.
  let frontierType = new Array<string>();
  let frontierChain = new Array<DataMigration[]>();
  frontierType.push(target);
  frontierChain.push(new Array<DataMigration>());
  let head = 0;
  while (head < frontierType.length) {
    let type = frontierType[head];
    let chain = frontierChain[head];
    head++;
    for (let i = 0, k = migrations.length; i < k; ++i) {
      let m = migrations[i];
      if (m.newType != type || visited.has(m.oldType)) continue;
      visited.add(m.oldType);
      // `m` transforms oldType -> type; prepend it so `steps` runs oldType -> target.
      let steps = new Array<DataMigration>();
      steps.push(m);
      for (let s = 0, sk = chain.length; s < sk; ++s) steps.push(chain[s]);
      let mc = new MigrationChain();
      mc.oldType = m.oldType;
      mc.oldVersion = m.oldVersion;
      mc.steps = steps;
      out.push(mc);
      frontierType.push(m.oldType);
      frontierChain.push(steps);
    }
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
  // Migratable old versions per value type: the schema_versions a registered
  // @migrate can decode. Emitted per collection so the deploy gate admits a
  // breaking change whose deployed version is covered (instead of refusing it).
  let migrations = collectMigrations(sources, layouts);
  // Per value type, the schema_versions it can decode - every old version that
  // reaches it through a CHAIN of migrations (not just a direct one), so a deploy
  // is admitted for any version a chain converges.
  let migByValue = new Map<string, u32[]>();
  for (let i = 0, k = migrations.length; i < k; ++i) {
    let target = migrations[i].newType;
    if (migByValue.has(target)) continue;
    let versions = new Array<u32>();
    let chains = chainsTo(target, migrations);
    for (let c = 0, ck = chains.length; c < ck; ++c) versions.push(chains[c].oldVersion);
    migByValue.set(target, versions);
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
      // The value type's field LAYOUT, if it is a `@data` type. `schema_version`
      // hashes it (so a shape change is detectable); the fields are ALSO emitted
      // so the deploy gate can compare old vs new layouts (append-only = additive,
      // anything else = breaking). A host-owned/scalar value (Counter/Capacity
      // `i64`, a non-`@data` value) has no layout: fall back to the name hash and
      // emit zero fields.
      let hasLayout = layouts.has(coll.valueType);
      let fields = hasLayout
        ? <FieldLayout[]>layouts.get(coll.valueType)
        : new Array<FieldLayout>();
      let schemaVersion = hasLayout ? layoutHash(fields) : id;
      w.u32(id);            // value_data_id (the value type's message-boundary id)
      w.u32(schemaVersion); // schema_version (field-layout hash)
      w.u32(0);  // collection_generation
      w.u8(0);   // replication = edgeCache
      w.u8(0);   // placement = hashKey
      w.u16(fields.length); // n_fields
      for (let f = 0, fn = fields.length; f < fn; ++f) {
        w.str(fields[f].name);
        w.str(fields[f].typeName);
        w.u8(fields[f].isArray ? 1 : 0);
      }
      let migs = migByValue.has(coll.valueType)
        ? <u32[]>migByValue.get(coll.valueType)
        : new Array<u32>();
      w.u16(migs.length); // n_migrations
      for (let mi = 0, mn = migs.length; mi < mn; ++mi) w.u32(migs[mi]); // old_version
    }
  }
  return w.toBytes();
}
