namespace console {

  // imported helper to print a char in node.js
  export declare function log_char(v: i32): void; 

	function log(text:string):void{
		print_pointer(<i32>text);// for now glue 'log' to print each char
	}
}

function print_pointer(pointer:i32):void{
	let length=load<i16>(pointer) // print char by char
	pointer+=2 // first bytes in string struct == length 
	while(length-->0){
		pointer+=2 //  utf-16
		console.log_char(load<i16>(pointer))
	}
}

console.log("Hello AssemblyScript!")

