var binaryen = require("binaryen");

// "It is a validation error for a set_global to index an immutable global variable."

var mod = new binaryen.Module();
mod.addGlobal("a", binaryen.i32, false, mod.i32.const(0));

var funcType = mod.addFunctionType("v", binaryen.none, []);
var func = mod.addFunction("start", funcType, [], mod.block("", [
  mod.setGlobal("a", mod.i32.const(1))
]));
mod.setStart(func);

console.log(mod.emitText());
if (mod.validate())
  console.log("-> validates");
