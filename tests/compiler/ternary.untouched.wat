(module
 (type $v (func))
 (global $ternary/a (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $null)
 (memory $0 0)
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
 (func $null (; 1 ;) (type $v)
 )
)
