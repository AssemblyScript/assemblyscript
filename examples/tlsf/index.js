const fs = require("fs");
module.exports = new WebAssembly.Instance(
  new WebAssembly.Module(fs.readFileSync(__dirname + "/tlsf.optimized.wasm")),
  { env: { abort: function() { throw Error("abort called"); } } }
).exports;
