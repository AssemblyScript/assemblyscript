# install https://github.com/AssemblyScript/assemblyscript if not present
asc -v || npm install --save-dev AssemblyScript/assemblyscript

# compile Typescript to native WebAssembly 
asc hello-assembly.ts -b test.wasm -t test.wast

# load and run the binary in node.js
node -i -e "\
	binary = require('fs').readFileSync('test.wasm');\
	module = new WebAssembly.Module(binary);\
	imports={console:{log_char: c => process.stdout.write(String.fromCodePoint(c))}};\
  new WebAssembly.Instance(module,imports)"

# instead of printing 'Hello' char by char with the little glue function log_char,
# we could also do new Buffer(instance.exports.memory.buffer).slice(8,50).toString('utf16le')