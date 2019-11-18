var binaryen = require("binaryen");
var mod = binaryen.parseText(`
(module
  (event $exception (attr 0) (param i32))
  (func $test
    (local $0 exnref)
    (try
      (throw $exception
        (i32.const 1)
      )
      (catch
        (local.set $0
          (exnref.pop)
        )
        (drop
          (block $catch|0 (result i32)
            (rethrow
              (br_on_exn $catch|0 $exception
                (local.get $0)
              )
            )
          )
        )
      )
    )
  )
  (export $test $test)
)
`);
mod.setFeatures(binaryen.Features.ExceptionHandling);
if (!mod.validate()) console.log(":-(");
else console.log(mod.emitText());

binaryen.setOptimizeLevel(3); // assertion hit if > 2, different one if == 4
binaryen.setShrinkLevel(0);
mod.optimize();

if (!mod.validate()) console.log(":-(");
else console.log(mod.emitText());
