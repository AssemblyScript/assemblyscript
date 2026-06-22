// Compile @migrate fixtures and assert the machinery (Phase 3 + the migrations
// convention):
//  (a) EMIT  - the `users` collection carries the OLD layout version(s) in its
//      `migratableFrom` list, so the deploy gate can admit the breaking change.
//  (b) WEAVE - the module imports `data.result_schema_version`; only the woven
//      version-dispatch references it, so its presence proves the dispatch ran.
//  (CONVENTION) - every `@migrate` lives in a `migrations/<Type>.migration.ts`
//      file (folder + extension, enforced); the build DISCOVERS those files
//      (nothing imports them) and the weave INJECTS the cross-file imports into
//      the value type's module. So each spec here is a value-type `app.ts` plus a
//      separate `migrations/*.migration.ts`, compiled in an isolated dir.
import { readFileSync, mkdtempSync, mkdirSync, writeFileSync, rmSync, openSync, closeSync } from "node:fs";
import { tmpdir } from "node:os";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { spawnSync } from "node:child_process";

const here = dirname(fileURLToPath(import.meta.url));
const root = join(here, "..", "..");
const bin = join(root, "bin", "toilscript.js");

function fail(msg) {
    console.error(`@migrate test suite: ${msg}`);
    process.exit(1);
}

// Write `files` into an isolated temp dir and compile `app.ts` with cwd=that dir,
// so migration auto-discovery is scoped to exactly this spec. Returns the run +
// (on success) the wasm bytes.
function build(files, { expectFail = false } = {}) {
    const tmp = mkdtempSync(join(tmpdir(), "dbmig-"));
    for (const rel of Object.keys(files)) {
        const fp = join(tmp, rel);
        mkdirSync(dirname(fp), { recursive: true });
        writeFileSync(fp, files[rel]);
    }
    const out = join(tmp, "out.wasm");
    const log = join(tmp, "compile.log");
    let logFd = -1;
    const stdio = expectFail
        ? (logFd = openSync(log, "w"), ["ignore", logFd, logFd])
        : ["ignore", "ignore", "inherit"];
    const r = spawnSync("node", ["--enable-source-maps", bin, "app.ts", "-o", out, "--runtime", "stub"], {
        cwd: tmp,
        stdio,
    });
    if (logFd >= 0) closeSync(logFd);
    const output = expectFail ? readFileSync(log, "utf8") : "";
    let buf = null;
    if (!expectFail) {
        if (r.status !== 0) { rmSync(tmp, { recursive: true, force: true }); fail("COMPILE FAILED"); }
        buf = readFileSync(out);
    }
    rmSync(tmp, { recursive: true, force: true });
    return {
        status: r.status,
        stderr: output,
        error: r.error,
        signal: r.signal,
        buf,
    };
}

// The value-type module shared by the migrating specs: current `User` (exported so
// a migration file can import it) + the @database that retains its read path.
const APP = `
@data
class UserId { id: u64 = 0; }
@data
export class User { id: u64 = 0; name: string = ""; email: string = ""; }
@database
class App { @collection users: Documents<UserId, User>; }
export function probe(): u64 { return App.users.require(new UserId()).id; }
`;

// --- catalog decode (mirrors the wire format) ---
function leb(buf, pos) {
    let result = 0, shift = 0, p = pos;
    for (;;) { const b = buf[p++]; result |= (b & 0x7f) << shift; if ((b & 0x80) === 0) break; shift += 7; }
    return [result >>> 0, p];
}
function findSection(buf, want) {
    let pos = 8;
    while (pos < buf.length) {
        const id = buf[pos++];
        let size; [size, pos] = leb(buf, pos);
        const end = pos + size;
        if (id === 0) {
            let nameLen, np; [nameLen, np] = leb(buf, pos);
            if (buf.toString("latin1", np, np + nameLen) === want) return buf.subarray(np + nameLen, end);
        }
        pos = end;
    }
    return null;
}
function findCatalog(buf) { return findSection(buf, "toildb.catalog"); }
function decodeTypes(p) {
    let pos = 0;
    const u16 = () => { const v = p[pos] | (p[pos + 1] << 8); pos += 2; return v; };
    const u32 = () => { const v = (p[pos] | (p[pos + 1] << 8) | (p[pos + 2] << 16) | (p[pos + 3] << 24)) >>> 0; pos += 4; return v; };
    const u8 = () => p[pos++];
    const str = () => { const n = u32(); const s = p.toString("latin1", pos, pos + n); pos += n; return s; };
    const types = {};
    const nt = u16();
    for (let t = 0; t < nt; t++) {
        const name = str();
        const nf = u16();
        const fields = [];
        for (let f = 0; f < nf; f++) fields.push({ name: str(), typeName: str(), isArray: u8() !== 0 });
        types[name] = fields;
    }
    return types;
}
function decodeCatalog(p) {
    let pos = 0;
    const u16 = () => { const v = p[pos] | (p[pos + 1] << 8); pos += 2; return v; };
    const u32 = () => { const v = (p[pos] | (p[pos + 1] << 8) | (p[pos + 2] << 16) | (p[pos + 3] << 24)) >>> 0; pos += 4; return v; };
    const u8 = () => p[pos++];
    const str = () => { const n = u32(); const s = p.toString("latin1", pos, pos + n); pos += n; return s; };
    const colls = [];
    u16(); const ndb = u16();
    for (let d = 0; d < ndb; d++) {
        str(); const nc = u16();
        for (let c = 0; c < nc; c++) {
            const name = str(), family = u8(), keyType = str(), valueType = str();
            const valueDataId = u32(), schemaVersion = u32(), generation = u32();
            u8(); u8();
            const nFields = u16();
            for (let f = 0; f < nFields; f++) { str(); str(); u8(); }
            const nMig = u16();
            const migratableFrom = [];
            for (let mi = 0; mi < nMig; mi++) migratableFrom.push(u32());
            colls.push({ name, family, keyType, valueType, valueDataId, schemaVersion, generation, migratableFrom });
        }
    }
    return colls;
}
const fnvByte = (h, b) => Math.imul(h ^ (b & 0xff), 0x01000193) >>> 0;
function fnvStr(h, s) {
    const n = s.length;
    h = fnvByte(h, n & 0xff); h = fnvByte(h, (n >>> 8) & 0xff);
    h = fnvByte(h, (n >>> 16) & 0xff); h = fnvByte(h, (n >>> 24) & 0xff);
    for (let i = 0; i < n; i++) h = fnvByte(h, s.charCodeAt(i));
    return h >>> 0;
}
function layoutHash(fields) {
    let h = 0x811c9dc5;
    for (const f of fields) { h = fnvStr(h, f.name); h = fnvStr(h, f.typeName); h = fnvByte(h, f.isArray ? 1 : 0); }
    return h >>> 0;
}
const usersOf = (buf) => decodeCatalog(findCatalog(buf)).find((c) => c.name === "users");

const oldVersion = layoutHash([
    { name: "id", typeName: "u32", isArray: false },
    { name: "name", typeName: "string", isArray: false },
]);

// --- (a) the basic migration, @migrate in migrations/User.migration.ts ---
const basic = build({
    "app.ts": APP,
    "migrations/User.migration.ts": `
import { User } from "../app";
@data
export class UserV1 { id: u32 = 0; name: string = ""; }
@migrate
export function up(old: UserV1): User {
  const u = new User();
  u.id = <u64>old.id; u.name = old.name; u.email = "";
  return u;
}
`,
}).buf;
const users = usersOf(basic);
if (!users) fail("users collection missing");
if (users.migratableFrom.length !== 1) fail(`expected 1 migratable version, got ${users.migratableFrom.length}`);
if (users.migratableFrom[0] !== oldVersion) fail(`migratableFrom ${users.migratableFrom[0]} != UserV1 layout ${oldVersion}`);
if (users.schemaVersion === oldVersion) fail("current schema_version must differ from the migratable old version");

// (b) the weave pulled in the version import (only the dispatch references it).
if (!basic.toString("latin1").includes("result_schema_version"))
    fail("woven decodeInto did not pull in data.result_schema_version (cross-file)");

// --- (c) a NON-@migrate module must NOT import the version (no hot-path cost) ---
const plain = build({ "app.ts": readFileSync(join(here, "..", "dbstatic", "spec.ts"), "utf8") }).buf;
if (plain.toString("latin1").includes("result_schema_version"))
    fail("a module with no @migrate must not import data.result_schema_version");

// --- (d) a @migrate that touches the database must NOT compile (even when correctly placed) ---
const bad = build({
    "app.ts": `
@data
export class UserId { id: u64 = 0; }
@data
export class User { id: u64 = 0; }
@database
export class App { @collection users: Documents<UserId, User>; }
export function probe(): u64 { return App.users.require(new UserId()).id; }
`,
    "migrations/User.migration.ts": `
import { App, User, UserId } from "../app";
@data
export class UserV1 { id: u32 = 0; }
@migrate
export function up(old: UserV1): User {
  // ILLEGAL: a migration is a pure transform; it must not touch the database.
  App.users.delete(new UserId());
  const u = new User(); u.id = <u64>old.id; return u;
}
`,
}, { expectFail: true });
if (bad.status === 0) fail("a @migrate that touches the database must be a compile error");
if (!bad.stderr.includes("migrate"))
    fail(`expected a @migrate diagnostic, got: status=${bad.status} signal=${bad.signal} error=${bad.error ?? ""} output=${bad.stderr.slice(0, 200)}`);

// --- (d2) a @migrate OUTSIDE a migrations/*.migration.ts file must NOT compile ---
const misplaced = build({
    "app.ts": `
@data
class UserId { id: u64 = 0; }
@data
export class User { id: u64 = 0; name: string = ""; email: string = ""; }
@data
export class UserV1 { id: u32 = 0; name: string = ""; }
@migrate
export function up(old: UserV1): User { const u = new User(); u.id = <u64>old.id; u.name = old.name; u.email = ""; return u; }
@database
class App { @collection users: Documents<UserId, User>; }
export function probe(): u64 { return App.users.require(new UserId()).id; }
`,
}, { expectFail: true });
if (misplaced.status === 0) fail("a @migrate outside migrations/*.migration.ts must be a compile error");
if (!misplaced.stderr.includes("migrations/"))
    fail(`expected a migration-location diagnostic, got: ${misplaced.stderr.slice(0, 200)}`);

// --- (e) the DELTA form `(old, into): void` compiles, emits, and weaves ---
const delta = build({
    "app.ts": APP,
    "migrations/User.migration.ts": `
import { User } from "../app";
@data
export class UserV1 { id: u32 = 0; name: string = ""; }
@migrate
export function up(old: UserV1, u: User): void {
  // name is carried over automatically (shared field); email defaults to "".
  u.id = <u64>old.id;
}
`,
}).buf;
const dusers = usersOf(delta);
if (!dusers) fail("delta: users collection missing");
if (dusers.migratableFrom.length !== 1 || dusers.migratableFrom[0] !== oldVersion)
    fail(`delta: migratableFrom ${JSON.stringify(dusers.migratableFrom)} != [${oldVersion}]`);
if (!delta.toString("latin1").includes("result_schema_version"))
    fail("delta: woven decode did not pull in data.result_schema_version");

// --- (f) a migration CHAIN: both v0 and v1 reach the current User ---
const chain = build({
    "app.ts": APP,
    "migrations/User.migration.ts": `
import { User } from "../app";
@data
export class UserV0 { id: u32 = 0; }
@data
export class UserV1 { id: u32 = 0; name: string = ""; }
@migrate
export function up01(old: UserV0): UserV1 { const u = new UserV1(); u.id = old.id; u.name = ""; return u; }
@migrate
export function up12(old: UserV1): User { const u = new User(); u.id = <u64>old.id; u.name = old.name; u.email = ""; return u; }
`,
}).buf;
const cusers = usersOf(chain);
if (!cusers) fail("chain: users collection missing");
const v0 = layoutHash([{ name: "id", typeName: "u32", isArray: false }]);
const v1 = oldVersion;
if (cusers.migratableFrom.length !== 2)
    fail(`chain: expected 2 migratable versions, got ${JSON.stringify(cusers.migratableFrom)}`);
for (const want of [v0, v1]) {
    if (!cusers.migratableFrom.includes(want))
        fail(`chain: migratableFrom ${JSON.stringify(cusers.migratableFrom)} missing ${want}`);
}
if (cusers.schemaVersion === v0 || cusers.schemaVersion === v1)
    fail("chain: current version must differ from both old versions");
if (!chain.toString("latin1").includes("result_schema_version"))
    fail("chain: woven decode did not pull in data.result_schema_version");

// --- (g) a NESTED @data type emits a toildb.types registry with its layout ---
const nested = build({ "app.ts": readFileSync(join(here, "spec_nested.ts"), "utf8") }).buf;
const typesSec = findSection(nested, "toildb.types");
if (typesSec === null) fail("nested: toildb.types section not emitted");
const types = decodeTypes(typesSec);
if (!types["Address"]) fail(`nested: Address missing from type registry (${Object.keys(types)})`);
const addr = types["Address"];
if (addr.length !== 2 || addr[0].name !== "street" || addr[0].typeName !== "string" || addr[1].name !== "zip")
    fail(`nested: Address layout wrong: ${JSON.stringify(addr)}`);
if (!types["User"]) fail("nested: User missing from type registry");

// --- (h) the RECURSIVE schema_version: the `users` collection's emitted version
//      hashes THROUGH the nested Address type, and is the pinned cross-repo
//      vector also asserted in the backend (toildb schema_descriptor.rs:
//      `matches_the_toilscript_compiler_nested_layout_hash`). If either repo's
//      recursion diverges, this number drifts and every nested-row read mismatches.
// The recursion type map mirrors the runtime `toildb.types` registry (collection
// value types + their nested types). User { id:u64, addr:Address }; Address is a
// known @data type so the hash continues over its fields after the `addr` triple.
function layoutHashRec(fields, typeMap, seen) {
    let h = 0x811c9dc5;
    const walk = (h, fields, seen) => {
        for (const f of fields) {
            h = fnvStr(h, f.name);
            h = fnvStr(h, f.typeName);
            h = fnvByte(h, f.isArray ? 1 : 0);
            if (typeMap.has(f.typeName) && !seen.has(f.typeName)) {
                seen.add(f.typeName);
                h = walk(h, typeMap.get(f.typeName), seen);
                seen.delete(f.typeName);
            }
        }
        return h >>> 0;
    };
    return walk(h, fields, seen || new Set());
}
const F = (name, typeName, isArray = false) => ({ name, typeName, isArray });
const recMap = new Map();
recMap.set("Address", [F("street", "string"), F("zip", "string")]);
recMap.set("UserId", [F("id", "u64")]);
recMap.set("User", [F("id", "u64"), F("addr", "Address")]);
const expectedNested = layoutHashRec([F("id", "u64"), F("addr", "Address")], recMap);
// PINNED cross-repo vector (recomputed once; identical in the backend).
if (expectedNested !== 1089707667)
    fail(`nested layoutHash drifted from the pinned cross-repo vector: ${expectedNested}`);
const nestedUsers = usersOf(nested);
if (!nestedUsers) fail("nested: users collection missing from catalog");
if (nestedUsers.schemaVersion !== expectedNested)
    fail(`nested: users.schema_version ${nestedUsers.schemaVersion} != recursive layoutHash ${expectedNested}`);
// A FLAT hash of the same outer fields (ignoring Address) must DIFFER, proving the
// emitted version actually recursed into the nested type.
const flatUser = layoutHash([F("id", "u64"), F("addr", "Address")]);
if (nestedUsers.schemaVersion === flatUser)
    fail("nested: schema_version did not recurse into the nested @data type (flat == recursive)");

// --- (i) a @migrate whose OLD type contains a NESTED @data field: the emitted
//      `migratableFrom` is the RECURSIVE hash of the old type (through the live
//      nested type), so it matches the recursive schema_version the old layout was
//      deployed under. This is what makes a nested-type change @migrate-able rather
//      than refuse-only.
const APP_NESTED = `
@data
export class Tag { key: string = ""; val: string = ""; }
@data
class UserId { id: u64 = 0; }
@data
export class User { id: u64 = 0; tag: Tag = new Tag(); extra: string = ""; }
@database
class App { @collection users: Documents<UserId, User>; }
export function probe(): u64 { return App.users.require(new UserId()).id; }
`;
const nestedMig = build({
    "app.ts": APP_NESTED,
    "migrations/User.migration.ts": `
import { User, Tag } from "../app";
// The old shape: same nested Tag, but no extra field yet (an append since).
@data
export class UserOld { id: u64 = 0; tag: Tag = new Tag(); }
@migrate
export function up(old: UserOld): User {
  const u = new User(); u.id = old.id; u.tag = old.tag; u.extra = ""; return u;
}
`,
}).buf;
const nmUsers = usersOf(nestedMig);
if (!nmUsers) fail("nested-migrate: users collection missing");
// `Tag` is a LIVE @data type (not a *.migration shape), so it is in the recursion
// map; `UserOld { id:u64, tag:Tag }` hashes recursively through Tag.
const recMap2 = new Map();
recMap2.set("Tag", [F("key", "string"), F("val", "string")]);
recMap2.set("UserId", [F("id", "u64")]);
recMap2.set("User", [F("id", "u64"), F("tag", "Tag"), F("extra", "string")]);
const oldUserVersion = layoutHashRec([F("id", "u64"), F("tag", "Tag")], recMap2);
if (nmUsers.migratableFrom.length !== 1)
    fail(`nested-migrate: expected 1 migratable version, got ${JSON.stringify(nmUsers.migratableFrom)}`);
if (nmUsers.migratableFrom[0] !== oldUserVersion)
    fail(`nested-migrate: migratableFrom ${nmUsers.migratableFrom[0]} != recursive old-version ${oldUserVersion}`);
// And it must DIFFER from a flat hash of the old fields (proving the old-version
// hash recursed into Tag too).
const oldUserFlat = layoutHash([F("id", "u64"), F("tag", "Tag")]);
if (nmUsers.migratableFrom[0] === oldUserFlat)
    fail("nested-migrate: old-version hash did not recurse into the nested @data type");
// The current schema_version (with the appended `extra`) recurses through Tag too,
// and differs from the migratable old version.
const curUserVersion = layoutHashRec([F("id", "u64"), F("tag", "Tag"), F("extra", "string")], recMap2);
if (nmUsers.schemaVersion !== curUserVersion)
    fail(`nested-migrate: current schema_version ${nmUsers.schemaVersion} != recursive ${curUserVersion}`);
if (nmUsers.schemaVersion === oldUserVersion)
    fail("nested-migrate: current and old versions must differ");

console.log("@migrate test suite: ALL PASS");
