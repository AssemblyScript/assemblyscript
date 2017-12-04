(module
 (type $v (func))
 (memory $0 1)
 (data (i32.const 4) "\08")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  (if
   (tee_local $0
    (i32.const 0)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (tee_local $1
     (f64.const 0)
    )
    (f64.const 0)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (tee_local $0
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $1
     (f64.const 1)
    )
    (f64.const 0)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $0
      (i32.const 1)
     )
     (tee_local $0
      (i32.const 2)
     )
     (get_local $0)
    )
   )
   (unreachable)
  )
  (if
   (f64.eq
    (if (result f64)
     (f64.ne
      (tee_local $1
       (f64.const 1)
      )
      (f64.const 0)
     )
     (tee_local $1
      (f64.const 2)
     )
     (get_local $1)
    )
    (f64.const 0)
   )
   (unreachable)
  )
 )
)
