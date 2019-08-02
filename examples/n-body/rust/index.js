const fs   = require("fs");
const path = require("path");

const compiled = new WebAssembly.Module(
  fs.readFileSync(path.resolve(__dirname, "..", "build", "rust.optimized.wasm"))
);

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
