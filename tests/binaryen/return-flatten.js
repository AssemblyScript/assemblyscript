var binaryen = require("binaryen");

var module = new binaryen.Module();
module.addFunction("nothing", binaryen.none, binaryen.none, [], module.nop());
module.addFunction("test", binaryen.none, binaryen.none, [],
  module.return(
    module.call("nothing", [], binaryen.none)
  )
);
module.addExport("test", "test");

console.log(module.emitText());
if (!module.validate())
  console.log("-> does not validate");

binaryen.setOptimizeLevel(4);
module.runPasses(["flatten"]);
module.optimize(); // Fatal: IR must be flat: run --flatten beforehand
console.log(module.emitText());
