var binaryen = require("binaryen");

// "unexpected false: module function exports must be found"

var mod = new binaryen.Module();

var funcType = mod.addFunctionType("v", binaryen.none, []);
var func = mod.addImport("test", "env", "test", funcType);
mod.addExport("test", "test");

console.log(mod.emitText());
if (!mod.validate())
  console.log("-> does not validate");
