(module
 (type $iv (func (param i32)))
 (memory $0 1)
 (export "loopWhile" (func $while/loopWhile))
 (export "loopWhileInWhile" (func $while/loopWhileInWhile))
 (export "memory" (memory $0))
 (func $while/loopWhile (; 0 ;) (type $iv) (param $0 i32)
  (loop $continue|0
   (if
    (get_local $0)
    (block
     (set_local $0
      (i32.sub
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $while/loopWhileInWhile (; 1 ;) (type $iv) (param $0 i32)
  (loop $continue|0
   (if
    (get_local $0)
    (block
     (set_local $0
      (i32.sub
       (get_local $0)
       (i32.const 1)
      )
     )
     (loop $continue|1
      (if
       (get_local $0)
       (block
        (set_local $0
         (i32.sub
          (get_local $0)
          (i32.const 1)
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
