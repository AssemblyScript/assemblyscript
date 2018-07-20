var binaryen = require("binaryen");

var mod = new binaryen.Module();

mod.addGlobal("testGlobal", binaryen.i32, false, mod.i32.const(2));
var funcType = mod.addFunctionType("i", binaryen.i32, []);
mod.addFunction("test", funcType, [],
  mod.get_global("testGlobal", binaryen.i32)
);
mod.addFunctionExport("test", "test");

binaryen.setOptimizeLevel(4);
binaryen.setShrinkLevel(0);
binaryen.setDebugInfo(false);
mod.optimize();
if (!mod.validate())
  console.log("-> does not validate");
console.log(mod.emitText());
