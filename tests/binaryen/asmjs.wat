(module
 (type $i (func (param i32) (result i32)))
 (memory $0 0)
 (export "test/switch/case/eval" (func $test/switch/case/eval))
 (export "const" (func $test/switch/case/eval))
 (import "env" "switch" (func $switch (param i32 i32 i32 i32)))
 (global $INT i32 (i32.const 4))
 (global $FLT i32 (f32.const -4.0))
 (global $DBL i32 (f64.const -4.0))
 (func $test/switch/case/eval (; 0 ;) (type $i) (param $0 i32) (result i32)
  (if (result i32)
   (i32.eq
    (get_global $INT)
    (i32.load
      (i32.const 0)
    )
   )
   (i32.ctz
    (i32.const 0)
   )
   (get_local $0)
  )
 )
)