/**
 * RPC module emission. Walks the parsed user sources for `@data` types and the
 * `@remote`/`@service` surface and emits ONE working TypeScript module
 * (`--rpcModule <path.ts>`), refreshed whenever the server is built:
 *
 *   - an `export class` per `@data` type, mirroring the ToilScript `@data` class
 *     (`encodeInto`/`encode`/`decodeFrom`/`decode`/`dataId`) over the global
 *     DataWriter/DataReader (no runtime JSON to load), and
 *   - `declare global { const Server: ... }`, the typed client-callable surface, so
 *     the IDE types `Server.x.y()` with zero imports (no separate `.d.ts` needed).
 *
 * AS types map to TS (u64 -> bigint, a `@data` class -> its generated interface).
 * Generated from the AST alone, so it needs nothing beyond a parse. The runtime
 * `Server` proxy + transport are provided by toiljs.
 */

import {
  NodeKind,
  ClassDeclaration,
  FunctionDeclaration,
  MethodDeclaration,
  FieldDeclaration,
  TypeNode,
  NamedTypeNode,
  DecoratorNode,
  DecoratorKind
} from "./ast";
import { CommonFlags } from "./common";
import { Program } from "./program";

/** A field or parameter type, with one level of array unwrapped. */
interface TypeRef {
  /** AS type name (the element name for arrays, e.g. `Foo` for `Foo[]`). */
  type: string;
  /** Whether the declared type was `T[]` / `Array<T>`. */
  array: bool;
}

interface RpcMember {
  name: string;
  ref: TypeRef;
  /** Explicit visibility (`public`/`private`/`protected`), or "" for fields. */
  vis: string;
  /** Whether the field was declared `readonly`. */
  ro: bool;
}
interface RpcData { name: string; typeId: u32; fields: RpcMember[]; }
interface RpcCallable { name: string; params: RpcMember[]; returns: TypeRef; }
interface RpcService { name: string; methods: RpcCallable[]; }

/** Everything client-visible, collected once from the user sources. */
interface RpcSurface {
  data: RpcData[];
  services: RpcService[];
  remotes: RpcCallable[];
}

/** Stable per-`@data` typeId (FNV-1a over the class name); mirrors the parser. */
function dataTypeId(name: string): u32 {
  let hash = 0x811c9dc5;
  for (let i = 0, k = name.length; i < k; ++i) {
    hash = Math.imul(hash ^ name.charCodeAt(i), 0x01000193) >>> 0;
  }
  return hash >>> 0;
}

/** True if `decorators` contains the given built-in decorator kind. */
function hasDecorator(decorators: DecoratorNode[] | null, kind: DecoratorKind): bool {
  if (decorators == null) return false;
  for (let i = 0, k = decorators.length; i < k; ++i) {
    if (decorators[i].decoratorKind == kind) return true;
  }
  return false;
}

/** Reduces a type node to a name plus an array flag (one level). */
function describeType(typeNode: TypeNode | null): TypeRef {
  if (typeNode == null || !(typeNode instanceof NamedTypeNode)) {
    return { type: "void", array: false };
  }
  let named = <NamedTypeNode>typeNode;
  let name = named.name.identifier.text;
  let typeArgs = named.typeArguments;
  if (name == "Array" && typeArgs != null && typeArgs.length == 1 && typeArgs[0] instanceof NamedTypeNode) {
    return { type: (<NamedTypeNode>typeArgs[0]).name.identifier.text, array: true };
  }
  return { type: name, array: false };
}

/** Extracts the ordered params + return type of a function or method. */
function describeCallable(fn: FunctionDeclaration): RpcCallable {
  let params = new Array<RpcMember>();
  let nodes = fn.signature.parameters;
  for (let i = 0, k = nodes.length; i < k; ++i) {
    let node = nodes[i];
    params.push({ name: node.name.text, ref: describeType(node.type), vis: "", ro: false });
  }
  return { name: fn.name.text, params, returns: describeType(fn.signature.returnType) };
}

/** Collects a `@data` type and/or a `@service` from a top-level class. */
function collectClass(cls: ClassDeclaration, surface: RpcSurface): void {
  let decorators = cls.decorators;
  let members = cls.members;
  if (hasDecorator(decorators, DecoratorKind.Data)) {
    let fields = new Array<RpcMember>();
    for (let i = 0, k = members.length; i < k; ++i) {
      let member = members[i];
      if (member.kind != NodeKind.FieldDeclaration) continue;
      let field = <FieldDeclaration>member;
      if (field.is(CommonFlags.Static)) continue;
      fields.push({ name: field.name.text, ref: describeType(field.type), vis: fieldVis(field), ro: field.is(CommonFlags.Readonly) });
    }
    surface.data.push({ name: cls.name.text, typeId: dataTypeId(cls.name.text), fields });
  }
  if (hasDecorator(decorators, DecoratorKind.Service)) {
    let methods = new Array<RpcCallable>();
    for (let i = 0, k = members.length; i < k; ++i) {
      let member = members[i];
      if (member.kind != NodeKind.MethodDeclaration) continue;
      let method = <MethodDeclaration>member;
      if (!hasDecorator(method.decorators, DecoratorKind.Remote)) continue;
      methods.push(describeCallable(method));
    }
    surface.services.push({ name: cls.name.text, methods });
  }
}

/** Walks the user (non-library) sources of `program` for the client-visible surface. */
function collectSurface(program: Program): RpcSurface {
  let surface: RpcSurface = { data: [], services: [], remotes: [] };
  let sources = program.sources;
  for (let i = 0, k = sources.length; i < k; ++i) {
    let source = sources[i];
    if (source.isLibrary) continue;
    let statements = source.statements;
    for (let j = 0, l = statements.length; j < l; ++j) {
      let statement = statements[j];
      if (statement.kind == NodeKind.ClassDeclaration) {
        collectClass(<ClassDeclaration>statement, surface);
      } else if (statement.kind == NodeKind.FunctionDeclaration) {
        let fn = <FunctionDeclaration>statement;
        if (hasDecorator(fn.decorators, DecoratorKind.Remote)) {
          surface.remotes.push(describeCallable(fn));
        }
      }
    }
  }
  return surface;
}

/** Explicit visibility of a field, or "" when none was declared. */
function fieldVis(field: FieldDeclaration): string {
  if (field.is(CommonFlags.Private)) return "private";
  if (field.is(CommonFlags.Protected)) return "protected";
  if (field.is(CommonFlags.Public)) return "public";
  return "";
}

/** `public `/`private `/`protected `/`readonly ` prefix for a field declaration. */
function modPrefix(member: RpcMember): string {
  let prefix = "";
  if (member.vis.length) prefix += member.vis + " ";
  if (member.ro) prefix += "readonly ";
  return prefix;
}

/** `Auth` -> `auth` for the client-facing service key. */
function serviceKey(name: string): string {
  return name.length ? name.charAt(0).toLowerCase() + name.substring(1) : name;
}

/** Maps an AS type name to its TS equivalent (`@data` types keep their bare name). */
function mapName(name: string, dataNames: Set<string>): string {
  switch (name) {
    case "u8": case "u16": case "u32":
    case "i8": case "i16": case "i32":
    case "f32": case "f64": return "number";
    case "u64": case "i64":
    case "u128": case "i128":
    case "u256": case "i256": return "bigint";
    case "bool": case "boolean": return "boolean";
    case "string": return "string";
    case "void": return "void";
    default: return dataNames.has(name) ? name : "unknown";
  }
}

/** Full TS type for a ref, including the array suffix. */
function tsType(ref: TypeRef, dataNames: Set<string>): string {
  let base = mapName(ref.type, dataNames);
  return ref.array ? base + "[]" : base;
}

/** `name: Type, name: Type` parameter list. */
function paramList(params: RpcMember[], dataNames: Set<string>): string {
  let parts = new Array<string>();
  for (let i = 0, k = params.length; i < k; ++i) {
    parts.push(params[i].name + ": " + tsType(params[i].ref, dataNames));
  }
  return parts.join(", ");
}

/** DataWriter/DataReader method suffix for a scalar AS type, or "" for nested @data. */
function methodSuffix(name: string): string {
  switch (name) {
    case "u8": return "U8"; case "u16": return "U16"; case "u32": return "U32"; case "u64": return "U64";
    case "i8": return "I8"; case "i16": return "I16"; case "i32": return "I32"; case "i64": return "I64";
    case "f32": return "F32"; case "f64": return "F64";
    case "bool": case "boolean": return "Bool";
    case "string": return "String";
    case "u128": return "U128"; case "i128": return "I128"; case "u256": return "U256"; case "i256": return "I256";
    default: return "";
  }
}

/** Statement writing one value (scalar via DataWriter, nested @data via `.encodeInto`). */
function writeOne(typeName: string, valueExpr: string): string {
  let suffix = methodSuffix(typeName);
  if (suffix.length) return "w.write" + suffix + "(" + valueExpr + ");";
  return valueExpr + ".encodeInto(w);";
}

/** Expression reading one value (scalar via DataReader, nested @data via `.decodeFrom`). */
function readOne(typeName: string): string {
  let suffix = methodSuffix(typeName);
  if (suffix.length) return "r.read" + suffix + "()";
  return typeName + ".decodeFrom(r)";
}

/** Default initializer for a field, so `new X()` is valid with no arguments. */
function defaultValue(ref: TypeRef, dataNames: Set<string>): string {
  if (ref.array) return "[]";
  switch (ref.type) {
    case "u8": case "u16": case "u32":
    case "i8": case "i16": case "i32":
    case "f32": case "f64": return "0";
    case "u64": case "i64":
    case "u128": case "i128":
    case "u256": case "i256": return "0n";
    case "bool": case "boolean": return "false";
    case "string": return "\"\"";
    default: return dataNames.has(ref.type) ? "new " + ref.type + "()" : "undefined as unknown";
  }
}

/**
 * Emits the class for one `@data` type, mirroring the ToilScript `@data` class:
 * fields with defaults plus `encodeInto`/`encode`/`decodeFrom`/`decode`/`dataId`.
 */
function emitDataClass(d: RpcData, dataNames: Set<string>): string {
  let typeId = d.typeId.toString();
  let out = "export class " + d.name + " {\n";

  for (let f = 0, fk = d.fields.length; f < fk; ++f) {
    let field = d.fields[f];
    out += "    " + modPrefix(field) + field.name + ": " + tsType(field.ref, dataNames) + " = " + defaultValue(field.ref, dataNames) + ";\n";
  }
  out += "\n";

  out += "    encodeInto(w: DataWriter): void {\n";
  for (let f = 0, fk = d.fields.length; f < fk; ++f) {
    let field = d.fields[f];
    let access = "this." + field.name;
    if (field.ref.array) {
      out += "        w.writeU32(" + access + ".length);\n";
      out += "        for (let i = 0, n = " + access + ".length; i < n; i++) " + writeOne(field.ref.type, access + "[i]") + "\n";
    } else {
      out += "        " + writeOne(field.ref.type, access) + "\n";
    }
  }
  out += "    }\n\n";

  out += "    encode(): Uint8Array {\n";
  out += "        const w = new DataWriter();\n";
  out += "        w.writeU32(" + typeId + ");\n";
  out += "        this.encodeInto(w);\n";
  out += "        return w.toBytes();\n";
  out += "    }\n\n";

  out += "    static decodeFrom(r: DataReader): " + d.name + " {\n";
  out += "        const o = new " + d.name + "();\n";
  for (let f = 0, fk = d.fields.length; f < fk; ++f) {
    let field = d.fields[f];
    // `readonly` fields can't be reassigned after construction; cast for the write.
    let access = field.ro ? "(o as any)." + field.name : "o." + field.name;
    if (field.ref.array) {
      let elemTs = mapName(field.ref.type, dataNames);
      out += "        { const n = r.readU32(); const a: " + elemTs + "[] = []; for (let i = 0; i < n; i++) a.push(" + readOne(field.ref.type) + "); " + access + " = a; }\n";
    } else {
      out += "        " + access + " = " + readOne(field.ref.type) + ";\n";
    }
  }
  out += "        return o;\n";
  out += "    }\n\n";

  out += "    static decode(buf: Uint8Array): " + d.name + " {\n";
  out += "        const r = new DataReader(buf);\n";
  out += "        r.readU32();\n";
  out += "        return " + d.name + ".decodeFrom(r);\n";
  out += "    }\n\n";

  out += "    static dataId(): number {\n";
  out += "        return " + typeId + ";\n";
  out += "    }\n";

  out += "}\n";
  return out;
}

/** Emits the `declare global { const Server: {...} }` ambient client surface. */
function emitServerSurface(surface: RpcSurface, dataNames: Set<string>): string {
  let out = "declare global {\n";
  out += "    /** The client-callable server surface. Calls ride toiljs RPC (transport TODO). */\n";
  out += "    const Server: {\n";
  for (let i = 0, k = surface.remotes.length; i < k; ++i) {
    let r = surface.remotes[i];
    out += "        " + r.name + "(" + paramList(r.params, dataNames) + "): Promise<" + tsType(r.returns, dataNames) + ">;\n";
  }
  for (let i = 0, k = surface.services.length; i < k; ++i) {
    let s = surface.services[i];
    out += "        readonly " + serviceKey(s.name) + ": {\n";
    for (let m = 0, mk = s.methods.length; m < mk; ++m) {
      let method = s.methods[m];
      out += "            " + method.name + "(" + paramList(method.params, dataNames) + "): Promise<" + tsType(method.returns, dataNames) + ">;\n";
    }
    out += "        };\n";
  }
  out += "    };\n";
  out += "}\n";
  return out;
}

/**
 * Builds the `server.ts` working module for `program`, or `null` when nothing is
 * exposed (no `@data`/`@remote`/`@service`). `runtime` is the import specifier for
 * the DataWriter/DataReader codec (e.g. `toiljs/io`).
 */
export function buildServerModule(program: Program, runtime: string): string | null {
  let surface = collectSurface(program);
  if (surface.data.length == 0 && surface.services.length == 0 && surface.remotes.length == 0) {
    return null;
  }

  let dataNames = new Set<string>();
  for (let i = 0, k = surface.data.length; i < k; ++i) dataNames.add(surface.data[i].name);

  let out = "// AUTO-GENERATED by toilscript, do not edit.\n";
  out += "// Working @data codec + the typed client-callable Server surface.\n";
  out += "// The Server proxy + transport are provided by toiljs.\n\n";

  if (surface.data.length) {
    out += "import { DataWriter, DataReader } from \"" + runtime + "\";\n\n";
  }

  for (let i = 0, k = surface.data.length; i < k; ++i) {
    out += emitDataClass(surface.data[i], dataNames);
    out += "\n";
  }

  out += emitServerSurface(surface, dataNames);
  // Guarantee module scope (so `declare global` is valid) even with no @data exports.
  out += "\nexport {};\n";

  return out;
}
