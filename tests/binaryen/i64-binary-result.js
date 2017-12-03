var binaryen = require("binaryen");

// "non-final block elements returning a value must be drop()ed"
// "0 == 0: block with value must not have last element that is none, on"

var mod = new binaryen.Module();

var funcType = mod.addFunctionType("I", binaryen.void, [ binaryen.i64 ]);
var func = mod.addFunction("test", funcType, [ binaryen.i32 ],
  mod.block("", [
    mod.setLocal(1, mod.i64.eq(mod.i64.const(0, 0), mod.getLocal(0, binaryen.i64)))
  ])
);
mod.addExport("test", func);

console.log(mod.emitText());
if (mod.validate())
  console.log("-> ok: i64.eq returns i32");
