// Compile tests/dbmigrate/spec.ts and assert the @migrate machinery (Phase 3):
//  (a) EMIT - the `users` collection carries the OLD layout version in its
//      `migratableFrom` list, so the deploy gate can admit the breaking change.
//  (b) WEAVE - the module imports `data.result_schema_version`; only the woven
//      version-dispatch in `User.decodeInto` references it, so its presence proves
//      the dispatch was generated (and a non-@migrate module must NOT import it).
import { readFileSync, mkdtempSync, rmSync } from "node:fs";
import { tmpdir } from "node:os";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { spawnSync } from "node:child_process";

const here = dirname(fileURLToPath(import.meta.url));
const root = join(here, "..", "..");

function fail(msg) {
    console.error(`@migrate test suite: ${msg}`);
    process.exit(1);
}

function compile(specPath) {
    const tmp = mkdtempSync(join(tmpdir(), "dbmigrate-"));
    const out = join(tmp, "spec.wasm");
    const r = spawnSync("node", [join(root, "bin", "toilscript.js"), specPath, "-o", out, "--runtime", "stub"], {
        stdio: ["ignore", "ignore", "inherit"],
    });
    if (r.status !== 0) fail(`COMPILE FAILED for ${specPath}`);
    const buf = readFileSync(out);
    rmSync(tmp, { recursive: true, force: true });
    return buf;
}

// --- catalog decode (mirrors the wire format) ---
function leb(buf, pos) {
    let result = 0, shift = 0, p = pos;
    for (;;) { const b = buf[p++]; result |= (b & 0x7f) << shift; if ((b & 0x80) === 0) break; shift += 7; }
    return [result >>> 0, p];
}
function findCatalog(buf) {
    let pos = 8;
    while (pos < buf.length) {
        const id = buf[pos++];
        let size; [size, pos] = leb(buf, pos);
        const end = pos + size;
        if (id === 0) {
            let nameLen, np; [nameLen, np] = leb(buf, pos);
            if (buf.toString("latin1", np, np + nameLen) === "toildb.catalog") return buf.subarray(np + nameLen, end);
        }
        pos = end;
    }
    return null;
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

// --- (a) the migration spec ---
const wasm = compile(join(here, "spec.ts"));
const cat = findCatalog(wasm);
if (cat === null) fail("toildb.catalog section not found");
const users = decodeCatalog(cat).find((c) => c.name === "users");
if (!users) fail("users collection missing");

// UserV1 = { id: u32, name: string } is the old layout the migration covers.
const oldVersion = layoutHash([
    { name: "id", typeName: "u32", isArray: false },
    { name: "name", typeName: "string", isArray: false },
]);
if (users.migratableFrom.length !== 1) fail(`expected 1 migratable version, got ${users.migratableFrom.length}`);
if (users.migratableFrom[0] !== oldVersion) fail(`migratableFrom ${users.migratableFrom[0]} != UserV1 layout ${oldVersion}`);
// The current User layout (id:u64) must differ from the old one (the change is breaking).
if (users.schemaVersion === oldVersion) fail("current schema_version must differ from the migratable old version");

// (b) the weave pulled in the version import (only the dispatch references it).
const wasmStr = wasm.toString("latin1");
if (!wasmStr.includes("result_schema_version"))
    fail("woven decodeInto did not pull in data.result_schema_version");

// --- (c) a NON-@migrate module must NOT import the version (no hot-path cost) ---
const plain = compile(join(here, "..", "dbstatic", "spec.ts")).toString("latin1");
if (plain.includes("result_schema_version"))
    fail("a module with no @migrate must not import data.result_schema_version");

// --- (d) a @migrate that touches the database must NOT compile ---
import { writeFileSync } from "node:fs";
const badDir = mkdtempSync(join(tmpdir(), "dbmigrate-bad-"));
const badSpec = join(badDir, "bad.ts");
writeFileSync(badSpec, `
@data class UserId { id: u64 = 0; }
@data class UserV1 { id: u32 = 0; }
@data class User { id: u64 = 0; }
@database class App { @collection users: Documents<UserId, User>; }
@migrate
function up(old: UserV1): User {
  // ILLEGAL: a migration is a pure transform; it must not touch the database.
  App.users.delete(new UserId());
  const u = new User(); u.id = <u64>old.id; return u;
}
export function probe(): u64 { return App.users.require(new UserId()).id; }
`);
const badOut = join(badDir, "bad.wasm");
const badRun = spawnSync("node", [join(root, "bin", "toilscript.js"), badSpec, "-o", badOut, "--runtime", "stub"], {
    stdio: ["ignore", "ignore", "pipe"],
});
rmSync(badDir, { recursive: true, force: true });
if (badRun.status === 0) fail("a @migrate that touches the database must be a compile error");
if (!String(badRun.stderr).includes("migrate"))
    fail(`expected a @migrate diagnostic, got: ${String(badRun.stderr).slice(0, 200)}`);

console.log("@migrate test suite: ALL PASS");
