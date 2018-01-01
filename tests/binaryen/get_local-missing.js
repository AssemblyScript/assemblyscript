var binaryen = require("binaryen");

var mod = new binaryen.Module();
var funcType = mod.addFunctionType("v", binaryen.void, []);
var func = mod.addFunction("test", funcType, [],
  mod.block("", [
    mod.drop(
      mod.getLocal(0, binaryen.i32)
    )
  ])
);
mod.addFunctionExport("test", "test", func);

console.log(mod.emitText());
if (mod.validate()) {
  console.log("-> validates");
  var binary = mod.emitBinary();
  new WebAssembly.Module(binary); // CompileError: WebAssembly.Module(): Compiling wasm function #0:test failed: invalid local index: 0 @+34
}
