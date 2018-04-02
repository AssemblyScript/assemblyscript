var binaryen = require("binaryen");

var mod = new binaryen.Module();
var funcType = mod.addFunctionType("iii", binaryen.i32, [ binaryen.i32, binaryen.i32 ]);

mod.addFunction("exported_add", funcType, [],
  mod.i32.add(
    mod.get_local(0, binaryen.i32),
    mod.get_local(1, binaryen.i32)
  )
);
mod.addFunctionExport("exported_add", "add");

mod.addFunction("internal_sub", funcType, [],
  mod.i32.sub(
    mod.get_local(0, binaryen.i32),
    mod.get_local(1, binaryen.i32)
  )
);

mod.addFunction("test", funcType, [],
  mod.i32.add(
    mod.call("exported_add", [ // should become inlined but doesn't
      mod.get_local(0, binaryen.i32),
      mod.get_local(1, binaryen.i32)
    ], binaryen.i32),
    mod.call("internal_sub", [ // just like this one becomes inlined
      mod.get_local(0, binaryen.i32),
      mod.get_local(1, binaryen.i32)
    ], binaryen.i32)
  )
);
mod.addFunctionExport("test", "test");

// binaryen.setOptimizeLevel(3);
// binaryen.setShrinkLevel(0);
mod.optimize();
if (!mod.validate()) throw Error();
console.log(mod.emitText());
