const fs = require("fs");
const COMMON_MAX = 1 << 30;

function test(file) {
  console.log("Testing '" + file + "' ...\n");

  const exports = new WebAssembly.Instance(new WebAssembly.Module(fs.readFileSync(__dirname + "/" + file)), {
    env: {
      abort: function(msg, file, line, column) {
        throw Error("Assertion failed: " + (msg ? "'" + getString(msg) + "' " : "") + "at " + getString(file) + ":" + line + ":" + column);
      },
      log: function(ptr) { console.log(getString(ptr)); },
      logi: function(i) { console.log(i); }
    }
  }).exports;

  const RUNTIME_HEADER_SIZE = exports[".capabilities"] & 2 ? 16 : 8;

  function getString(ptr) {
    if (!ptr) return "null";
    var U32 = new Uint32Array(exports.memory.buffer);
    var U16 = new Uint16Array(exports.memory.buffer);
    var len16 = U32[(ptr - RUNTIME_HEADER_SIZE + 4) >>> 2] >>> 1;
    var ptr16 = ptr >>> 1;
    return String.fromCharCode.apply(String, U16.subarray(ptr16, ptr16 + len16));
  }

  require("./runner")(exports, 20, 20000);

  console.log("mem final: " + exports.memory.buffer.byteLength);
  console.log();

  const alloc = exports["__alloc"];
  var overflow = false;
  try {
    alloc(COMMON_MAX + 1); // unreachable
    overflow = true;
  } catch (e) {}
  if (overflow) throw Error("allocation can overflow COMMON_MAX + 1");
  try {
    alloc(0xffffffff); // unreachable
    overflow = true;
  } catch (e) {}
  if (overflow) throw Error("allocation can overflow 0xffffffff");
}

if (process.argv.length > 2) {
  test(process.argv[2] + "/untouched.wasm");
  test(process.argv[2] + "/optimized.wasm");
} else {
  console.error("Usage: npm test <allocator>");
  process.exit(1);
}
