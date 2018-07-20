var binaryen = require("binaryen");

var mod = new binaryen.Module();

var addType = mod.addFunctionType("iii", binaryen.i32, [ binaryen.i32, binaryen.i32 ]);
mod.addFunction("add", addType, [],
  mod.i32.add(
    mod.get_local(0, binaryen.i32),
    mod.get_local(1, binaryen.i32)
  )
);
mod.addFunctionExport("add", "add");

var testType = mod.addFunctionType("i", binaryen.i32, []);
mod.addFunction("test", testType, [],
  mod.call("add", [
    mod.i32.const(1),
    mod.i32.const(2)
  ], binaryen.i32)
);
mod.addFunctionExport("test", "test");

binaryen.setOptimizeLevel(4);
binaryen.setShrinkLevel(0);
binaryen.setDebugInfo(false);
mod.runPasses(["precompute"]);
if (!mod.validate())
  console.log("-> does not validate");
console.log(mod.emitText());
