const fs   = require("fs");
const path = require("path");

const compiled = new WebAssembly.Module(
  fs.readFileSync(path.resolve(__dirname, "..", "build", "atomic.builtins.wasm"))
);
const memory = new WebAssembly.Memory({
  initial: 256,
  maximum: 256,
  shared: true
})
const imports = {
  env: {
    memory,
    abort: (filename, line, column) => {
      throw Error("abort called at " + line + ":" + colum);
    }
  }
};

Object.defineProperty(module, "exports", {
  get: () => new WebAssembly.Instance(compiled, imports).exports
});
