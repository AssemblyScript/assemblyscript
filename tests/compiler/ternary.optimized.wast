(module
 (type $v (func))
 (global $ternary/a (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  ;;@ ternary.ts:7:0
  (set_global $ternary/a
   (i32.const 1)
  )
  ;;@ ternary.ts:8:0
  (set_global $ternary/a
   (i32.const 1)
  )
  ;;@ ternary.ts:9:0
  (set_global $ternary/a
   (i32.const 1)
  )
 )
)
