var binaryen = require("binaryen");

var mod = new binaryen.Module();
var funcType = mod.addFunctionType("i", binaryen.i32, [ binaryen.i32 ]);
var func = mod.addFunction("test", funcType, [],
  mod.if(
    mod.i32.eqz(mod.getLocal(0, binaryen.i32)),
    mod.i32.const(0),
    mod.getLocal(0, binaryen.i32)
  )
);
mod.addExport("test", "test");

console.log(mod.emitText());
if (!mod.validate())
  console.log("-> does not validate");

mod.optimize();
console.log(mod.emitText());
