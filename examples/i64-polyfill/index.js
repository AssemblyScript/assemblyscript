var fs = require("fs");

// Instantiate the module
var mod = new WebAssembly.Module(fs.readFileSync(__dirname + "/i64.optimized.wasm"));
var ins = new WebAssembly.Instance(mod, { /* no imports */ });

// Export its exports
module.exports = ins.exports;
