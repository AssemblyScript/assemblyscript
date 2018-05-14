(module
 (type $v (func))
 (global $ternary/a (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (drop
   (i32.const 1)
  )
  (drop
   (i32.const 1)
  )
  (drop
   (i32.const 1)
  )
  (set_global $ternary/a
   (i32.const 1)
  )
  (set_global $ternary/a
   (i32.const 1)
  )
  (set_global $ternary/a
   (i32.const 1)
  )
 )
)
