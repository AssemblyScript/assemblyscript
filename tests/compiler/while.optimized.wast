(module
 (type $iv (func (param i32)))
 (memory $0 1)
 (export "loopWhile" (func $while/loopWhile))
 (export "loopWhileInWhile" (func $while/loopWhileInWhile))
 (export "memory" (memory $0))
 (func $while/loopWhile (; 0 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (set_local $1
   (get_local $0)
  )
  (loop $continue|0
   (if
    (get_local $1)
    (block
     (set_local $0
      (tee_local $1
       (i32.sub
        (get_local $0)
        (i32.const 1)
       )
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $while/loopWhileInWhile (; 1 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (set_local $1
   (get_local $0)
  )
  (loop $continue|0
   (if
    (get_local $1)
    (block
     (set_local $0
      (tee_local $1
       (i32.sub
        (get_local $0)
        (i32.const 1)
       )
      )
     )
     (loop $continue|1
      (if
       (get_local $1)
       (block
        (set_local $0
         (tee_local $1
          (i32.sub
           (get_local $1)
           (i32.const 1)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
     (br $continue|0)
    )
   )
  )
 )
)
