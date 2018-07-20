var binaryen = require("binaryen");

var mod = new binaryen.Module();

var funcType = mod.addFunctionType("i", binaryen.i32, [ binaryen.i32 ]);
mod.addFunction("test", funcType, [], mod.block("", [
  mod.setLocal(0, mod.i32.const(2)),
  mod.getLocal(0, binaryen.i32)
], binaryen.i32));
mod.addFunctionExport("test", "test");

binaryen.setOptimizeLevel(4);
binaryen.setShrinkLevel(0);
binaryen.setDebugInfo(false);
mod.optimize();
if (!mod.validate())
  console.log("-> does not validate");
console.log(mod.emitText());
