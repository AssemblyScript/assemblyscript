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
const wasm = readFileSync(out).toString("latin1");
rmSync(tmp, { recursive: true, force: true });
for (const needle of ["toildb.catalog", "items", "hits", "legacy"]) {
    if (!wasm.includes(needle)) fail(`MISSING '${needle}' in catalog/output`);
}

console.log("@collection static test suite: ALL PASS");
