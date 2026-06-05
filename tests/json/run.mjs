// Compile tests/json/json.spec.ts with the local toilscript (so the JSON global
// is in scope), instantiate it, run runAll(), and report. A failing `assert`
// aborts with its source line, which is surfaced here.
import { readFileSync, mkdtempSync, rmSync } from "node:fs";
import { tmpdir } from "node:os";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { spawnSync } from "node:child_process";

const here = dirname(fileURLToPath(import.meta.url));
const root = join(here, "..", "..");
const spec = join(here, "json.spec.ts");
const tmp = mkdtempSync(join(tmpdir(), "jsontest-"));
const out = join(tmp, "spec.wasm");

const compile = spawnSync(
    "node",
    [join(root, "bin", "toilscript.js"), spec, "-o", out, "--runtime", "stub"],
    { stdio: "inherit" },
);
if (compile.status !== 0) {
    console.error("JSON test suite: COMPILE FAILED");
    rmSync(tmp, { recursive: true, force: true });
    process.exit(1);
}

let memory = null;
function readString(ptr) {
    if (!ptr || !memory) return "";
    const u32 = new Uint32Array(memory.buffer);
    const len = u32[(ptr - 4) >>> 2];
    const u16 = new Uint16Array(memory.buffer, ptr, len >>> 1);
    return String.fromCharCode.apply(null, u16);
}

const imports = {
    env: {
        abort(msgPtr, filePtr, line, col) {
            const msg = readString(msgPtr);
            throw new Error(`assert failed at json.spec.ts:${line}:${col}${msg ? " (" + msg + ")" : ""}`);
        },
    },
};

try {
    const { instance } = await WebAssembly.instantiate(readFileSync(out), imports);
    memory = instance.exports.memory;
    instance.exports.runAll();
    console.log("JSON test suite: ALL PASS");
} catch (e) {
    console.error("JSON test suite: FAIL");
    console.error(String(e.message || e));
    rmSync(tmp, { recursive: true, force: true });
    process.exit(1);
}

rmSync(tmp, { recursive: true, force: true });
