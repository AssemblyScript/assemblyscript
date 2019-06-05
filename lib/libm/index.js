const fs = require("fs");
const libm = new WebAssembly.Instance(new WebAssembly.Module(fs.readFileSync("./build/libm.wasm")), { Math }).exports;
const libmf = new WebAssembly.Instance(new WebAssembly.Module(fs.readFileSync("./build/libmf.wasm")), {}).exports;
module.exports = Object.create(libm, {
  libm: { value: libm, enumerable: true },
  libmf: { value: libmf, enumerable: true }
});
