// time ./bin/asc test.ts -o test.wasm && wasmx test.wasm

// var x=43 ERROR AS1110: Type expected. WHY NO INFERENCE?
// var x:int=43

export function main():int {
	var x=42
	var y=true or false
	if(y)x++
	return x
}