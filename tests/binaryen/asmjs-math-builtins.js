var binaryen = require("binaryen");

var mod = new binaryen.Module();
var funcType = mod.addFunctionType("F", binaryen.f64, [ binaryen.f64 ]);

mod.addFunction("floor", funcType, [],
  mod.f64.floor(
    mod.get_local(0, binaryen.f64)
  )
);
mod.addExport("floor", "floor");

mod.addFunction("ceil", funcType, [],
  mod.f64.ceil(
    mod.get_local(0, binaryen.f64)
  )
);
mod.addExport("ceil", "ceil");

mod.addFunction("sqrt", funcType, [],
  mod.f64.sqrt(
    mod.get_local(0, binaryen.f64)
  )
);
mod.addExport("sqrt", "sqrt");

mod.addFunction("trunc", funcType, [],
  mod.f64.trunc(
    mod.get_local(0, binaryen.f64)
  )
);
mod.addExport("trunc", "trunc");

mod.addFunction("nearest", funcType, [],
  mod.f64.nearest(
    mod.get_local(0, binaryen.f64)
  )
);
mod.addExport("nearest", "nearest");

console.log(mod.emitText());
if (!mod.validate())
  console.log("-> does not validate");

console.log(mod.emitAsmjs());
