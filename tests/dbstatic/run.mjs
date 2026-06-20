// Compile tests/dbstatic/spec.ts with the local toilscript and assert that the
// `@collection static` form (a) compiles (no TS2718 duplicate / AS238 missing
// initializer), and (b) still reaches the `toildb.catalog` custom section with
// every collection (the demote-to-instance step must not hide it). Compile-only:
// the `@database` getters import the `__toildbResolve` host function, so the
// module is not instantiated here.
import { readFileSync, mkdtempSync, rmSync } from "node:fs";
import { tmpdir } from "node:os";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { spawnSync } from "node:child_process";

const here = dirname(fileURLToPath(import.meta.url));
const root = join(here, "..", "..");
const spec = join(here, "spec.ts");
const tmp = mkdtempSync(join(tmpdir(), "dbstatic-"));
const out = join(tmp, "spec.wasm");

function fail(msg) {
    console.error(`@collection static test suite: ${msg}`);
    rmSync(tmp, { recursive: true, force: true });
    process.exit(1);
}

const compile = spawnSync(
    "node",
    [join(root, "bin", "toilscript.js"), spec, "-o", out, "--runtime", "stub"],
    { stdio: "inherit" },
);
if (compile.status !== 0) fail("COMPILE FAILED");

// The catalog records each `@collection` from the AST; the demoted static fields
// must still be there with the right names, alongside the legacy instance one.
const wasmBuf = readFileSync(out);
const wasm = wasmBuf.toString("latin1");
rmSync(tmp, { recursive: true, force: true });
for (const needle of ["toildb.catalog", "items", "hits", "legacy"]) {
    if (!wasm.includes(needle)) fail(`MISSING '${needle}' in catalog/output`);
}

// --- schema_version is the field-LAYOUT hash, not the value-name hash ---
// Decode the `toildb.catalog` custom section and check each collection's
// schema_version, so a shape change (add/remove/reorder a field) is detectable.
function leb(buf, pos) {
    let result = 0, shift = 0, p = pos;
    for (;;) {
        const b = buf[p++];
        result |= (b & 0x7f) << shift;
        if ((b & 0x80) === 0) break;
        shift += 7;
    }
    return [result >>> 0, p];
}
function findCatalog(buf) {
    let pos = 8; // past magic + version
    while (pos < buf.length) {
        const id = buf[pos++];
        let size; [size, pos] = leb(buf, pos);
        const end = pos + size;
        if (id === 0) {
            let nameLen, np; [nameLen, np] = leb(buf, pos);
            if (buf.toString("latin1", np, np + nameLen) === "toildb.catalog") {
                return buf.subarray(np + nameLen, end);
            }
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
    u16(); // version
    const ndb = u16();
    for (let d = 0; d < ndb; d++) {
        str(); // db name
        const nc = u16();
        for (let c = 0; c < nc; c++) {
            const name = str(), family = u8(), keyType = str(), valueType = str();
            const valueDataId = u32(), schemaVersion = u32(), generation = u32();
            u8(); u8(); // replication, placement
            const nFields = u16();
            const fields = [];
            for (let f = 0; f < nFields; f++) {
                fields.push({ name: str(), typeName: str(), isArray: u8() !== 0 });
            }
            const nMig = u16();
            const migratableFrom = [];
            for (let mi = 0; mi < nMig; mi++) migratableFrom.push(u32());
            colls.push({ name, family, keyType, valueType, valueDataId, schemaVersion, generation, fields, migratableFrom });
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
const fnv1a = (s) => { let h = 0x811c9dc5; for (let i = 0; i < s.length; i++) h = Math.imul(h ^ s.charCodeAt(i), 0x01000193) >>> 0; return h >>> 0; };

const cat = findCatalog(wasmBuf);
if (cat === null) fail("toildb.catalog section not found for decode");
const colls = decodeCatalog(cat);
const items = colls.find((c) => c.name === "items");
const legacy = colls.find((c) => c.name === "legacy");
if (!items || !legacy) fail("items/legacy collections missing from decoded catalog");
// value type Item = { name: string } -> layout hash of one string field.
// The literal pins the cross-repo vector also asserted in toildb's
// schema_descriptor.rs (`matches_the_toilscript_compiler_layout_hash`).
const expected = layoutHash([{ name: "name", typeName: "string", isArray: false }]);
if (expected !== 4276894199) fail(`layoutHash drifted from the pinned cross-repo vector: ${expected}`);
if (items.schemaVersion !== expected) fail(`items.schema_version ${items.schemaVersion} != layoutHash ${expected}`);
if (items.schemaVersion === fnv1a("Item")) fail("schema_version is still the value-NAME hash, not the field LAYOUT hash");
if (items.valueDataId !== fnv1a("Item")) fail("value_data_id must remain the value-name hash");
// items and legacy share the value type Item, so they share a schema_version.
if (items.schemaVersion !== legacy.schemaVersion) fail("same value type must yield the same schema_version");
// the field LAYOUT is emitted too (so the deploy gate can compare old vs new).
// Item = { name: string }.
if (items.fields.length !== 1) fail(`items should emit 1 field, got ${items.fields.length}`);
if (items.fields[0].name !== "name" || items.fields[0].typeName !== "string" || items.fields[0].isArray)
    fail(`items field layout wrong: ${JSON.stringify(items.fields)}`);
// hits is Counter<Key> -> host-owned i64 value, no @data layout -> zero fields.
const hits = colls.find((c) => c.name === "hits");
if (!hits || hits.fields.length !== 0) fail("host-owned (Counter) value emits no field layout");

console.log("@collection static test suite: ALL PASS");
