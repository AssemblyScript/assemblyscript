(module
 (type $iv (func (param i32)))
 (type $v (func))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $scoped/fn (; 0 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $start (; 1 ;) (type $v)
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
  (call $scoped/fn
   (i32.const 42)
  )
 )
)
