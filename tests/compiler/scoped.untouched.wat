(module
 (type $iv (func (param i32)))
 (type $v (func))
 (global $scoped/aGlobal (mut i32) (i32.const 1))
 (global $scoped/aConstant i32 (i32.const 3))
 (global $scoped/aStartFunctionLocal (mut i32) (i32.const 2))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $scoped/fn (; 0 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (block
   (set_local $1
    (i32.const 0)
   )
  )
  (block
   (nop)
   (set_local $1
    (get_local $0)
   )
  )
 )
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 f32)
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $0)
      (i32.const 1)
     )
     (block
      (nop)
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
  )
  (block $break|1
   (set_local $1
    (i32.const 0)
   )
   (loop $continue|1
    (if
     (i32.lt_s
      (get_local $1)
      (i32.const 1)
     )
     (block
      (drop
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  (block
   (set_local $2
    (i64.const 5)
   )
   (block
    (set_local $3
     (f32.const 10)
    )
   )
  )
  (call $scoped/fn
   (i32.const 42)
  )
 )
)
