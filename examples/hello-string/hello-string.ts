// compile this file thus:
// asc -v || npm install --save-dev AssemblyScript/assemblyscript
// asc hello-string.ts -b test.wasm -t test.wast

// run compiled wasm file in node.js:
// node -i -e "\
//    log_char = c => process.stdout.write(String.fromCodePoint(c));\
//    binary = require('fs').readFileSync('test.wasm')\
// 		new WebAssembly.Instance(new WebAssembly.Module(binary),{console:{log_char}})"

namespace console {

  // imported helper to print a string in node.js or browser
  // export declare function logs(string_pointer: i32, length: i32): void; 
  export declare function logs(string_pointer: i32, size: i32, encoding: i16): void; // size=2*length for utf16

  function log(text:string):void{
  	logs(<i32>text+4,size(text),16);// 4 offset for internal struct // Utf16
  }
}

function size(pointer:string):i16{
		return load<i16>(<i32>pointer)*2 // size=2*length for utf16
}

export function main():void{
	console.log("Hello AssemblyScript 😻	!")
}

// main()