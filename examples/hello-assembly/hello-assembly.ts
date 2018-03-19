// compile this file thus:
// asc -v || npm install --save-dev AssemblyScript/assemblyscript
// asc hello-assembly.ts -b test.wasm -t test.wast

// run compiled wasm file in node.js:
// node -i -e "log_char = c => process.stdout.write(String.fromCodePoint(c));\
// 		new WebAssembly.Instance(new WebAssembly.Module(require('fs').readFileSync('test.wasm')),{console:{log_char}})"

namespace console {

  // imported helper to print a char in node.js
  export declare function log_char(v: i32): void; 

  function log(text:string):void{
		print_pointer(<i32>text);// glue 'log' to print each char
  }
}

function print_pointer(pointer:i32):void{
	let length=load<i16>(pointer) 
	pointer+=2 // first bytes in string struct encode length 
	while(length-->0){
		pointer+=2 //print utf-16 char by char
		console.log_char(load<i16>(pointer))
	}
}

console.log("Hello AssemblyScript!")

