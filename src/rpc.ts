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
  DecoratorKind,
  Expression,
  ObjectLiteralExpression,
  PropertyAccessExpression,
  StringLiteralExpression
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

/** One `@route`/`@get`/... method of a `@rest` controller, for the fetch client. */
interface RestRoute {
  /** Client route name (the method name). */
  name: string;
  /** HTTP verb, e.g. `GET`. */
  http: string;
  /** Full matcher pattern (prefix-joined), e.g. `/api/todos/:id`. */
  pattern: string;
  /** `:param` names captured from the pattern, in order. */
  params: string[];
  /** `JSON` or `Binary`. */
  stream: string;
  /** The `@data` request-body type, or null if the route takes no body. */
  bodyType: string | null;
  /** Return type (a `@data` type, or `void`). */
  returns: TypeRef;
  /** Whether the method returns a `Response` verbatim (client gets the raw fetch `Response`). */
  returnsResponse: bool;
}
/** A `@rest` controller and its routes. */
interface RestController { name: string; key: string; routes: RestRoute[]; }

/** Everything client-visible, collected once from the user sources. */
interface RpcSurface {
  data: RpcData[];
  services: RpcService[];
  remotes: RpcCallable[];
  rest: RestController[];
  /** The `@user` class name (the authenticated-user type), or null if none.
   *  At most one per program; drives the typed client `getUser()`. */
  userType: string | null;
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

/** The first decorator of the given kind, or null. */
function getDecorator(decorators: DecoratorNode[] | null, kind: DecoratorKind): DecoratorNode | null {
  if (decorators == null) return null;
  for (let i = 0, k = decorators.length; i < k; ++i) {
    if (decorators[i].decoratorKind == kind) return decorators[i];
  }
  return null;
}

/** The member name of an enum access (`Methods.GET` -> "GET"), or null. */
function enumMember(expr: Expression | null): string | null {
  if (expr != null && expr instanceof PropertyAccessExpression) {
    return (<PropertyAccessExpression>expr).property.text;
  }
  return null;
}

/** An object-literal field value by name, or null. */
function objectField(obj: ObjectLiteralExpression, name: string): Expression | null {
  let names = obj.names;
  for (let i = 0, k = names.length; i < k; ++i) {
    if (names[i].text == name) return obj.values[i];
  }
  return null;
}

/** The `@rest("api")` mount prefix (`/api`), or "" for the bare/object (root) form. */
function restPrefix(deco: DecoratorNode): string {
  let args = deco.args;
  if (args != null && args.length > 0 && args[0] instanceof StringLiteralExpression) {
    let s = (<StringLiteralExpression>args[0]).value.trim();
    if (s.length == 0 || s == "/") return "";
    if (s.charAt(0) != "/") s = "/" + s;
    return s.replace(/\/+$/, "");
  }
  return "";
}

/** The class-default stream from `@rest({ stream: DataStream.Binary })`, else "JSON". */
function restClassStream(deco: DecoratorNode): string {
  let args = deco.args;
  if (args != null && args.length > 0 && args[0] instanceof ObjectLiteralExpression) {
    let s = enumMember(objectField(<ObjectLiteralExpression>args[0], "stream"));
    if (s != null) return s;
  }
  return "JSON";
}

/** The `@route`/`@get`/... decorator on a method, or null. */
function routeDecoratorOf(method: MethodDeclaration): DecoratorNode | null {
  let decos = method.decorators;
  if (decos == null) return null;
  for (let i = 0, k = decos.length; i < k; ++i) {
    switch (decos[i].decoratorKind) {
      case DecoratorKind.Route:
      case DecoratorKind.Get:
      case DecoratorKind.Post:
      case DecoratorKind.Put:
      case DecoratorKind.Delete:
      case DecoratorKind.Patch:
      case DecoratorKind.Head:
      case DecoratorKind.Options: return decos[i];
    }
  }
  return null;
}

/** HTTP verb name for a verb decorator kind. */
function verbName(kind: DecoratorKind): string {
  switch (kind) {
    case DecoratorKind.Post: return "POST";
    case DecoratorKind.Put: return "PUT";
    case DecoratorKind.Delete: return "DELETE";
    case DecoratorKind.Patch: return "PATCH";
    case DecoratorKind.Head: return "HEAD";
    case DecoratorKind.Options: return "OPTIONS";
    default: return "GET";
  }
}

/** Join a mount prefix and a route path into the matcher pattern (mirrors the parser). */
function joinPath(prefix: string, routePath: string): string {
  let r = routePath.trim();
  if (r.length == 0) r = "/";
  if (r.charAt(0) != "/") r = "/" + r;
  if (r == "/") return prefix.length > 0 ? prefix : "/";
  r = r.replace(/\/+$/, "");
  let full = prefix + r;
  return full.length == 0 ? "/" : full;
}

/** The `:param` names of a pattern, in order. */
function pathParams(pattern: string): string[] {
  let out = new Array<string>();
  let segs = pattern.split("/");
  for (let i = 0, k = segs.length; i < k; ++i) {
    let s = segs[i];
    if (s.length > 1 && s.charAt(0) == ":") out.push(s.substring(1));
  }
  return out;
}

/** Reads one route method into a `RestRoute`, or null if it isn't well-formed. */
function readRoute(prefix: string, classStream: string, method: MethodDeclaration, deco: DecoratorNode): RestRoute | null {
  let http: string;
  let routePath: string;
  let stream = classStream;

  if (deco.decoratorKind == DecoratorKind.Route) {
    let args = deco.args;
    if (args == null || args.length == 0 || !(args[0] instanceof ObjectLiteralExpression)) return null;
    let obj = <ObjectLiteralExpression>args[0];
    let m = enumMember(objectField(obj, "method"));
    let pv = objectField(obj, "path");
    if (m == null || pv == null || !(pv instanceof StringLiteralExpression)) return null;
    http = m;
    routePath = (<StringLiteralExpression>pv).value;
    let s = enumMember(objectField(obj, "stream"));
    if (s != null) stream = s;
  } else {
    http = verbName(deco.decoratorKind);
    let args = deco.args;
    if (args == null || args.length == 0 || !(args[0] instanceof StringLiteralExpression)) return null;
    routePath = (<StringLiteralExpression>args[0]).value;
  }

  let pattern = joinPath(prefix, routePath);

  // Classify params: a `RouteContext` param is server-only; anything else is the @data body.
  let bodyType: string | null = null;
  let params = method.signature.parameters;
  for (let i = 0, k = params.length; i < k; ++i) {
    let ref = describeType(params[i].type);
    if (ref.type == "RouteContext") continue;
    bodyType = ref.type;
  }

  let returns = describeType(method.signature.returnType);
  let returnsResponse = returns.type == "Response";
  return { name: method.name.text, http, pattern, params: pathParams(pattern), stream, bodyType, returns, returnsResponse };
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
  // `@user` is a `@data` class (same binary codec on the client) that also names
  // the authenticated-user type for the generated `getUser()`. Collect either as
  // a client codec.
  let isUser = hasDecorator(decorators, DecoratorKind.User);
  if (hasDecorator(decorators, DecoratorKind.Data) || isUser) {
    let fields = new Array<RpcMember>();
    for (let i = 0, k = members.length; i < k; ++i) {
      let member = members[i];
      if (member.kind != NodeKind.FieldDeclaration) continue;
      let field = <FieldDeclaration>member;
      if (field.is(CommonFlags.Static)) continue;
      fields.push({ name: field.name.text, ref: describeType(field.type), vis: fieldVis(field), ro: field.is(CommonFlags.Readonly) });
    }
    surface.data.push({ name: cls.name.text, typeId: dataTypeId(cls.name.text), fields });
    if (isUser) surface.userType = cls.name.text;
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
  let restDeco = getDecorator(decorators, DecoratorKind.Rest);
  if (restDeco != null) {
    let prefix = restPrefix(restDeco);
    let classStream = restClassStream(restDeco);
    let routes = new Array<RestRoute>();
    for (let i = 0, k = members.length; i < k; ++i) {
      let member = members[i];
      if (member.kind != NodeKind.MethodDeclaration) continue;
      let method = <MethodDeclaration>member;
      let routeDeco = routeDecoratorOf(method);
      if (routeDeco == null) continue;
      let route = readRoute(prefix, classStream, method, routeDeco);
      if (route != null) routes.push(route);
    }
    if (routes.length) surface.rest.push({ name: cls.name.text, key: serviceKey(cls.name.text), routes });
  }
}

/** Walks the user (non-library) sources of `program` for the client-visible surface. */
function collectSurface(program: Program): RpcSurface {
  let surface: RpcSurface = { data: [], services: [], remotes: [], rest: [], userType: null };
  let sources = program.sources;
  for (let i = 0, k = sources.length; i < k; ++i) {
    let source = sources[i];
    if (source.isLibrary) continue;
    // A `migrations/*.migration.ts` file holds only the KEPT old `@data` shapes +
    // `@migrate` transforms; those are internal to the decoder and must not become
    // client-facing RPC types. Skip the whole migration source.
    if (source.internalPath.endsWith(".migration")) continue;
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

/** Visibility of a field: the declared one, defaulting to `public`. */
function fieldVis(field: FieldDeclaration): string {
  if (field.is(CommonFlags.Private)) return "private";
  if (field.is(CommonFlags.Protected)) return "protected";
  return "public";
}

/** `public `/`private `/`protected ` (+ `readonly `) prefix for a field declaration. */
function modPrefix(member: RpcMember): string {
  let prefix = member.vis + " ";
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
    case "Uint8Array": return "Uint8Array";
    case "void": return "void";
    default:
      if (dataNames.has(name)) return name;
      throw new Error("@data: unsupported type '" + name + "' (use a scalar, string, bool, native bignum, Uint8Array, a nested @data class, or T[])");
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
    case "Uint8Array": return "Bytes";
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

/**
 * TS expression coercing one parsed-JSON value to its `@data` field type. 64-bit-and-up
 * integers arrive as decimal strings (exact at any size; `BigInt("...")` revives them).
 * 128/256-bit values go through `__toilUnlimb`, which also accepts the legacy
 * limb-array shape older servers emitted (`BigInt()` alone throws on an array).
 */
function jsonReviveScalar(typeName: string, access: string, dataNames: Set<string>): string {
  switch (typeName) {
    case "u8": case "u16": case "u32":
    case "i8": case "i16": case "i32":
    case "f32": case "f64": return "Number(" + access + " ?? 0)";
    case "u64": case "i64": return "BigInt(" + access + " ?? 0)";
    case "u128": return "__toilUnlimb(" + access + ", 2, false)";
    case "i128": return "__toilUnlimb(" + access + ", 2, true)";
    case "u256": return "__toilUnlimb(" + access + ", 4, false)";
    case "i256": return "__toilUnlimb(" + access + ", 4, true)";
    case "bool": case "boolean": return "Boolean(" + access + ")";
    case "string": return "String(" + access + " ?? \"\")";
    case "Uint8Array": return "Uint8Array.from(Array.isArray(" + access + ") ? " + access + " : [])";
    default:
      if (dataNames.has(typeName)) return typeName + ".fromJSONValue(" + access + ")";
      throw new Error("@data: unsupported type '" + typeName + "'");
  }
}

/**
 * TS expression converting one field value to its JSON-wire shape for sending: every
 * integer 64 bits and up becomes a decimal string (exact at any size, symmetric with the
 * server's `toJSON`, and safe to `JSON.stringify` since a bare `bigint` cannot be);
 * nested `@data` recurses via `toJSONValue()`; everything else passes through.
 */
function jsonSendScalar(typeName: string, access: string, dataNames: Set<string>): string {
  switch (typeName) {
    case "u64": case "i64":
    case "u128": case "i128":
    case "u256": case "i256": return access + ".toString()";
    case "Uint8Array": return "Array.from(" + access + ")";
    default:
      if (dataNames.has(typeName)) return access + ".toJSONValue()";
      return access;
  }
}

/** Whether sending this type needs a transform (vs passing the value straight through). */
function jsonSendNeedsTransform(typeName: string, dataNames: Set<string>): bool {
  switch (typeName) {
    case "u64": case "i64":
    case "u128": case "i128":
    case "u256": case "i256":
    case "Uint8Array": return true;
    default: return dataNames.has(typeName);
  }
}

/** The bignum revive helper, emitted once into the generated module. */
function emitLimbHelpers(): string {
  let out = "// 64-bit-and-up integers cross the JSON wire as decimal strings (exact through\n";
  out += "// JSON.parse at any size). Older servers emitted 128/256-bit values as little-endian\n";
  out += "// arrays of 64-bit limbs instead; the array branch revives those.\n";
  out += "function __toilUnlimb(v: any, n: number, signedTop: boolean): bigint {\n";
  out += "    if (!Array.isArray(v)) { try { return BigInt(v ?? 0); } catch { return 0n; } }\n";
  out += "    let r = 0n;\n";
  out += "    for (let i = 0; i < n; i++) {\n";
  out += "        let limb = 0n; try { limb = BigInt(v[i] ?? 0); } catch {}\n";
  out += "        r += (i === n - 1 && signedTop ? BigInt.asIntN(64, limb) : BigInt.asUintN(64, limb)) << BigInt(64 * i);\n";
  out += "    }\n";
  out += "    return r;\n";
  out += "}\n";
  return out;
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
    case "Uint8Array": return "new Uint8Array()";
    default:
      if (dataNames.has(ref.type)) return "new " + ref.type + "()";
      throw new Error("@data: unsupported field type '" + ref.type + "'");
  }
}

/**
 * Emits the class for one `@data` type, mirroring the ToilScript `@data` class: a
 * positional constructor (every field, defaulted, so `new T()` and `new T(a, b)`
 * both work) plus `encodeInto`/`encode`/`decodeFrom`/`decode`/`dataId`. Every member
 * carries an explicit access modifier.
 */
function emitDataClass(d: RpcData, dataNames: Set<string>): string {
  let typeId = d.typeId.toString();
  let out = "export class " + d.name + " {\n";

  // Field declarations (initialized by the constructor below).
  for (let f = 0, fk = d.fields.length; f < fk; ++f) {
    let field = d.fields[f];
    out += "    " + modPrefix(field) + field.name + ": " + tsType(field.ref, dataNames) + ";\n";
  }
  out += "\n";

  // Positional constructor with per-field defaults.
  if (d.fields.length == 0) {
    out += "    public constructor() {}\n\n";
  } else {
    out += "    public constructor(\n";
    for (let f = 0, fk = d.fields.length; f < fk; ++f) {
      let field = d.fields[f];
      out += "        " + field.name + ": " + tsType(field.ref, dataNames) + " = " + defaultValue(field.ref, dataNames) + ",\n";
    }
    out += "    ) {\n";
    for (let f = 0, fk = d.fields.length; f < fk; ++f) {
      let field = d.fields[f];
      out += "        this." + field.name + " = " + field.name + ";\n";
    }
    out += "    }\n\n";
  }

  out += "    public encodeInto(w: DataWriter): void {\n";
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

  // `Uint8Array<ArrayBuffer>` (not the `ArrayBufferLike` default) so the bytes are
  // accepted directly as a `fetch` body for `@rest({ stream: DataStream.Binary })` routes.
  out += "    public encode(): Uint8Array<ArrayBuffer> {\n";
  out += "        const w = new DataWriter();\n";
  out += "        w.writeU32(" + typeId + ");\n";
  out += "        this.encodeInto(w);\n";
  out += "        return w.toBytes();\n";
  out += "    }\n\n";

  // Read each field into a local (in order), then build via the constructor, so
  // `readonly` fields are set without a cast.
  out += "    public static decodeFrom(r: DataReader): " + d.name + " {\n";
  for (let f = 0, fk = d.fields.length; f < fk; ++f) {
    let field = d.fields[f];
    if (field.ref.array) {
      let elemTs = mapName(field.ref.type, dataNames);
      out += "        const " + field.name + ": " + elemTs + "[] = [];\n";
      // `&& r.ok` bounds the loop to the bytes actually present, so a hostile count can't OOM.
      out += "        for (let i = 0, n = r.readU32(); i < n && r.ok; i++) " + field.name + ".push(" + readOne(field.ref.type) + ");\n";
    } else {
      out += "        const " + field.name + " = " + readOne(field.ref.type) + ";\n";
    }
  }
  let args = new Array<string>();
  for (let f = 0, fk = d.fields.length; f < fk; ++f) args.push(d.fields[f].name);
  out += "        return new " + d.name + "(" + args.join(", ") + ");\n";
  out += "    }\n\n";

  out += "    public static decode(buf: Uint8Array): " + d.name + " {\n";
  out += "        const r = new DataReader(buf);\n";
  out += "        r.readU32();\n";
  out += "        return " + d.name + ".decodeFrom(r);\n";
  out += "    }\n\n";

  out += "    public static dataId(): number {\n";
  out += "        return " + typeId + ";\n";
  out += "    }\n\n";

  // JSON revival (for routes with `stream: DataStream.JSON`). Mirrors `decodeFrom`:
  // read each field into a local, then build via the constructor (so `readonly` is set
  // without a cast). Note: JSON numbers lose precision above 2^53 - prefer the Binary
  // stream for large `u64`/bignum fields.
  out += "    public static fromJSONValue(v: any): " + d.name + " {\n";
  for (let f = 0, fk = d.fields.length; f < fk; ++f) {
    let field = d.fields[f];
    let src = "(v ? v." + field.name + " : undefined)";
    if (field.ref.array) {
      let elemTs = mapName(field.ref.type, dataNames);
      out += "        const " + field.name + ": " + elemTs + "[] = (Array.isArray(" + src + ") ? " + src + " : []).map((x: any) => " + jsonReviveScalar(field.ref.type, "x", dataNames) + ");\n";
    } else {
      out += "        const " + field.name + " = " + jsonReviveScalar(field.ref.type, src, dataNames) + ";\n";
    }
  }
  let jargs = new Array<string>();
  for (let f = 0, fk = d.fields.length; f < fk; ++f) jargs.push(d.fields[f].name);
  out += "        return new " + d.name + "(" + jargs.join(", ") + ");\n";
  out += "    }\n\n";

  // JSON-wire shape for sending (the inverse of `fromJSONValue`): 128/256-bit fields
  // become limb arrays, nested @data recurses. `__toilJson` calls this on @data bodies.
  out += "    public toJSONValue(): any {\n";
  let jfields = new Array<string>();
  for (let f = 0, fk = d.fields.length; f < fk; ++f) {
    let field = d.fields[f];
    let access = "this." + field.name;
    let expr: string;
    if (field.ref.array) {
      expr = jsonSendNeedsTransform(field.ref.type, dataNames)
        ? access + ".map((x) => " + jsonSendScalar(field.ref.type, "x", dataNames) + ")"
        : access;
    } else {
      expr = jsonSendScalar(field.ref.type, access, dataNames);
    }
    jfields.push(field.name + ": " + expr);
  }
  out += "        return { " + jfields.join(", ") + " };\n";
  out += "    }\n";

  out += "}\n";
  return out;
}

/** The args parameter + return type for one client REST route. */
/**
 * A safe TS object key for a `:param` name. A clean identifier is emitted bare; anything
 * else is quoted (every char escaped) so a hostile route path - e.g. `/:x}; })(); evil((`
 * captured as a "param name" - can never break out of the generated args type into the
 * surrounding `__toilRest` object literal. (The matcher pattern + URL are already
 * `JSON.stringify`d; this closes the one remaining free-form-string -> code path.)
 */
function tsKey(name: string): string {
  return /^[A-Za-z_$][A-Za-z0-9_$]*$/.test(name) ? name : JSON.stringify(name);
}

function routeSig(r: RestRoute, dataNames: Set<string>): { argsParam: string, ret: string } {
  let fields = new Array<string>();
  if (r.params.length) {
    let ps = new Array<string>();
    for (let i = 0, k = r.params.length; i < k; ++i) ps.push(tsKey(r.params[i]) + ": string | number | bigint");
    fields.push("params: { " + ps.join("; ") + " }");
  }
  if (r.bodyType != null) fields.push("body: " + mapName(r.bodyType, dataNames));
  fields.push("query?: Record<string, string | number | bigint>");
  fields.push("headers?: Record<string, string>");
  let argsType = "{ " + fields.join("; ") + " }";
  let required = r.params.length > 0 || r.bodyType != null;
  let ret = r.returnsResponse ? "Promise<Response>" : (r.returns.type == "void" ? "Promise<void>" : "Promise<" + tsType(r.returns, dataNames) + ">");
  return { argsParam: (required ? "args: " : "args?: ") + argsType, ret };
}

/**
 * Emits the working `Server.REST` fetch client (attached to `globalThis` so the
 * toiljs `Server` proxy can surface it) plus a tiny URL builder. Returns "" when
 * the project declares no `@rest` controllers.
 */
function emitRestClient(surface: RpcSurface, dataNames: Set<string>): string {
  if (surface.rest.length == 0) return "";
  let out = "// Generated REST fetch client. Reached as `Server.REST.<controller>.<route>(args)`.\n";
  out += "function __toilUrl(pattern: string, params?: Record<string, string | number | bigint>, query?: Record<string, string | number | bigint>): string {\n";
  out += "    let path = pattern;\n";
  out += "    if (params) for (const k in params) path = path.replace(\":\" + k, encodeURIComponent(String(params[k])));\n";
  out += "    if (query) {\n";
  out += "        const usp = new URLSearchParams();\n";
  out += "        for (const k in query) usp.set(k, String(query[k]));\n";
  out += "        const qs = usp.toString();\n";
  out += "        if (qs) path += (path.includes(\"?\") ? \"&\" : \"?\") + qs;\n";
  out += "    }\n";
  out += "    return path;\n";
  out += "}\n\n";

  // Whether any route sends a JSON body (so the `__toilJson` helper is actually used).
  let needsJson = false;
  for (let c = 0, ck = surface.rest.length; c < ck && !needsJson; ++c) {
    let ctrl = surface.rest[c];
    for (let i = 0, k = ctrl.routes.length; i < k; ++i) {
      let r = ctrl.routes[i];
      if (r.bodyType != null && r.stream != "Binary") { needsJson = true; break; }
    }
  }

  // JSON body serializer. `toJSONValue` has already turned every 64-bit-and-up integer
  // into a decimal string, so a @data body carries no bare `bigint`; the `bigint` branch
  // below is a defensive fallback (e.g. a hand-built value) that emits a raw number token.
  if (needsJson) {
  out += "function __toilJson(v: any): string {\n";
  out += "    if (v === null || v === undefined) return \"null\";\n";
  out += "    const t = typeof v;\n";
  out += "    if (t === \"bigint\") return v.toString();\n";
  out += "    if (t === \"number\") return Number.isFinite(v) ? String(v) : \"null\";\n";
  out += "    if (t === \"boolean\") return v ? \"true\" : \"false\";\n";
  out += "    if (t === \"string\") return JSON.stringify(v);\n";
  out += "    if (Array.isArray(v)) return \"[\" + v.map((x: any) => __toilJson(x)).join(\",\") + \"]\";\n";
  out += "    if (typeof v.toJSONValue === \"function\") return __toilJson(v.toJSONValue());\n";
  out += "    let s = \"{\", first = true;\n";
  out += "    for (const k in v) {\n";
  out += "        if (!Object.prototype.hasOwnProperty.call(v, k)) continue;\n";
  out += "        const val = v[k];\n";
  out += "        if (val === undefined || typeof val === \"function\") continue;\n";
  out += "        s += (first ? \"\" : \",\") + JSON.stringify(k) + \":\" + __toilJson(val);\n";
  out += "        first = false;\n";
  out += "    }\n";
  out += "    return s + \"}\";\n";
  out += "}\n\n";
  }

  out += "const __toilRest = {\n";
  for (let c = 0, ck = surface.rest.length; c < ck; ++c) {
    let ctrl = surface.rest[c];
    out += "    " + ctrl.key + ": {\n";
    for (let i = 0, k = ctrl.routes.length; i < k; ++i) {
      let r = ctrl.routes[i];
      let sig = routeSig(r, dataNames);
      out += "        async " + r.name + "(" + sig.argsParam + "): " + sig.ret + " {\n";
      out += "            const __url = __toilUrl(" + JSON.stringify(r.pattern) + ", " + (r.params.length ? "args.params as any" : "undefined") + ", args?.query);\n";
      let ct = r.bodyType != null ? (r.stream == "Binary" ? "application/octet-stream" : "application/json") : "";
      let headers = "{ ";
      if (ct.length) headers += JSON.stringify("content-type") + ": " + JSON.stringify(ct) + ", ";
      headers += "...(args?.headers ?? {}) }";
      let bodyInit = r.bodyType != null ? (r.stream == "Binary" ? ", body: args.body.encode()" : ", body: __toilJson(args.body)") : "";
      out += "            const __res = await fetch(__url, { method: " + JSON.stringify(r.http) + ", headers: " + headers + bodyInit + " });\n";
      out += "            if (!__res.ok) throw new Error(`" + "Server.REST." + ctrl.key + "." + r.name + " ${__res.status}`);\n";
      if (r.returnsResponse) {
        out += "            return __res;\n";
      } else if (r.returns.type == "void") {
        out += "            return;\n";
      } else if (r.stream == "Binary") {
        out += "            const __buf = new Uint8Array(await __res.arrayBuffer());\n";
        out += "            return " + r.returns.type + ".decode(__buf);\n";
      } else if (r.returns.array) {
        out += "            const __j = await __res.json();\n";
        out += "            return (Array.isArray(__j) ? __j : []).map((x: any) => " + r.returns.type + ".fromJSONValue(x));\n";
      } else {
        out += "            return " + r.returns.type + ".fromJSONValue(await __res.json());\n";
      }
      out += "        },\n";
    }
    out += "    },\n";
  }
  out += "};\n";
  out += "if (typeof globalThis !== \"undefined\") (globalThis as any).__toilRest = __toilRest;\n";
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
  if (surface.rest.length) {
    out += "        /** Generated HTTP fetch client for the `@rest` controllers. */\n";
    out += "        readonly REST: {\n";
    for (let i = 0, k = surface.rest.length; i < k; ++i) {
      let ctrl = surface.rest[i];
      out += "            readonly " + ctrl.key + ": {\n";
      for (let m = 0, mk = ctrl.routes.length; m < mk; ++m) {
        let sig = routeSig(ctrl.routes[m], dataNames);
        out += "                " + ctrl.routes[m].name + "(" + sig.argsParam + "): " + sig.ret + ";\n";
      }
      out += "            };\n";
    }
    out += "        };\n";
  }
  out += "    };\n";
  out += "}\n";
  return out;
}

/**
 * Emits the client-side `getUser()` for the `@user` type: it reads the readable
 * `__Secure-toil_user` companion cookie the server set at login, base64url-decodes
 * it, and runs the generated `@user` codec. Fully typed (returns the `@user`
 * class) with NO type argument. Display-only: the server re-verifies the HttpOnly
 * signed session on every `@auth` request, so this is never an authorization
 * source. Emitted only when the program declares a `@user` class.
 */
function emitAuthClient(userType: string): string {
  let out = "// ---- @user session client (reads the readable companion cookie) ----\n";
  out += "const __TOIL_USER_COOKIE = \"__Secure-toil_user\";\n\n";
  out += "function __toilReadCookie(name: string): string | null {\n";
  out += "    if (typeof document === \"undefined\" || !document.cookie) return null;\n";
  out += "    const pairs = document.cookie.split(\"; \");\n";
  out += "    for (let i = 0; i < pairs.length; i++) {\n";
  out += "        const eq = pairs[i].indexOf(\"=\");\n";
  out += "        if (eq > 0 && pairs[i].slice(0, eq) === name) return pairs[i].slice(eq + 1);\n";
  out += "    }\n";
  out += "    return null;\n";
  out += "}\n\n";
  out += "function __toilB64UrlDecode(s: string): Uint8Array | null {\n";
  out += "    try {\n";
  out += "        let b = s.replace(/-/g, \"+\").replace(/_/g, \"/\");\n";
  out += "        while (b.length % 4) b += \"=\";\n";
  out += "        const bin = atob(b);\n";
  out += "        const out = new Uint8Array(bin.length);\n";
  out += "        for (let i = 0; i < bin.length; i++) out[i] = bin.charCodeAt(i);\n";
  out += "        return out;\n";
  out += "    } catch { return null; }\n";
  out += "}\n\n";
  out += "/**\n";
  out += " * The signed-in user, decoded from the readable `__Secure-toil_user` companion\n";
  out += " * cookie the server set at login, or `null`. Auto-typed to your `@user` class\n";
  out += " * (`" + userType + "`) with no type argument. DISPLAY-ONLY: the server re-verifies\n";
  out += " * the HttpOnly signed session on every `@auth` request; never trust this for\n";
  out += " * authorization (a client can forge it, fooling only its own UI).\n";
  out += " */\n";
  out += "export function getUser(): " + userType + " | null {\n";
  out += "    const raw = __toilReadCookie(__TOIL_USER_COOKIE);\n";
  out += "    if (raw === null) return null;\n";
  out += "    const bytes = __toilB64UrlDecode(raw);\n";
  out += "    if (bytes === null) return null;\n";
  out += "    try { return " + userType + ".decode(bytes); } catch { return null; }\n";
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
  if (surface.data.length == 0 && surface.services.length == 0 && surface.remotes.length == 0 && surface.rest.length == 0) {
    return null;
  }

  let dataNames = new Set<string>();
  for (let i = 0, k = surface.data.length; i < k; ++i) dataNames.add(surface.data[i].name);

  let out = "/* eslint-disable */\n";
  out += "// AUTO-GENERATED by toilscript, do not edit.\n";
  out += "// Working @data codec + the typed client-callable Server surface.\n";
  out += "// The Server proxy + transport are provided by toiljs.\n\n";

  if (surface.data.length) {
    out += "import { DataWriter, DataReader } from \"" + runtime + "\";\n\n";
    out += emitLimbHelpers();
    out += "\n";
  }

  for (let i = 0, k = surface.data.length; i < k; ++i) {
    out += emitDataClass(surface.data[i], dataNames);
    out += "\n";
  }

  let restClient = emitRestClient(surface, dataNames);
  if (restClient.length) out += restClient + "\n";

  if (surface.userType != null) out += emitAuthClient(<string>surface.userType) + "\n";

  out += emitServerSurface(surface, dataNames);
  // Guarantee module scope (so `declare global` is valid) even with no @data exports.
  out += "\nexport {};\n";

  return out;
}
