var base64 = require("@protobufjs/base64");

(module.exports = function(buffer) {
  var data = base64.encode(buffer, 0, buffer.length);
  var code = [
    'var data = "' + data + '", wasm;',
    'module.exports = function(options) {',
    '  if (!wasm) wasm = require("@assemblyscript/webpack/decode")(data);',
    '  return new WebAssembly.Instance(new WebAssembly.Module(wasm), options && options.imports || {}).exports;',
    '};'
  ];
  return code.join("\n");
}).raw = true;
