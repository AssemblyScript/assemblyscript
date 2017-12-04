(module
 (type $iv (func (param i32)))
 (memory $0 1)
 (data (i32.const 4) "\08")
 (export "loopDo" (func $do/loopDo))
 (export "loopDoInDo" (func $do/loopDoInDo))
 (export "memory" (memory $0))
 (func $do/loopDo (; 0 ;) (type $iv) (param $0 i32)
  (loop $continue$1.1
   (br_if $continue$1.1
    (tee_local $0
     (i32.sub
      (get_local $0)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $do/loopDoInDo (; 1 ;) (type $iv) (param $0 i32)
  (loop $continue$1.1
   (set_local $0
    (i32.sub
     (get_local $0)
     (i32.const 1)
    )
   )
   (loop $continue$1.2
    (br_if $continue$1.2
     (tee_local $0
      (i32.sub
       (get_local $0)
       (i32.const 1)
      )
     )
    )
   )
   (br_if $continue$1.1
    (get_local $0)
   )
  )
 )
)
