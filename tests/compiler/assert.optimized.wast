(module
 (type $v (func))
 (memory $0 1)
 (data (i32.const 8) "\0c\00\00\00m\00u\00s\00t\00 \00b\00e\00 \00t\00r\00u\00e")
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
