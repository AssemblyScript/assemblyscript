(module
 (type $v (func))
 (global $ternary/a (mut i32) (i32.const 0))
 (memory $0 0)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (; has Stack IR ;) (type $v)
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
 (func $null (; 1 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
