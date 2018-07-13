var binaryen = global.Binaryen = require("../lib/binaryen");

require("ts-node").register({ project: require("path").join(__dirname, "..", "src", "tsconfig.json") });
require("../src/glue/js");

var mod = new binaryen.Module();
var ftype = mod.addFunctionType("i", binaryen.i32, [ ]);
var fn = mod.addFunction("main", ftype, [],
  mod.block(null, [
    mod.return(
      mod.i32.add(
        mod.i32.const(1),
        mod.i32.const(2)
      )
    )
  ])
);

mod.validate();
mod.emitText();

var Decompiler = require("../src/decompiler").Decompiler;
var decompiler = new Decompiler();
decompiler.decompileFunction(fn);
console.log(decompiler.finish());
