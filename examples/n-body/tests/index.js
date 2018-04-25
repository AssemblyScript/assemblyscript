const fs = require("fs");

// Load WASM version
const nbodyWASM = require("../index.js");

// Load ASMJS version
src = fs.readFileSync(__dirname + "/../build/index.asm.js", "utf8");
if (src.indexOf("var Math_sqrt =") < 0) { // currently missing in asm.js output
  let p = src.indexOf(" var abort = env.abort;");
  src = src.substring(0, p) + " var Math_sqrt = global.Math.sqrt;\n " + src.substring(p);
}
var nbodyASMJS = eval("0," + src)({
  Int8Array,
  Int16Array,
  Int32Array,
  Uint8Array,
  Uint16Array,
  Uint32Array,
  Float32Array,
  Float64Array,
  Math
}, {
  abort: function() { throw Error(); }
}, new ArrayBuffer(0x10000));

// Load JS version
var src = fs.readFileSync(__dirname + "/../build/index.js", "utf8");
var nbodyJS = (new Function("require", "exports", src + " return exports;"))(function() {}, {});

function test(nbody, steps) {
  nbody.init();
  var start = process.hrtime();
  nbody.bench(steps);
  return process.hrtime(start);
}

var steps = process.argv.length > 2 ? parseInt(process.argv[2], 10) : 20000000;
var time;

console.log("Performing " + steps + " steps (WASM) ...");
time = test(nbodyWASM, steps);
console.log("Took " + (time[0] * 1e3 + time[1] / 1e6) + "ms");

console.log("Performing " + steps + " steps (ASMJS) ...");
time = test(nbodyASMJS, steps);
console.log("Took " + (time[0] * 1e3 + time[1] / 1e6) + "ms");

console.log("Performing " + steps + " steps (JS) ...");
time = test(nbodyJS, steps);
console.log("Took " + (time[0] * 1e3 + time[1] / 1e6) + "ms");

console.log("\nWARMED UP:\n");

console.log("Performing " + steps + " steps (WASM) ...");
time = test(nbodyWASM, steps);
console.log("Took " + (time[0] * 1e3 + time[1] / 1e6) + "ms");

console.log("Performing " + steps + " steps (ASMJS) ...");
time = test(nbodyASMJS, steps);
console.log("Took " + (time[0] * 1e3 + time[1] / 1e6) + "ms");

console.log("Performing " + steps + " steps (JS) ...");
time = test(nbodyJS, steps);
console.log("Took " + (time[0] * 1e3 + time[1] / 1e6) + "ms");
