// time ./bin/asc test.ts -o test.wasm && wasmx test.wasm
// time asc test.ts -o test.wasm && wasmx test.wasm
// wasm test.wasm
// var x=43 ERROR AS1110: Type expected. WHY NO INFERENCE?
var x:i32=43
function main():i32 {
	return x;
}