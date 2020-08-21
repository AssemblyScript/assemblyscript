var binaryen = require("binaryen");

var mod = new binaryen.Module();

var ftype_v = mod.addFunctionType("v", binaryen.none, []);
var ftype_vi = mod.addFunctionType("vi", binaryen.none, [ binaryen.i32 ]);

mod.addFunction("callee-2", ftype_v, [], mod.block(null, [
]));
mod.addFunction("callee-1", ftype_vi, [], mod.block(null, [
  mod.call_indirect(mod.getLocal(0, binaryen.i32), [], "v"),
]));
mod.setFunctionTable(2, 2, [ "callee-1", "callee-2" ]);

mod.addFunction("caller", ftype_vi, [ binaryen.i32 ], mod.block(null, [
  mod.call_indirect(mod.getLocal(0, binaryen.i32), [ mod.i32.const(1) ], "vi"),
]));
mod.addFunctionExport("caller", "main");

binaryen.setOptimizeLevel(4);
binaryen.setShrinkLevel(0);
binaryen.setDebugInfo(false);
mod.optimize();
if (!mod.validate())
  console.log("-> does not validate");
console.log(mod.emitText());
