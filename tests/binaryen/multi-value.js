var binaryen = require("binaryen");

var mod = new binaryen.Module();
var ii = binaryen.createType([ binaryen.i32, binaryen.i32 ]);
mod.addFunction("test", ii, ii, [],
  mod.unreachable()
);
mod.addExport("test", "test");

console.log(mod.emitText());
if (!mod.validate())
  console.log("-> does not validate");

mod.optimize();
console.log(mod.emitText());
