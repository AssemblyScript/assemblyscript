(module
 (type $iv (func (param i32)))
 (memory $0 1)
 (export "loopDo" (func $do/loopDo))
 (export "loopDoInDo" (func $do/loopDoInDo))
 (export "memory" (memory $0))
 (func $do/loopDo (; 0 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (set_local $1
   (get_local $0)
  )
  (loop $continue|0
   (br_if $continue|0
    (tee_local $1
     (i32.sub
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $do/loopDoInDo (; 1 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (loop $continue|0
   (set_local $1
    (i32.sub
     (get_local $0)
     (i32.const 1)
    )
   )
   (loop $continue|1
    (br_if $continue|1
     (tee_local $2
      (tee_local $1
       (tee_local $0
        (i32.sub
         (get_local $1)
         (i32.const 1)
        )
       )
      )
     )
    )
   )
   (br_if $continue|0
    (get_local $2)
   )
  )
 )
)
