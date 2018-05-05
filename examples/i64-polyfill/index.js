var fs = require("fs");

// Instantiate the module
var mod = new WebAssembly.Module(fs.readFileSync(__dirname + "/build/optimized.wasm"));
var ins = new WebAssembly.Instance(mod, { /* no imports */ });

// Export its exports
module.exports = ins.exports;
