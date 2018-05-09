var fs = require("fs");

// NOTE that this doesn't do anything useful, yet

var ugc = new WebAssembly.Instance(new WebAssembly.Module(fs.readFileSync(__dirname + "/../build/untouched.wasm")), {
  env: { abort: function(msg, file, line, column) {
    console.log("abort called at " + line + ":" + column);
  } }
}).exports;

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

mem(ugc.memory, 0, 1024);
