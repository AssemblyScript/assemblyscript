var binaryen = require("binaryen");
// var mod = binaryen.parseText(`
// (module
//   (import "ref" "null" (global $ref_null anyref))
//   (import "ref" "is_null" (func $ref_is_null (param anyref) (result i32)))
//   (import "ref" "eq" (func $ref_eq (param anyref anyref) (result i32)))
//   (func $test (result i32)
//     (local $0 anyref)
//     (local $1 anyref)
//     (local.set $0
//       (global.get $ref_null)
//     )
//     (local.set $1
//       (global.get $ref_null)
//     )
//     (drop
//       (call $ref_is_null
//         (local.get $0)
//       )
//     )
//     (return
//       (call $ref_eq
//         (local.get $0)
//         (local.get $1)
//       )
//     )
//   )
//   (export $test $test)
// )`);
var mod = binaryen.parseText(`
(module
  (import "ref" "null" (global $ref_null anyref))
  (import "ref" "is_null" (func $ref_is_null (param anyref) (result i32)))
  (func $test
    (local $0 anyref)
    (local.set $0
      (global.get $ref_null)
    )
    (drop
      (call $ref_is_null
        (local.get $0)
      )
    )
    ;; remove this to make it work:
    (drop
      (call $ref_is_null
        (local.get $0)
      )
    )
  )
  (export $test $test)
)`);
mod.setFeatures(binaryen.Features.ReferenceTypes);
if (!mod.validate()) console.log(":-(");
else console.log(mod.emitText());

mod.optimize();
if (!mod.validate()) console.log(":-(");
else console.log("-- optimized --\n", mod.emitText());
