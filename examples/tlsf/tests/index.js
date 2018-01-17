var fs = require("fs");

function test(file) {
  console.log("Testing '" + file + "' ...");

  var tlsf = new WebAssembly.Instance(WebAssembly.Module(fs.readFileSync(__dirname + "/../" + file)), {
    env: {
      log_i: function(i) { i == -1 ? console.log("---") : console.log("log_i -> " + i); }
    }
  }).exports;

  try {
    var memSize = 0;
    var ptr = 0;
    for (var j = 0; j < 10000; ++j) {
      if (!j || !((j + 1) % 1000))
        console.log("run #" + (j + 1));
      ptr;
      var ptrs = [];
      // allocate some blocks of unusual sizes
      for (var i = 0; i < 2048; ++i) {
        var size = i * 61;
        ptr = tlsf.allocate_memory(size);
        if (tlsf.set_memory)
          tlsf.set_memory(ptr, ptr % 256, size); // slow
        // immediately free every 4th
        if (!(i % 4)) {
          tlsf.free_memory(ptr);
        } else {
          ptrs.push(ptr);
          // randomly free random blocks (if not the first run that determines max memory)
          if (j && Math.random() < 0.25) {
            ptr = ptrs.splice((Math.random() * ptrs.length)|0, 1)[0];
            tlsf.free_memory(ptr);
          }
        }
      }
      if (tlsf.check)
        tlsf.check();
      if (tlsf.check_pool)
        tlsf.check_pool(0);
      // clean up by randomly freeing all blocks
      while (ptrs.length) {
        ptr = ptrs.splice((Math.random() * ptrs.length)|0, 1)[0];
        tlsf.free_memory(ptr);
      }
      if (memSize && memSize != tlsf.memory.buffer.byteLength)
        throw new Error("memory should not grow multiple times: " + memSize + " != " + tlsf.memory.buffer.byteLength);
      memSize = tlsf.memory.buffer.byteLength;
      if (tlsf.check)
        tlsf.check();
      if (tlsf.check_pool)
        tlsf.check_pool(0);
    }
  } finally {
    mem(tlsf.memory, 0, 4096);
    console.log("memSize=" + memSize);
  }
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
