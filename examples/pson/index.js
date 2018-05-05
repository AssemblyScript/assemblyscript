var fs = require("fs");

// Define imports. Just logs to console for the sake of this example.
var pson = {
  onNull: function() {
    console.log("null");
  },
  onTrue: function() {
    console.log("true");
  },
  onFalse: function() {
    console.log("false");
  },
  onEObject: function() {
    console.log("{}");
  },
  onEArray: function() {
    console.log("[]");
  },
  onEString: function() {
    console.log("\"\"");
  },
  onObject: function(size) {
    console.log("{" + size + "}")
  },
  onArray: function(size) {
    console.log("[" + size + "]");
  },
  onInteger: function(value) {
    console.log("integer: " + value);
  },
  onLong: function(valueLow, valueHigh) {
    console.log("long: " + valueLow + ", " + valueHigh);
  },
  onFloat: function(value) {
    console.log("float: " + value);
  },
  onDouble: function(value) {
    console.log("double: " + value);
  },
  onString: function(offset, length) {
    console.log("string(length=" + length + "): " + Buffer.from(mem.slice(offset, offset + length)).toString());
  },
  onBinary: function(offset, length) {
    console.log("binary(length=" + length + "): " + mem.slice(offset, offset + length));
  }
};

// Instantiate the module
var mod = new WebAssembly.Module(fs.readFileSync(__dirname + "/build/optimized.wasm"));
var ins = new WebAssembly.Instance(mod, { pson: pson });
var mem = new Uint8Array(ins.exports.memory.buffer);

// Export API
exports.decode = function(buffer) {

  // grow memory if necessary
  if (mem.length < buffer.length) {
    ins.exports.memory.grow(Math.ceil((buffer.length - mem.length) / 65536));
    mem = new Uint8Array(ins.exports.memory.buffer);
  }

  // copy buffer to memory
  mem.set(buffer);

  // start decoding (calls the imports defined above)
  ins.exports.decode(buffer.length);
}
