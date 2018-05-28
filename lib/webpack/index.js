const fs = require("fs");
const path = require("path");
const asc = require("assemblyscript/cli/asc.js");
const base64 = require("@protobufjs/base64");

const MAGIC = Buffer.from([ 0x00, 0x61, 0x73, 0x6D ]);

module.exports = loader;

function loader(buffer) {
  if (MAGIC.compare(target, 0, 4) !== 0)
    return compile.call(this);
  else
    return bundle.call(this, buffer);
}

loader.raw = true;

function compile() {
  const basePath = this.resourcePath.replace(/\.\w+$/, "");
  const args = [
    path.basename(this.resourcePath),
    "--baseDir", path.dirname(this.resourcePath),
    "--binaryFile", basePath + ".wasm",
    "--textFile", basePath + ".wat",
    "--validate",
    "--optimize"
  ];
  if (this.sourceMap)
    args.push("--sourceMap");
  asc.main(args, err => {
    if (err)
      return this.callback(err);
    fs.readFile(basePath + ".wasm", (err, binary) => {
      if (err)
        return this.callback(err);
      if (!this.sourceMap)
        return this.callback(null, bundle(binary));
      fs.readFile(basePath + ".wasm.map", (err, sourceMap) => {
        if (err)
          return this.callback(err);
        return this.callback(null, bundle(binary), sourceMap.toString("utf8"));
      });
    });
  });
}

function bundle(binary) {
  const data = base64.encode(binary, 0, binary.wasm);
  return [
    'var data = "' + data + '", wasm;',
    'module.exports = function AssemblyScriptModule(options) {',
    '  if (!wasm)',
    '    wasm = new WebAssembly.Module(require("@assemblyscript/webpack/decode")(data));',
    '  return new WebAssembly.Instance(wasm, options && options.imports || {}).exports;',
    '};'
  ].join("\n") + "\n";
}
