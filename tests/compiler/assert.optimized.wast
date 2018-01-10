(module
 (type $v (func))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $0
      (i32.const 1)
     )
     (get_local $0)
     (unreachable)
    )
   )
   (unreachable)
  )
 )
)
