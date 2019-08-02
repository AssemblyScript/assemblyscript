var binaryen = require("binaryen");

var mod = new binaryen.Module();

var ftype = mod.addFunctionType("v", binaryen.none, []);

mod.addFunction("callee", ftype, [], mod.block(null, [
]));
mod.setFunctionTable(1, 1, [ "callee" ]);

mod.addFunction("caller", ftype, [], mod.block(null, [
  mod.call_indirect(mod.i32.const(0), [], "v"),
]));
mod.addFunctionExport("caller", "main");

binaryen.setOptimizeLevel(4);
binaryen.setShrinkLevel(0);
binaryen.setDebugInfo(false);
mod.optimize();
if (!mod.validate())
  console.log("-> does not validate");
console.log(mod.emitText());
