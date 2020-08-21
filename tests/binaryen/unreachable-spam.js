var binaryen = require("binaryen");

var mod = new binaryen.Module();
var funcType = mod.addFunctionType("ii", binaryen.i32, [ binaryen.i32 ]);
mod.addFunction("0", funcType, [],
  mod.block(null, [
    mod.loop("continue",
      mod.block(null, [
        mod.if(
          mod.local.get(0, binaryen.i32),
          mod.return(mod.i32.const(1)),
          mod.return(mod.i32.const(2))
        ),
        mod.unreachable()
      ])
    ),
    mod.unreachable()
  ], binaryen.i32)
);
mod.addExport("0", "0");

if (!mod.validate())
  console.log("-> does not validate");
console.log(mod.emitText());
console.log(mod.emitStackIR(/* true */)); // optimize-stack-ir fixes this
