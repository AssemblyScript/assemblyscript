const fs   = require("fs");
const path = require("path");

const compiled = new WebAssembly.Module(
  fs.readFileSync(path.resolve(
    __dirname,
    "..",
    "build",
    "wasm32-unknown-unknown",
    "release",
    "rust_nbody.wasm"
  )
));

const imports = {
  env: {
    memory: new WebAssembly.Memory({ initial: 17 }),
    abort: (_filename, line, column) => {
      throw Error("abort called at " + line + ":" + column);
    }
  }
};

Object.defineProperty(module, "exports", {
  get: () => new WebAssembly.Instance(compiled, imports).exports
});
