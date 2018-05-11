var binaryen = require("binaryen");

var mod = new binaryen.Module();
var funcType = mod.addFunctionType("v", binaryen.none, []);
var func = mod.addFunction("0", funcType, [],
  mod.drop(
    mod.block("label$1", [
      mod.loop("label$2",
        mod.unreachable()
      )
    ], binaryen.i32)
  )
);
mod.addExport("0", "0");

console.log(mod.emitText());
if (!mod.validate())
  console.log("-> does not validate");

var bin = mod.emitBinary();
require("fs").writeFileSync(__dirname + "/unreachable-loop.wasm", bin);
var mod2 = binaryen.readBinary(bin);
console.log(mod2.emitText());
