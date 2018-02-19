const fs = require("fs");

function test(file) {
  console.log("Testing '" + file + "' ...\n");

  const exports = new WebAssembly.Instance(WebAssembly.Module(fs.readFileSync(__dirname + "/" + file)), {
    env: {
      abort: function(msg, file, line, column) {
        throw Error("Assertion failed: " + (msg ? "'" + getString(msg) + "' " : "") + "at " + getString(file) + ":" + line + ":" + column);
      },
      log: function(ptr) { console.log(getString(ptr)); },
      logi: function(i) { console.log(i); }
    }
  }).exports;

  function getString(ptr) {
    var len = new Uint32Array(exports.memory.buffer, ptr)[0];
    var str = new Uint16Array(exports.memory.buffer, ptr + 4).subarray(0, len);
    return String.fromCharCode.apply(String, str);
  }

  require("../runner")(exports, 20, 20000);

  console.log("mem final: " + exports.memory.buffer.byteLength);
  console.log();
}

test("buddy.untouched.wasm");
test("buddy.optimized.wasm");
