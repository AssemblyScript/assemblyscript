asc -v || npm install --save-dev AssemblyScript/assemblyscript

asc hello-assembly.ts -b test.wasm -t test.wast

node -i -e "log_char = c => process.stdout.write(String.fromCodePoint(c));\
  new WebAssembly.Instance(new WebAssembly.Module(require('fs').readFileSync('test.wasm')),{console:{log_char}})"

# instead of printing 'Hello' char by char we could also do this in node.js:
# new Buffer(instance.exports.memory.buffer).slice(8,50).toString('utf16le')