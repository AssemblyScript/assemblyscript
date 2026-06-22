// Compile a tiny ToilDB program and instantiate it against a host that rejects
// collection resolution. The generated binding must trap immediately instead of
// reading the zeroed output buffer as handle 0 and calling request-time DB ops.
import { mkdtempSync, writeFileSync, readFileSync, rmSync } from "node:fs";
import { tmpdir } from "node:os";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { spawnSync } from "node:child_process";

const here = dirname(fileURLToPath(import.meta.url));
const root = join(here, "..", "..");
const tmp = mkdtempSync(join(tmpdir(), "dbresolve-"));
const app = join(tmp, "app.ts");
const out = join(tmp, "out.wasm");

function fail(msg) {
    console.error(`ToilDB resolve test suite: ${msg}`);
    rmSync(tmp, { recursive: true, force: true });
    process.exit(1);
}

writeFileSync(app, `
@data
class Key {
  id: string = "";
  constructor(id: string = "") { this.id = id; }
}

@data
class User {
  name: string = "";
}

@database
class App {
  @collection static users: Documents<Key, User>;
}

export function probe(): i32 {
  return App.users.exists(new Key("alice")) ? 1 : 0;
}
`);

const compile = spawnSync(
    "node",
    [join(root, "bin", "toilscript.js"), app, "-o", out, "--runtime", "stub"],
    { stdio: "inherit" },
);
if (compile.status !== 0) fail("COMPILE FAILED");

let memory = null;
let existsCalls = 0;
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
            const file = readString(filePtr);
            throw new Error(`abort ${file}:${line}:${col}${msg ? " (" + msg + ")" : ""}`);
        },
        "data.resolve_collection"() {
            return -1007;
        },
        "data.exists"(handle) {
            existsCalls++;
            if (handle === 0) throw new Error("BUG: request-time DB op used handle 0");
            return 0;
        },
    },
};

try {
    const { instance } = await WebAssembly.instantiate(readFileSync(out), imports);
    memory = instance.exports.memory;
    instance.exports.probe();
    fail("probe unexpectedly returned after resolve_collection failed");
} catch (e) {
    const msg = String(e && e.message ? e.message : e);
    if (!msg.includes("ToilDB collection resolve failed")) {
        fail(`expected resolve failure abort, got: ${msg}`);
    }
    if (existsCalls !== 0) {
        fail(`request-time DB op was called ${existsCalls} time(s) after failed resolve`);
    }
}

rmSync(tmp, { recursive: true, force: true });
console.log("ToilDB resolve test suite: ALL PASS");
