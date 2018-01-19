(module
 (type $v (func))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $0)
     (i32.const 1)
    )
    (block
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (set_local $0
   (i32.const 0)
  )
  (loop $continue|1
   (if
    (i32.lt_s
     (get_local $0)
     (i32.const 1)
    )
    (block
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|1)
    )
   )
  )
 )
)
