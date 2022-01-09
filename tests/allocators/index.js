import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import runner from "./runner.js";

const dirname = path.dirname(fileURLToPath(import.meta.url));

const COMMON_MAX = 1 << 30;

async function test(file) {
  console.log("Testing '" + file + "' ...\n");

  const { instance: { exports } } = await WebAssembly.instantiate(fs.readFileSync(dirname + "/" + file), {
    env: {
      abort(msg, file, line, column) {
        throw Error("Assertion failed: " + (msg ? "'" + getString(msg) + "' " : "") + "at " + getString(file) + ":" + line + ":" + column);
      },
      log(ptr) { console.log(getString(ptr)); },
      logi(i) { console.log(i); },
      trace(...args) { console.log("trace", args); }
    }
  });

  function getString(ptr) {
    if (!ptr) return "null";
    var U32 = new Uint32Array(exports.memory.buffer);
    var U16 = new Uint16Array(exports.memory.buffer);
    var length = U32[(ptr - 4) >>> 2] >>> 1;
    var offset = ptr >>> 1;
    return String.fromCharCode.apply(String, U16.subarray(offset, offset + length));
  }

  runner(exports, 20, 20000);

  console.log("mem final: " + exports.memory.buffer.byteLength);
  console.log();

  const alloc = exports["__alloc"];
  var overflow = false;
  try {
    alloc(COMMON_MAX + 1, 0); // unreachable
    overflow = true;
  } catch (e) { /* nop */ }
  if (overflow) throw Error("allocation can overflow COMMON_MAX + 1");
  try {
    alloc(0xffffffff, 0); // unreachable
    overflow = true;
  } catch (e) { /* nop */ }
  if (overflow) throw Error("allocation can overflow 0xffffffff");
}

if (process.argv.length > 2) {
  await test(process.argv[2] + "/debug.wasm");
  await test(process.argv[2] + "/release.wasm");
} else {
  console.error("Usage: npm test <allocator>");
  process.exit(1);
}
