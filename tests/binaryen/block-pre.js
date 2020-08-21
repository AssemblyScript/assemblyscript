var binaryen = require("binaryen");
var mod = binaryen.parseText(`
(module
  (global $ref (mut i32) (i32.const 1))
  (func $test
    (call $release
      (block (result i32)
        (global.get $ref)
        (global.set $ref
          (call $retain
            (i32.const 2) (; some-expression-that-might-conflict-with-a-temp ;)
          )
        )
      )
    )
  )
  (func $retain (param i32) (result i32)
    (local.get 0)
  )
  (func $release (param i32)
    (nop)
  )
)
`);
if (!mod.validate()) console.log(":-(");
else console.log(mod.emitText());
