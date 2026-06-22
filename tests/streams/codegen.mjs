// Codegen tests for the @daemon / @scheduled COLD exports (spec 03 sections 5.2 /
// 5.6 / 5.7, Reconciliation Part 2: `daemon_start() -> i32`,
// `scheduled_tick(i32 task_id) -> i64`). This is the THIRD increment: the cold
// artifact exports synthesized by `injectDaemonHandler` and the daemon-side
// front-end checks (9012 handler signature, 9008 no-scheduled-tasks warning).
//
// It compiles @daemon fixtures under --targetMode cold, asserts the emitted
// module EXPORTS `daemon_start` + `scheduled_tick`, instantiates the wasm and
// drives the exports to prove `scheduled_tick(task_id)` dispatches to the method
// the `toildaemon.catalog` assigned that task_index to (the lockstep contract),
// and asserts the 9012 / 9008 diagnostics fire. Mirrors the run.mjs / catalog.mjs
// harness style (spawn the local toilscript bin, inspect status / output / wasm).
import { mkdtempSync, writeFileSync, rmSync, readFileSync } from "node:fs";
import { tmpdir } from "node:os";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { spawnSync } from "node:child_process";

const here = dirname(fileURLToPath(import.meta.url));
const root = join(here, "..", "..");
const bin = join(root, "bin", "toilscript.js");

let failures = 0;
function check(name, cond, detail) {
    if (cond) { console.log(`  ok   ${name}`); }
    else { failures++; console.error(`  FAIL ${name}${detail ? ": " + detail : ""}`); }
}

// Compile `source` under `mode`, return { status, output, wasm:Buffer|null, exports:string[] }.
function compile(source, mode) {
    const tmp = mkdtempSync(join(tmpdir(), "daemoncg-"));
    const app = join(tmp, "app.ts");
    const out = join(tmp, "out.wasm");
    writeFileSync(app, source);
    const args = [bin, app, "-o", out, "--runtime", "stub"];
    if (mode != null) args.push("--targetMode", mode);
    const r = spawnSync("node", args, { encoding: "utf8" });
    let wasm = null;
    try { wasm = readFileSync(out); } catch { /* no output on failure */ }
    rmSync(tmp, { recursive: true, force: true });
    return { status: r.status, output: (r.stdout || "") + (r.stderr || ""), wasm, exports: wasm ? wasmExports(wasm) : [] };
}

// --- wasm export-section walker (the hostile-safe parser; mirrors the host) ---
function leb(buf, pos) {
    let result = 0, shift = 0, p = pos;
    for (;;) { const b = buf[p++]; result |= (b & 0x7f) << shift; if ((b & 0x80) === 0) break; shift += 7; }
    return [result >>> 0, p];
}
// Return the list of EXPORTED names (export section, id = 7).
function wasmExports(buf) {
    let pos = 8; // past "\0asm" magic + version u32
    const names = [];
    while (pos < buf.length) {
        const id = buf[pos++];
        let size; [size, pos] = leb(buf, pos);
        const end = pos + size;
        if (id === 7) { // export section
            let count, p = pos; [count, p] = leb(buf, p);
            for (let i = 0; i < count; i++) {
                let nlen; [nlen, p] = leb(buf, p);
                names.push(buf.toString("utf8", p, p + nlen));
                p += nlen;
                p += 1; // export kind byte
                let idx; [idx, p] = leb(buf, p); // export index
            }
        }
        pos = end;
    }
    return names;
}

// toildaemon.catalog reader (just enough to recover the task_index ordering).
function findSection(buf, wanted) {
    let pos = 8;
    while (pos < buf.length) {
        const id = buf[pos++];
        let size; [size, pos] = leb(buf, pos);
        const end = pos + size;
        if (id === 0) {
            let nl, np; [nl, np] = leb(buf, pos);
            if (buf.toString("latin1", np, np + nl) === wanted) return buf.subarray(np + nl, end);
        }
        pos = end;
    }
    return null;
}
function catalogTaskOrder(buf) {
    const sec = findSection(buf, "toildaemon.catalog");
    if (!sec) return null;
    let pos = 0;
    const u16 = () => { const v = sec[pos] | (sec[pos + 1] << 8); pos += 2; return v; };
    const u8 = () => sec[pos++];
    const u32 = () => { pos += 4; };
    const u64 = () => { pos += 8; };
    const str = () => { const n = (sec[pos] | (sec[pos + 1] << 8) | (sec[pos + 2] << 16) | (sec[pos + 3] << 24)) >>> 0; pos += 4; const s = sec.toString("utf8", pos, pos + n); pos += n; return s; };
    u16(); u8(); const n = u16();
    const tasks = [];
    for (let i = 0; i < n; i++) {
        const name = str(); const idx = u16(); u8(); u64(); u64(); u32(); u32(); u16(); u8(); u8(); u8(); u64();
        tasks.push({ name, idx });
    }
    return tasks;
}

// Instantiate a stub-runtime cold module with a minimal `env`.
function instantiate(wasm) {
    const imports = { env: { abort: () => { throw new Error("wasm abort"); }, trace: () => {}, seed: () => Date.now() } };
    return new WebAssembly.Instance(new WebAssembly.Module(wasm), imports).exports;
}

console.log("daemon cold-export codegen (spec 03 sections 5.2/5.6/5.7):");

// ===========================================================================
// 1. A @daemon with 2+ @scheduled tasks EXPORTS daemon_start + scheduled_tick.
// ===========================================================================
{
    const src = `
@daemon
class Jobs {
  onStart(): void {}
  @scheduled("30s") fast(): void {}
  @scheduled("0 */6 * * *") sixHourly(): void {}
}
export function probe(): i32 { return 1; }
`;
    const r = compile(src, "cold");
    check("cold @daemon (2 tasks) compiles", r.status === 0, `status ${r.status}\n${r.output}`);
    check("exports daemon_start", r.exports.includes("daemon_start"), r.exports.join(","));
    check("exports scheduled_tick", r.exports.includes("scheduled_tick"), r.exports.join(","));
    check("does NOT export a separate init (folded into daemon_start)", !r.exports.includes("init"));
}

// ===========================================================================
// 2. scheduled_tick(task_id) dispatches to the method the catalog task_index
//    names, in source-declaration order (the lockstep contract). Verified by
//    actually invoking the emitted wasm.
// ===========================================================================
{
    const src = `
let __log: i32 = 0;
let __started: i32 = 0;
export function logv(): i32 { return __log; }
export function started(): i32 { return __started; }
@daemon
class Jobs {
  private seq: i32 = 100;
  onStart(): void { __started = __started + 1; this.seq = 200; }
  @scheduled("30s") alpha(): void { __log = this.seq + 0; }       // task 0
  @scheduled("5m")  beta(): void  { __log = this.seq + 1; }       // task 1
  @scheduled("0 0 * * *") gamma(): void { __log = this.seq + 2; } // task 2
}
export function probe(): i32 { return 1; }
`;
    const r = compile(src, "cold");
    check("cold @daemon (3 tasks) compiles", r.status === 0, r.output);
    if (r.status === 0 && r.wasm) {
        const order = catalogTaskOrder(r.wasm);
        check("catalog task order = alpha,beta,gamma",
            !!order && order.map((t) => `${t.idx}:${t.name}`).join(",") === "0:alpha,1:beta,2:gamma",
            order ? order.map((t) => `${t.idx}:${t.name}`).join(",") : "no catalog");
        const ex = instantiate(r.wasm);
        const startRc = ex.daemon_start(); // i32 -> JS Number; call ONCE
        check("daemon_start() returns 0", startRc === 0, `${startRc}`);
        check("onStart ran exactly once after daemon_start", ex.started() === 1, `${ex.started()}`);
        // Each tick reads instance.seq (200, set by onStart). If a fresh instance
        // were created per tick, seq would be the field initializer 100 since
        // onStart never re-runs. So 200+idx proves the single box-lifetime
        // instance is reused AND that task_id maps to the catalog's method.
        for (const t of order) {
            ex.scheduled_tick(t.idx);
            check(`scheduled_tick(${t.idx}) dispatches ${t.name} (log=${200 + t.idx})`,
                ex.logv() === 200 + t.idx, `log=${ex.logv()}`);
        }
        check("onStart still ran once (single instance across ticks)", ex.started() === 1, `${ex.started()}`);
        // Out-of-range task id is a safe no-op (no dispatch arm matches).
        const before = ex.logv();
        ex.scheduled_tick(99);
        check("scheduled_tick(out-of-range) is a no-op", ex.logv() === before);
    }
}

// ===========================================================================
// 3. 9012: a @scheduled handler must take no arguments and return void.
// ===========================================================================
{
    const withArg = compile(`
@daemon
class Jobs { @scheduled("30s") bad(x: i32): void {} }
export function probe(): i32 { return 1; }
`, "cold");
    check("9012: @scheduled with an argument rejected",
        withArg.status !== 0 && /must take no arguments and return void/.test(withArg.output),
        withArg.output.slice(0, 200));

    const nonVoid = compile(`
@daemon
class Jobs { @scheduled("30s") bad(): i32 { return 1; } }
export function probe(): i32 { return 1; }
`, "cold");
    check("9012: @scheduled with non-void return rejected",
        nonVoid.status !== 0 && /must take no arguments and return void/.test(nonVoid.output),
        nonVoid.output.slice(0, 200));

    // A correct void/no-arg handler must NOT trip 9012.
    const good = compile(`
@daemon
class Jobs { @scheduled("30s") ok(): void {} }
export function probe(): i32 { return 1; }
`, "cold");
    check("valid void/no-arg @scheduled does NOT trip 9012",
        good.status === 0 && !/must take no arguments and return void/.test(good.output), good.output.slice(0, 200));
}

// ===========================================================================
// 4. 9008: a @daemon with zero @scheduled tasks is a WARNING (compiles), and
//    still emits daemon_start + scheduled_tick (the daemon may run only onStart).
// ===========================================================================
{
    const r = compile(`
@daemon
class Loop {
  onStart(): void {}
}
export function probe(): i32 { return 1; }
`, "cold");
    check("9008: zero-@scheduled @daemon WARNS but compiles",
        r.status === 0 && /declares no scheduled tasks/.test(r.output), `status ${r.status}\n${r.output}`);
    check("zero-task daemon still exports daemon_start", r.exports.includes("daemon_start"));
    check("zero-task daemon still exports scheduled_tick", r.exports.includes("scheduled_tick"));
}

if (failures) {
    console.error(`\ndaemon codegen: ${failures} failure(s)`);
    process.exit(1);
}
console.log("\ndaemon codegen: all cases passed");
