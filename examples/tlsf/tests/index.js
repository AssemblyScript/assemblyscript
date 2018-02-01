var fs = require("fs");

var runner = require("./runner");

function test(file) {
  console.log("Testing '" + file + "' ...\n");

  var exports = new WebAssembly.Instance(WebAssembly.Module(fs.readFileSync(__dirname + "/../" + file)), {
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

  runner(exports, 10, 20000); // picked so I/O isn't the bottleneck
  console.log("mem final: " + exports.memory.buffer.byteLength);
  console.log();
}

function mem(memory, offset, count) {
  if (!offset) offset = 0;
  if (!count) count = 1024;
  var mem = new Uint8Array(memory.buffer, offset);
  var stackTop = new Uint32Array(memory.buffer, 4, 1)[0];
  var hex = [];
  for (var i = 0; i < count; ++i) {
    var o = (offset + i).toString(16);
    while (o.length < 3) o = "0" + o;
    if ((i & 15) === 0) {
      hex.push("\n" + o + ":");
    }
    var h = mem[i].toString(16);
    if (h.length < 2) h = "0" + h;
    hex.push(h);
  }
  console.log(hex.join(" ") + " ...");
}

test("tlsf.untouched.wasm");
test("tlsf.optimized.wasm");
