var fs = require("fs");
var tlsf = new WebAssembly.Instance(WebAssembly.Module(fs.readFileSync(__dirname + "/../tlsf.optimized.wasm")), {
  env: {
    log_i: function(i) { i == -1 ? console.log("---") : console.log("log_i -> " + i); }
  }
}).exports;

console.log(Object.keys(tlsf));

try {
  var memSize = 0;
  for (var j = 0; j < 500; ++j) {
    var ptr;
    var ptrs = [];
    for (var i = 0; i < 256; ++i) {
      var size = i * 64;
      ptr = tlsf.allocate_memory(size);
      console.log("allocate_memory(" + size + ") = " + ptr);
      if (!(i % 4)) {
        tlsf.free_memory(ptr);
        console.log("free_memory(" + ptr + ")");
      } else
        ptrs.push(ptr);
    }
    while (ptrs.length) {
      ptr = Math.random() < 0.5 ? ptrs.pop() : ptrs.shift();
      console.log("free_memory(" + ptr + ")");
      tlsf.free_memory(ptr);
    }
    if (memSize && memSize != tlsf.memory.length)
      throw new Error("memory should not grow multiple times");
    memSize = tlsf.memory.length;
  }
  var ptr = tlsf.allocate_memory(64);
  console.log("allocate_memory(" + 64 + ") = " + ptr);
} catch (e) {
  console.log(e.stack);
  mem(tlsf.memory);
}

function mem(memory, offset) {
  if (!offset) offset = 0;
  var mem = new Uint8Array(memory.buffer, offset);
  var stackTop = new Uint32Array(memory.buffer, 4, 1)[0];
  var hex = [];
  for (var i = 0; i < 1024; ++i) {
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
