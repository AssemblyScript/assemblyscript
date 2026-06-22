// Byte-level tests for the streams + daemon metadata custom sections (spec 03
// sections 6/7/8, the Part 5 FROZEN byte layouts of toil.surface,
// toilstream.catalog, toildaemon.catalog). Compiles small fixtures under an
// explicit --targetMode, extracts the named custom sections from the emitted
// wasm, decodes them, and asserts the exact field values. Mirrors the
// tests/dbstatic catalog-decode style.
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

// Compile `source` under `mode`, return { status, output, wasm:Buffer|null }.
function compile(source, mode) {
    const tmp = mkdtempSync(join(tmpdir(), "streamcat-"));
    const app = join(tmp, "app.ts");
    const out = join(tmp, "out.wasm");
    writeFileSync(app, source);
    const args = [bin, app, "-o", out, "--runtime", "stub"];
    if (mode != null) args.push("--targetMode", mode);
    const r = spawnSync("node", args, { encoding: "utf8" });
    let wasm = null;
    try { wasm = readFileSync(out); } catch { /* no output on failure */ }
    rmSync(tmp, { recursive: true, force: true });
    return { status: r.status, output: (r.stdout || "") + (r.stderr || ""), wasm };
}

// --- wasm custom-section extraction (the hostile-safe walker, mirrors host) ---
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
function findSection(buf, wanted) {
    let pos = 8; // past "\0asm" magic + version u32
    while (pos < buf.length) {
        const id = buf[pos++];
        let size; [size, pos] = leb(buf, pos);
        const end = pos + size;
        if (id === 0) { // custom section
            let nameLen, np; [nameLen, np] = leb(buf, pos);
            if (buf.toString("latin1", np, np + nameLen) === wanted) {
                return buf.subarray(np + nameLen, end);
            }
        }
        pos = end;
    }
    return null;
}

// A little-endian byte reader over a section payload.
function reader(p) {
    let pos = 0;
    return {
        u8: () => p[pos++],
        u16: () => { const v = p[pos] | (p[pos + 1] << 8); pos += 2; return v; },
        u32: () => { const v = (p[pos] | (p[pos + 1] << 8) | (p[pos + 2] << 16) | (p[pos + 3] << 24)) >>> 0; pos += 4; return v; },
        // u64 as { lo, hi } (precision-safe; the cron minute mask spans bits 0..59).
        u64: () => { const lo = (p[pos] | (p[pos + 1] << 8) | (p[pos + 2] << 16) | (p[pos + 3] << 24)) >>> 0; const hi = (p[pos + 4] | (p[pos + 5] << 8) | (p[pos + 6] << 16) | (p[pos + 7] << 24)) >>> 0; pos += 8; return { lo, hi }; },
        // u64 as a JS number (safe for values < 2^53, e.g. interval_ms / gas_hint).
        u64n: () => { const lo = (p[pos] | (p[pos + 1] << 8) | (p[pos + 2] << 16) | (p[pos + 3] << 24)) >>> 0; const hi = (p[pos + 4] | (p[pos + 5] << 8) | (p[pos + 6] << 16) | (p[pos + 7] << 24)) >>> 0; pos += 8; return hi * 4294967296 + lo; },
        str: () => { const n = (p[pos] | (p[pos + 1] << 8) | (p[pos + 2] << 16) | (p[pos + 3] << 24)) >>> 0; pos += 4; const s = p.toString("utf8", pos, pos + n); pos += n; return s; },
        rest: () => p.length - pos,
    };
}

// FNV-1a helpers (mirror dbcatalog.ts: value_data_id and recursive schema_version).
const fnvByte = (h, b) => Math.imul(h ^ (b & 0xff), 0x01000193) >>> 0;
function fnvStr(h, s) {
    const n = s.length;
    h = fnvByte(h, n & 0xff); h = fnvByte(h, (n >>> 8) & 0xff);
    h = fnvByte(h, (n >>> 16) & 0xff); h = fnvByte(h, (n >>> 24) & 0xff);
    for (let i = 0; i < n; i++) h = fnvByte(h, s.charCodeAt(i));
    return h >>> 0;
}
function layoutHash(fields) { // flat (no nested @data) layout hash
    let h = 0x811c9dc5;
    for (const f of fields) { h = fnvStr(h, f.name); h = fnvStr(h, f.typeName); h = fnvByte(h, f.isArray ? 1 : 0); }
    return h >>> 0;
}
const fnv1a = (s) => { let h = 0x811c9dc5; for (let i = 0; i < s.length; i++) h = Math.imul(h ^ s.charCodeAt(i), 0x01000193) >>> 0; return h >>> 0; };

console.log("streams + daemon catalog byte layout (spec 03 sections 6/7/8):");

// ===========================================================================
// 1. toilstream.catalog: a two-stream hot project (one raw regional, one typed
//    continental via @stream({ message: ChatMsg })).
// ===========================================================================
{
    const src = `
@data
class ChatMsg { text: string = ""; ts: i32 = 0; }
@stream
class Chat {
  @connect onConnect(): void {}
  @message onMessage(): void {}
}
@stream({ name: "presence", scope: StreamScope.Continental, maxFrameBytes: 65536, ingressRingBytes: 131072, message: ChatMsg })
class Presence {
  @message onMessage(p: ChatMsg): void {}
  @close onClose(): void {}
  @disconnect onDisconnect(): void {}
}
export function probe(): i32 { return 1; }
`;
    const { status, output, wasm } = compile(src, "hot");
    check("hot stream project compiles", status === 0, `status ${status}\n${output}`);
    if (status === 0 && wasm) {
        const sec = findSection(wasm, "toilstream.catalog");
        check("toilstream.catalog present", sec !== null);
        if (sec) {
            const r = reader(sec);
            check("stream format_version=1", r.u16() === 1);
            const n = r.u16();
            check("n_streams=2", n === 2, `got ${n}`);
            const streams = [];
            for (let i = 0; i < n; i++) {
                streams.push({
                    name: r.str(), route: r.str(),
                    hookMask: r.u8(), scope: r.u8(), mode: r.u8(),
                    maxFrame: r.u32(), ringBytes: r.u32(),
                    valueDataId: r.u32(), schemaVersion: r.u32(),
                    index: r.u16(),
                });
            }
            const chat = streams.find((s) => s.name === "Chat");
            const pres = streams.find((s) => s.name === "presence");
            check("Chat declared name = class name", !!chat);
            check("Presence declared name from config 'name'", !!pres);
            if (chat) {
                check("Chat route '/Chat'", chat.route === "/Chat", chat.route);
                // connect(bit0) + message(bit1) = 0b0011 = 3
                check("Chat hook bitmask = 3 (connect|message)", chat.hookMask === 3, `${chat.hookMask}`);
                check("Chat scope = 0 (regional)", chat.scope === 0);
                check("Chat message_mode = 0 (raw)", chat.mode === 0);
                check("Chat max_frame_bytes = 0 (plan default)", chat.maxFrame === 0);
                check("Chat ingress_ring_bytes = 0", chat.ringBytes === 0);
                check("Chat value_data_id = 0 (raw)", chat.valueDataId === 0);
                check("Chat message_schema_version = 0 (raw)", chat.schemaVersion === 0);
                check("Chat stream_index = 0", chat.index === 0);
            }
            if (pres) {
                check("Presence route '/presence'", pres.route === "/presence", pres.route);
                // message(bit1) + close(bit2) + disconnect(bit3) = 0b1110 = 14
                check("Presence hook bitmask = 14 (message|close|disconnect)", pres.hookMask === 14, `${pres.hookMask}`);
                check("Presence scope = 1 (continental)", pres.scope === 1);
                check("Presence message_mode = 1 (typed)", pres.mode === 1);
                check("Presence max_frame_bytes = 65536", pres.maxFrame === 65536, `${pres.maxFrame}`);
                check("Presence ingress_ring_bytes = 131072", pres.ringBytes === 131072, `${pres.ringBytes}`);
                check("Presence value_data_id = fnv1a('ChatMsg')", pres.valueDataId === fnv1a("ChatMsg"), `${pres.valueDataId}`);
                const expectedSV = layoutHash([{ name: "text", typeName: "string", isArray: false }, { name: "ts", typeName: "i32", isArray: false }]);
                check("Presence message_schema_version = layoutHash(ChatMsg)", pres.schemaVersion === expectedSV, `${pres.schemaVersion} != ${expectedSV}`);
                check("Presence value_data_id != schema_version", pres.valueDataId !== pres.schemaVersion);
                check("Presence stream_index = 1", pres.index === 1);
            }
        }
    }
}

// ===========================================================================
// 2. toildaemon.catalog: a @daemon with one interval task and one cron task.
// ===========================================================================
{
    const src = `
@daemon
class Jobs {
  @scheduled("30s") fast(): void {}
  @scheduled("0 */6 * * *") sixHourly(): void {}
}
export function probe(): i32 { return 1; }
`;
    const { status, output, wasm } = compile(src, "cold");
    check("cold daemon project compiles", status === 0, `status ${status}\n${output}`);
    if (status === 0 && wasm) {
        const sec = findSection(wasm, "toildaemon.catalog");
        check("toildaemon.catalog present", sec !== null);
        if (sec) {
            const r = reader(sec);
            check("daemon format_version=1", r.u16() === 1);
            check("has_daemon=1", r.u8() === 1);
            const n = r.u16();
            check("n_scheduled=2", n === 2, `${n}`);
            const tasks = [];
            for (let i = 0; i < n; i++) {
                tasks.push({
                    name: r.str(), index: r.u16(), kind: r.u8(),
                    intervalMs: r.u64n(),
                    minute: r.u64(), hour: r.u32(), dom: r.u32(),
                    month: r.u16(), dow: r.u8(),
                    overlap: r.u8(), catchup: r.u8(), gas: r.u64n(),
                });
            }
            const fast = tasks[0], cron = tasks[1];
            // interval task
            check("task0 name 'fast'", fast.name === "fast", fast.name);
            check("task0 task_index = 0", fast.index === 0);
            check("task0 schedule_kind = 0 (interval)", fast.kind === 0);
            check("task0 interval_ms = 30000", fast.intervalMs === 30000, `${fast.intervalMs}`);
            check("task0 cron minute mask = 0", fast.minute.lo === 0 && fast.minute.hi === 0);
            check("task0 cron hour mask = 0", fast.hour === 0);
            check("task0 overlap_policy = 0", fast.overlap === 0);
            check("task0 catchup_policy = 0", fast.catchup === 0);
            check("task0 gas_hint = 0", fast.gas === 0);
            // cron task "0 */6 * * *" -> minute {0}, hour {0,6,12,18}, dom all 1..31,
            //   month all 1..12, dow all 0..6
            check("task1 name 'sixHourly'", cron.name === "sixHourly", cron.name);
            check("task1 task_index = 1", cron.index === 1);
            check("task1 schedule_kind = 1 (cron)", cron.kind === 1);
            check("task1 interval_ms = 0", cron.intervalMs === 0);
            check("task1 minute mask = bit0 only", cron.minute.lo === 1 && cron.minute.hi === 0, `lo=${cron.minute.lo} hi=${cron.minute.hi}`);
            // hours 0,6,12,18 -> bits 0,6,12,18 -> (1<<0)|(1<<6)|(1<<12)|(1<<18)
            const expHour = (1 << 0) | (1 << 6) | (1 << 12) | (1 << 18);
            check("task1 hour mask = {0,6,12,18}", cron.hour === (expHour >>> 0), `${cron.hour} != ${expHour >>> 0}`);
            // dom * over 1..31 -> bits 1..31 set
            let expDom = 0; for (let b = 1; b <= 31; b++) expDom |= (1 << b);
            check("task1 dom mask = bits 1..31", cron.dom === (expDom >>> 0), `${cron.dom}`);
            // month * over 1..12 -> bits 1..12
            let expMonth = 0; for (let b = 1; b <= 12; b++) expMonth |= (1 << b);
            check("task1 month mask = bits 1..12", cron.month === (expMonth & 0xffff), `${cron.month}`);
            // dow * over 0..6 -> bits 0..6 = 0x7f
            check("task1 dow mask = bits 0..6 (0x7f)", cron.dow === 0x7f, `${cron.dow}`);
        }
    }
}

// ===========================================================================
// 3. More cron forms: ranges, lists, steps.  "15 0 * * 1-5" and "0,30 * * * *".
// ===========================================================================
{
    const src = `
@daemon
class Jobs {
  @scheduled("15 0 * * 1-5") weekdayMorning(): void {}
  @scheduled("0,30 * * * *") halfHourly(): void {}
}
export function probe(): i32 { return 1; }
`;
    const { status, wasm } = compile(src, "cold");
    check("cron range/list project compiles", status === 0);
    if (status === 0 && wasm) {
        const r = reader(findSection(wasm, "toildaemon.catalog"));
        r.u16(); r.u8(); const n = r.u16();
        const tasks = [];
        for (let i = 0; i < n; i++) {
            tasks.push({ name: r.str(), index: r.u16(), kind: r.u8(), intervalMs: r.u64n(), minute: r.u64(), hour: r.u32(), dom: r.u32(), month: r.u16(), dow: r.u8(), overlap: r.u8(), catchup: r.u8(), gas: r.u64n() });
        }
        const wd = tasks[0], hh = tasks[1];
        // "15 0 * * 1-5": minute {15}, hour {0}, dow {1,2,3,4,5}
        check("weekday minute = {15}", wd.minute.lo === (1 << 15) && wd.minute.hi === 0, `lo=${wd.minute.lo}`);
        check("weekday hour = {0}", wd.hour === 1);
        let expDow = 0; for (let b = 1; b <= 5; b++) expDow |= (1 << b);
        check("weekday dow = {1..5}", wd.dow === expDow, `${wd.dow}`);
        // "0,30 * * * *": minute {0,30}
        check("halfHourly minute = {0,30}", hh.minute.lo === ((1 << 0) | (1 << 30)) >>> 0 && hh.minute.hi === 0, `lo=${hh.minute.lo}`);
    }
}

// ===========================================================================
// 4. Invalid @scheduled specs fire diagnostics 9011 / 9010 (not byte output).
// ===========================================================================
{
    const bad = compile(`
@daemon
class Jobs { @scheduled("30x") t(): void {} }
export function probe(): i32 { return 1; }
`, "cold");
    check("bad interval '30x' rejected (9011)", bad.status !== 0 && /is not a valid interval or cron/.test(bad.output), bad.output.slice(0, 200));

    const oob = compile(`
@daemon
class Jobs { @scheduled("60 * * * *") t(): void {} }
export function probe(): i32 { return 1; }
`, "cold");
    check("cron minute out-of-range '60 * * * *' rejected", oob.status !== 0 && /is not a valid interval or cron/.test(oob.output));

    const fewFields = compile(`
@daemon
class Jobs { @scheduled("* * *") t(): void {} }
export function probe(): i32 { return 1; }
`, "cold");
    check("cron too-few-fields '* * *' rejected", fewFields.status !== 0 && /is not a valid interval or cron/.test(fewFields.output));

    const tooFast = compile(`
@daemon
class Jobs { @scheduled("0s") t(): void {} }
export function probe(): i32 { return 1; }
`, "cold");
    check("interval '0s' (< 1s floor) rejected", tooFast.status !== 0 && /is not a valid interval or cron/.test(tooFast.output));
}

// ===========================================================================
// 5. toil.surface: hot (rest+stream), cold (daemon+scheduled+database), legacy.
// ===========================================================================
function readSurface(sec) {
    const r = reader(sec);
    return {
        formatVersion: r.u16(), targetMode: r.u8(), reserved0: r.u8(),
        surfaceFlags: r.u32(), abiVersion: r.u16(), buildId: r.str(),
        fingerprint: r.u32(), dataCoherence: r.u32(), pairCoherence: r.u32(),
        trailing: r.rest(),
    };
}
{
    // hot: @rest + @stream + @database -> bits rest(1) | stream(2) | database(16) = 19
    const hotSrc = `
@data
class Pong { msg: string = "pong"; }
@database
class Db { @collection items: Documents<string, Pong> = new Documents<string, Pong>(); }
@rest
class Api { @get ping(): Pong { return new Pong(); } }
@stream
class Chat { @message onMessage(): void {} }
export function probe(): i32 { return 1; }
`;
    const hot = compile(hotSrc, "hot");
    check("hot surface project compiles", hot.status === 0, hot.output);
    if (hot.status === 0 && hot.wasm) {
        const s = readSurface(findSection(hot.wasm, "toil.surface"));
        check("surface format_version=1", s.formatVersion === 1);
        check("surface target_mode=0 (hot)", s.targetMode === 0);
        check("surface reserved0=0", s.reserved0 === 0);
        check("surface flags = rest|stream|database = 0x13", s.surfaceFlags === 0x13, `0x${s.surfaceFlags.toString(16)}`);
        check("surface abi_version=1", s.abiVersion === 1);
        check("surface build_id empty", s.buildId === "");
        check("surface exactly 12 trailing bytes consumed (no extra)", s.trailing === 0, `${s.trailing}`);
    }

    // cold: @daemon + @scheduled + @database -> daemon(4)|scheduled(8)|database(16) = 28
    const coldSrc = `
@data
class Pong { msg: string = "pong"; }
@database
class Db { @collection items: Documents<string, Pong> = new Documents<string, Pong>(); }
@daemon
class Jobs { @scheduled("5m") t(): void {} }
export function probe(): i32 { return 1; }
`;
    const cold = compile(coldSrc, "cold");
    check("cold surface project compiles", cold.status === 0, cold.output);
    let coldSurface = null;
    if (cold.status === 0 && cold.wasm) {
        coldSurface = readSurface(findSection(cold.wasm, "toil.surface"));
        check("cold surface target_mode=1", coldSurface.targetMode === 1);
        check("cold surface flags = daemon|scheduled|database = 0x1c", coldSurface.surfaceFlags === 0x1c, `0x${coldSurface.surfaceFlags.toString(16)}`);
    }

    // Cross-pass coherence: hot and cold over the SAME shared @data surface must
    // produce IDENTICAL data_coherence_hash and pair_coherence_hash.
    if (hot.status === 0 && hot.wasm && coldSurface) {
        const hs = readSurface(findSection(hot.wasm, "toil.surface"));
        check("data_coherence_hash identical hot vs cold", hs.dataCoherence === coldSurface.dataCoherence, `${hs.dataCoherence} != ${coldSurface.dataCoherence}`);
        check("pair_coherence_hash identical hot vs cold", hs.pairCoherence === coldSurface.pairCoherence, `${hs.pairCoherence} != ${coldSurface.pairCoherence}`);
        check("fingerprint differs hot vs cold (mode-distinguished)", hs.fingerprint !== coldSurface.fingerprint);
    }

    // legacy (null mode): toil.surface is ALWAYS emitted (Part 5 / doc 02 AN-2),
    // stamped as hot (target_mode=0). NO toilstream/toildaemon catalog.
    const legacySrc = `
@rest
class Api { @get ping(): i32 { return 1; } }
export function probe(): i32 { return 1; }
`;
    const legacy = compile(legacySrc, null);
    check("legacy project compiles", legacy.status === 0, legacy.output);
    if (legacy.status === 0 && legacy.wasm) {
        const sec = findSection(legacy.wasm, "toil.surface");
        check("legacy toil.surface IS emitted (Part 5)", sec !== null);
        if (sec) {
            const s = readSurface(sec);
            check("legacy target_mode=0 (hot)", s.targetMode === 0);
            check("legacy flags has rest bit", (s.surfaceFlags & 0x01) === 0x01);
        }
        check("legacy has no toilstream.catalog", findSection(legacy.wasm, "toilstream.catalog") === null);
        check("legacy has no toildaemon.catalog", findSection(legacy.wasm, "toildaemon.catalog") === null);
    }
}

// ===========================================================================
// 6. Section presence/exclusion per mode.
// ===========================================================================
{
    // hot @stream -> stream catalog present, daemon catalog absent.
    const hot = compile(`
@stream
class Chat { @message onMessage(): void {} }
export function probe(): i32 { return 1; }
`, "hot");
    if (hot.status === 0 && hot.wasm) {
        check("hot emits toilstream.catalog", findSection(hot.wasm, "toilstream.catalog") !== null);
        check("hot omits toildaemon.catalog", findSection(hot.wasm, "toildaemon.catalog") === null);
    }
    // cold @daemon -> daemon catalog present, stream catalog absent.
    const cold = compile(`
@daemon
class Jobs { @scheduled("1m") t(): void {} }
export function probe(): i32 { return 1; }
`, "cold");
    if (cold.status === 0 && cold.wasm) {
        check("cold emits toildaemon.catalog", findSection(cold.wasm, "toildaemon.catalog") !== null);
        check("cold omits toilstream.catalog", findSection(cold.wasm, "toilstream.catalog") === null);
    }
}

if (failures) {
    console.error(`\nstreams catalog: ${failures} failure(s)`);
    process.exit(1);
}
console.log("\nstreams catalog: all cases passed");
