# install https://github.com/AssemblyScript/assemblyscript if not present
# asc -v || npm install --save-dev AssemblyScript/assemblyscript

# compile Typescript to native WebAssembly 
asc hello-string.ts -b hello-string.wasm -t hello-string.wast

# load and run the binary in node.js
./wasmx hello-string.wasm

# in firefox:
# firefox hello-string.html

# todo : chrome needs to fetch() from (local) server