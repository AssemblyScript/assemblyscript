var binaryen = require("binaryen");

var mod = new binaryen.Module();
var ftype = mod.addFunctionType("ii", binaryen.i32, [ binaryen.i32 ]);
mod.addFunction("test", ftype, [],
  mod.block("label", [
    mod.drop( // "br_if returns the value too"
      mod.break("label",
        // condition: $0 == 1
        mod.i32.eq(
          mod.getLocal(0, binaryen.i32),
          mod.i32.const(1)
        ),
        // value: 1
        mod.i32.const(1)
      )
    ),
    // push: 0
    mod.i32.const(0)
  ], binaryen.i32)
);
console.log(mod.emitText());

mod.validate();
