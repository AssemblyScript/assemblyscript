(module
 (type $v (func))
 (global $ternary/a (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (set_global $ternary/a
   (tee_local $0
    (i32.const 1)
   )
  )
  (set_global $ternary/a
   (tee_local $0
    (i32.const 1)
   )
  )
  (if
   (tee_local $0
    (i32.const 1)
   )
   (set_local $0
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $ternary/a
   (get_local $0)
  )
 )
)
