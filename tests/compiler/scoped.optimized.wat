(module
 (type $iv (func (param i32)))
 (type $v (func))
 (memory $0 0)
 (export "memory" (memory $0))
 (start $start)
 (func $scoped/fn (; 0 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $start (; 1 ;) (; has Stack IR ;) (type $v)
  (local $0 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.const 1)
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|1
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.ge_s
      (get_local $0)
      (i32.const 1)
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (call $scoped/fn
   (i32.const 42)
  )
 )
)
