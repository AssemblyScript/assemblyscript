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
import { DiagnosticCode } from "./diagnostics";
import {
  ClassDeclaration,
  DecoratorKind,
  DecoratorNode,
  Expression,
  FieldDeclaration,
  FunctionDeclaration,
  IdentifierExpression,
  IntegerLiteralExpression,
  MethodDeclaration,
  NamedTypeNode,
  NodeKind,
  ObjectLiteralExpression,
  PropertyAccessExpression,
  StringLiteralExpression,
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
 * breaking one, instead of silently misreading old rows.
 *
 * RECURSIVE into nested `@data` types: when a field's `typeName` is a KNOWN
 * `@data` type (a key of `typeMap`) and not already on the `seen` set (cycle
 * guard), the SAME running hash continues over that nested type's fields - so a
 * breaking change to a NESTED type bumps the OUTER `schema_version` and can be
 * `@migrate`d (instead of being refuse-only). This MUST stay byte-identical to
 * toildb's `SchemaDescriptor::layout_hash` (the runtime side): the algorithm,
 * the `seen` add/remove, and the declaration-order traversal are pinned in lock
 * step. A FLAT type (no field whose type is in `typeMap`) hashes to the SAME
 * value as the old flat hash, so existing pinned vectors stay green; an absent
 * `typeMap` (undefined) is flat/back-compatible.
 *
 * `typeMap` MUST contain the SAME set of `@data` types as the runtime's
 * `toildb.types` registry (collection value types + their nested types, EXCLUDING
 * old `*.migration.ts` shapes), or the two hashes diverge: a nested field whose
 * type is absent from the map on either side is treated as a LEAF on both sides.
 */
export function layoutHash(
  fields: FieldLayout[],
  typeMap: Map<string, FieldLayout[]> | null = null,
  seen: Set<string> | null = null
): u32 {
  let h: u32 = 0x811c9dc5;
  return hashFields(h, fields, typeMap, seen);
}

/** Continue the running FNV-1a hash `h` over `fields` (declaration order),
 *  recursing into any field whose `typeName` is a known `@data` type in
 *  `typeMap` and not yet on `seen`. Factored out so both the top-level hash and
 *  each nested level share ONE traversal, keeping the byte stream identical to
 *  the runtime. */
function hashFields(
  h: u32,
  fields: FieldLayout[],
  typeMap: Map<string, FieldLayout[]> | null,
  seen: Set<string> | null
): u32 {
  for (let i = 0, k = fields.length; i < k; ++i) {
    let f = fields[i];
    h = fnvStr(h, f.name);
    h = fnvStr(h, f.typeName);
    h = fnvByte(h, f.isArray ? 1 : 0);
    if (typeMap != null && typeMap.has(f.typeName)) {
      let s = seen != null ? seen : new Set<string>();
      if (!s.has(f.typeName)) {
        s.add(f.typeName);
        h = hashFields(h, <FieldLayout[]>typeMap.get(f.typeName), typeMap, s);
        s.delete(f.typeName);
      }
    }
  }
  return h >>> 0;
}

/** The recursion type map for `layoutHash`: every `@data` type the runtime's
 *  `toildb.types` registry also contains (collection value types + their nested
 *  types), EXCLUDING old `*.migration.ts` shapes (which the runtime registry
 *  excludes by design). Both sides must recurse through the SAME set, so a
 *  nested field whose type is NOT here is a leaf on both sides. */
export function recursionTypeMap(sources: Source[]): Map<string, FieldLayout[]> {
  let map = new Map<string, FieldLayout[]>();
  for (let i = 0, k = sources.length; i < k; ++i) {
    let source = sources[i];
    if (source.isLibrary) continue;
    // Old `@data` shapes in a `*.migration.ts` file are internal to the decoder,
    // not live value types; the runtime `toildb.types` registry omits them, so the
    // compiler's recursion map must omit them too (or the hashes diverge).
    if (source.internalPath.endsWith(".migration")) continue;
    let statements = source.statements;
    for (let j = 0, l = statements.length; j < l; ++j) {
      let statement = statements[j];
      if (statement.kind != NodeKind.ClassDeclaration) continue;
      let cls = <ClassDeclaration>statement;
      if (!hasDeco(cls.decorators, DecoratorKind.Data)) continue;
      let name = cls.name.text;
      if (map.has(name)) continue;
      map.set(name, dataFields(cls));
    }
  }
  return map;
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
  /// Internal path of the source file the `@migrate` fn (and its old `@data`
  /// shapes) live in - the convention requires a `migrations/…*.migration.ts`
  /// file, so this is BOTH the enforcement target and, since that file is
  /// separate from the value type, the module the woven decoder imports from.
  sourceInternalPath: string = "";
}

function typeNameOf(t: TypeNode | null): string | null {
  if (t == null || !(t instanceof NamedTypeNode)) return null;
  return (<NamedTypeNode>t).name.identifier.text;
}

/** Every `@migrate` function across the (non-library) sources. `layouts` maps a
 *  `@data` class name to its field layout, for the old-version hash. `typeMap`
 *  (optional) is the recursion type map (see [`recursionTypeMap`]) so the old
 *  version hashes RECURSIVELY through its nested `@data` fields - matching the
 *  `schema_version` that old layout was deployed under (or the migratable old
 *  version would never match a deployed recursive hash). Absent = flat. A
 *  migration whose param/return is not a single named type, or whose old type
 *  has no layout, is skipped. */
export function collectMigrations(
  sources: Source[],
  layouts: Map<string, FieldLayout[]>,
  typeMap: Map<string, FieldLayout[]> | null = null
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
        ? layoutHash(<FieldLayout[]>layouts.get(oldType), typeMap)
        : fnv1a(oldType);
      mig.sourceInternalPath = source.internalPath;
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
  /** LE 8-byte unsigned, written as two `u32` halves (low then high). `v` must
   *  be a non-negative integer representable exactly (`< 2^53`), which covers
   *  every value this catalog emits through it (`interval_ms` <= 7d in ms,
   *  `gas_hint`). For a value that can exceed 2^53 (the 60-bit cron minute mask),
   *  emit the two halves directly via {@link u64lohi}. */
  u64(v: f64): void {
    let lo = <u32>(v % 4294967296.0);
    let hi = <u32>Math.floor(v / 4294967296.0);
    this.u32(lo);
    this.u32(hi);
  }
  /** LE 8-byte unsigned from explicit low/high 32-bit halves (precision-safe for
   *  masks wider than 2^53, e.g. the cron minute mask spanning bits 0..59). */
  u64lohi(lo: u32, hi: u32): void {
    this.u32(lo);
    this.u32(hi);
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
  // The recursion type map for the (now RECURSIVE) schema_version hash: exactly
  // the `@data` types the runtime's `toildb.types` registry contains (excludes
  // old `*.migration.ts` shapes). A nested `@data` field whose type is here is
  // recursed into; otherwise it is a leaf - on BOTH sides, in lock step.
  let typeMap = recursionTypeMap(sources);
  // Migratable old versions per value type: the schema_versions a registered
  // @migrate can decode. Emitted per collection so the deploy gate admits a
  // breaking change whose deployed version is covered (instead of refusing it).
  // The old-version hash is recursive too (same `typeMap`), so it matches the
  // recursive schema_version the old layout was deployed under.
  let migrations = collectMigrations(sources, layouts, typeMap);
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
      let schemaVersion = hasLayout ? layoutHash(fields, typeMap) : id;
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

// `toildb.types` custom section: the field layout of EVERY `@data` type, so the
// deploy gate can resolve a NESTED `@data` field (e.g. `addr: Address`) and
// compare its layout recursively - a flat catalog hash alone misses a change to a
// nested type. Wire format (little-endian):
//   u16 n_types, per type: u32 name_len,name,
//     u16 n_fields, per field: u32 name_len,name u32 type_len,type u8 is_array
export function buildToilDbTypes(program: Program): Uint8Array | null {
  let sources = program.sources;
  let names = new Array<string>();
  let fieldsByName = new Map<string, FieldLayout[]>();
  for (let i = 0, k = sources.length; i < k; ++i) {
    let source = sources[i];
    if (source.isLibrary) continue;
    // Old `@data` shapes in a `*.migration.ts` file are internal to the decoder, not
    // live collection value types; keep them out of the emitted type registry.
    if (source.internalPath.endsWith(".migration")) continue;
    let statements = source.statements;
    for (let j = 0, l = statements.length; j < l; ++j) {
      let statement = statements[j];
      if (statement.kind != NodeKind.ClassDeclaration) continue;
      let cls = <ClassDeclaration>statement;
      if (!hasDeco(cls.decorators, DecoratorKind.Data)) continue;
      let name = cls.name.text;
      if (fieldsByName.has(name)) continue;
      names.push(name);
      fieldsByName.set(name, dataFields(cls));
    }
  }
  if (names.length == 0) return null;
  let w = new CatWriter();
  w.u16(names.length);
  for (let i = 0, k = names.length; i < k; ++i) {
    let name = names[i];
    w.str(name);
    let fields = <FieldLayout[]>fieldsByName.get(name);
    w.u16(fields.length);
    for (let f = 0, fn = fields.length; f < fn; ++f) {
      w.str(fields[f].name);
      w.str(fields[f].typeName);
      w.u8(fields[f].isArray ? 1 : 0);
    }
  }
  return w.toBytes();
}

// ===========================================================================
// Streams + daemon metadata sections (spec 03 sections 6/7/8, Part 5 layouts).
//
// `toil.surface`       - always (per artifact); target mode + surface flags +
//                        build identity + the hot/cold coherence hashes.
// `toilstream.catalog` - per `@stream` class (hot / legacy).
// `toildaemon.catalog` - the single `@daemon` class + its `@scheduled` tasks
//                        with the COMPILE-TIME expanded cron bitmasks (F6).
//
// All little-endian; a string is `u32 len` + UTF-8 bytes (CatWriter.str). The
// toiljs parsers and the Rust host read these byte-for-byte against Part 5.
// ===========================================================================

/** Continue the running FNV-1a `h` over a `u32` value (LE byte order), so a fold
 *  over a sequence of u32s is unambiguous (same byte framing as `fnvStr`). */
function fnvU32(h: u32, v: u32): u32 {
  h = fnvByte(h, <i32>(v & 0xff));
  h = fnvByte(h, <i32>((v >>> 8) & 0xff));
  h = fnvByte(h, <i32>((v >>> 16) & 0xff));
  h = fnvByte(h, <i32>((v >>> 24) & 0xff));
  return h >>> 0;
}

/** The first decorator of a given kind on a node, or null. */
function decoOf(decorators: DecoratorNode[] | null, kind: DecoratorKind): DecoratorNode | null {
  if (decorators == null) return null;
  for (let i = 0, k = decorators.length; i < k; ++i) {
    if (decorators[i].decoratorKind == kind) return decorators[i];
  }
  return null;
}

/** The single string-literal argument of a decorator, or null. */
function stringArg(deco: DecoratorNode): string | null {
  let args = deco.args;
  if (args == null || args.length == 0) return null;
  let a = args[0];
  if (a instanceof StringLiteralExpression) return (<StringLiteralExpression>a).value;
  return null;
}

/** The first object-literal argument of a decorator, or null. */
function objectArg(deco: DecoratorNode): ObjectLiteralExpression | null {
  let args = deco.args;
  if (args == null || args.length == 0) return null;
  let a = args[0];
  if (a instanceof ObjectLiteralExpression) return <ObjectLiteralExpression>a;
  return null;
}

/** The value expression of a named field in an object literal, or null. */
function objectField(obj: ObjectLiteralExpression, name: string): Expression | null {
  let names = obj.names;
  for (let i = 0, k = names.length; i < k; ++i) {
    if (names[i].text == name) return obj.values[i];
  }
  return null;
}

/** The trailing member name of an enum access (`StreamScope.Continental` ->
 *  "Continental"), or null. */
function enumMember(expr: Expression): string | null {
  if (expr instanceof PropertyAccessExpression) {
    return (<PropertyAccessExpression>expr).property.text;
  }
  return null;
}

/** A non-negative integer-literal field value as a plain number, or -1. Reads the
 *  literal's SOURCE TEXT (`range.toString()`) and parses the decimal digits, so it
 *  never touches the branded `i64` value (which is not number-assignable in the
 *  portable build). Values clamp at `max_frame_bytes`/`ingress_ring_bytes` range. */
function intField(obj: ObjectLiteralExpression, name: string): f64 {
  let v = objectField(obj, name);
  if (v != null && v instanceof IntegerLiteralExpression) {
    let s = (<IntegerLiteralExpression>v).range.toString().trim();
    let value: f64 = 0;
    if (s.length == 0) return -1;
    for (let i = 0, k = s.length; i < k; ++i) {
      let c = s.charCodeAt(i);
      if (c < 0x30 || c > 0x39) return -1;   // only plain non-negative decimals
      value = value * 10.0 + <f64>(c - 0x30);
      if (value > 4294967295.0) return 4294967295.0; // clamp to u32 ceiling
    }
    return value;
  }
  return -1;
}

/** The named-type field value as its plain identifier text (`message: ChatMsg`
 *  -> "ChatMsg"), or "" when absent / not a bare identifier. */
function identField(obj: ObjectLiteralExpression, name: string): string {
  let v = objectField(obj, name);
  if (v != null && v instanceof IdentifierExpression) {
    return (<IdentifierExpression>v).text;
  }
  return "";
}

/** The field layout of every `@data` value type, keyed by name (the same set
 *  `buildToilDbCatalog` builds), so a `@message` type's schema_version recurses
 *  through the identical map. */
function dataLayouts(sources: Source[]): Map<string, FieldLayout[]> {
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
  return layouts;
}

/** The lifecycle-hook presence bitmask of a `@stream` class: bit0 @connect,
 *  bit1 @message, bit2 @close, bit3 @disconnect (the same ordering as the
 *  `event_kind` ids minus one; bits 4..7 reserved 0). */
function streamHookMask(cls: ClassDeclaration): i32 {
  let mask = 0;
  let members = cls.members;
  for (let i = 0, k = members.length; i < k; ++i) {
    let member = members[i];
    if (member.kind != NodeKind.MethodDeclaration) continue;
    let decos = (<MethodDeclaration>member).decorators;
    if (decos == null) continue;
    for (let d = 0, dn = decos.length; d < dn; ++d) {
      switch (decos[d].decoratorKind) {
        case DecoratorKind.Connect:    { mask |= 1; break; }
        case DecoratorKind.Message:    { mask |= 2; break; }
        case DecoratorKind.Close:      { mask |= 4; break; }
        case DecoratorKind.Disconnect: { mask |= 8; break; }
      }
    }
  }
  return mask;
}

/** Build the `toilstream.catalog` section bytes, or `null` if the program
 *  declares no `@stream` class. Per Part 5 (LE):
 *
 *    u16 format_version = 1
 *    u16 n_streams
 *    per stream:
 *      str  name
 *      str  route
 *      u8   hook_presence_bitmask   (bit0 connect..bit3 disconnect)
 *      u8   declared_scope          (0 regional/L2, 1 continental/L3)
 *      u8   message_mode            (0 raw, 1 @data-typed)
 *      u32  max_frame_bytes         (0 = use plan default)
 *      u32  ingress_ring_bytes      (0 = host chooses)
 *      u32  message_value_data_id   (fnv1a(typeName); 0 when raw)
 *      u32  message_schema_version  (recursive layoutHash; 0 when raw)
 *      u16  stream_index            (0-based position in this array)
 */
export function buildToilStreamCatalog(program: Program): Uint8Array | null {
  let sources = program.sources;
  // The recursion type map for the recursive message schema_version: the SAME
  // set of `@data` types `buildToilDbCatalog`/`buildToilDbTypes` recurse through,
  // so a type shared between a `@message` packet and a DB value hashes identically.
  let typeMap = recursionTypeMap(sources);
  let layouts = dataLayouts(sources);

  let names = new Array<string>();        // declared name (routing key)
  let routes = new Array<string>();       // mount path
  let masks = new Array<i32>();           // hook presence bitmask
  let scopes = new Array<i32>();          // declared scope byte
  let modes = new Array<i32>();           // message mode byte
  let maxFrames = new Array<u32>();
  let ringBytes = new Array<u32>();
  let valueDataIds = new Array<u32>();
  let schemaVersions = new Array<u32>();

  for (let i = 0, k = sources.length; i < k; ++i) {
    let source = sources[i];
    if (source.isLibrary) continue;
    let statements = source.statements;
    for (let j = 0, l = statements.length; j < l; ++j) {
      let statement = statements[j];
      if (statement.kind != NodeKind.ClassDeclaration) continue;
      let cls = <ClassDeclaration>statement;
      if (!hasDeco(cls.decorators, DecoratorKind.Stream)) continue;
      let deco = decoOf(cls.decorators, DecoratorKind.Stream);

      // --- declared name / route ---
      let declaredName = cls.name.text;
      let strA = deco != null ? stringArg(deco) : null;
      let objA = deco != null ? objectArg(deco) : null;
      if (strA != null) {
        let s = strA.trim();
        if (s.startsWith("/")) s = s.substring(1);
        if (s.length > 0) declaredName = s;
      } else if (objA != null) {
        let nameV = objectField(objA, "name");
        if (nameV != null && nameV instanceof StringLiteralExpression) {
          let s = (<StringLiteralExpression>nameV).value.trim();
          if (s.startsWith("/")) s = s.substring(1);
          if (s.length > 0) declaredName = s;
        }
      }
      let route = "/" + declaredName;

      // --- scope ---
      let scope = 0; // Regional / L2
      if (objA != null) {
        let scopeV = objectField(objA, "scope");
        if (scopeV != null) {
          let mName = enumMember(scopeV);
          if (mName == "Continental") scope = 1;
        }
      }

      // --- frame / ring sizing hints ---
      let maxFrame: u32 = 0;
      let ring: u32 = 0;
      if (objA != null) {
        let mf = intField(objA, "maxFrameBytes");
        if (mf > 0) maxFrame = <u32>mf;
        let rb = intField(objA, "ingressRingBytes");
        if (rb > 0) ring = <u32>rb;
      }

      // --- message mode (raw default vs @data-typed) ---
      // F3 / doc 03 section 6: typed mode (message_mode = 1) is OPT-IN, keyed
      // STRICTLY on the explicit `@stream({ message: SomeDataClass })` config; the
      // default is raw bytes. The named `@data` type's value_data_id / recursive
      // schema_version reuse the EXACT toildb.catalog pair, so a type shared
      // between a `@message` packet and a DB value carries one identity.
      let hookMask = streamHookMask(cls);
      let messageMode = 0;
      let valueDataId: u32 = 0;
      let schemaVersion: u32 = 0;
      let typedName = objA != null ? identField(objA, "message") : "";
      if (typedName.length > 0 && layouts.has(typedName)) {
        messageMode = 1;
        valueDataId = fnv1a(typedName);
        schemaVersion = layoutHash(<FieldLayout[]>layouts.get(typedName), typeMap);
      }

      names.push(declaredName);
      routes.push(route);
      masks.push(hookMask);
      scopes.push(scope);
      modes.push(messageMode);
      maxFrames.push(maxFrame);
      ringBytes.push(ring);
      valueDataIds.push(valueDataId);
      schemaVersions.push(schemaVersion);
    }
  }

  if (names.length == 0) return null;

  let w = new CatWriter();
  w.u16(1);             // format_version
  w.u16(names.length);  // n_streams
  for (let i = 0, k = names.length; i < k; ++i) {
    w.str(names[i]);
    w.str(routes[i]);
    w.u8(masks[i]);
    w.u8(scopes[i]);
    w.u8(modes[i]);
    w.u32(maxFrames[i]);
    w.u32(ringBytes[i]);
    w.u32(valueDataIds[i]);
    w.u32(schemaVersions[i]);
    w.u16(i);           // stream_index = array position
  }
  return w.toBytes();
}

/** The normalized schedule of a `@scheduled(spec)` task (spec 03 section 2.3).
 *  The cron minute mask is kept as low/high 32-bit halves because it spans bits
 *  0..59 (> 2^53, so it cannot ride a single JS number losslessly). */
class Schedule {
  kind: i32 = 0;                 // 0 interval, 1 cron
  interval_ms: f64 = 0;          // interval kind (<= 7d ms, fits a JS number)
  cron_minute_lo: u32 = 0;       // bits 0..31
  cron_minute_hi: u32 = 0;       // bits 32..59
  cron_hour_mask: u32 = 0;       // bits 0..23
  cron_dom_mask: u32 = 0;        // bits 1..31
  cron_month_mask: i32 = 0;      // bits 1..12 (u16)
  cron_dow_mask: i32 = 0;        // bits 0..6  (u8)
  valid: bool = true;
}

/** Parse an interval string (`30s`/`5m`/`1h`/`7d`) into milliseconds, or -1 if
 *  not a well-formed interval (digits then one of s/m/h/d, integer >= 1, the
 *  period >= 1000 ms). Leading zeros allowed; no whitespace; no fraction. */
function parseIntervalMs(spec: string): f64 {
  let n = spec.length;
  if (n < 2) return -1;
  let unit = spec.charCodeAt(n - 1);
  let mul: f64;
  if (unit == 0x73) mul = 1000.0;            // s
  else if (unit == 0x6d) mul = 60000.0;      // m
  else if (unit == 0x68) mul = 3600000.0;    // h
  else if (unit == 0x64) mul = 86400000.0;   // d
  else return -1;
  let value: f64 = 0;
  for (let i = 0; i < n - 1; ++i) {
    let c = spec.charCodeAt(i);
    if (c < 0x30 || c > 0x39) return -1;      // not a digit
    value = value * 10.0 + <f64>(c - 0x30);
    if (value > 1.0e15) return -1;            // absurdly large; reject
  }
  if (value < 1) return -1;
  let ms = value * mul;
  if (ms < 1000.0) return -1;
  return ms;
}

/** Parse a non-negative decimal integer, or -1 (rejects empty / non-digit). */
function parseCronInt(s: string): i32 {
  if (s.length == 0) return -1;
  let v = 0;
  for (let i = 0, k = s.length; i < k; ++i) {
    let c = s.charCodeAt(i);
    if (c < 0x30 || c > 0x39) return -1;
    v = v * 10 + (c - 0x30);
    if (v > 1000000) return -1;
  }
  return v;
}

/** Expand one cron field into a set of bit positions: a star, a star-slash-step,
 *  a range "a-b", a comma list "a,b,c", or a bare integer; within `[lo, hi]`
 *  inclusive, calling `set(bit)` for each. False on a malformed/out-of-range token. */
function expandCronField(field: string, lo: i32, hi: i32, set: (bit: i32) => void): bool {
  if (field.length == 0) return false;
  let tokens = field.split(",");
  for (let t = 0, tn = tokens.length; t < tn; ++t) {
    let tok = tokens[t];
    if (tok.length == 0) return false;
    let rangeLo = lo;
    let rangeHi = hi;
    let step = 1;
    let body = tok;
    let slash = tok.indexOf("/");
    if (slash >= 0) {
      body = tok.substring(0, slash);
      let sv = parseCronInt(tok.substring(slash + 1));
      if (sv < 1) return false;
      step = sv;
    }
    if (body == "*") {
      // full field range (default lo..hi)
    } else {
      let dash = body.indexOf("-");
      if (dash >= 0) {
        let a = parseCronInt(body.substring(0, dash));
        let b = parseCronInt(body.substring(dash + 1));
        if (a < 0 || b < 0 || a < lo || b > hi || a > b) return false;
        rangeLo = a;
        rangeHi = b;
      } else {
        let v = parseCronInt(body);
        if (v < 0 || v < lo || v > hi) return false;
        // a bare integer is a single value; `n/k` is a stepped range up to hi.
        rangeLo = v;
        rangeHi = (slash >= 0) ? hi : v;
      }
    }
    for (let b = rangeLo; b <= rangeHi; b += step) set(b);
  }
  return true;
}

/** Parse a 5-field cron expression into the schedule bitmasks, marking invalid
 *  on any malformed field. Fields: minute(0-59) hour(0-23) dom(1-31) month(1-12)
 *  dow(0-6, 0=Sunday). */
function parseCron(spec: string, sch: Schedule): void {
  let fields = spec.split(" ");
  if (fields.length != 5) { sch.valid = false; return; }
  sch.kind = 1;

  let minuteLo: u32 = 0;
  let minuteHi: u32 = 0;
  let okMin = expandCronField(fields[0], 0, 59, (bit: i32): void => {
    if (bit < 32) minuteLo = (minuteLo | (<u32>1 << bit)) >>> 0;
    else minuteHi = (minuteHi | (<u32>1 << (bit - 32))) >>> 0;
  });
  sch.cron_minute_lo = minuteLo;
  sch.cron_minute_hi = minuteHi;

  let hourMask: u32 = 0;
  let okHour = expandCronField(fields[1], 0, 23, (bit: i32): void => {
    hourMask = (hourMask | (<u32>1 << bit)) >>> 0;
  });
  sch.cron_hour_mask = hourMask;

  let domMask: u32 = 0;
  let okDom = expandCronField(fields[2], 1, 31, (bit: i32): void => {
    domMask = (domMask | (<u32>1 << bit)) >>> 0;
  });
  sch.cron_dom_mask = domMask;

  let monthMask = 0;
  let okMonth = expandCronField(fields[3], 1, 12, (bit: i32): void => {
    monthMask = monthMask | (1 << bit);
  });
  sch.cron_month_mask = monthMask & 0xffff;

  let dowMask = 0;
  let okDow = expandCronField(fields[4], 0, 6, (bit: i32): void => {
    dowMask = dowMask | (1 << bit);
  });
  sch.cron_dow_mask = dowMask & 0xff;

  if (!(okMin && okHour && okDom && okMonth && okDow)) sch.valid = false;
}

/** Parse a `@scheduled` spec string into a normalized {@link Schedule}. Per spec
 *  03 section 2.1: trim; a space means cron; else an interval (digits + one of
 *  s/m/h/d); else invalid. */
function parseSchedule(rawSpec: string): Schedule {
  let sch = new Schedule();
  let spec = rawSpec.trim();
  if (spec.length == 0) { sch.valid = false; return sch; }
  if (spec.indexOf(" ") >= 0) {
    parseCron(spec, sch);
    return sch;
  }
  let ms = parseIntervalMs(spec);
  if (ms < 0) { sch.valid = false; return sch; }
  sch.kind = 0;
  sch.interval_ms = ms;
  return sch;
}

/** One `@scheduled` task collected from the `@daemon` class. */
class ScheduledTask {
  name: string = "";
  schedule: Schedule = new Schedule();
}

/** Build the `toildaemon.catalog` section bytes, or `null` if the program
 *  declares no `@daemon` class. Per Part 5 (LE):
 *
 *    u16 format_version = 1
 *    u8  has_daemon
 *    u16 n_scheduled
 *    per task:
 *      str name
 *      u16 task_index
 *      u8  schedule_kind          (0 interval, 1 cron)
 *      u64 interval_ms
 *      u64 cron_minute_mask       (bits 0..59)
 *      u32 cron_hour_mask
 *      u32 cron_dom_mask
 *      u16 cron_month_mask
 *      u8  cron_dow_mask
 *      u8  overlap_policy         (0 default)
 *      u8  catchup_policy         (0 default)
 *      u64 gas_hint
 *
 *  Parses each `@scheduled(spec)` argument; fires diagnostics 9010/9011 for a
 *  missing/non-string arg or an unparseable spec.
 */
export function buildToilDaemonCatalog(program: Program): Uint8Array | null {
  let sources = program.sources;
  let daemon: ClassDeclaration | null = null;
  for (let i = 0, k = sources.length; i < k && daemon == null; ++i) {
    let source = sources[i];
    if (source.isLibrary) continue;
    let statements = source.statements;
    for (let j = 0, l = statements.length; j < l; ++j) {
      let statement = statements[j];
      if (statement.kind != NodeKind.ClassDeclaration) continue;
      let cls = <ClassDeclaration>statement;
      if (hasDeco(cls.decorators, DecoratorKind.Daemon)) { daemon = cls; break; }
    }
  }
  if (daemon == null) return null;

  let tasks = new Array<ScheduledTask>();
  let members = daemon.members;
  for (let m = 0, mk = members.length; m < mk; ++m) {
    let member = members[m];
    if (member.kind != NodeKind.MethodDeclaration) continue;
    let method = <MethodDeclaration>member;
    let deco = decoOf(method.decorators, DecoratorKind.Scheduled);
    if (deco == null) continue;
    let spec = stringArg(deco);
    if (spec == null) {
      // missing / non-string-literal schedule argument
      program.error(
        DiagnosticCode.Scheduled_requires_a_single_string_schedule_argument,
        deco.range
      );
      continue;
    }
    let schedule = parseSchedule(spec);
    if (!schedule.valid) {
      program.error(
        DiagnosticCode.Scheduled_spec_0_is_not_a_valid_interval_or_cron_expression,
        deco.range,
        spec
      );
      continue;
    }
    let task = new ScheduledTask();
    task.name = method.name.text;
    task.schedule = schedule;
    tasks.push(task);
  }

  let w = new CatWriter();
  w.u16(1);              // format_version
  w.u8(1);               // has_daemon (always 1 when the section is present)
  w.u16(tasks.length);   // n_scheduled
  for (let t = 0, tn = tasks.length; t < tn; ++t) {
    let task = tasks[t];
    let s = task.schedule;
    w.str(task.name);
    w.u16(t);                          // task_index = declaration order
    w.u8(s.kind);                      // schedule_kind
    w.u64(s.kind == 0 ? s.interval_ms : 0.0);   // interval_ms (0 for cron)
    if (s.kind == 1) {
      w.u64lohi(s.cron_minute_lo, s.cron_minute_hi); // cron_minute_mask
      w.u32(s.cron_hour_mask);
      w.u32(s.cron_dom_mask);
      w.u16(s.cron_month_mask);
      w.u8(s.cron_dow_mask);
    } else {
      w.u64lohi(0, 0);                 // cron_minute_mask
      w.u32(0);                        // cron_hour_mask
      w.u32(0);                        // cron_dom_mask
      w.u16(0);                        // cron_month_mask
      w.u8(0);                         // cron_dow_mask
    }
    w.u8(0);                           // overlap_policy (0 = skip-if-running)
    w.u8(0);                           // catchup_policy (0 = no-backfill)
    w.u64(0.0);                        // gas_hint (0 = use plan default)
  }
  return w.toBytes();
}

/** True if the (non-library) sources declare ANY Toil surface decorator
 *  (`@rest`/`@stream`/`@daemon`/`@scheduled`/`@database`/`@data`). Used to keep a
 *  bare AssemblyScript module (none of these) free of a `toil.surface` section in
 *  legacy mode, so an ordinary AS compile stays byte-identical. */
function hasToilSurface(sources: Source[]): bool {
  for (let i = 0, k = sources.length; i < k; ++i) {
    let source = sources[i];
    if (source.isLibrary) continue;
    let statements = source.statements;
    for (let j = 0, l = statements.length; j < l; ++j) {
      let statement = statements[j];
      if (statement.kind == NodeKind.ClassDeclaration) {
        let cls = <ClassDeclaration>statement;
        let decos = cls.decorators;
        if (decos != null) {
          for (let d = 0, dn = decos.length; d < dn; ++d) {
            switch (decos[d].decoratorKind) {
              case DecoratorKind.Rest:
              case DecoratorKind.Stream:
              case DecoratorKind.Daemon:
              case DecoratorKind.Database:
              case DecoratorKind.Data: return true;
            }
          }
        }
        let members = cls.members;
        for (let mm = 0, mk = members.length; mm < mk; ++mm) {
          let member = members[mm];
          if (member.kind != NodeKind.MethodDeclaration) continue;
          let mdecos = (<MethodDeclaration>member).decorators;
          if (mdecos == null) continue;
          for (let d = 0, dn = mdecos.length; d < dn; ++d) {
            if (mdecos[d].decoratorKind == DecoratorKind.Scheduled) return true;
          }
        }
      }
    }
  }
  return false;
}

/** Bit positions of `surface_flags` (Part 5): bit0 rest, bit1 stream, bit2
 *  daemon, bit3 scheduled, bit4 database, bit5 render. */
const SURFACE_REST: i32 = 1 << 0;
const SURFACE_STREAM: i32 = 1 << 1;
const SURFACE_DAEMON: i32 = 1 << 2;
const SURFACE_SCHEDULED: i32 = 1 << 3;
const SURFACE_DATABASE: i32 = 1 << 4;

/** Scan the (non-library) sources once and compute the `surface_flags` bitmask
 *  from which decorators are present, mirroring the catalog builders' scans.
 *  Bit5 (render) is not yet emitted by this increment. */
function computeSurfaceFlags(sources: Source[]): u32 {
  let flags = 0;
  for (let i = 0, k = sources.length; i < k; ++i) {
    let source = sources[i];
    if (source.isLibrary) continue;
    let statements = source.statements;
    for (let j = 0, l = statements.length; j < l; ++j) {
      let statement = statements[j];
      if (statement.kind != NodeKind.ClassDeclaration) continue;
      let cls = <ClassDeclaration>statement;
      let decos = cls.decorators;
      if (decos != null) {
        for (let d = 0, dn = decos.length; d < dn; ++d) {
          switch (decos[d].decoratorKind) {
            case DecoratorKind.Rest:     { flags |= SURFACE_REST; break; }
            case DecoratorKind.Stream:   { flags |= SURFACE_STREAM; break; }
            case DecoratorKind.Daemon:   { flags |= SURFACE_DAEMON; break; }
            case DecoratorKind.Database: { flags |= SURFACE_DATABASE; break; }
          }
        }
      }
      // `@scheduled` lives on a method inside a `@daemon` class.
      let members = cls.members;
      for (let mm = 0, mk = members.length; mm < mk; ++mm) {
        let member = members[mm];
        if (member.kind != NodeKind.MethodDeclaration) continue;
        let mdecos = (<MethodDeclaration>member).decorators;
        if (mdecos == null) continue;
        for (let d = 0, dn = mdecos.length; d < dn; ++d) {
          if (mdecos[d].decoratorKind == DecoratorKind.Scheduled) { flags |= SURFACE_SCHEDULED; break; }
        }
      }
    }
  }
  return flags >>> 0;
}

/** The hot/cold `data_coherence_hash` (Part 5 / doc 02 section 7.2 / AN-4): an
 *  FNV-1a over the SHARED `@data` surface, computed with the SAME `layoutHash` /
 *  `recursionTypeMap` machinery that produces each collection's `schema_version`.
 *  Iterating types in source-declaration order (deterministic and identical
 *  across the hot and the cold pass over the same files) folds, per type, its
 *  name then its recursive layout hash, so any shared `@data` shape change moves
 *  this hash and a hot/cold mismatch is unloadable. */
function dataCoherenceHash(sources: Source[]): u32 {
  let typeMap = recursionTypeMap(sources);
  let h: u32 = 0x811c9dc5;
  // Same traversal + skip rules as `recursionTypeMap`/`buildToilDbTypes` (omit
  // libraries and `*.migration` shapes) so both passes fold the identical set
  // in the identical order.
  let seenNames = new Set<string>();
  for (let i = 0, k = sources.length; i < k; ++i) {
    let source = sources[i];
    if (source.isLibrary) continue;
    if (source.internalPath.endsWith(".migration")) continue;
    let statements = source.statements;
    for (let j = 0, l = statements.length; j < l; ++j) {
      let statement = statements[j];
      if (statement.kind != NodeKind.ClassDeclaration) continue;
      let cls = <ClassDeclaration>statement;
      if (!hasDeco(cls.decorators, DecoratorKind.Data)) continue;
      let name = cls.name.text;
      if (seenNames.has(name)) continue;
      seenNames.add(name);
      h = fnvStr(h, name);
      h = fnvU32(h, layoutHash(dataFields(cls), typeMap));
    }
  }
  return h >>> 0;
}

/** The `pair_coherence_hash` (Part 5 / doc 02 section 7.2): an FNV-1a fold of
 *  `(build_id, data_coherence_hash, n_collections, each collection's
 *  value_data_id + schema_version + generation in `toildb.catalog` order)`. It
 *  re-walks `@database` collections in the SAME order `buildToilDbCatalog` emits
 *  them, so both passes (same files) compute the same value. `generation` is 0
 *  for v1 (the compiler does not yet stamp it). */
function pairCoherenceHash(sources: Source[], buildId: string, dataHash: u32): u32 {
  let typeMap = recursionTypeMap(sources);
  let layouts = dataLayouts(sources);
  let h: u32 = 0x811c9dc5;
  h = fnvStr(h, buildId);
  h = fnvU32(h, dataHash);
  let ids = new Array<u32>();      // value_data_id, catalog order
  let versions = new Array<u32>(); // schema_version, catalog order
  for (let i = 0, k = sources.length; i < k; ++i) {
    let source = sources[i];
    if (source.isLibrary) continue;
    let statements = source.statements;
    for (let j = 0, l = statements.length; j < l; ++j) {
      let statement = statements[j];
      if (statement.kind != NodeKind.ClassDeclaration) continue;
      let cls = <ClassDeclaration>statement;
      if (!hasDeco(cls.decorators, DecoratorKind.Database)) continue;
      let members = cls.members;
      for (let mm = 0, mk = members.length; mm < mk; ++mm) {
        let member = members[mm];
        if (member.kind != NodeKind.FieldDeclaration) continue;
        let field = <FieldDeclaration>member;
        if (!hasDeco(field.decorators, DecoratorKind.Collection)) continue;
        let typeNode = field.type;
        if (typeNode == null || !(typeNode instanceof NamedTypeNode)) continue;
        let named = <NamedTypeNode>typeNode;
        let famName = named.name.identifier.text;
        let valueType: string;
        if (famName == "Counter" || famName == "Capacity") {
          valueType = "i64";
        } else {
          let ta = named.typeArguments;
          valueType = (ta != null && ta.length > 1 && ta[1] instanceof NamedTypeNode)
            ? (<NamedTypeNode>ta[1]).name.identifier.text
            : "";
        }
        let id = fnv1a(valueType);
        let hasLayout = layouts.has(valueType);
        let schemaVersion = hasLayout
          ? layoutHash(<FieldLayout[]>layouts.get(valueType), typeMap)
          : id;
        ids.push(id);
        versions.push(schemaVersion);
      }
    }
  }
  h = fnvU32(h, <u32>ids.length); // n_collections
  for (let c = 0, cn = ids.length; c < cn; ++c) {
    h = fnvU32(h, ids[c]);        // value_data_id
    h = fnvU32(h, versions[c]);   // schema_version
    h = fnvU32(h, 0);             // generation (0 for v1)
  }
  return h >>> 0;
}

/** Build the `toil.surface` section bytes (always emitted per artifact). Per
 *  Part 5 (LE):
 *
 *    u16 format_version = 1
 *    u8  target_mode            (0 hot, 1 cold)
 *    u8  reserved0              (0)
 *    u32 surface_flags          (bit0 rest..bit5 render)
 *    u16 abi_version
 *    str build_id
 *    u32 fingerprint
 *    u32 data_coherence_hash
 *    u32 pair_coherence_hash
 *
 *  `targetMode` "cold" -> 1; "hot" or null (legacy single artifact, treated as
 *  hot per Part 5) -> 0. The two coherence hashes use the SAME `layoutHash` /
 *  `recursionTypeMap` machinery as the toildb catalog, so a hot pass and a cold
 *  pass over the same sources compute identical `data_coherence_hash` and
 *  `pair_coherence_hash` independently (doc 02 AN-4). `build_id` is empty and
 *  `abi_version` is 1 in this increment (the toiljs build-identity plumbing and
 *  the export-name fingerprint component land with the codegen increment).
 *
 *  Returns `null` (no section) for a bare AssemblyScript module compiled in
 *  LEGACY mode (`targetMode == null`) that declares NO Toil surface at all
 *  (`@rest`/`@stream`/`@daemon`/`@scheduled`/`@database`/`@data`), so an ordinary
 *  AS compile stays byte-identical (the same gating philosophy as the existing
 *  `toildb.catalog`, which is absent without `@database`). Part 5 / doc 02 AN-2
 *  requires the section in every TOIL artifact (including a legacy single-artifact
 *  toil build, which always carries a toil surface); a non-toil module is not a
 *  toil artifact. An explicit `--targetMode hot|cold` always emits the section.
 */
export function buildToilSurface(program: Program, targetMode: string | null): Uint8Array | null {
  let sources = program.sources;
  if (targetMode == null && !hasToilSurface(sources)) return null;
  let mode = targetMode == "cold" ? 1 : 0;
  let surfaceFlags = computeSurfaceFlags(sources);
  let abiVersion = 1;
  let buildId = "";
  let dataHash = dataCoherenceHash(sources);
  let pairHash = pairCoherenceHash(sources, buildId, dataHash);
  // fingerprint: FNV-1a over (target_mode, surface_flags, data_coherence_hash).
  // Doc 02 section 4.1's fingerprint ALSO folds the sorted export-name list;
  // that component is deferred to the export-injection increment (this increment
  // emits no exports). What is folded is deterministic and distinguishes a hot
  // from a cold build and two builds of different surface within a mode.
  let fp: u32 = 0x811c9dc5;
  fp = fnvByte(fp, mode);
  fp = fnvU32(fp, surfaceFlags);
  fp = fnvU32(fp, dataHash);
  let fingerprint = fp >>> 0;

  let w = new CatWriter();
  w.u16(1);                  // format_version
  w.u8(mode);                // target_mode
  w.u8(0);                   // reserved0
  w.u32(surfaceFlags);       // surface_flags
  w.u16(abiVersion);         // abi_version
  w.str(buildId);            // build_id
  w.u32(fingerprint);        // fingerprint
  w.u32(dataHash);           // data_coherence_hash
  w.u32(pairHash);           // pair_coherence_hash
  return w.toBytes();
}
