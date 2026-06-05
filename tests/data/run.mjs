// Compile tests/data/data.spec.ts with the local toilscript (so @data, JSON and
// DataWriter/DataReader are in scope), instantiate it, run runAll(), and report.
import { readFileSync, mkdtempSync, rmSync } from "node:fs";
import { tmpdir } from "node:os";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { spawnSync } from "node:child_process";

const here = dirname(fileURLToPath(import.meta.url));
const root = join(here, "..", "..");
const spec = join(here, "data.spec.ts");
const tmp = mkdtempSync(join(tmpdir(), "datatest-"));
const out = join(tmp, "spec.wasm");

const compile = spawnSync(
    "node",
    [join(root, "bin", "toilscript.js"), spec, "-o", out, "--runtime", "stub"],
    { stdio: "inherit" },
);
if (compile.status !== 0) {
    console.error("@data test suite: COMPILE FAILED");
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
            throw new Error(`assert failed at data.spec.ts:${line}:${col}${msg ? " (" + msg + ")" : ""}`);
        },
    },
};

try {
    const { instance } = await WebAssembly.instantiate(readFileSync(out), imports);
    memory = instance.exports.memory;
    instance.exports.runAll();
    console.log("@data test suite: ALL PASS");
} catch (e) {
    console.error("@data test suite: FAIL");
    console.error(String(e.message || e));
    rmSync(tmp, { recursive: true, force: true });
    process.exit(1);
}

rmSync(tmp, { recursive: true, force: true });
