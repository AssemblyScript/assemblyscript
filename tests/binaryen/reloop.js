var binaryen = require("binaryen");
binaryen.setOptimizeLevel(3);
binaryen.setShrinkLevel(0);

function usingBranches() {
  var module = new binaryen.Module();
  var rl = new binaryen.Relooper(module);
  var entry = rl.addBlock(module.nop());

  for (let i = 0; i < 10; ++i) {
    rl.addBranch(entry,
      rl.addBlock(
        module.return(
          module.call("other", [ module.i32.const(i) ], binaryen.none, binaryen.i32)
        )
      ),
      module.i32.eq(
        module.local.get(0, binaryen.i32),
        module.i32.const(i)
      )
    );
  }
  rl.addBranch(entry,
    rl.addBlock(
      module.unreachable()
    )
  );

  module.addFunction("test", binaryen.i32, binaryen.i32, [ binaryen.i32 ], rl.renderAndDispose(entry, 1));
  module.addFunctionImport("other", "env", "other", binaryen.i32, binaryen.i32);
  module.addFunctionExport("test", "test");

  console.log("=== unoptimized ===");
  console.log(module.emitText());
  module.optimize();
  console.log("=== optimized ===");
  console.log(module.emitText());
}
usingBranches();

/* function usingSwitch() {
  var module = new binaryen.Module();
  var rl = new binaryen.Relooper(module);
  var entry = rl.addBlockWithSwitch(module.nop(), module.local.get(0, binaryen.i32));
  
  for (let i = 0; i < 10; ++i) {
    rl.addBranchForSwitch(entry,
      rl.addBlock(
        module.return(
          module.call("other", [ module.i32.const(i) ], binaryen.none, binaryen.i32)
        )
      ),
      [ i ]
    );
  }
  rl.addBranchForSwitch(entry,
    rl.addBlock(
      module.unreachable()
    ),
    []
  );
  
  module.addFunction("test", binaryen.i32, binaryen.i32, [ binaryen.i32 ], rl.renderAndDispose(entry, 1));
  module.addFunctionImport("other", "env", "other", binaryen.none, binaryen.i32);
  module.addFunctionExport("test", "test");
  
  console.log(module.emitText());
  module.optimize();
  console.log(module.emitText());
}
usingSwitch(); */
