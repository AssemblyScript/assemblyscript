var binaryen = require("binaryen");

// "non-final block elements returning a value must be drop()ed"
// "0 == 0: block with value must not have last element that is none, on"

var mod = new binaryen.Module();

var funcType = mod.addFunctionType("i", binaryen.i32, []);
var func = mod.addFunction("test", funcType, [ binaryen.i32 ],
  mod.block("", [
    mod.teeLocal(0, mod.i32.const(1)),
    mod.nop()
  ], binaryen.i32)
);
mod.addExport("test", func);

console.log(mod.emitText());
if (!mod.validate())
  console.log("-> does not validate");
