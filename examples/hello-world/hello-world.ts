// Hello World
// compile Typescript to native WebAssembly 

// imported helper to print a number in node.js
namespace console {
  export declare function log_int(v: i32): void; 
}

console.log_int(42)

// to run this example :

// install AssemblyScript (https://github.com/AssemblyScript/assemblyscript) if not present
// asc -v || npm install --save-dev AssemblyScript/assemblyscript

// compile Typescript to native WebAssembly 
// asc hello-world.ts -b hello-world.wasm -t hello-world.wast

// run compiled wasm file in node.js:
// node -i -e "\
//    binary = require('fs').readFileSync('hello-world.wasm');\
//		module = new WebAssembly.Module(binary);\
//    imports = {console :{log_int : i => console.log(i) }};\
// 		instance = new WebAssembly.Instance(module,imports});\
// "
